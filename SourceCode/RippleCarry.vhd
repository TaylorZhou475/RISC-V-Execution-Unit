--Baseline Ripple adder
library IEEE;
use IEEE.std_logic_1164.all;

entity RippleCarry is 
	generic(
		N : integer := 64	--N inputs
	);
	
	port(
		A : in std_logic_vector((N-1) downto 0);
		B : in std_logic_vector((N-1) downto 0);
		Cin : in std_logic;
		Sum : out std_logic_vector((N-1) downto 0);
		Cout : out std_logic;
		Ovfl : out std_logic
	);
	
end RippleCarry;

architecture rtl of RippleCarry is 

	--instantiation
	component FullAdder 
		port(
			x : in std_logic;
			y : in std_logic;
			cin : in std_logic;
			sum : out std_logic;
			cout : out std_logic --final cout, not through network
		);
	end component;
	
	
	--carry network signals (internal)
	
	signal carry : std_logic_vector(N downto 0);
	
	begin
	
		carry(0) <= Cin;
		
		--generate, instantiate N full adders, the cin and cout are both in the carry vector, with 
		--each iteration getting cin from carry(i) and pushing cout to carry(i+1), rinse and repeat
		gen_adders : for i in 0 to (N-1) generate
			FA_inst: FullAdder
				port map(
					x => A(i), y => B(i), cin => carry(i), sum => Sum(i), cout => carry(i+1)
				);
				
		end generate gen_adders;
		
		--The final Cout is the cout result from the last FA
		Cout <= carry(N);
		
		--Overflow is detected when the carry going into the sign bit of the sum is different from the carry out of the sign bit
		--E.g + and + A(N-1) -> 0, B(N-1) -> 0, C(N-1) -> 0, C(N) -> 0, no overflow as expected
		--+ and + A(N-1) -> 0, B(N-1) -> 0, C(N-1) -> 1, C(N) -> 0, then we have an overflow, because carry went in but nothing came out
		--The same logic applies for negative cases
	   Ovfl <= carry(N) XOR carry(N-1);
		
end architecture rtl;