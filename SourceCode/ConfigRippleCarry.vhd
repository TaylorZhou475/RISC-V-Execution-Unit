------------------------------------------------------------
-- CONFIGURATIONS FOR RCA ADDER
------------------------------------------------------------

--For functional verification of RCA
CONFIGURATION ConfigRCA_rtl OF AdderTB IS
  FOR Testing  -- matches my testbench architecture name
	FOR DUT : TestUnit
      USE ENTITY work.RippleCarry(rtl);
	END FOR;
  END FOR;
END CONFIGURATION ConfigRCA_rtl;


--This is for timing verification of RCA
CONFIGURATION ConfigRCA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.RippleCarry(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigRCA_structure;