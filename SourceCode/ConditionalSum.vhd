library IEEE;
use IEEE.std_logic_1164.all;

Entity ConditionalSum is
    Generic (
        N_bits : integer := 64;
        Block_size : integer := 16
    );
    Port (
        A    : in  std_logic_vector(N_bits-1 downto 0);
        B    : in  std_logic_vector(N_bits-1 downto 0);
        Cin  : in  std_logic;
        S    : out std_logic_vector(N_bits-1 downto 0);
        Cout : out std_logic;
        Ovfl : out std_logic
    );
End ConditionalSum;

Architecture rtl of ConditionalSum is


    -- Signals for recursive splitting
    constant N_lo : integer := N_bits/2;
    constant N_hi : integer := N_bits - N_lo;

    signal A_lo, B_lo : std_logic_vector(N_lo-1 downto 0);
    signal A_hi, B_hi : std_logic_vector(N_hi-1 downto 0);

    -- Signals for Upper Half Results
    signal s_hi_0, s_hi_1 : std_logic_vector(N_hi-1 downto 0);
    signal c_hi_0, c_hi_1 : std_logic;
    signal ovfl_hi_0, ovfl_hi_1 : std_logic;

    -- Signal for the Intermediate Carry (Result of the Lower Half)
    signal mid_c : std_logic;

Begin

    -- ===================================================================
    -- BASE CASE: Single Ripple Carry Adder
    -- ===================================================================
    Base_Case_Generate: if N_bits <= Block_size generate

        -- Using one adder because we know cin
        RCA_Actual: entity work.RippleCarry(rtl)
            generic map ( N => N_bits )
            port map (
                A    => A, 
                B    => B, 
                Cin  => Cin,  -- Pass the actual input Cin directly
                Sum  => S, 
                Cout => Cout, 
                Ovfl => Ovfl
            );

    end generate Base_Case_Generate;


    -- ===================================================================
    -- RECURSIVE STEP
    -- ===================================================================
    Recursive_Step_Generate: if N_bits > Block_size generate

        -- 1. Slice inputs
        A_lo <= A(N_lo-1 downto 0);
        B_lo <= B(N_lo-1 downto 0);
        A_hi <= A(N_bits-1 downto N_lo);
        B_hi <= B(N_bits-1 downto N_lo);

        -- 2. LOWER HALF:
        -- We don't need to guess 0 or 1, we have the real CIN from the input.
        CSA_Lower_Half: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_lo, Block_size => Block_size )
            port map (
                A    => A_lo, 
                B    => B_lo, 
                Cin  => Cin,    -- Pass actual Cin
                S    => S(N_lo-1 downto 0), -- Write directly to lower S
                Cout => mid_c,              -- This is the select signal for the upper half
                Ovfl => open                -- Lower half overflow doesn't matter for final result
            );

        -- 3. UPPER HALF: Two adders (The Core Logic)
        -- We dont know mid_c yet (it's being calculated above), so we compute both possibilities.
        
        -- Assume mid_c = 0
        CSA_Upper_Half_MidC0: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_hi, Block_size => Block_size )
            port map (
                A => A_hi, B => B_hi, Cin => '0',
                S => s_hi_0, Cout => c_hi_0, Ovfl => ovfl_hi_0
            );

        -- Assume mid_c = 1
        CSA_Upper_Half_MidC1: entity work.ConditionalSum(rtl)
            generic map ( N_bits => N_hi, Block_size => Block_size )
            port map (
                A => A_hi, B => B_hi, Cin => '1',
                S => s_hi_1, Cout => c_hi_1, Ovfl => ovfl_hi_1
            );

        -- 4. FINAL MUX: Select the correct Upper Half result based on the real mid_c
        S(N_bits-1 downto N_lo) <= s_hi_0     when mid_c = '0' else s_hi_1;
        Cout                    <= c_hi_0     when mid_c = '0' else c_hi_1;
        Ovfl                    <= ovfl_hi_0  when mid_c = '0' else ovfl_hi_1;

    end generate Recursive_Step_Generate;

End Architecture rtl;