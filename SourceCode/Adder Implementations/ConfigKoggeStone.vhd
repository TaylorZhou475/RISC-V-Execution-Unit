----------------------------------------------------------
---- CONFIGURATIONS FOR KSA ADDER
----------------------------------------------------------

--For functional verification of KSA
CONFIGURATION ConfigKSA_rtl OF AdderTB IS
  FOR Testing  -- matches my testbench architecture name
	FOR DUT : TestUnit
      USE ENTITY work.KoggeStone(rtl);
	END FOR;
  END FOR;
END CONFIGURATION ConfigKSA_rtl;


--This is for timing verification of KSA
CONFIGURATION ConfigKSA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.KoggeStone(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigKSA_structure;
