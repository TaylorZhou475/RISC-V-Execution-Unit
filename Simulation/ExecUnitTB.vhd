library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

ENTITY ExecUnitTB IS
    GENERIC (
        TIMING_MEASUREMENT : BOOLEAN := FALSE
    );
END ENTITY;

ARCHITECTURE Testing OF ExecUnitTB IS

    type ExecOutRec is record
        Y     : std_logic_vector(63 downto 0);
        Zero  : std_logic;
        AltB  : std_logic;
        AltBu : std_logic;
    end record;

    CONSTANT TestVectorFile : string := "TestVectors/ExecUnit00.tvs";
    CONSTANT TB_N : NATURAL := 64; 
    CONSTANT PREPTIME : TIME := 40 ns;
    CONSTANT MEASTIME : TIME := 300 ns;
    CONSTANT STABLETIME : TIME := 5 ns;

    SIGNAL TB_A, TB_B : std_logic_vector(TB_N-1 downto 0);
    SIGNAL TB_FuncClass, TB_LogicFN, TB_ShiftFN : std_logic_vector(1 downto 0);
    SIGNAL TB_AddnSub, TB_ExtWord : std_logic;
    SIGNAL TB_Y : std_logic_vector(TB_N-1 downto 0);
    SIGNAL TB_Zero, TB_AltB, TB_AltBu : std_logic;

    SIGNAL MeasurementIndex_disp : INTEGER := 1;
    SIGNAL Y_Expected : STD_LOGIC_VECTOR(TB_N-1 downto 0);
    SIGNAL Zero_Expected, AltB_Expected, AltBu_Expected : STD_LOGIC;

    SIGNAL WorstCaseDelay : TIME := 0 ns;
    SIGNAL WorstCaseIteration : INTEGER := 0;

    COMPONENT TestUnit
        PORT ( 
            A, B : in std_logic_vector(TB_N-1 downto 0 );
            FuncClass, LogicFN, ShiftFN : in std_logic_vector(1 downto 0 );
            AddnSub, ExtWord : in std_logic;
            Y : out std_logic_vector( TB_N-1 downto 0 );
            Zero, AltB, AltBu : out std_logic 
        );
    END COMPONENT;

    signal ExecOut : ExecOutRec;

    -- Helper for hex string conversion
    function to_hstring(slv : std_logic_vector) return string is
        variable L : LINE;
    begin
        hwrite(L, slv);
        return L.all;
    end function to_hstring;

BEGIN

    DUT : TestUnit
        PORT MAP (
            A => TB_A, 
            B => TB_B, 
            FuncClass => TB_FuncClass,
            LogicFN => TB_LogicFN,
            ShiftFN => TB_ShiftFN,
            AddnSub => TB_AddnSub,
            ExtWord => TB_ExtWord,
            Y => TB_Y, 
            Zero => TB_Zero, 
            AltB => TB_AltB, 
            AltBu => TB_AltBu
        );

    ExecOut.Y     <= TB_Y;
    ExecOut.Zero  <= TB_Zero;
    ExecOut.AltB  <= TB_AltB;
    ExecOut.AltBu <= TB_AltBu;

    Testing : PROCESS
        FILE VectorFile : TEXT;
        VARIABLE LineBuffer : LINE;
        VARIABLE A_test, B_test, Y_expt : STD_LOGIC_VECTOR(TB_N-1 downto 0);
        VARIABLE FuncClass_test, LogicFN_test, ShiftFN_test : STD_LOGIC_VECTOR(1 downto 0);
        VARIABLE AddnSub_test, ExtWord_test : STD_LOGIC;
        VARIABLE Zero_expt, AltB_expt, AltBu_expt : STD_LOGIC;
        VARIABLE Flags_expt : STD_LOGIC_VECTOR(2 downto 0);
        VARIABLE MeasurementIndex : INTEGER := 1;
	VARIABLE StartTime, EndTime, PropDelayY, PropDelayZero, PropDelayAltB, PropDelayAltBu : TIME := 0 ns;
	VARIABLE EventTimeY, EventTimeZero, EventTimeAltB, EventTimeAltBu : TIME := 0 ns;
        VARIABLE SuccessCount, FailureCount: INTEGER := 0;
    BEGIN

        REPORT "=====================================================" & LF &
               ">>>>>>>>>>>>>>>> Starting Simulation <<<<<<<<<<<<<<<<" & LF &
               "=====================================================" & LF;
        
        file_open(VectorFile, TestVectorFile, read_mode);
        
        -- Initialize inputs
        TB_A <= (others => 'U'); 
        TB_B <= (others => 'U'); 
        TB_FuncClass <= "UU";
        TB_LogicFN <= "UU";
        TB_ShiftFN <= "UU";
        TB_AddnSub <= 'U';
        TB_ExtWord <= 'U';
                
        WAIT FOR PREPTIME;

        WHILE NOT ENDFILE(VectorFile) LOOP

            readline(VectorFile, LineBuffer);
            
            -- Read Inputs
            -- Format: A B FuncClass LogicFN ShiftFN AddnSub ExtWord Y_expt Flags(3)
            hread(LineBuffer, A_test);
            hread(LineBuffer, B_test);
            read(LineBuffer, FuncClass_test);
            read(LineBuffer, LogicFN_test);
            read(LineBuffer, ShiftFN_test);
            read(LineBuffer, AddnSub_test);
            read(LineBuffer, ExtWord_test);
            
            -- Read Expected Outputs
            hread(LineBuffer, Y_expt);
            read(LineBuffer, Flags_expt); -- 3 bits: Zero, AltB, AltBu

            Zero_expt := Flags_expt(2);
            AltB_expt := Flags_expt(1);
            AltBu_expt := Flags_expt(0);

            -- Apply Inputs
            TB_A <= A_test;
            TB_B <= B_test;
            TB_FuncClass <= FuncClass_test;
            TB_LogicFN <= LogicFN_test;
            TB_ShiftFN <= ShiftFN_test;
            TB_AddnSub <= AddnSub_test;
            TB_ExtWord <= ExtWord_test;

            Y_Expected <= Y_expt;
            Zero_Expected <= Zero_expt;
            AltB_Expected <= AltB_expt;
            AltBu_Expected <= AltBu_expt;

	    StartTime := NOW;
            WAIT UNTIL ExecOut'STABLE(STABLETIME) FOR MEASTIME;
	    EndTime := NOW;
	    EventTimeY := EndTime - TB_Y'LAST_EVENT;
	    EventTimeZero := EndTime - TB_Zero'LAST_EVENT;
	    EventTimeAltB := EndTime - TB_AltB'LAST_EVENT;
	    EventTimeAltBu := EndTime - TB_AltBu'LAST_EVENT;

------------------Finding the propagation delays-------------------
	    IF EventTimeY > StartTime THEN
	    	PropDelayY := EventTimeY - StartTime;
	    ELSE
		PropDelayY := 0 ns;
	    END IF;
	
	    IF EventTimeZero > StartTime THEN
	    	PropDelayZero := EventTimeZero - StartTime;
	    ELSE
	 	PropDelayZero := 0 ns;
	    END IF;

	    IF EventTimeAltB > StartTime THEN
	    	PropDelayAltB := EventTimeAltB - StartTime;
	    ELSE
	 	PropDelayAltB := 0 ns;
	    END IF;

	    IF EventTimeAltBu > StartTime THEN
	    	PropDelayAltBu := EventTimeAltBu - StartTime;
	    ELSE
	 	PropDelayAltBu := 0 ns;
	    END IF;

 	    --Finding worst case
	    IF PropDelayY > WorstCaseDelay THEN
		WorstCaseDelay <= PropDelayY;
		WorstCaseIteration <= MeasurementIndex;
	    END IF;

	    IF PropDelayZero > WorstCaseDelay THEN
		WorstCaseDelay <= PropDelayZero;
		WorstCaseIteration <= MeasurementIndex;
	    END IF;

	    IF PropDelayAltB > WorstCaseDelay THEN
		WorstCaseDelay <= PropDelayAltB;
		WorstCaseIteration <= MeasurementIndex;
	    END IF;

	    IF PropDelayAltBu > WorstCaseDelay THEN
		WorstCaseDelay <= PropDelayAltBu;
		WorstCaseIteration <= MeasurementIndex;
	    END IF;


	    IF (TB_Y = Y_expt) THEN
    -- Only check flags in 64-bit mode
    		IF (TB_ExtWord = '0') THEN
        		IF (TB_Zero = Zero_expt) AND (TB_AltB = AltB_expt) AND (TB_AltBu = AltBu_expt) THEN
            			report "PASS: Test Case " & INTEGER'IMAGE(MeasurementIndex);
				SuccessCount := SuccessCount + 1;
				IF TIMING_MEASUREMENT THEN
					REPORT LF & "      Y Propagation Delay: " & to_string(PropDelayY) & LF &
		       	       			    "      Zero Propagation Delay: " & to_string(PropDelayZero) & LF &
						    "      AltB Propagation Delay: " & to_string(PropDelayAltB) & LF &
						    "      AltBu Propagation Delay: " & to_string(PropDelayAltBu) & LF;
				END IF;
        		ELSE
            			REPORT "FAIL: Test Case " & integer'image(MeasurementIndex) & LF &
                       		"      Inputs: A=" & to_hstring(A_test) & ", B=" & to_hstring(B_test) & LF &
                       		"              FC=" & to_string(FuncClass_test) & " LF=" & to_string(LogicFN_test) & " SF=" & to_string(ShiftFN_test) & " AS=" & std_logic'image(AddnSub_test) & " EW=" & std_logic'image(ExtWord_test) & LF &
                       		"      Y Expected=" & to_hstring(Y_expt) & ", Actual=" & to_hstring(TB_Y) & LF &
                       		"      Flags Expected (Z,AB,ABu)=" & std_logic'image(Zero_expt) & std_logic'image(AltB_expt) & std_logic'image(AltBu_expt) & LF &
                       		"      Flags Actual   (Z,AB,ABu)=" & std_logic'image(TB_Zero) & std_logic'image(TB_AltB) & std_logic'image(TB_AltBu) & LF
                		SEVERITY WARNING;
                		FailureCount := FailureCount + 1;
       		 	END IF;
    		ELSE
        -- Word mode: DO NOT check flags
        		report "PASS: Test Case " & INTEGER'IMAGE(MeasurementIndex);
				SuccessCount := SuccessCount + 1;
			IF TIMING_MEASUREMENT THEN
					REPORT LF & "      Y Propagation Delay: " & to_string(PropDelayY) & LF &
		       	       			    "      Zero Propagation Delay: " & to_string(PropDelayZero) & LF &
						    "      AltB Propagation Delay: " & to_string(PropDelayAltB) & LF &
						    "      AltBu Propagation Delay: " & to_string(PropDelayAltBu) & LF;
			END IF;
    		END IF;
	    ELSE
    		REPORT "FAIL: Test Case " & integer'image(MeasurementIndex) & LF &
                       "      Inputs: A=" & to_hstring(A_test) & ", B=" & to_hstring(B_test) & LF &
                       "              FC=" & to_string(FuncClass_test) & " LF=" & to_string(LogicFN_test) & " SF=" & to_string(ShiftFN_test) & " AS=" & std_logic'image(AddnSub_test) & " EW=" & std_logic'image(ExtWord_test) & LF &
                       "      Y Expected=" & to_hstring(Y_expt) & ", Actual=" & to_hstring(TB_Y) & LF &
                       "      Flags Expected (Z,AB,ABu)=" & std_logic'image(Zero_expt) & std_logic'image(AltB_expt) & std_logic'image(AltBu_expt) & LF &
                       "      Flags Actual   (Z,AB,ABu)=" & std_logic'image(TB_Zero) & std_logic'image(TB_AltB) & std_logic'image(TB_AltBu) & LF
                SEVERITY WARNING;
                FailureCount := FailureCount + 1;
	    END IF;

            MeasurementIndex_disp <= MeasurementIndex;
            MeasurementIndex := MeasurementIndex + 1;

        END LOOP;

        REPORT "=====================================================" & LF &
               ">>>>>>>>>>>>>>>> Simulation Complete <<<<<<<<<<<<<<<<" & LF &
               "=====================================================" & LF &
               "Test cases passed: " & INTEGER'IMAGE(SuccessCount) & LF &
               "Test cases failed : " & INTEGER'IMAGE(FailureCount) & LF;

	IF TIMING_MEASUREMENT THEN
	    REPORT "The worst case propagation delay was " & to_string(WorstCaseDelay) & " in test case " & INTEGER'IMAGE(WorstCaseIteration) & LF;
	END IF;

        file_close(VectorFile);
        WAIT;

    END PROCESS;

END ARCHITECTURE;
