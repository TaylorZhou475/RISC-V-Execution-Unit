library ieee;
use ieee.std_logic_1164.all;

entity muxN_64 is
    generic (
        N : integer := 8  -- number of 64-bit inputs
    );
    port (
        d   : in  array (0 to N-1) of std_logic_vector(63 downto 0);
        sel : in  integer range 0 to N-1;
        y   : out std_logic_vector(63 downto 0)
    );
end entity;

architecture rtl of muxN_64 is
begin
    -- Simply pick one 64-bit vector from the array
    y <= d(sel);
end architecture;
