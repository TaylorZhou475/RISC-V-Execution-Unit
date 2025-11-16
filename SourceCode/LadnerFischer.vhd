-- Ladner Fischer Adder

library ieee;
use ieee.std_logic_1164.all;

entity LadnerFischer is

    generic (
        N : integer := 64
    );
	 
    port (
        A    : in  std_logic_vector(N-1 downto 0);
        B    : in  std_logic_vector(N-1 downto 0);
        Cin  : in  std_logic;
        S    : out std_logic_vector(N-1 downto 0);
        Cout, Ovfl : out std_logic
    );
	 
end LadnerFischer;

architecture rtl of LadnerFischer is

    -- Function to calculate log2
    function log2 (x: integer) return integer is
        variable i: integer := 0;
        variable j: integer := 1;
    begin
        while j < x loop
            j := j * 2;
            i := i + 1;
        end loop;
        return i;
    end function;

    constant STAGES : integer := log2(N);

    signal p : std_logic_vector(N-1 downto 0);
    signal g : std_logic_vector(N-1 downto 0);

    -- signals for the PPN
    type pg_array is array (0 to N-1) of std_logic_vector(1 downto 0);
    type pg_levels_array is array (0 to STAGES) of pg_array;
    signal pg_levels : pg_levels_array;

    -- Carry signal
    signal c : std_logic_vector(N downto 0);

begin

    -- generate and propgate signals
    p <= A xor B;
    g <= A and B;

    -- Initial P and G signals
    gen_initial: for i in 0 to N-1 generate
        pg_levels(0)(i) <= p(i) & g(i);
    end generate;

    -- Ladner-Fischer Parallel Prefix Network (PPN)
    gen_prefix_network: for level in 1 to STAGES generate
	 
        gen_level: for i in 0 to N-1 generate
		   
            gen_prefix_if_true: if (i >= 2**(level-1)) generate
                pg_levels(level)(i) <=
                    (pg_levels(level-1)(i)(1) and pg_levels(level-1)(i-2**(level-1))(1)) &
                    (pg_levels(level-1)(i)(0) or
                    (pg_levels(level-1)(i)(1) and pg_levels(level-1)(i-2**(level-1))(0)));
            end generate;

            gen_prefix_if_false: if not (i >= 2**(level-1)) generate
                pg_levels(level)(i) <= pg_levels(level-1)(i);
            end generate;
				
        end generate;
    end generate;

    -- Generate carries
    c(0) <= Cin;
    gen_carries: for i in 0 to N-1 generate
        c(i+1) <= pg_levels(STAGES)(i)(0) or (pg_levels(STAGES)(i)(1) and Cin);
    end generate;

    -- Final Sum
    S <= p xor c(N-1 downto 0);
    Cout <= c(N);

    -- Signed overflow detection
    Ovfl <= c(N) xor c(N-1);

end rtl;
