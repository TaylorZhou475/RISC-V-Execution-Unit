CONFIGURATION Config_SepMux4_CarryS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(SepMux4_CarryS);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux4_CarryS;