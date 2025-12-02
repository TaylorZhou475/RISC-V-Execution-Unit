CONFIGURATION Config_SepMux2_KS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(SepMux2_KS);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux2_KS;