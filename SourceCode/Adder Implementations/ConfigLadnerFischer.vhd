--------------------------------------------------------------
---- CONFIGURATIONS FOR LADNER-FISCHER ADDER
--------------------------------------------------------------

--For functional verification of Ladner-Fischer
CONFIGURATION ConfigLFA_rtl OF AdderTB IS
  FOR Testing                      -- matches your testbench architecture
    FOR DUT : TestUnit
      USE ENTITY work.LadnerFischer(rtl);
    END FOR;
  END FOR;
END CONFIGURATION ConfigLFA_rtl;


--This is for timing verification of Ladner-Fischer
CONFIGURATION ConfigLFA_structure OF AdderTB IS
  FOR Testing
    FOR DUT : TestUnit
      USE ENTITY work.LadnerFischer(structure);
    END FOR;
  END FOR;
END CONFIGURATION ConfigLFA_structure;