-- Carry-Skip Adder

library IEEE;
use IEEE.std_logic_1164.all;

entity CarrySkip is

    generic (
        N : integer := 64
    );
	 
    port (
        A    : in  std_logic_vector(N-1 downto 0);
        B    : in  std_logic_vector(N-1 downto 0);
        Cin  : in  std_logic;
        AddnSub : in std_logic := '0';
        S    : out std_logic_vector(N-1 downto 0);
        Cout : out std_logic;
        Ovfl : out std_logic
    );
	 
end CarrySkip;

architecture rtl of CarrySkip is

    component FullAdder
	 
        port (
            x   : in  std_logic;
            y   : in  std_logic;
            cin : in  std_logic;
            sum : out std_logic;
            cout: out std_logic
        );
		  
    end component;

    -- block size
    constant BLOCK_SIZE : integer := 8;
    constant N_BLOCKS : integer := N/BLOCK_SIZE;

    -- block: carry signals between blocks (can be skipped)
    -- ripple: carry signals for the ripple chain within each block
    signal block  : std_logic_vector(N_BLOCKS downto 0);
    signal ripple : std_logic_vector(N downto 0);

    -- group: block-level propagate signal
    signal group  : std_logic_vector(N_BLOCKS-1 downto 0);
    
    signal B_internal : std_logic_vector(N-1 downto 0);

begin

    B_internal <= B when AddnSub = '0' else NOT B;

    block(0) <= Cin;
    ripple <= (0 => Cin, others => '0');

    gen_blocks: for i in 0 to N_BLOCKS-1 generate
        
        -- This is '1' if all P bits in the block are '1'
        signal bits : std_logic_vector(BLOCK_SIZE-1 downto 0);
		  
    begin
	 
        gen_bits: for j in 0 to BLOCK_SIZE-1 generate
            bits(j) <= A(i*BLOCK_SIZE + j) xor B_internal(i*BLOCK_SIZE + j);
        end generate;
		  
        group(i) <= '&' & bits;

        -- Generate the ripple-carry chain within the block
        gen_rippleadder: for j in 0 to BLOCK_SIZE-1 generate
            constant index : integer := i*BLOCK_SIZE + j;
				
        begin
		  
            FA_inst: FullAdder
				
                port map(
                    x    => A(index),
                    y    => B_internal(index),
                    cin  => ripple(index),
                    sum  => S(index),
                    cout => ripple(index+1)
                );
        end generate;
        
        -- Carry-Skip MUX Logic
        -- The carry for the next block is either the result of the internal
        -- ripple chain OR the skipped incoming carry if the block propagates.
        block(i+1) <= ripple((i+1)*BLOCK_SIZE) or (block(i) and group(i));
        
        -- The start of the next block's ripple chain is the result of the skip logic
        gen_cin: if i < N_BLOCKS-1 generate
            ripple((i+1)*BLOCK_SIZE) <= block(i+1);
        end generate;

    end generate gen_blocks;

    -- Final outputs
    Cout <= block(N_BLOCKS);
    Ovfl <= block(N_BLOCKS) xor ripple(N-1);

end architecture rtl;
