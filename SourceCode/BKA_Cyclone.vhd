Library ieee;
use ieee.std_logic_1164.all;


--BKA stands for Brent Kung Adder
ENTITY BKA_Cyclone IS

GENERIC(N : NATURAL := 64);

PORT(
		A, B : IN STD_LOGIC_VECTOR(N-1 downto 0);
		S	  : OUT STD_LOGIC_VECTOR(N-1 downto 0);
		Cin  : IN STD_LOGIC;
		Cout, Ovfl : OUT STD_LOGIC
	 );
END ENTITY BKA_Cyclone;

ARCHITECTURE rtl OF BKA_Cyclone IS

COMPONENT BrentKungGenerator 
GENERIC(Size : NATURAL);

PORT(
		Pin, Gin : IN STD_LOGIC_VECTOR(Size-1 downto 0);
		Cin	 : IN STD_LOGIC;
		Pout, Gout : OUT STD_LOGIC_VECTOR(Size-1 downto 0)
	 );
END COMPONENT;

SIGNAL P, G : STD_LOGIC_VECTOR(N-1 downto 0);

SIGNAL Carries : STD_LOGIC_VECTOR(N downto 0);

BEGIN

	--Generate the propagate and generate for every digit
	Generate_PG : FOR i in 0 to N-1 GENERATE
		P(i) <= A(i) XOR B(i);
		G(i) <= A(i) AND B(i);
	END GENERATE;

	Carries(0) <= Cin;
	
	
	BKGenerator : BrentKungGenerator
		GENERIC MAP(Size => N)
		PORT MAP(
					Pin => P,
					Gin => G,
					Cin => Carries(0),
					Pout => open,
					Gout => Carries(N downto 1)
					);
					
					
	-- Compute sum for bit 0
	ComputeSum : for i in 0 to N-1 generate
		S(i) <= P(i) xor Carries(i);
	end generate;
	
	Cout <= Carries(N);
	Ovfl <= Carries(N) XOR Carries(N-1);
	
END ARCHITECTURE rtl;
	
	
			
