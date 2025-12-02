CONFIGURATION Config_SepMux4_KS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(SepMux4_KS);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux4_KS;