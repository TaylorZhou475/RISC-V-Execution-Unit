library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

--Shifter using separate barrel shifters, 6 stages of 2 input mux
ENTITY ShfSepMux2 IS
generic(N : integer := 64);
PORT(
		Input : IN STD_LOGIC_VECTOR(N-1 downto 0);
		Arith : IN STD_LOGIC_VECTOR(N-1 downto 0);
		ShiftFN : IN STD_LOGIC_VECTOR(1 downto 0);
		ExtWord : IN STD_LOGIC;
		ShiftCount : IN STD_LOGIC_VECTOR(log2(N)-1 downto 0);
		Output : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
END ENTITY ShfSepMux2;

ARCHITECTURE rtl OF ShfSepMux2 IS

type unsigned_array is array (natural range <>) of unsigned(N-1 downto 0);
type signed_array is array (natural range <>) of signed(N-1 downto 0);

--This signal is either same as input, or is adjusted for 32 bit word instructions
signal InputSwapped : unsigned(N-1 downto 0);
signal InputSigned : signed(N-1 downto 0);
signal InputSigned_SRAW_Corrected : signed(N-1 downto 0);
constant M : INTEGER := log2(N);

signal srlvals : unsigned_array(0 to M);
signal srlout : unsigned(N-1 downto 0);

signal sllvals : unsigned_array(0 to M);
signal sllout : unsigned(N-1 downto 0);

signal sravals : signed_array(0 to M);
signal sraout : signed(N-1 downto 0);

signal y1, y2 : std_logic_vector(N-1 downto 0);
signal sgnExt : std_logic_vector(1 downto 0);
signal Arith_Extended : std_logic_vector(N-1 downto 0);
BEGIN

	InputSwapped <= unsigned(Input);
	InputSigned <= signed(InputSwapped);
	InputSigned_SRAW_Corrected <= resize(signed(Input(N/2-1 downto 0)), N);
	
	-- Modified srlvals(0) to zero out upper 32 bits if ExtWord='1'
	srlvals(0) <= InputSwapped when ExtWord = '0' else
	              resize(InputSwapped(N/2-1 downto 0), N);
					  
	sllvals(0) <= InputSwapped;
	sravals(0) <= InputSigned when ExtWord = '0' else InputSigned_SRAW_Corrected;
	
	Gen_SRL : for i in 0 to M-1 generate
		constant S : natural := 2**i;
		begin
			srlvals(i+1) <= shift_right(srlvals(i), S) when ShiftCount(i)='1'else srlvals(i);
		end generate;
		
	srlout <= srlvals(M);
	 
	 
	GEN_SLL : for i in 0 to M-1 generate
		constant S : natural := 2**i;
	begin
		sllvals(i+1) <= shift_left(sllvals(i), S) when ShiftCount(i)='1' else sllvals(i);
	end generate;
			
	sllout <= sllvals(M);
	
	
	Gen_SRA : for i in 0 to M-1 generate
		constant S : natural := 2**i;
	begin
		sravals(i+1) <= shift_right(sravals(i), S) when ShiftCount(i) = '1' else sravals(i);
	end generate;
	
	sraout <= sravals(M);
	
	-- Sign extension for ADDW/SUBW
	Arith_Extended <= (N-1 downto N/2 => Arith(N/2-1)) & Arith(N/2-1 downto 0) when ExtWord = '1' else Arith;

	sgnExt <= ShiftFN(0) & ExtWord;
	 
	y1 <= Arith_Extended when sgnExt = "00" else
         Arith_Extended when sgnExt = "01" else
			std_logic_vector(sllout) when sgnExt = "10" else
			std_logic_vector(resize(signed(sllout(N/2-1 downto 0)), N)); -- SLLW: sign-extend result
			
	y2 <= std_logic_vector(srlout) when sgnExt = "00" else
         std_logic_vector(resize(signed(srlout(N/2-1 downto 0)), N))  when sgnExt = "01" else -- SRLW: sign-extend result
			std_logic_vector(sraout) when sgnExt = "10" else
			std_logic_vector(resize(signed(sraout(N/2-1 downto 0)), N)); -- SRAW: sign-extend result
			
	Output <= y2 when ShiftFN(1) = '1' else y1;
	 
END rtl;
