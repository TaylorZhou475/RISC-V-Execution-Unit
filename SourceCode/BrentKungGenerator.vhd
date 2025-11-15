LIBRARY ieee;
use ieee.std_logic_1164.all;

--This an entity instantiated in the BKA files, the recursive portion of the Brent Kung Adder
ENTITY BrentKungGenerator IS

GENERIC(Size : NATURAL);

PORT(
		Pin, Gin : IN STD_LOGIC_VECTOR(Size-1 downto 0);
		Cin		: IN STD_LOGIC;
		Pout, Gout : OUT STD_LOGIC_VECTOR(Size-1 downto 0)
	 );
	 
END ENTITY BrentKungGenerator;


ARCHITECTURE Logic OF BrentKungGenerator IS

COMPONENT BrentKungGenerator 
GENERIC(Size : NATURAL);

PORT(
		Pin, Gin : IN STD_LOGIC_VECTOR(Size-1 downto 0);
		Cin	 : IN STD_LOGIC;
		Pout, Gout : OUT STD_LOGIC_VECTOR(Size-1 downto 0)
	 );
END COMPONENT;

--Signal for the recursive instatiations, the propagates and generate signals for the left and right partitions
SIGNAL P_left, P_right, G_left, G_right : STD_LOGIC_VECTOR(Size/2-1 downto 0);

--Propagate and generate for the combined blocks
SIGNAL P_combined, G_combined : STD_LOGIC_VECTOR(Size-1 downto 0);
BEGIN

--When recursion reaches the base case
base_case : IF Size = 1 GENERATE
	
	P_combined <= Pin;
	G_combined(0) <= Gin(0) OR (Pin(0) AND Cin);

END GENERATE;


--While the size is greater than one, split into left (upper half) and right (lower half)
recursive_generate : IF Size > 1 GENERATE

	LEFT : BrentKungGenerator
		GENERIC MAP(Size => Size/2)
		PORT MAP(
					Pin => Pin(Size-1 downto Size/2),
					Gin => Gin(Size-1 downto Size/2),
					Cin => '0',
					Pout => P_left,
					Gout => G_left
					);
					
		
	RIGHT : BrentKungGenerator
		GENERIC MAP(Size => Size/2)
		PORT MAP(
					Pin => Pin(Size/2-1 downto 0),
					Gin => Gin(Size/2-1 downto 0),
					Cin => Cin,
					Pout => P_right,
					Gout => G_right
					);
					
	--For the upper half of the combined block
	COMBINED_UPPER: FOR i IN 0 TO Size/2-1 GENERATE
		--The combined block only generates a carry if the upper half generates one, or if the lower one generates one and the upper half all propagates
		--Note that P_left(i) represents the propagation of all preceding bits
		G_combined(i + Size/2) <= G_left(i) OR (P_left(i) AND G_right(Size/2-1));
		
		--The combined block propagates if both upper and lower halfs all propagate
		P_combined(i + Size/2) <= P_left(i) AND P_right(Size/2-1);
		
	END GENERATE;
		
	--The lower half is just copied in
	COMBINED_LOWER: FOR i in 0 TO Size/2-1 GENERATE
		
		G_combined(i) <= G_right(i);
		P_combined(i) <= P_right(i);
		
	END GENERATE;
	
END GENERATE;

--To explain, the Pout and Gout represent the propagate and generate signals for the blocks
--For example, Pout(i) will have the propagate signal for the block from i down to 0
--So P(3) will have the propagate signal for P(3) down to P(0)
Pout <= P_combined;
Gout <= G_combined;

END ARCHITECTURE Logic;
		
		
	
		
					