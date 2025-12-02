CONFIGURATION Config_CombMux2_CarryS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux2_CarryS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux2_CarryS;

CONFIGURATION Config_CombMux2_CarryS_Timing OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(structure);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux2_CarryS_Timing;