library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.LogPackage.all;

entity ShfCombMux4 is
generic(N : integer := 64);
port(
		Input      : in  std_logic_vector(N-1 downto 0);   -- value to shift
      Arith      : in  std_logic_vector(N-1 downto 0);   -- ALU passthrough value
      ShiftFN    : in  std_logic_vector(1 downto 0);     -- 00 passthrough, 01 SLL, 10 SRL, 11 SRA
      ExtWord    : in  std_logic;
      ShiftCount : in  std_logic_vector(log2(N)-1 downto 0);
      Output     : out std_logic_vector(N-1 downto 0)
);
end entity ShfCombMux4;

architecture rtl of ShfCombMux4 is

--This function was not written by us, from:
--https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
function reverse_any_vector(a : std_logic_vector) return std_logic_vector is
  variable r : std_logic_vector(a'range);
  alias aa : std_logic_vector(a'reverse_range) is a;
begin
  for i in aa'range loop
		r(i) := aa(i);
  end loop;
  return r;
end function;

constant M : integer := 3;

type shift_array is array (natural range <>) of std_logic_vector(N-1 downto 0);

signal InputExtended       : std_logic_vector(N-1 downto 0);
signal stage     : shift_array(0 to M);
signal stage_in  : std_logic_vector(N-1 downto 0);
signal stage_out : std_logic_vector(N-1 downto 0);

signal sign_bit  : std_logic;
signal final_res : std_logic_vector(N-1 downto 0);

begin


	 --This is a process just to make quartus compile it with one driver
	 --Puts in the input, then the top half is sign extended or zeroed
	process(Input, ExtWord, ShiftFN)
	begin
		InputExtended <= Input; -- default

			if ExtWord = '1' then
				case ShiftFN is
					when "10" =>  -- SRLW
						InputExtended(N-1 downto N/2) <= (others => '0');

               when "11" =>  -- SRAW
                  InputExtended(N-1 downto N/2) <= (others => Input(N/2-1));

               when others =>
                  null;
            end case;
			end if;
	end process;

	--reverse if sll
   stage_in <= reverse_any_vector(InputExtended) when ShiftFN = "01" else InputExtended;

   -- logical shifts => 0 fill; arithmetic => sign fill
   sign_bit <= '0'      when (ShiftFN = "01" or ShiftFN = "10") else
                InputExtended(N-1) when  ShiftFN = "11" else
                '0';


   stage(0) <= stage_in;

   gen_stages : for i in 0 to M-1 generate
      constant S : integer := 2**(2*i);
   begin
		--When shifting, concurrently fill in bits with the sign bit
		stage(i+1) <= stage(i) when ShiftCount(2*i+1 downto 2*i) = "00" else
						  ((N-1 downto N-S => sign_bit) & stage(i)(N-1 downto S)) when ShiftCount(2*i+1 downto 2*i) = "01" else 
						  ((N-1 downto N-2*S => sign_bit) & stage(i)(N-1 downto 2*S)) when ShiftCount(2*i+1 downto 2*i) = "10" else 
						  ((N-1 downto N-3*S => sign_bit) & stage(i)(N-1 downto 3*S)); 
   end generate;

	--Reverse back for left shifts
   stage_out <= reverse_any_vector(stage(M)) when ShiftFN = "01" else stage(M);


   process(Arith, stage_out, ShiftFN, ExtWord)
   begin
      if ShiftFN = "00" then
            -- passthrough from ALU 
			if ExtWord = '1' then
				final_res(N/2-1 downto 0)  <= Arith(N/2-1 downto 0);
            final_res(N-1 downto N/2) <= (others => Arith(N/2-1));
         else
            final_res <= Arith;
         end if;

      else
			-- The output from the shift
			if ExtWord = '1' then
				 final_res(N/2-1 downto 0)  <= stage_out(N/2-1 downto 0);
				 final_res(N-1 downto N/2-1) <= (others => stage_out(N/2-1));
			else
				 final_res <= stage_out;
			end if;
	  end if;
   end process;

   Output <= final_res;

end architecture rtl;
