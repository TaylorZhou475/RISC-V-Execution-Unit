library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

--Shifter using combined barrel shifters, 64 bits, 6 stages of mux
ENTITY ShfCombMux2 IS
generic(N : integer := 64);
PORT(
		Input : IN STD_LOGIC_VECTOR(N-1 downto 0);
		Arith : IN STD_LOGIC_VECTOR(N-1 downto 0);
		ShiftFN : IN STD_LOGIC_VECTOR(1 downto 0);
		ExtWord : IN STD_LOGIC;
		ShiftCount : IN STD_LOGIC_VECTOR(log2(N)-1 downto 0);
		Output : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
END ENTITY ShfCombMux2;

ARCHITECTURE rtl OF ShfCombMux2 IS

--This function was not written by us, from https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
function reverse_any_vector (a: in std_logic_vector)
return std_logic_vector is
  variable result: std_logic_vector(a'RANGE);
  alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end; -- function reverse_any_vector

constant M : INTEGER := log2(N);

type unsigned_array is array (natural range <>) of unsigned(N-1 downto 0);
type signed_array is array (natural range <>) of signed(N-1 downto 0);

signal signbit : std_logic;

signal preShift : std_logic_vector(N-1 downto 0);
signal shiftvals : unsigned_array(0 to M);
signal postShift : std_logic_vector(N-1 downto 0);

signal InputSwapped : signed(N-1 downto 0);
signal InputSigned : signed(N-1 downto 0);
signal sravals : signed_array(0 to M);

BEGIN
  
	InputSwapped <= signed(Input(N/2-1 downto 0) & Input(N-1 downto N/2));
	InputSigned <= signed(Input);
	
	preShift <= reverse_any_vector(Input) when ShiftFN(1) = '1' else Input;

	shiftvals(0) <= preShift;

	Shift : for i in 0 to M-1 generate
		constant S : natural := 2**i;
		begin
			shiftvals(i+1) <= shift_left(shiftvals(i), S) when ShiftCount(i)='1'else shiftvals(i);
		end generate;
		
	sravals(0) <= InputSigned when ExtWord = '0' else InputSwapped;
	Gen_SRA : for i in 0 to M-1 generate
		constant S : natural := 2**i;
	begin
		sravals(i+1) <= shift_right(sravals(i), S) when ShiftCount(i) = '1' else sravals(i);
	end generate;
	
	


	
	postShift <= Arith when ShiftFN = '00' else
					 shiftvals(M) when ShiftFN = '01' else
					 reverse_any_vector(shiftvals(M)) when ShiftFN = '10' else
					 std_logic_vector(sravals(M));
					 
	 
END rtl;