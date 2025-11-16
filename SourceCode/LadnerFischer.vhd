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

    -- N stages for the prefix network
    constant STAGES : integer := log2(N);

    -- Propagate and carry signals
    signal p : std_logic_vector(N-1 downto 0);
    signal c : std_logic_vector(N downto 0);

begin

    -- Initial propagate signal
    p <= A xor B;

    -- PPN and carry generation process
    ppn_carry: process(A, B, Cin, p)
		  -- pg(i)(1) is propagate and pg(i)(0) is generate.
        type pg_array is array (0 to N-1) of std_logic_vector(1 downto 0);
        -- Variable to hold the PG pairs as they are computed through the network
        variable pg : pg_array;
        -- Carry variable for intermediate calculations.
        variable c_var : std_logic_vector(N downto 0);
        -- Loop variable for iterating through bit positions
        variable i : integer;
    begin
        -- Initial P and G signals for each bit position.
        -- g = A and B
        -- p = A xor B
        for k in 0 to N-1 loop
            pg(k) := p(k) & (A(k) and B(k));
        end loop;

        -- Ladner-Fischer Parallel Prefix Network (PPN)

        -- prefixes are computed for bit positions that are powers of 2.
        -- span of the look-back doubles at each level.
        -- for level 0, it combines (i) with (i-1).
        -- for level 1, it combines (i) with (i-2).
        -- for level 2, it combines (i) with (i-4), so on.
        for level in 0 to STAGES-1 loop
            i := 2**(level+1)-1;
            while i < N loop
				
                -- p_out = p1 and p2
                -- g_out = g1 or (p1 and g2)
                pg(i) := (pg(i)(1) and pg(i-2**level)(1)) &
                         (pg(i)(0) or (pg(i)(1) and pg(i-2**level)(0)));
                i := i + 2**(level+1);
					 
            end loop;
        end loop;

        -- Fan-out 
        -- uses the prefixes computed earlier to calculate the remaining prefixes
        -- works backwards from the largest span to fill in the gaps
        for level in STAGES-1 downto 0 loop
            i := 2**(level+1)-1 + 2**level;
            while i < N loop
                -- Apply the same black cell operator to propagate the prefixes
                -- to the odd-numbered positions relative to the current span.
                pg(i) := (pg(i)(1) and pg(i-2**level)(1)) &
                         (pg(i)(0) or (pg(i)(1) and pg(i-2**level)(0)));
                i := i + 2**(level+1);
            end loop;
        end loop;

        -- Generate carries from the final prefix network values.
        -- c(i+1) = g_i_prefix or (p_i_prefix and Cin)
        c_var(0) := Cin;
        for k in 0 to N-1 loop
            c_var(k+1) := pg(k)(0) or (pg(k)(1) and Cin);
        end loop;
        c <= c_var;

    end process;

    -- Final Sum
    S <= p xor c(N-1 downto 0);

    -- Cout and Signed overflow detection
    Cout <= c(N);
    Ovfl <= c(N) xor c(N-1);

end rtl;
