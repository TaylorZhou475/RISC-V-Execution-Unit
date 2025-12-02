CONFIGURATION Config_CombMux4_CarryS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux4_CarryS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux4_CarryS;

CONFIGURATION Config_CombMux4_CarryS_Timing OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(structure);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux4_CarryS_Timing;