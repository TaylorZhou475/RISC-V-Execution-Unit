LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

/*--------------------------------------------------------------
---- CONFIGURATIONS FOR BKA ADDER
--------------------------------------------------------------
--
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

*/------------------------------------------------------------
-- CONFIGURATIONS FOR KSA ADDER
------------------------------------------------------------

----For functional verification of KSA
--CONFIGURATION ConfigKSA_rtl OF AdderTB IS
--  FOR Testing  -- matches my testbench architecture name
--	FOR DUT : TestUnit
--      USE ENTITY work.KoggeStone(rtl);
--	END FOR;
--  END FOR;
--END CONFIGURATION ConfigKSA_rtl;
--
--
----This is for timing verification of KSA
--CONFIGURATION ConfigKSA_structure OF AdderTB IS
--  FOR Testing
--    FOR DUT : TestUnit
--      USE ENTITY work.KoggeStone(structure);
--    END FOR;
--  END FOR;
--END CONFIGURATION ConfigKSA_structure;

--------------------------------------------------------------
---- CONFIGURATIONS FOR LADNER-FISCHER ADDER
--------------------------------------------------------------

--For functional verification of Ladner-Fischer
CONFIGURATION ConfigLFA_rtl OF AdderTB IS
  FOR Testing                      -- matches your testbench architecture
    FOR DUT : TestUnit
      USE ENTITY work.LadnerFischer(rtl);
    END FOR;
  END FOR;
END CONFIGURATION ConfigLFA_rtl;


--This is for timing verification of Ladner-Fischer
CONFIGURATION ConfigLFA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.LadnerFischer(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigLFA_structure;

--------------------------------------------------------------
---- CONFIGURATIONS FOR RCA ADDER
--------------------------------------------------------------
--
----For functional verification of RCA
--CONFIGURATION ConfigRCA_rtl OF AdderTB IS
--  FOR Testing  -- matches my testbench architecture name
--	FOR DUT : TestUnit
--      USE ENTITY work.RippleCarry(rtl);
--	END FOR;
--  END FOR;
--END CONFIGURATION ConfigRCA_rtl;
--
--
----This is for timing verification of RCA
--CONFIGURATION ConfigRCA_structure OF AdderTB IS
--  FOR Testing
--    FOR DUT : TestUnit
--      USE ENTITY work.RippleCarry(structure);
--    END FOR;
--  END FOR;
--END CONFIGURATION ConfigRCA_structure;
--
--------------------------------------------------------------
---- CONFIGURATIONS FOR CSA ADDER
--------------------------------------------------------------
--
----For functional verification of CSA
--CONFIGURATION ConfigCSA_rtl OF AdderTB IS
--  FOR Testing  -- matches my testbench architecture name
--	FOR DUT : TestUnit
--      USE ENTITY work.ConditionalSum(rtl);
--	END FOR;
--  END FOR;
--END CONFIGURATION ConfigCSA_rtl;
--
--
----This is for timing verification of CSA
--CONFIGURATION ConfigCSA_structure OF AdderTB IS
--  FOR Testing
--    FOR DUT : TestUnit
--      USE ENTITY work.ConditionalSum(structure);
--    END FOR;
--  END FOR;
--END CONFIGURATION ConfigCSA_structure;