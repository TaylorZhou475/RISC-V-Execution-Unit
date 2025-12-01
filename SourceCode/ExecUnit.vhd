library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

Entity ExecUnit is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
		FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
		AddnSub, ExtWord : in std_logic;
		Y : out std_logic_vector( N-1 downto 0 );
		Zero, AltB, AltBu : out std_logic );
End Entity ExecUnit;

architecture Test of ExecUnit is			
signal ShiftCount : std_logic_vector(log2(N)-1 downto 0);
signal LogicOut, ShifterOut, AdderOut : std_logic_vector(N-1 downto 0);
signal Cout, Ovfl : std_logic;
signal AltB_sig, AltBu_Sig : std_logic;
signal AltB_ext, AltBu_ext : std_logic_vector(N-1 downto 0);

signal B_In : std_logic_vector(N-1 downto 0);
signal Cin_In : std_logic;
signal LogicOut_Ext : std_logic_vector(N-1 downto 0);
signal DoSub : std_logic;
signal Y_internal : std_logic_vector(N-1 downto 0);
signal Zero_Source : std_logic_vector(N-1 downto 0);

begin

	B_In <= B when AddnSub = '0' else NOT B; --inverted B
	Cin_IN <= AddnSub;
	
	Adder : entity work.RippleCarry		-- edit adder
	--Cant pass generic in
		port map(
					A => A,
					B => B_In,
					Cin => Cin_In,
					S => AdderOut,
					Cout => Cout,
					Ovfl => Ovfl
					);
	AltB_sig <= Ovfl XOR AdderOut(N-1);
	AltBu_sig <= NOT Cout;
	
	AltB <= AltB_sig;
	AltBu <= AltBu_sig;
	
	AltB_ext <= (N-1 downto 1 => '0') & AltB_sig;
	AltBu_ext <= (N-1 downto 1 => '0') & AltBu_sig;
	
	
	ShiftCount <= B(log2(N)-1 downto 0) when ExtWord = '0' else ("0" & B(log2(N)-2 downto 0));	
			
   Shifter : entity work.ShfSepMux2		-- edit Shifter
       port map (
					Input => A,  
					Arith => AdderOut,
					ShiftFN => ShiftFN,
					ExtWord => ExtWord,
					ShiftCount => ShiftCount,      
					Output => ShifterOut
					);
					
	LogicUnit : entity work.LogicUnit
		port map(
					A => A,
					B => B,
					LogicFN => LogicFN,
					Y => LogicOut
					);
					
	LogicOut_Ext <= (N-1 downto 32 => LogicOut(31)) & LogicOut(31 downto 0) when ExtWord = '1' else LogicOut;
					
	Y_internal <= ShifterOut when FuncClass = "00" else
        LogicOut_Ext when FuncClass = "01" else
		  AltB_ext when FuncClass = "10" else
		  AltBu_ext; 
		  
	Y <= Y_internal;
	
	Zero_Source <= AdderOut when (FuncClass = "10" or FuncClass = "11") else Y_internal;
	
	Zero <= '1' when (ExtWord='0' and unsigned(Zero_Source) = 0) or 
	                 (ExtWord='1' and unsigned(Zero_Source(31 downto 0)) = 0) else '0';

end Test;
