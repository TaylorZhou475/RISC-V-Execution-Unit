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
signal DoSub : std_logic;
signal Y_internal : std_logic_vector(N-1 downto 0);

-- Helper signals for 32-bit comparison logic
signal Ovfl32, Cout32 : std_logic;
signal S31, A31, B31 : std_logic;

begin

	B_In <= B when AddnSub = '0' else NOT B; --inverted B
	Cin_IN <= AddnSub;
	
	Adder : entity work.KoggeStone		-- edit adder
	--Cant pass generic in
		port map(
					A => A,
					B => B,
					Cin => Cin_In,
					AddnSub => DoSub,
					S => AdderOut,
					Cout => Cout,
					Ovfl => Ovfl
					);
					
	-- We need derived flags for 32-bit operations (ExtWord='1')
	A31 <= A(31);
	B31 <= B_In(31);
	S31 <= AdderOut(31);
	
	Ovfl32 <= (A31 AND B31 AND NOT S31) OR (NOT A31 AND NOT B31 AND S31);
	
	Cout32 <= (A31 AND B31) OR (B31 AND NOT S31) OR (A31 AND NOT S31); 

	AltB_sig <= (Ovfl XOR AdderOut(N-1)) when ExtWord = '0' else 
	            (Ovfl32 XOR S31);
					
	AltBu_sig <= (NOT Cout) when ExtWord = '0' else 
	             (NOT Cout32);
	
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
					
	Y_internal <= ShifterOut when FuncClass = "00" else
        LogicOut when FuncClass = "01" else 
		  AltB_ext when FuncClass = "10" else
		  AltBu_ext; 
		  
	Y <= Y_internal;
	
	-- Zero Flag: Checks equality (A-B == 0)
	Zero <= '1' when (ExtWord='0' and unsigned(AdderOut) = 0) or 
	                 (ExtWord='1' and unsigned(AdderOut(31 downto 0)) = 0) else '0';

end Test;