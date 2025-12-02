CONFIGURATION Config_SepMux4_CondS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(SepMux4_CondS);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux4_CondS;

CONFIGURATION Config_SepMux4_CondS_Timing OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(structure);
    END FOR;
  END FOR;
END CONFIGURATION Config_SepMux4_CondS_Timing;