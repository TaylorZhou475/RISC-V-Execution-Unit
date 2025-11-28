--Full adder module
library IEEE;
use IEEE.std_logic_1164.ALL;

entity FullAdder is 
	port(
		x : in std_logic;
		y : in std_logic;
		cin : in std_logic;
		sum : out std_logic;
		cout : out std_logic
	);
end FullAdder;

architecture structural of FullAdder is
	
	signal inter_sig : std_logic_vector(2 downto 0);
	
	begin
	
	inter_sig(0) <= x XOR y;
	sum <= inter_sig(0) XOR cin;
	inter_sig(1) <= inter_sig(0) AND cin;
	inter_sig(2) <= x AND y;
	cout <= inter_sig(1) OR inter_sig(2);
	
end architecture structural;