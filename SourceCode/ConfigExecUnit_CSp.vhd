CONFIGURATION ConfigExecUnit_CSp OF ExecUnitTB IS
  FOR Testing
    FOR DUT : ExecUnit
      USE ENTITY work.ExecUnit(Test);
    END FOR;
  END FOR;
END CONFIGURATION ConfigExecUnit_CSp;