--Logic subsystem

library ieee;
use ieee.std_logic_1164.all;

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
	begin
	
		with LogicFN select
			Y <= B when "00", -- LUI, load B into register, needs to be fixed
				  A xor B when "01", -- xor
				  A or B when "10", -- or
				  A and B when "11", -- and
				  (others => 'X') when others;
				  
end Architecture rtl;