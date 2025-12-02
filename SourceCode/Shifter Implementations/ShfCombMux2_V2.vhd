library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

--Shifter using combined barrel shifters, 64 bits, 6 stages of mux
ENTITY ShfCombMux2_V2 IS
    generic(N : integer := 64);
    PORT(
        Input      : IN STD_LOGIC_VECTOR(N-1 downto 0);
        Arith      : IN STD_LOGIC_VECTOR(N-1 downto 0);
        ShiftFN    : IN STD_LOGIC_VECTOR(1 downto 0);
        ExtWord    : IN STD_LOGIC;
        ShiftCount : IN STD_LOGIC_VECTOR(log2(N)-1 downto 0);
        Output     : OUT STD_LOGIC_VECTOR(N-1 downto 0)
    );
END ENTITY ShfCombMux2_V2;

ARCHITECTURE rtl OF ShfCombMux2_V2 IS

    --This function was not written by us, from:
    --https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
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
    type signed_array   is array (natural range <>) of signed(N-1 downto 0);

    --Used for srlw and sllw 
    signal InputMasked   : std_logic_vector(N-1 downto 0);
    signal InputToShift  : std_logic_vector(N-1 downto 0);

    --Signal that goes into srl and sll barrel
    signal preShift      : std_logic_vector(N-1 downto 0);

    --Array that holds the shifted values after each shifting stage
    signal shiftvals     : unsigned_array(0 to M);

    signal castedShift   : std_logic_vector(N-1 downto 0);
    signal sllout        : std_logic_vector(N-1 downto 0);

    signal reversedBack  : std_logic_vector(N-1 downto 0);
    signal srlout        : std_logic_vector(N-1 downto 0);

    signal InputSwapped  : signed(N-1 downto 0);
    signal InputSigned   : signed(N-1 downto 0);
    signal sravals       : signed_array(0 to M);
    signal sraout        : signed(N-1 downto 0);

    signal ArithExt      : std_logic_vector(N-1 downto 0);

BEGIN

    InputMasked  <= (N-1 downto N/2 => '0') & Input(N/2-1 downto 0);
    InputToShift <= InputMasked when ExtWord = '1' else Input;

    InputSwapped <= signed(Input(N/2-1 downto 0) & Input(N-1 downto N/2));
    InputSigned  <= signed(Input);

    preShift <= reverse_any_vector(InputToShift) when ShiftFN(1) = '1'
                else InputToShift;

    shiftvals(0) <= unsigned(preShift);

    Shift : for i in 0 to M-1 generate
        constant S : natural := 2**i;
    begin
        shiftvals(i+1) <= shift_left(shiftvals(i), S)
                           when ShiftCount(i)='1'
                           else shiftvals(i);
    end generate;

    sravals(0) <= InputSigned when ExtWord = '0' else InputSwapped;

    Gen_SRA : for i in 0 to M-1 generate
        constant S : natural := 2**i;
    begin
        sravals(i+1) <= shift_right(sravals(i), S)
                         when ShiftCount(i) = '1'
                         else sravals(i);
    end generate;

    castedShift <= std_logic_vector(shiftvals(M));

    --Either sign ext or dont
    sllout <= castedShift when ExtWord = '0' else
              (N-1 downto N/2 => castedShift(N/2-1)) &
              castedShift(N/2-1 downto 0);

    reversedBack <= reverse_any_vector(std_logic_vector(shiftvals(M)));

    srlout <= reverse_any_vector(std_logic_vector(shiftvals(M))) when ExtWord = '0' else
              (N-1 downto N/2 => reversedBack(N/2-1)) &
              reversedBack(N/2-1 downto 0);

    ArithExt <= (N-1 downto N/2 => Arith(N/2-1)) &
                Arith(N/2-1 downto 0)
                when ExtWord = '1'
                else Arith;

    sraout <= sravals(M) when ExtWord = '0' else
              resize(sravals(M)(N-1 downto N/2), N);

    Output <= ArithExt when ShiftFN = "00" else
              sllout    when ShiftFN = "01" else
              srlout    when ShiftFN = "10" else
              std_logic_vector(sraout);

END rtl;
