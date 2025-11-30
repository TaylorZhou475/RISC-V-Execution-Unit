library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Shifter using separate barrel shifters, 64 bits, 6 stages of mux
ENTITY ShfSepMux2 IS
PORT(
		Input : IN STD_LOGIC_VECTOR(63 downto 0);
		Arith : IN STD_LOGIC_VECTOR(63 downto 0);
		ShiftFN : IN STD_LOGIC_VECTOR(1 downto 0);
		ExtWord : IN STD_LOGIC;
		ShiftCount : IN STD_LOGIC_VECTOR(6 downto 0);
		Output : OUT STD_LOGIC_VECTOR(63 downto 0)
		);
END ENTITY ShfSepMux2;

ARCHITECTURE rtl OF ShfSepMux2 IS

--This signal is either same as input, or is adjusted for 32 bit word instructions
signal InputSwapped : std_logic_vector(63 downto 0);

signal srl32, srl16, srl8, srl4, srl2, srl1, srlout : std_logic_vector(63 downto 0);
	
signal sll32, sll16, sll8, sll4, sll2, sllout: std_logic_vector(63 downto 0);

signal InputSigned : signed(63 downto 0);
signal sra32, sra16, sra8, sra4, sra2, sraout : signed(63 downto 0);


signal y1, y2, y3, y4 : std_logic_vector(63 downto 0);
BEGIN

    -- Shift by 32
    srl32 <= (63 downto 32 => '0') & Input(63 downto 32) when ShiftCount(5)='1' else Input;

    -- Shift by 16
    srl16 <= (63 downto 48 => '0') & srl32(63 downto 16) when ShiftCount(4)='1' else srl32;

    -- Shift by 8
    srl8 <= (63 downto 56 => '0') & srl16(63 downto 8)  when ShiftCount(3)='1' else srl16;

    -- Shift by 4
    srl4 <= (63 downto 60 => '0') & srl8(63 downto 4)  when ShiftCount(2)='1' else srl8;

    -- Shift by 2
    srl2 <= (63 downto 62 => '0') & srl4(63 downto 2)  when ShiftCount(1)='1' else srl4;

    -- Shift by 1
    srlout  <= (63 => '0') & srl2(63 downto 1)            when ShiftCount(0)='1' else srl2;
	 
	 
	-- SLL64: Logical left shift

	 -- Shift by 32
	 sll32 <= Input(31 downto 0) & (31 downto 0 => '0')
           when ShiftCount(5)='1' else Input;

	 -- Shift by 16
	 sll16 <= sll32(47 downto 0) & (15 downto 0 => '0')
           when ShiftCount(4)='1' else sll32;

	 -- Shift by 8
	 sll8  <= sll16(55 downto 0) & (7 downto 0 => '0')
           when ShiftCount(3)='1' else sll16;

	 -- Shift by 4
	 sll4  <= sll8(59 downto 0) & (3 downto 0 => '0')
           when ShiftCount(2)='1' else sll8;

	 -- Shift by 2
	 sll2  <= sll4(61 downto 0) & (1 downto 0 => '0')
           when ShiftCount(1)='1' else sll4;

	 -- Shift by 1
	 sllout <= sll2(62 downto 0) & '0'
            when ShiftCount(0)='1' else sll2;
			
		
		
	 InputSigned <= signed(Input);


    sra32 <= shift_right(InputSigned, 32)
              when ShiftCount(5)='1' else InputSigned;

    sra16 <= shift_right(InputSigned, 16)
              when ShiftCount(4)='1' else sra32;

    sra8 <= shift_right(InputSigned, 8)
             when ShiftCount(3)='1' else sra16;

    sra4 <= shift_right(InputSigned, 4)
             when ShiftCount(2)='1' else sra8;

    sra2 <= shift_right(InputSigned, 2)
             when ShiftCount(1)='1' else sra4;

    sraout <= shift_right(InputSigned, 1)
             when ShiftCount(0)='1' else sra2;
				 
	
	 y1 <= sllout when ShiftFN(0) = '1' else Arith;
	 y2 <= std_logic_vector(sraout) when ShiftFN(0) = '1' else srlout;
	 
	 --This part is for the shift32 i think, not done yet
	 y3 <= y1;
	 y4 <= y2;
	 
	 Output <= y4 when ShiftFN(1) = '1' else y3;
	 
END rtl;
