CONFIGURATION Config_CombMux2_CondS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(CombMux2_CondS);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux2_CondS;

CONFIGURATION Config_CombMux2_CondS_Timing OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(structure);
    END FOR;
  END FOR;
END CONFIGURATION Config_CombMux2_CondS_Timing;

