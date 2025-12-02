--possible solution for sra being funky is to create
--a hybrid approach of combined shifter and the seperate one (other design candiadte)
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

--signals for logical path (combined)
signal input_logical : std_logic_vector(N-1 downto 0);
signal preShift : std_logic_vector(N-1 downto 0);
signal shiftvals : unsigned_array(0 to M);
signal logical_result : std_logic_vector(N-1 downto 0);
signal logical_result_rev : std_logic_vector(N-1 downto 0);

--signals for arithmetic path (seperated part aka why hybrid)
signal input_arithmetic : signed(N-1 downto 0);
signal sravals : signed_array(0 to M);
signal arithmetic_result : std_logic_vector(N-1 downto 0);

BEGIN
  --for sll, srl
  input_logical <= Input when ExtWord = '0' else
						 (N-1 downto 32 => '0') & Input(31 downto 0); --removes sign extend and keeps lower 32 bit
  --for sra
  input_arithmetic <= signed(Input) when ExtWord = '0' else
							 resize(signed(Input(31 downto 0)), N);
	
--LOGICAL SHIFT---
	preShift <= reverse_any_vector(input_logical) when ShiftFN = "10" else input_logical;
	
	shiftvals(0) <= unsigned(preShift);
	
	--left shift only barrel shifter
	GenShift : for i in 0 to M-1 generate
		constant S : natural := 2**i;
	begin
		shiftvals(i+1) <= shift_left(shiftvals(i), S) when ShiftCount(i) = '1' else shiftvals(i);
	end generate;
	
	logical_result <= std_logic_vector(shiftvals(M));
	logical_result_rev <= reverse_any_vector(logical_result);
	
--Arithmetic Shifter, sra seperate
	
	sravals(0) <= input_arithmetic;
	
	GenSRA : for i in 0 to M-1 generate
		constant S : natural := 2**i;
	begin 
		sravals(i+1) <= shift_right(sravals(i), S) when ShiftCount(i) = '1' else sravals(i);
	end generate;
	
	arithmetic_result <= std_logic_vector(sravals(M));
	
	--Output Mux
	
	process(shiftFN, ExtWord, Arith, logical_result, logical_result_rev, arithmetic_result)
		variable temp_res : std_logic_vector(N-1 downto 0);
		begin
			case ShiftFN is 
				when "00" => --Arithmetic pass through
					temp_res := Arith;
				when "01" => --SLL
					temp_res := logical_result;
				when "10" => --SRL
					temp_res := logical_result_rev;
				when "11" => --SRA
					temp_res := arithmetic_result;
				when others => --Dont cares
					temp_res := (others => 'X');
			end case;
	
		--extend 32 bit result to 64 bit, sign extended
		if ExtWord = '1' and ShiftFN /= "00" then --btw /= is not equal to
			output <= std_logic_vector(resize(signed(temp_res(31 downto 0)), N));
		else
			output <= temp_res;
		end if;
	end process;
					
	 
END rtl;