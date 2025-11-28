-- Look Ahead principal using the carry look ahead topology --> Parallel Prefix Network (PPN) implementation
--generate (g) = x0 AND y0; propagate (p) = x0 XOR y0
--using kogge-stone (KS) parallel adder because its the "fastest" though it uses more resource

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity KoggeStone is 
	generic(N_bits : integer := 64);
	
	port(
       A : in  std_logic_vector(N_bits-1 downto 0);
       B : in  std_logic_vector(N_bits-1 downto 0);
       Cin : in  std_logic;
       S : out std_logic_vector(N_bits-1 downto 0);
       Cout : out std_logic;
		 Ovfl : out std_logic
    );
end entity KoggeStone;

architecture rtl of KoggeStone is 

	
	--num of levels needed for kogge-stone tree
	constant LEVELS : integer := integer(ceil(log2(real(N_bits))));
	
	--propagate and generate sigs
	
	signal g : std_logic_vector(N_bits-1 downto 0);
	signal p : std_logic_vector(N_bits-1 downto 0);
	
	--prefix network signals formatte G(level)(bit) P(level)(bit)
	type gp_array is array (0 to levels) of std_logic_vector(N_bits-1 downto 0);
	signal G_array : gp_array; --group gen signals at each level
	signal P_array : gp_array; --group prop signals at each level
	
	--carry network signals
	signal carry : std_logic_vector(N_bits downto 0);
	
	begin
		
		--inital gen and prop sigs
		gen_initial_gp: for i in 0 to N_bits-1 generate
			g(i) <= A(i) AND B(i);
			p(i) <= A(i) XOR B(i);
		end generate gen_initial_gp;
		
		--level 0 prefix network
		
		G_array(0) <= g;
		P_array(0) <= p;
		
		gen_levels: for level in 1 to LEVELS generate
			gen_bits: for i in 0 to N_bits-1 generate	
				constant span: integer := 2**(level-1); --span for level is in powers of 2 => 1,2,4,8
				--span is how far back each position looks to combine with prev result
				--ex. for level L, span = 2^(L-1), if L = 1 span = 1 (each position looks back 1 position)
				--ex. L = 3, span = 2^(2), each position looks back 4 positions
				begin
				gen_prefix: if i>= span generate
					--Kogge-Stone prefix computation
					G_array(level)(i) <= G_array(level-1)(i) OR (P_array(level-1)(i) AND G_array(level-1)(i-span));
					P_array(level)(i) <= P_array(level-1)(i) AND P_array(level-1)(i-span);
				end generate gen_prefix;
				
				gen_passthrough: if i < span generate --if cant look back, passthrough previous
					G_array(level)(i) <= G_array(level-1)(i);
					P_array(level)(i) <= P_array(level-1)(i);
				end generate gen_passthrough;
				
			end generate gen_bits;
		end generate gen_levels;
		
		carry(0) <= Cin; --inital cin
		
		gen_carry: for i in 1 to N_bits generate
			carry(i) <= G_array(LEVELS)(i-1) OR (P_array(LEVELS)(i-1) AND Cin); --basically look ahead equation
		end generate gen_carry;
		
		gen_sum: for i in 0 to N_bits-1 generate
        --sum[i] = A[i] XOR B[i] XOR Carry[i] = P[i] XOR Carry[i]
        S(i) <= p(i) XOR carry(i);
		end generate gen_sum;
    
    --final cout
    Cout <= carry(N_bits);
	Ovfl <= carry(N_bits) xor carry(N_bits - 1);
end architecture rtl;