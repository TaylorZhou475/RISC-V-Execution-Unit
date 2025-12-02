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

    -- blk_c size
    constant blk_c_SIZE : integer := 8;
    constant N_blk_cS : integer := N/blk_c_SIZE;

    -- blk_c: carry signals between blk_cs (can be skipped)
    -- ripple: carry signals for the ripple chain within each blk_c
    signal blk_c  : std_logic_vector(N_blk_cS downto 0);
    signal ripple : std_logic_vector(N downto 0);

    -- grp_c: blk_c-level propagate signal
    signal grp_c  : std_logic_vector(N_blk_cS-1 downto 0);

begin

    blk_c(0) <= Cin;
    --ripple <= (0 => Cin, others => '0');

    gen_blk_cs: for i in 0 to N_blk_cS-1 generate
        
        -- This is '1' if all P bits in the blk_c are '1'
        signal bits : std_logic_vector(blk_c_SIZE-1 downto 0);
		  
    begin
	 
        gen_bits: for j in 0 to blk_c_SIZE-1 generate
            bits(j) <= A(i*blk_c_SIZE + j) xor B(i*blk_c_SIZE + j);
        end generate;
		  
        --grp_c(i) <= '&' & bits; --this was being buggy, preventing compiling
		  process(bits)
            variable tmp : std_logic;
        begin
            tmp := '1';
            for k in bits'range loop
                tmp := tmp and bits(k);
            end loop;
            grp_c(i) <= tmp;
        end process;

        -- Generate the ripple-carry chain within the blk_c
        gen_rippleadder: for j in 0 to blk_c_SIZE-1 generate
            constant index : integer := i*blk_c_SIZE + j;
				signal fa_cin : std_logic;
				
        begin
				--need muxes here
				--if at start of block (j=0), pull carry from skip chain
				--otherwise, pull carry from previous adder (ripple)
				
				fa_cin <= blk_c(i) when (j=0) else ripple(index);
		  
            FA_inst: FullAdder
				
                port map(
                    x    => A(index),
                    y    => B(index),
                    cin  => fa_cin,
                    sum  => S(index),
                    cout => ripple(index+1)
                );
        end generate;
        
        -- Carry-Skip MUX Logic
        -- The carry for the next blk_c is either the result of the internal
        -- ripple chain OR the skipped incoming carry if the blk_c propagates.
        blk_c(i+1) <= ripple((i+1)*blk_c_SIZE) or (blk_c(i) and grp_c(i));
        
        -- The start of the next blk_c's ripple chain is the result of the skip logic
		  
		  --i dont think we need this block anymore, ripple should only hold internal slow chain
--        gen_cin: if i < N_blk_cS-1 generate
--            ripple((i+1)*blk_c_SIZE) <= blk_c(i+1);
--        end generate;

    end generate gen_blk_cs;

    -- Final outputs
    Cout <= blk_c(N_blk_cS);
    Ovfl <= blk_c(N_blk_cS) xor ripple(N-1);

end architecture rtl;
