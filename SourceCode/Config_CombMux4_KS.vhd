CONFIGURATION Config_CombMux4_KS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux4_KS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux4_KS;