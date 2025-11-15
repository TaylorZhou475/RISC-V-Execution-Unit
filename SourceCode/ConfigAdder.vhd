LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

------------------------------------------------------------
-- CONFIGURATIONS FOR BKA ADDER
------------------------------------------------------------

--For functional verification of BKA
CONFIGURATION ConfigBKA_rtl OF AdderTB IS
  FOR Testing  -- matches my testbench architecture name
	FOR DUT : TestUnit
      USE ENTITY work.BrentKung(rtl);
	END FOR;
  END FOR;
END CONFIGURATION ConfigBKA_rtl;


--This is for timing verification of BKA
CONFIGURATION ConfigBKA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.BrentKung(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigBKA_structure;