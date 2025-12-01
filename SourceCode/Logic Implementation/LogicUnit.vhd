--Logic subsystem

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

Entity LogicUnit is
	Generic (N : natural := 64);
	port(
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		LogicFN : in std_logic_vector(1 downto 0);
		Y : out std_logic_vector(N-1 downto 0)
	);
end Entity LogicUnit;

Architecture rtl of LogicUnit is
	signal lui_concate : std_logic_vector(31 downto 0); --32 bit imm
	begin
	
		lui_concate <= B(19 downto 0) & "000000000000";
		--Lui out sign extends the 31 bit from 32 to 63, cast to signed, then back to std_logic_vector
	
		with LogicFN select
			Y <= std_logic_vector(resize(signed(lui_concate), N)) when "00", -- LUI, load B into register, needs to be fixed
				  A xor B when "01", -- xor
				  A or B when "10", -- or
				  A and B when "11", -- and
				  (others => 'X') when others;
				  
end Architecture rtl;