library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

--Shifter using separate barrel shifters, 64 bits, 6 stages of mux
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
constant M : INTEGER := log2(N);

signal srlvals : unsigned_array(0 to M);
signal srlout : unsigned(N-1 downto 0);

signal sllvals : unsigned_array(0 to M);
signal sllout : unsigned(N-1 downto 0);

signal sravals : signed_array(0 to M);
signal sraout : signed(N-1 downto 0);

signal y1, y2 : std_logic_vector(N-1 downto 0);
signal sgnExt : std_logic_vector(1 downto 0);
BEGIN

	InputSwapped <= unsigned(Input((N/2)-1 downto 0) & Input(N-1 downto N/2)) when (ExtWord = '1' AND ShiftFN(1) = '1') else unsigned(Input);
	InputSigned <= signed(InputSwapped);
	srlvals(0) <= InputSwapped;
	sllvals(0) <= InputSwapped;
	sravals(0) <= InputSigned;
	
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
	
	sgnExt <= ShiftFN(0) & ExtWord;
	 
	 --In theory arithmetic should already be sign extended
	y1 <= Arith when sgnExt = "00" else
         Arith when sgnExt = "01" else
			std_logic_vector(sllout) when sgnExt = "10" else
			std_logic_vector(resize(unsigned(sllout(N/2-1 downto 0)), N)) when sgnExt = "11";
			
	y2 <= std_logic_vector(srlout) when sgnExt = "00" else
         std_logic_vector(resize(unsigned(srlout(N-1 downto N/2-1)), N))  when sgnExt = "01" else
			std_logic_vector(sraout) when sgnExt = "10" else
			std_logic_vector(resize(signed(sraout(N-1 downto N/2-1)), N)) when sgnExt = "11";
			
	Output <= y2 when ShiftFN(1) = '1' else y1;
	 
END rtl;
