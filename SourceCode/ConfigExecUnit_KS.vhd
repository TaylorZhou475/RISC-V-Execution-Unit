CONFIGURATION ConfigExecUnit_KS OF ExecUnitTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.ExecUnit(Test);
    END FOR;
  END FOR;
END CONFIGURATION ConfigExecUnit_KS;