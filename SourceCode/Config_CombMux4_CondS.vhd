CONFIGURATION Config_CombMux4_CondS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux4_CondS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux4_CondS;

CONFIGURATION Config_CombMux4_CondS_Timing OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(structure);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux4_CondS_Timing;