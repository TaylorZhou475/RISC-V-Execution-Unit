library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

Entity ExecUnit is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
		FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
		AddnSub, ExtWord : in std_logic := '0';
		Y : out std_logic_vector( N-1 downto 0 );
		Zero, AltB, AltBu : out std_logic );
End Entity ExecUnit;

architecture ShfSepMux2_KS of ExecUnit is
signal ShiftCount : std_logic_vector(log2(N)-1 downto 0);
signal LogicOut, ShifterOut, AdderOut : std_logic_vector(N-1 downto 0);
signal Cout, Ovfl : std_logic;
signal AltB, AltBu : std_logic_vector(N-1 downto 0);

begin
	
	Adder : entity work.KoggeStone
	--Cant pass generic in
		port map(
					A => A,
					B => B,
					Cin => '0',
					S => AdderOut,
					Cout => Cout,
					Ovfl => Ovfl
					);
	
	AltB <= Ovfl XOR AdderOut(N-1);
	AltBu <= NOT Cout;
	
	ShiftCount <= B(log2(N)-1 downto 0) when ExtWord = '0' else ("0" & B(log2(N)-2 downto 0));	
			
   Shifter : entity work.ShfSepMux2
       port map (
					Input => A,  
					Arith => AdderOut,
					ShiftFN => ShiftFN,
					ExtWord => ExtWord,
					ShiftCount => ShiftCount,      
					Output => ShiftOut
					);
					
	--Add the Logic portion here
	--And then a mux for the output
end ShfSepMux2_KS;
					