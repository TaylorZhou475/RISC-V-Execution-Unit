CONFIGURATION Config_CombMux2_KS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux2_KS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux2_KS;