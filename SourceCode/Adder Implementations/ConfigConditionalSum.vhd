------------------------------------------------------------
-- CONFIGURATIONS FOR CSA ADDER
------------------------------------------------------------

--For functional verification of CSA
CONFIGURATION ConfigCSA_rtl OF AdderTB IS
  FOR Testing  -- matches my testbench architecture name
	FOR DUT : TestUnit
      USE ENTITY work.ConditionalSum(rtl);
	END FOR;
  END FOR;
END CONFIGURATION ConfigCSA_rtl;


--This is for timing verification of CSA
CONFIGURATION ConfigCSA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ConditionalSum(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigCSA_structure;