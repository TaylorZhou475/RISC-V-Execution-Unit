CONFIGURATION Config_SepMux2_CarryS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(SepMux2_CarryS);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux2_CarryS;