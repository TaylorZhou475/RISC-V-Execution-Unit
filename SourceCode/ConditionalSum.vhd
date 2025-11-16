library IEEE;
use IEEE.std_logic_1164.all;

-- It keeps the same generics and ports so the testbench connects correctly.
Entity ConditionalSum is
    Generic (
        N_bits : integer := 64;       -- size of adder
        Block_size : integer := 16      -- size of the BASE CASE adder block
    );
    Port (
        A    : in  std_logic_vector(N_bits-1 downto 0);
        B    : in  std_logic_vector(N_bits-1 downto 0);
        CIN  : in  std_logic;
        SUM    : out std_logic_vector(N_bits-1 downto 0);
        COUT : out std_logic;
        OVFL : out std_logic
    );
End ConditionalSum;

Architecture rtl of ConditionalSum is

    -- Component declaration for the BASE CASE adder 
    component RippleCarry
        generic(
            N : integer := 16 -- Default, will be overridden by the base case generic map
        );
        port(
            A : in std_logic_vector((N-1) downto 0);
            B : in std_logic_vector((N-1) downto 0);
            Cin : in std_logic;
            Sum : out std_logic_vector((N-1) downto 0);
            Cout : out std_logic;
            Ovfl : out std_logic
        );
    end component;

    -- Signals used ONLY in the BASE CASE (when N_bits = Block_size)
    -- These hold the results of the two parallel RippleCarry adders
    signal s0_base, s1_base   : std_logic_vector(N_bits-1 downto 0);
    signal c0_base, c1_base   : std_logic;
    signal ovfl0_base, ovfl1_base : std_logic;

    -- Signals used in RECURSIVE STEP 
    -- Calculate split point sizes
    constant N_lo : integer := N_bits/2;        -- Lower half size
    constant N_hi : integer := N_bits - N_lo;   -- Upper half size (handles odd N_bits)

    -- Sliced input vectors for recursive calls
    signal A_lo, B_lo : std_logic_vector(N_lo-1 downto 0);
    signal A_hi, B_hi : std_logic_vector(N_hi-1 downto 0);

    -- Internal results from the lower half recursive calls
    signal s_lo_0, s_lo_1 : std_logic_vector(N_lo-1 downto 0); -- Sum for Cin=0 and Cin=1
    signal c_lo_0, c_lo_1 : std_logic;                         -- Cout for Cin=0 and Cin=1
    signal ovfl_lo_0, ovfl_lo_1 : std_logic;                   -- Ovfl (not directly used in logic, but needed for port map)

    -- Internal results from the upper half recursive calls
    signal s_hi_0, s_hi_1 : std_logic_vector(N_hi-1 downto 0); -- Sum for mid_c=0 and mid_c=1
    signal c_hi_0, c_hi_1 : std_logic;                         -- Cout for mid_c=0 and mid_c=1
    signal ovfl_hi_0, ovfl_hi_1 : std_logic;                   -- Ovfl for mid_c=0 and mid_c=1

    -- The crucial intermediate carry signal, selected based on the actual CIN
    signal mid_c : std_logic;

Begin

    -- ===================================================================
    -- GENERATE BLOCK 1: BASE CASE
    -- This code is active ONLY when the generic N_bits matches Block_size (e.g., 16)
    -- It instantiates two RippleCarry_Cyclone adders and MUXes their outputs.
    -- ===================================================================
    Base_Case_Generate: if N_bits = Block_size generate

        -- Instantiate RCA for the case where block carry-in is '0'
        RCA_Cin_0: RippleCarry
            generic map ( N => N_bits ) -- Use the current N_bits (which is Block_size)
            port map (
                A    => A, B    => B, Cin  => '0',
                Sum  => s0_base, Cout => c0_base, Ovfl => ovfl0_base
            );

        -- Instantiate RCA for the case where block carry-in is '1'
        RCA_Cin_1: RippleCarry
            generic map ( N => N_bits ) -- Use the current N_bits (which is Block_size)
            port map (
                A    => A, B    => B, Cin  => '1',
                Sum  => s1_base, Cout => c1_base, Ovfl => ovfl1_base
            );

        -- MUXes to select the final outputs based on the ACTUAL carry-in (CIN) to this block
        SUM  <= s0_base when CIN = '0' else s1_base;
        COUT <= c0_base when CIN = '0' else c1_base;
        OVFL <= ovfl0_base when CIN = '0' else ovfl1_base;

    end generate Base_Case_Generate;


   -- RECURSIVE
    Recursive_Step_Generate: if N_bits > Block_size generate

        -- 1. Slice the input vectors into lower and upper halves
        A_lo <= A(N_lo-1 downto 0);
        B_lo <= B(N_lo-1 downto 0);
        A_hi <= A(N_bits-1 downto N_lo);
        B_hi <= B(N_bits-1 downto N_lo);

        -- 2. Instantiate the LOWER half recursively (calling ConditionalSum with N_bits=N_lo)
        --    Do it twice: once assuming the initial CIN is '0', once assuming '1'.
        CSA_Lower_Half_Cin0: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_lo, Block_size => Block_size ) -- Pass Block_size down
            port map (
                A => A_lo, B => B_lo, CIN => '0',
                SUM => s_lo_0, COUT => c_lo_0, OVFL => ovfl_lo_0 -- Capture results
            );

        CSA_Lower_Half_Cin1: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_lo, Block_size => Block_size ) -- Pass Block_size down
            port map (
                A => A_lo, B => B_lo, CIN => '1',
                SUM => s_lo_1, COUT => c_lo_1, OVFL => ovfl_lo_1 -- Capture results
            );

        -- 3. Select the ACTUAL lower-half sum and intermediate carry based on REAL CIN
        SUM(N_lo-1 downto 0) <= s_lo_0 when CIN = '0' else s_lo_1; -- Assign lower part of final SUM
        mid_c                <= c_lo_0 when CIN = '0' else c_lo_1; -- Determine carry into upper half

        -- 4. Instantiate the UPPER half recursively (calling ConditionalSum with N_bits=N_hi)
        --    Do it twice: once assuming the intermediate carry (mid_c) is '0', once assuming '1'.
        CSA_Upper_Half_MidC0: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_hi, Block_size => Block_size ) -- Pass Block_size down
            port map (
                A => A_hi, B => B_hi, CIN => '0',
                SUM => s_hi_0, COUT => c_hi_0, OVFL => ovfl_hi_0 -- Capture results
            );

        CSA_Upper_Half_MidC1: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_hi, Block_size => Block_size ) -- Pass Block_size down
            port map (
                A => A_hi, B => B_hi, CIN => '1',
                SUM => s_hi_1, COUT => c_hi_1, OVFL => ovfl_hi_1 -- Capture results
            );

        -- 5. Select the ACTUAL upper-half sum, final COUT, and final OVFL based on calculated mid_c
        SUM(N_bits-1 downto N_lo) <= s_hi_0 when mid_c = '0' else s_hi_1; -- Assign upper part of final SUM
        COUT                      <= c_hi_0 when mid_c = '0' else c_hi_1; -- Assign final COUT
        OVFL                      <= ovfl_hi_0 when mid_c = '0' else ovfl_hi_1; -- Assign final OVFL

    end generate Recursive_Step_Generate;

End Architecture rtl;