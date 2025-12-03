-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/02/2025 16:22:53"

-- 
-- Device: Altera EP2AGX45DF25I3 Package FBGA572
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ExecUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(63 DOWNTO 0);
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ExecUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicUnit|Mux63~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:bits[7]~combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Shifter|stage[3][63]~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Shifter|stage[5][63]~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[63]~0_combout\ : std_logic;
SIGNAL \Shifter|InputExtended[63]~1_combout\ : std_logic;
SIGNAL \Shifter|stage[5][63]~2_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ShiftCount[5]~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Shifter|Equal2~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[32]~32_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[33]~31_combout\ : std_logic;
SIGNAL \Shifter|stage[1][30]~21_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[37]~27_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[36]~28_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Shifter|stage[1][26]~19_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[39]~25_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[38]~26_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Shifter|stage[1][24]~18_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[34]~30_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[35]~29_combout\ : std_logic;
SIGNAL \Shifter|stage[1][28]~20_combout\ : std_logic;
SIGNAL \Shifter|stage[3][24]~22_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[42]~22_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[43]~21_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Shifter|stage[1][20]~15_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[45]~19_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[44]~20_combout\ : std_logic;
SIGNAL \Shifter|stage[1][18]~14_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[46]~18_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[47]~17_combout\ : std_logic;
SIGNAL \Shifter|stage[1][16]~13_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[41]~23_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[40]~24_combout\ : std_logic;
SIGNAL \Shifter|stage[1][22]~16_combout\ : std_logic;
SIGNAL \Shifter|stage[3][16]~17_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[54]~10_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[55]~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Shifter|stage[1][8]~8_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[48]~16_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[49]~15_combout\ : std_logic;
SIGNAL \Shifter|stage[1][14]~11_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[51]~13_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[50]~14_combout\ : std_logic;
SIGNAL \Shifter|stage[1][12]~10_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[52]~12_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[53]~11_combout\ : std_logic;
SIGNAL \Shifter|stage[1][10]~9_combout\ : std_logic;
SIGNAL \Shifter|stage[3][8]~12_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[62]~2_combout\ : std_logic;
SIGNAL \Shifter|stage[5][0]~3_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[60]~4_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[61]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Shifter|stage[1][2]~4_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[59]~5_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[58]~6_combout\ : std_logic;
SIGNAL \Shifter|stage[1][4]~5_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[57]~7_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[56]~8_combout\ : std_logic;
SIGNAL \Shifter|stage[1][6]~6_combout\ : std_logic;
SIGNAL \Shifter|stage[5][0]~7_combout\ : std_logic;
SIGNAL \Shifter|stage[5][0]~23_combout\ : std_logic;
SIGNAL \Shifter|stage[1][60]~41_combout\ : std_logic;
SIGNAL \Shifter|stage[1][56]~39_combout\ : std_logic;
SIGNAL \Shifter|stage[1][62]~42_combout\ : std_logic;
SIGNAL \Shifter|stage[1][58]~40_combout\ : std_logic;
SIGNAL \Shifter|stage[3][56]~43_combout\ : std_logic;
SIGNAL \Shifter|stage[1][54]~37_combout\ : std_logic;
SIGNAL \Shifter|stage[1][48]~34_combout\ : std_logic;
SIGNAL \Shifter|stage[1][52]~36_combout\ : std_logic;
SIGNAL \Shifter|stage[1][50]~35_combout\ : std_logic;
SIGNAL \Shifter|stage[3][48]~38_combout\ : std_logic;
SIGNAL \Shifter|stage[1][46]~32_combout\ : std_logic;
SIGNAL \Shifter|stage[1][42]~30_combout\ : std_logic;
SIGNAL \Shifter|stage[1][40]~29_combout\ : std_logic;
SIGNAL \Shifter|stage[1][44]~31_combout\ : std_logic;
SIGNAL \Shifter|stage[3][40]~33_combout\ : std_logic;
SIGNAL \Shifter|stage[1][38]~27_combout\ : std_logic;
SIGNAL \Shifter|stage[1][34]~25_combout\ : std_logic;
SIGNAL \Shifter|stage[1][32]~24_combout\ : std_logic;
SIGNAL \Shifter|stage[1][36]~26_combout\ : std_logic;
SIGNAL \Shifter|stage[3][32]~28_combout\ : std_logic;
SIGNAL \Shifter|stage[5][32]~44_combout\ : std_logic;
SIGNAL \Shifter|Output[0]~0_combout\ : std_logic;
SIGNAL \Y_internal~0_combout\ : std_logic;
SIGNAL \Shifter|Output[0]~1_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~19_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~18_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~17_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~12_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~13_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~14_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~11_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~9_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~8_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~10_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~5_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~6_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~4_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~7_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~1_combout\ : std_logic;
SIGNAL \Adder|blk_c~2_combout\ : std_logic;
SIGNAL \Adder|blk_c~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~3_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~15_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~16_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~23_combout\ : std_logic;
SIGNAL \Adder|blk_c~21_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:bits[7]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~20_combout\ : std_logic;
SIGNAL \Adder|blk_c~22_combout\ : std_logic;
SIGNAL \Adder|blk_c~24_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[5]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~26_combout\ : std_logic;
SIGNAL \Adder|blk_c~25_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[2]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~28_combout\ : std_logic;
SIGNAL \Adder|blk_c~27_combout\ : std_logic;
SIGNAL \Adder|blk_c~29_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:bits[4]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~31_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~30_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~32_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:bits[1]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~33_combout\ : std_logic;
SIGNAL \Adder|blk_c~34_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|Cout~combout\ : std_logic;
SIGNAL \Y_internal~1_combout\ : std_logic;
SIGNAL \Y_internal~5_combout\ : std_logic;
SIGNAL \Shifter|sign_bit~0_combout\ : std_logic;
SIGNAL \Shifter|stage[3][62]~45_combout\ : std_logic;
SIGNAL \Shifter|stage[5][62]~46_combout\ : std_logic;
SIGNAL \Shifter|stage[1][21]~59_combout\ : std_logic;
SIGNAL \Shifter|stage[1][17]~57_combout\ : std_logic;
SIGNAL \Shifter|stage[1][19]~58_combout\ : std_logic;
SIGNAL \Shifter|stage[1][23]~60_combout\ : std_logic;
SIGNAL \Shifter|stage[3][17]~61_combout\ : std_logic;
SIGNAL \Shifter|stage[1][13]~54_combout\ : std_logic;
SIGNAL \Shifter|stage[1][11]~53_combout\ : std_logic;
SIGNAL \Shifter|stage[1][9]~52_combout\ : std_logic;
SIGNAL \Shifter|stage[1][15]~55_combout\ : std_logic;
SIGNAL \Shifter|stage[3][9]~56_combout\ : std_logic;
SIGNAL \Shifter|stage[1][3]~48_combout\ : std_logic;
SIGNAL \Shifter|stage[1][5]~49_combout\ : std_logic;
SIGNAL \Shifter|stage[1][7]~50_combout\ : std_logic;
SIGNAL \Shifter|stage[5][1]~47_combout\ : std_logic;
SIGNAL \Shifter|stage[5][1]~51_combout\ : std_logic;
SIGNAL \Shifter|stage[1][29]~64_combout\ : std_logic;
SIGNAL \Shifter|stage[1][31]~65_combout\ : std_logic;
SIGNAL \Shifter|stage[1][27]~63_combout\ : std_logic;
SIGNAL \Shifter|stage[1][25]~62_combout\ : std_logic;
SIGNAL \Shifter|stage[3][25]~66_combout\ : std_logic;
SIGNAL \Shifter|stage[5][1]~67_combout\ : std_logic;
SIGNAL \Shifter|stage[1][33]~68_combout\ : std_logic;
SIGNAL \Shifter|stage[1][39]~71_combout\ : std_logic;
SIGNAL \Shifter|stage[1][35]~69_combout\ : std_logic;
SIGNAL \Shifter|stage[1][37]~70_combout\ : std_logic;
SIGNAL \Shifter|stage[3][33]~72_combout\ : std_logic;
SIGNAL \Shifter|stage[1][53]~80_combout\ : std_logic;
SIGNAL \Shifter|stage[1][51]~79_combout\ : std_logic;
SIGNAL \Shifter|stage[1][55]~81_combout\ : std_logic;
SIGNAL \Shifter|stage[1][49]~78_combout\ : std_logic;
SIGNAL \Shifter|stage[3][49]~82_combout\ : std_logic;
SIGNAL \Shifter|stage[1][41]~73_combout\ : std_logic;
SIGNAL \Shifter|stage[1][47]~76_combout\ : std_logic;
SIGNAL \Shifter|stage[1][45]~75_combout\ : std_logic;
SIGNAL \Shifter|stage[1][43]~74_combout\ : std_logic;
SIGNAL \Shifter|stage[3][41]~77_combout\ : std_logic;
SIGNAL \Shifter|stage[1][63]~86_combout\ : std_logic;
SIGNAL \Shifter|stage[1][57]~83_combout\ : std_logic;
SIGNAL \Shifter|stage[1][59]~84_combout\ : std_logic;
SIGNAL \Shifter|stage[1][61]~85_combout\ : std_logic;
SIGNAL \Shifter|stage[3][57]~87_combout\ : std_logic;
SIGNAL \Shifter|stage[5][33]~88_combout\ : std_logic;
SIGNAL \Y_internal~6_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~2_combout\ : std_logic;
SIGNAL \Y_internal~3_combout\ : std_logic;
SIGNAL \Y_internal~4_combout\ : std_logic;
SIGNAL \Y_internal~7_combout\ : std_logic;
SIGNAL \Y_internal~8_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[3][34]~96_combout\ : std_logic;
SIGNAL \Shifter|stage[3][42]~97_combout\ : std_logic;
SIGNAL \Shifter|stage[3][50]~98_combout\ : std_logic;
SIGNAL \Shifter|stage[3][58]~99_combout\ : std_logic;
SIGNAL \Shifter|stage[5][34]~100_combout\ : std_logic;
SIGNAL \Shifter|stage[3][61]~89_combout\ : std_logic;
SIGNAL \Shifter|stage[5][61]~90_combout\ : std_logic;
SIGNAL \Shifter|stage[5][2]~91_combout\ : std_logic;
SIGNAL \Shifter|stage[3][18]~93_combout\ : std_logic;
SIGNAL \Shifter|stage[3][10]~92_combout\ : std_logic;
SIGNAL \Shifter|stage[3][26]~94_combout\ : std_logic;
SIGNAL \Shifter|stage[5][2]~95_combout\ : std_logic;
SIGNAL \Y_internal~9_combout\ : std_logic;
SIGNAL \Y_internal~10_combout\ : std_logic;
SIGNAL \Shifter|stage[3][60]~101_combout\ : std_logic;
SIGNAL \Shifter|stage[5][60]~102_combout\ : std_logic;
SIGNAL \Shifter|stage[3][59]~111_combout\ : std_logic;
SIGNAL \Shifter|stage[3][51]~110_combout\ : std_logic;
SIGNAL \Shifter|stage[3][35]~108_combout\ : std_logic;
SIGNAL \Shifter|stage[3][43]~109_combout\ : std_logic;
SIGNAL \Shifter|stage[5][35]~112_combout\ : std_logic;
SIGNAL \Shifter|stage[5][3]~103_combout\ : std_logic;
SIGNAL \Shifter|stage[3][11]~104_combout\ : std_logic;
SIGNAL \Shifter|stage[3][19]~105_combout\ : std_logic;
SIGNAL \Shifter|stage[3][27]~106_combout\ : std_logic;
SIGNAL \Shifter|stage[5][3]~107_combout\ : std_logic;
SIGNAL \Y_internal~12_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~11_combout\ : std_logic;
SIGNAL \Y_internal~13_combout\ : std_logic;
SIGNAL \Shifter|stage[3][52]~121_combout\ : std_logic;
SIGNAL \Shifter|stage[3][44]~120_combout\ : std_logic;
SIGNAL \Shifter|stage[3][36]~119_combout\ : std_logic;
SIGNAL \Shifter|stage[5][36]~122_combout\ : std_logic;
SIGNAL \Shifter|stage[5][4]~114_combout\ : std_logic;
SIGNAL \Shifter|stage[3][20]~116_combout\ : std_logic;
SIGNAL \Shifter|stage[3][12]~115_combout\ : std_logic;
SIGNAL \Shifter|stage[3][28]~117_combout\ : std_logic;
SIGNAL \Shifter|stage[5][4]~118_combout\ : std_logic;
SIGNAL \Shifter|stage[5][59]~113_combout\ : std_logic;
SIGNAL \Y_internal~15_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~14_combout\ : std_logic;
SIGNAL \Y_internal~16_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~17_combout\ : std_logic;
SIGNAL \Shifter|stage[3][13]~125_combout\ : std_logic;
SIGNAL \Shifter|stage[5][5]~124_combout\ : std_logic;
SIGNAL \Shifter|stage[3][21]~126_combout\ : std_logic;
SIGNAL \Shifter|stage[3][29]~127_combout\ : std_logic;
SIGNAL \Shifter|stage[5][5]~128_combout\ : std_logic;
SIGNAL \Shifter|stage[5][58]~123_combout\ : std_logic;
SIGNAL \Shifter|stage[3][53]~131_combout\ : std_logic;
SIGNAL \Shifter|stage[3][45]~130_combout\ : std_logic;
SIGNAL \Shifter|stage[3][37]~129_combout\ : std_logic;
SIGNAL \Shifter|stage[5][37]~132_combout\ : std_logic;
SIGNAL \Y_internal~18_combout\ : std_logic;
SIGNAL \Y_internal~19_combout\ : std_logic;
SIGNAL \Shifter|stage[5][57]~133_combout\ : std_logic;
SIGNAL \Shifter|stage[3][38]~139_combout\ : std_logic;
SIGNAL \Shifter|stage[3][46]~140_combout\ : std_logic;
SIGNAL \Shifter|stage[3][54]~141_combout\ : std_logic;
SIGNAL \Shifter|stage[5][38]~142_combout\ : std_logic;
SIGNAL \Shifter|stage[3][14]~135_combout\ : std_logic;
SIGNAL \Shifter|stage[5][6]~134_combout\ : std_logic;
SIGNAL \Shifter|stage[3][22]~136_combout\ : std_logic;
SIGNAL \Shifter|stage[3][30]~137_combout\ : std_logic;
SIGNAL \Shifter|stage[5][6]~138_combout\ : std_logic;
SIGNAL \Y_internal~21_combout\ : std_logic;
SIGNAL \Y_internal~20_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~22_combout\ : std_logic;
SIGNAL \Shifter|stage[5][56]~143_combout\ : std_logic;
SIGNAL \Shifter|stage[3][55]~151_combout\ : std_logic;
SIGNAL \Shifter|stage[3][47]~150_combout\ : std_logic;
SIGNAL \Shifter|stage[3][63]~152_combout\ : std_logic;
SIGNAL \Shifter|stage[3][39]~149_combout\ : std_logic;
SIGNAL \Shifter|stage[5][39]~153_combout\ : std_logic;
SIGNAL \Shifter|stage[3][15]~145_combout\ : std_logic;
SIGNAL \Shifter|stage[5][7]~144_combout\ : std_logic;
SIGNAL \Shifter|stage[3][31]~147_combout\ : std_logic;
SIGNAL \Shifter|stage[3][23]~146_combout\ : std_logic;
SIGNAL \Shifter|stage[5][7]~148_combout\ : std_logic;
SIGNAL \Y_internal~24_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~23_combout\ : std_logic;
SIGNAL \Y_internal~25_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~26_combout\ : std_logic;
SIGNAL \Shifter|stage[5][40]~156_combout\ : std_logic;
SIGNAL \Shifter|stage[5][55]~154_combout\ : std_logic;
SIGNAL \Shifter|stage[5][8]~155_combout\ : std_logic;
SIGNAL \Y_internal~27_combout\ : std_logic;
SIGNAL \Y_internal~28_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][54]~157_combout\ : std_logic;
SIGNAL \Shifter|stage[5][41]~159_combout\ : std_logic;
SIGNAL \Shifter|stage[5][9]~158_combout\ : std_logic;
SIGNAL \Y_internal~30_combout\ : std_logic;
SIGNAL \Y_internal~29_combout\ : std_logic;
SIGNAL \Y_internal~31_combout\ : std_logic;
SIGNAL \Shifter|stage[5][42]~162_combout\ : std_logic;
SIGNAL \Shifter|stage[5][53]~160_combout\ : std_logic;
SIGNAL \Shifter|stage[5][10]~161_combout\ : std_logic;
SIGNAL \Y_internal~33_combout\ : std_logic;
SIGNAL \Y_internal~32_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~34_combout\ : std_logic;
SIGNAL \Y_internal~35_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][11]~164_combout\ : std_logic;
SIGNAL \Shifter|stage[5][52]~163_combout\ : std_logic;
SIGNAL \Shifter|stage[5][43]~165_combout\ : std_logic;
SIGNAL \Y_internal~36_combout\ : std_logic;
SIGNAL \Y_internal~37_combout\ : std_logic;
SIGNAL \Y_internal~38_combout\ : std_logic;
SIGNAL \Y_internal~39_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][44]~168_combout\ : std_logic;
SIGNAL \Shifter|stage[5][51]~166_combout\ : std_logic;
SIGNAL \Shifter|stage[5][12]~167_combout\ : std_logic;
SIGNAL \Y_internal~41_combout\ : std_logic;
SIGNAL \Y_internal~40_combout\ : std_logic;
SIGNAL \Y_internal~42_combout\ : std_logic;
SIGNAL \Shifter|stage[5][50]~169_combout\ : std_logic;
SIGNAL \Shifter|stage[5][45]~171_combout\ : std_logic;
SIGNAL \Shifter|stage[5][13]~170_combout\ : std_logic;
SIGNAL \Y_internal~44_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~43_combout\ : std_logic;
SIGNAL \Y_internal~45_combout\ : std_logic;
SIGNAL \Shifter|stage[5][49]~172_combout\ : std_logic;
SIGNAL \Shifter|stage[5][46]~174_combout\ : std_logic;
SIGNAL \Shifter|stage[5][14]~173_combout\ : std_logic;
SIGNAL \Y_internal~47_combout\ : std_logic;
SIGNAL \Y_internal~46_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~48_combout\ : std_logic;
SIGNAL \Shifter|stage[5][47]~177_combout\ : std_logic;
SIGNAL \Shifter|stage[5][48]~175_combout\ : std_logic;
SIGNAL \Shifter|stage[5][15]~176_combout\ : std_logic;
SIGNAL \Y_internal~50_combout\ : std_logic;
SIGNAL \Y_internal~49_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~51_combout\ : std_logic;
SIGNAL \Shifter|stage[5][16]~178_combout\ : std_logic;
SIGNAL \Y_internal~53_combout\ : std_logic;
SIGNAL \Y_internal~52_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~54_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][17]~179_combout\ : std_logic;
SIGNAL \Y_internal~56_combout\ : std_logic;
SIGNAL \Y_internal~55_combout\ : std_logic;
SIGNAL \Y_internal~57_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][18]~180_combout\ : std_logic;
SIGNAL \Y_internal~59_combout\ : std_logic;
SIGNAL \Y_internal~58_combout\ : std_logic;
SIGNAL \Y_internal~60_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][19]~181_combout\ : std_logic;
SIGNAL \Y_internal~62_combout\ : std_logic;
SIGNAL \Y_internal~61_combout\ : std_logic;
SIGNAL \Y_internal~63_combout\ : std_logic;
SIGNAL \Shifter|stage[5][20]~182_combout\ : std_logic;
SIGNAL \Y_internal~65_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~64_combout\ : std_logic;
SIGNAL \Y_internal~66_combout\ : std_logic;
SIGNAL \Shifter|stage[5][21]~183_combout\ : std_logic;
SIGNAL \Y_internal~68_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~67_combout\ : std_logic;
SIGNAL \Y_internal~69_combout\ : std_logic;
SIGNAL \Shifter|stage[5][22]~184_combout\ : std_logic;
SIGNAL \Y_internal~71_combout\ : std_logic;
SIGNAL \Y_internal~70_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~72_combout\ : std_logic;
SIGNAL \Shifter|stage[5][23]~185_combout\ : std_logic;
SIGNAL \Y_internal~74_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~73_combout\ : std_logic;
SIGNAL \Y_internal~75_combout\ : std_logic;
SIGNAL \Shifter|stage[5][24]~186_combout\ : std_logic;
SIGNAL \Y_internal~77_combout\ : std_logic;
SIGNAL \Y_internal~76_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~78_combout\ : std_logic;
SIGNAL \Shifter|stage[5][25]~187_combout\ : std_logic;
SIGNAL \Y_internal~80_combout\ : std_logic;
SIGNAL \Y_internal~79_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~81_combout\ : std_logic;
SIGNAL \Shifter|stage[5][26]~188_combout\ : std_logic;
SIGNAL \Y_internal~83_combout\ : std_logic;
SIGNAL \Y_internal~82_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~84_combout\ : std_logic;
SIGNAL \Y_internal~85_combout\ : std_logic;
SIGNAL \Shifter|stage[5][27]~189_combout\ : std_logic;
SIGNAL \Y_internal~86_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~87_combout\ : std_logic;
SIGNAL \Y_internal~88_combout\ : std_logic;
SIGNAL \Shifter|stage[5][28]~190_combout\ : std_logic;
SIGNAL \Y_internal~89_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~90_combout\ : std_logic;
SIGNAL \Y_internal~91_combout\ : std_logic;
SIGNAL \Shifter|stage[5][29]~191_combout\ : std_logic;
SIGNAL \Y_internal~92_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~93_combout\ : std_logic;
SIGNAL \Y_internal~94_combout\ : std_logic;
SIGNAL \Shifter|stage[5][30]~192_combout\ : std_logic;
SIGNAL \Y_internal~95_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~96_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|stage[5][31]~193_combout\ : std_logic;
SIGNAL \Shifter|stage_out[31]~0_combout\ : std_logic;
SIGNAL \LogicUnit|Mux32~0_combout\ : std_logic;
SIGNAL \Y_internal~97_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~100_combout\ : std_logic;
SIGNAL \Y_internal~101_combout\ : std_logic;
SIGNAL \Y_internal~99_combout\ : std_logic;
SIGNAL \Y_internal~102_combout\ : std_logic;
SIGNAL \Y_internal~98_combout\ : std_logic;
SIGNAL \Y_internal~103_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~104_combout\ : std_logic;
SIGNAL \Y_internal~105_combout\ : std_logic;
SIGNAL \Y_internal~106_combout\ : std_logic;
SIGNAL \Y_internal~107_combout\ : std_logic;
SIGNAL \Y_internal~110_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~108_combout\ : std_logic;
SIGNAL \Y_internal~109_combout\ : std_logic;
SIGNAL \Y_internal~111_combout\ : std_logic;
SIGNAL \Y_internal~114_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~112_combout\ : std_logic;
SIGNAL \Y_internal~113_combout\ : std_logic;
SIGNAL \Y_internal~115_combout\ : std_logic;
SIGNAL \Y_internal~118_combout\ : std_logic;
SIGNAL \Y_internal~116_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~117_combout\ : std_logic;
SIGNAL \Y_internal~119_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~120_combout\ : std_logic;
SIGNAL \Y_internal~121_combout\ : std_logic;
SIGNAL \Y_internal~122_combout\ : std_logic;
SIGNAL \Y_internal~123_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~124_combout\ : std_logic;
SIGNAL \Y_internal~125_combout\ : std_logic;
SIGNAL \Y_internal~126_combout\ : std_logic;
SIGNAL \Y_internal~127_combout\ : std_logic;
SIGNAL \Y_internal~130_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~128_combout\ : std_logic;
SIGNAL \Y_internal~129_combout\ : std_logic;
SIGNAL \Y_internal~131_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~132_combout\ : std_logic;
SIGNAL \Y_internal~133_combout\ : std_logic;
SIGNAL \Y_internal~134_combout\ : std_logic;
SIGNAL \Y_internal~135_combout\ : std_logic;
SIGNAL \Y_internal~138_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~136_combout\ : std_logic;
SIGNAL \Y_internal~137_combout\ : std_logic;
SIGNAL \Y_internal~139_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~140_combout\ : std_logic;
SIGNAL \Y_internal~141_combout\ : std_logic;
SIGNAL \Y_internal~142_combout\ : std_logic;
SIGNAL \Y_internal~143_combout\ : std_logic;
SIGNAL \Y_internal~146_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~144_combout\ : std_logic;
SIGNAL \Y_internal~145_combout\ : std_logic;
SIGNAL \Y_internal~147_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~148_combout\ : std_logic;
SIGNAL \Y_internal~149_combout\ : std_logic;
SIGNAL \Y_internal~150_combout\ : std_logic;
SIGNAL \Y_internal~151_combout\ : std_logic;
SIGNAL \Y_internal~154_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~152_combout\ : std_logic;
SIGNAL \Y_internal~153_combout\ : std_logic;
SIGNAL \Y_internal~155_combout\ : std_logic;
SIGNAL \Y_internal~158_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~156_combout\ : std_logic;
SIGNAL \Y_internal~157_combout\ : std_logic;
SIGNAL \Y_internal~159_combout\ : std_logic;
SIGNAL \Y_internal~161_combout\ : std_logic;
SIGNAL \Y_internal~160_combout\ : std_logic;
SIGNAL \Y_internal~248_combout\ : std_logic;
SIGNAL \Y_internal~162_combout\ : std_logic;
SIGNAL \Y_internal~165_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~163_combout\ : std_logic;
SIGNAL \Y_internal~164_combout\ : std_logic;
SIGNAL \Y_internal~166_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~167_combout\ : std_logic;
SIGNAL \Y_internal~168_combout\ : std_logic;
SIGNAL \Y_internal~169_combout\ : std_logic;
SIGNAL \Y_internal~170_combout\ : std_logic;
SIGNAL \Y_internal~171_combout\ : std_logic;
SIGNAL \Y_internal~244_combout\ : std_logic;
SIGNAL \Y_internal~172_combout\ : std_logic;
SIGNAL \Y_internal~173_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~174_combout\ : std_logic;
SIGNAL \Y_internal~175_combout\ : std_logic;
SIGNAL \Y_internal~176_combout\ : std_logic;
SIGNAL \Y_internal~177_combout\ : std_logic;
SIGNAL \Y_internal~180_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~178_combout\ : std_logic;
SIGNAL \Y_internal~179_combout\ : std_logic;
SIGNAL \Y_internal~181_combout\ : std_logic;
SIGNAL \Y_internal~182_combout\ : std_logic;
SIGNAL \Y_internal~240_combout\ : std_logic;
SIGNAL \Y_internal~183_combout\ : std_logic;
SIGNAL \Y_internal~184_combout\ : std_logic;
SIGNAL \Y_internal~187_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~185_combout\ : std_logic;
SIGNAL \Y_internal~186_combout\ : std_logic;
SIGNAL \Y_internal~188_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~189_combout\ : std_logic;
SIGNAL \Y_internal~190_combout\ : std_logic;
SIGNAL \Y_internal~191_combout\ : std_logic;
SIGNAL \Y_internal~192_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~193_combout\ : std_logic;
SIGNAL \Y_internal~194_combout\ : std_logic;
SIGNAL \Y_internal~195_combout\ : std_logic;
SIGNAL \Y_internal~196_combout\ : std_logic;
SIGNAL \Y_internal~198_combout\ : std_logic;
SIGNAL \Y_internal~197_combout\ : std_logic;
SIGNAL \Y_internal~236_combout\ : std_logic;
SIGNAL \Y_internal~199_combout\ : std_logic;
SIGNAL \Y_internal~202_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~200_combout\ : std_logic;
SIGNAL \Y_internal~201_combout\ : std_logic;
SIGNAL \Y_internal~203_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~204_combout\ : std_logic;
SIGNAL \Y_internal~205_combout\ : std_logic;
SIGNAL \Y_internal~206_combout\ : std_logic;
SIGNAL \Y_internal~207_combout\ : std_logic;
SIGNAL \Y_internal~208_combout\ : std_logic;
SIGNAL \Y_internal~232_combout\ : std_logic;
SIGNAL \Y_internal~209_combout\ : std_logic;
SIGNAL \Y_internal~210_combout\ : std_logic;
SIGNAL \Y_internal~213_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~211_combout\ : std_logic;
SIGNAL \Y_internal~212_combout\ : std_logic;
SIGNAL \Y_internal~214_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~215_combout\ : std_logic;
SIGNAL \Y_internal~216_combout\ : std_logic;
SIGNAL \Y_internal~217_combout\ : std_logic;
SIGNAL \Y_internal~228_combout\ : std_logic;
SIGNAL \Y_internal~219_combout\ : std_logic;
SIGNAL \Y_internal~218_combout\ : std_logic;
SIGNAL \Y_internal~224_combout\ : std_logic;
SIGNAL \Y_internal~220_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \Equal3~11_combout\ : std_logic;
SIGNAL \Equal3~12_combout\ : std_logic;
SIGNAL \Equal3~13_combout\ : std_logic;
SIGNAL \Equal3~14_combout\ : std_logic;
SIGNAL \Equal3~15_combout\ : std_logic;
SIGNAL \Equal3~16_combout\ : std_logic;
SIGNAL \AltB_sig~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~17_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~11_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~22_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~24_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~12_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~14_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~23_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~10_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~21_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:5:bits[7]~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~20_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~19_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~25_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~16_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:6:bits[5]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~15_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~18_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~8_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~13_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~9_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][2]~4_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[61]~3_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][63]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[48]~16_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][14]~11_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~29_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[54]~10_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][12]~10_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:7:bits[1]~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \LogicUnit|ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[50]~14_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[47]~17_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~26_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~31_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~34_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][63]~1_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][63]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[5]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[56]~8_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][8]~8_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[63]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][0]~3_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[58]~6_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][16]~13_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[55]~9_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~27_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[53]~11_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:7:bits[4]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[45]~19_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][18]~14_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~33_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[60]~4_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][4]~5_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][6]~6_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[49]~15_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[42]~22_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~30_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~32_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[51]~13_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[43]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[63]~1_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[62]~2_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[57]~7_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:6:bits[2]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][0]~7_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~28_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][10]~9_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][8]~12_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[46]~18_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[44]~20_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[59]~5_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[52]~12_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][28]~20_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][60]~41_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][44]~31_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_Output[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~5_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[34]~30_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~2_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[38]~26_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[33]~31_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][32]~24_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][24]~22_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_sign_bit~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][62]~46_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][5]~49_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][16]~17_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[37]~27_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][46]~32_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][50]~35_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[32]~32_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][62]~45_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][24]~18_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][34]~25_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][40]~29_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][54]~37_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][38]~27_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[41]~23_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][62]~42_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][56]~39_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][22]~16_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][1]~47_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][48]~38_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][26]~19_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][3]~48_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][7]~50_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][56]~43_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][1]~51_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][9]~52_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][52]~36_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][11]~53_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[40]~24_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][13]~54_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][15]~55_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_Output[0]~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][0]~23_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][32]~28_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][20]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~4_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][9]~56_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][17]~57_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][48]~34_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][19]~58_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][21]~59_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][58]~40_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[39]~25_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[36]~28_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_InputExtended[35]~29_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][30]~21_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][36]~26_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][40]~33_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][42]~30_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][32]~44_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~6_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~236_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~2_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~3_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~240_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~244_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~248_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~4_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~232_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~224_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_blk_c~1_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][50]~98_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][60]~101_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][45]~75_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~11_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][61]~85_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][3]~103_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~9_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][35]~108_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][43]~109_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][51]~110_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][59]~111_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][61]~89_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][33]~88_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][27]~106_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][35]~112_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~14_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][23]~60_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][25]~62_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][41]~73_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][57]~87_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~6_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][31]~65_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][1]~67_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][55]~81_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][63]~86_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][47]~76_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~8_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][34]~100_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][49]~78_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][33]~72_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][58]~99_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][19]~105_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][26]~94_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][2]~91_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][3]~107_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][35]~69_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][59]~84_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][11]~104_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~12_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][25]~66_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][29]~64_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][37]~70_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][33]~68_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][39]~71_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][61]~90_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][18]~93_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][34]~96_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][57]~83_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][60]~102_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][41]~77_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][2]~95_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][49]~82_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][27]~63_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][42]~97_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][53]~80_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][17]~61_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][43]~74_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][10]~92_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[1][51]~79_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][29]~127_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][45]~130_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][23]~146_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][7]~148_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][39]~149_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][46]~140_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][52]~121_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][37]~129_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][20]~116_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~21_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][63]~152_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][12]~115_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~18_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][31]~147_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~26_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][28]~117_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][39]~153_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~20_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][6]~138_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][15]~145_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][4]~114_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~24_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~17_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][47]~150_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][53]~131_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][6]~134_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][55]~151_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][55]~154_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][8]~155_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~27_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][13]~125_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][56]~143_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][38]~142_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][21]~126_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~23_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][36]~122_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~29_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][36]~119_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][5]~124_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][54]~141_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][59]~113_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][5]~128_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][14]~135_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][40]~156_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][44]~120_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][7]~144_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][30]~137_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][4]~118_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][58]~123_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][37]~132_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][57]~133_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][22]~136_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~15_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[3][38]~139_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~49_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~46_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][46]~174_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~30_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~43_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][50]~169_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~50_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][42]~162_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~52_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~53_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][49]~172_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][48]~175_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~41_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~55_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][17]~179_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~38_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~58_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~59_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][18]~180_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][9]~158_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~35_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~40_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][12]~167_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][43]~165_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][10]~161_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][51]~166_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~44_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][16]~178_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][41]~159_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~56_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~47_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][53]~160_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][11]~164_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][52]~163_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~39_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][44]~168_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][13]~170_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][54]~157_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][15]~176_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][47]~177_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~36_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~33_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][45]~171_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][14]~173_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~32_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][24]~186_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~74_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~88_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~85_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][29]~191_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][19]~181_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~95_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][31]~193_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~68_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~80_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~83_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~71_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~61_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~64_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][21]~183_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~76_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][25]~187_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][26]~188_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~92_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~70_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][22]~184_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~82_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][30]~192_combout\ : std_logic;
SIGNAL \LogicUnit|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage_out[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~77_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][27]~189_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~73_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~65_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~86_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~79_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][28]~190_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~91_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~94_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~62_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~89_combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][20]~182_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~67_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Shifter|ALT_INV_stage[5][23]~185_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~138_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~98_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~141_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~145_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~116_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~146_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~100_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~114_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~122_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~108_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~110_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~113_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~118_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~125_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~112_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~129_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~130_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~109_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~104_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~132_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~133_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~136_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~101_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~140_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~134_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~142_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~128_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~120_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~106_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~144_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~126_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~137_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~102_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~117_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~121_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~99_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~124_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~105_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~189_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~190_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~156_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~167_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~183_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~168_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~164_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~193_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~154_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~161_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~194_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~149_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~191_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~186_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~195_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~172_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~197_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~158_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~200_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~180_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~152_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~185_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~198_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~169_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~182_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~165_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~148_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~171_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~160_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~175_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~187_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~153_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~163_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~176_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~178_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~179_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~150_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~157_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~174_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~8_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~219_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~205_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~215_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~208_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~202_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~12_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~209_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~204_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~206_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~213_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~201_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~217_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~218_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~216_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~211_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~13_combout\ : std_logic;
SIGNAL \ALT_INV_Y_internal~212_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_A[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[43]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_FuncClass <= FuncClass;
ww_LogicFN <= LogicFN;
ww_ShiftFN <= ShiftFN;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Adder|ALT_INV_blk_c~17_combout\ <= NOT \Adder|blk_c~17_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~11_combout\ <= NOT \Adder|blk_c~11_combout\;
\Adder|ALT_INV_blk_c~22_combout\ <= NOT \Adder|blk_c~22_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~24_combout\ <= NOT \Adder|blk_c~24_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~12_combout\ <= NOT \Adder|blk_c~12_combout\;
\Adder|ALT_INV_blk_c~14_combout\ <= NOT \Adder|blk_c~14_combout\;
\Adder|ALT_INV_blk_c~23_combout\ <= NOT \Adder|blk_c~23_combout\;
\Adder|ALT_INV_gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~10_combout\ <= NOT \Adder|blk_c~10_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|ALT_INV_gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~21_combout\ <= NOT \Adder|blk_c~21_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\;
\Adder|ALT_INV_gen_blk_cs:5:bits[7]~0_combout\ <= NOT \Adder|gen_blk_cs:5:bits[7]~0_combout\;
\Adder|ALT_INV_blk_c~20_combout\ <= NOT \Adder|blk_c~20_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~19_combout\ <= NOT \Adder|blk_c~19_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~25_combout\ <= NOT \Adder|blk_c~25_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~16_combout\ <= NOT \Adder|blk_c~16_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|ALT_INV_gen_blk_cs:6:bits[5]~0_combout\ <= NOT \Adder|gen_blk_cs:6:bits[5]~0_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~15_combout\ <= NOT \Adder|blk_c~15_combout\;
\Adder|ALT_INV_blk_c~18_combout\ <= NOT \Adder|blk_c~18_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~8_combout\ <= NOT \Adder|blk_c~8_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~13_combout\ <= NOT \Adder|blk_c~13_combout\;
\Adder|ALT_INV_blk_c~9_combout\ <= NOT \Adder|blk_c~9_combout\;
\Adder|ALT_INV_gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_stage[1][2]~4_combout\ <= NOT \Shifter|stage[1][2]~4_combout\;
\Shifter|ALT_INV_InputExtended[61]~3_combout\ <= NOT \Shifter|InputExtended[61]~3_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_stage[3][63]~0_combout\ <= NOT \Shifter|stage[3][63]~0_combout\;
\Shifter|ALT_INV_InputExtended[48]~16_combout\ <= NOT \Shifter|InputExtended[48]~16_combout\;
\Shifter|ALT_INV_stage[1][14]~11_combout\ <= NOT \Shifter|stage[1][14]~11_combout\;
\Shifter|ALT_INV_Equal2~0_combout\ <= NOT \Shifter|Equal2~0_combout\;
\Adder|ALT_INV_blk_c~29_combout\ <= NOT \Adder|blk_c~29_combout\;
\Adder|ALT_INV_gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\;
\Shifter|ALT_INV_InputExtended[54]~10_combout\ <= NOT \Shifter|InputExtended[54]~10_combout\;
\Shifter|ALT_INV_stage[1][12]~10_combout\ <= NOT \Shifter|stage[1][12]~10_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|ALT_INV_gen_blk_cs:7:bits[1]~0_combout\ <= NOT \Adder|gen_blk_cs:7:bits[1]~0_combout\;
\Adder|ALT_INV_Cout~combout\ <= NOT \Adder|Cout~combout\;
\LogicUnit|ALT_INV_Mux63~0_combout\ <= NOT \LogicUnit|Mux63~0_combout\;
\Shifter|ALT_INV_InputExtended[50]~14_combout\ <= NOT \Shifter|InputExtended[50]~14_combout\;
\Shifter|ALT_INV_InputExtended[47]~17_combout\ <= NOT \Shifter|InputExtended[47]~17_combout\;
\Adder|ALT_INV_blk_c~26_combout\ <= NOT \Adder|blk_c~26_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~31_combout\ <= NOT \Adder|blk_c~31_combout\;
\Adder|ALT_INV_blk_c~34_combout\ <= NOT \Adder|blk_c~34_combout\;
\Shifter|ALT_INV_stage[5][63]~1_combout\ <= NOT \Shifter|stage[5][63]~1_combout\;
\Shifter|ALT_INV_stage[5][63]~2_combout\ <= NOT \Shifter|stage[5][63]~2_combout\;
\ALT_INV_ShiftCount[5]~0_combout\ <= NOT \ShiftCount[5]~0_combout\;
\Shifter|ALT_INV_InputExtended[56]~8_combout\ <= NOT \Shifter|InputExtended[56]~8_combout\;
\Shifter|ALT_INV_stage[1][8]~8_combout\ <= NOT \Shifter|stage[1][8]~8_combout\;
\Shifter|ALT_INV_InputExtended[63]~0_combout\ <= NOT \Shifter|InputExtended[63]~0_combout\;
\Shifter|ALT_INV_stage[5][0]~3_combout\ <= NOT \Shifter|stage[5][0]~3_combout\;
\Shifter|ALT_INV_InputExtended[58]~6_combout\ <= NOT \Shifter|InputExtended[58]~6_combout\;
\Shifter|ALT_INV_stage[1][16]~13_combout\ <= NOT \Shifter|stage[1][16]~13_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_InputExtended[55]~9_combout\ <= NOT \Shifter|InputExtended[55]~9_combout\;
\Adder|ALT_INV_blk_c~27_combout\ <= NOT \Adder|blk_c~27_combout\;
\Shifter|ALT_INV_InputExtended[53]~11_combout\ <= NOT \Shifter|InputExtended[53]~11_combout\;
\Adder|ALT_INV_gen_blk_cs:7:bits[4]~0_combout\ <= NOT \Adder|gen_blk_cs:7:bits[4]~0_combout\;
\Shifter|ALT_INV_InputExtended[45]~19_combout\ <= NOT \Shifter|InputExtended[45]~19_combout\;
\Shifter|ALT_INV_stage[1][18]~14_combout\ <= NOT \Shifter|stage[1][18]~14_combout\;
\Adder|ALT_INV_blk_c~33_combout\ <= NOT \Adder|blk_c~33_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_InputExtended[60]~4_combout\ <= NOT \Shifter|InputExtended[60]~4_combout\;
\Shifter|ALT_INV_stage[1][4]~5_combout\ <= NOT \Shifter|stage[1][4]~5_combout\;
\Shifter|ALT_INV_stage[1][6]~6_combout\ <= NOT \Shifter|stage[1][6]~6_combout\;
\Shifter|ALT_INV_InputExtended[49]~15_combout\ <= NOT \Shifter|InputExtended[49]~15_combout\;
\Shifter|ALT_INV_InputExtended[42]~22_combout\ <= NOT \Shifter|InputExtended[42]~22_combout\;
\Adder|ALT_INV_blk_c~30_combout\ <= NOT \Adder|blk_c~30_combout\;
\Adder|ALT_INV_blk_c~32_combout\ <= NOT \Adder|blk_c~32_combout\;
\Shifter|ALT_INV_InputExtended[51]~13_combout\ <= NOT \Shifter|InputExtended[51]~13_combout\;
\Shifter|ALT_INV_InputExtended[43]~21_combout\ <= NOT \Shifter|InputExtended[43]~21_combout\;
\ALT_INV_Y_internal~0_combout\ <= NOT \Y_internal~0_combout\;
\Shifter|ALT_INV_InputExtended[63]~1_combout\ <= NOT \Shifter|InputExtended[63]~1_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_InputExtended[62]~2_combout\ <= NOT \Shifter|InputExtended[62]~2_combout\;
\Shifter|ALT_INV_InputExtended[57]~7_combout\ <= NOT \Shifter|InputExtended[57]~7_combout\;
\Adder|ALT_INV_gen_blk_cs:6:bits[2]~0_combout\ <= NOT \Adder|gen_blk_cs:6:bits[2]~0_combout\;
\Shifter|ALT_INV_stage[5][0]~7_combout\ <= NOT \Shifter|stage[5][0]~7_combout\;
\Adder|ALT_INV_blk_c~28_combout\ <= NOT \Adder|blk_c~28_combout\;
\Shifter|ALT_INV_stage[1][10]~9_combout\ <= NOT \Shifter|stage[1][10]~9_combout\;
\Shifter|ALT_INV_stage[3][8]~12_combout\ <= NOT \Shifter|stage[3][8]~12_combout\;
\Shifter|ALT_INV_InputExtended[46]~18_combout\ <= NOT \Shifter|InputExtended[46]~18_combout\;
\Shifter|ALT_INV_InputExtended[44]~20_combout\ <= NOT \Shifter|InputExtended[44]~20_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Shifter|ALT_INV_InputExtended[59]~5_combout\ <= NOT \Shifter|InputExtended[59]~5_combout\;
\Shifter|ALT_INV_InputExtended[52]~12_combout\ <= NOT \Shifter|InputExtended[52]~12_combout\;
\Shifter|ALT_INV_stage[1][28]~20_combout\ <= NOT \Shifter|stage[1][28]~20_combout\;
\Shifter|ALT_INV_stage[1][60]~41_combout\ <= NOT \Shifter|stage[1][60]~41_combout\;
\Shifter|ALT_INV_stage[1][44]~31_combout\ <= NOT \Shifter|stage[1][44]~31_combout\;
\Shifter|ALT_INV_Output[0]~1_combout\ <= NOT \Shifter|Output[0]~1_combout\;
\ALT_INV_Y_internal~3_combout\ <= NOT \Y_internal~3_combout\;
\ALT_INV_Y_internal~5_combout\ <= NOT \Y_internal~5_combout\;
\Shifter|ALT_INV_InputExtended[34]~30_combout\ <= NOT \Shifter|InputExtended[34]~30_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\;
\ALT_INV_Y_internal~2_combout\ <= NOT \Y_internal~2_combout\;
\Shifter|ALT_INV_InputExtended[38]~26_combout\ <= NOT \Shifter|InputExtended[38]~26_combout\;
\Shifter|ALT_INV_InputExtended[33]~31_combout\ <= NOT \Shifter|InputExtended[33]~31_combout\;
\Shifter|ALT_INV_stage[1][32]~24_combout\ <= NOT \Shifter|stage[1][32]~24_combout\;
\Shifter|ALT_INV_stage[3][24]~22_combout\ <= NOT \Shifter|stage[3][24]~22_combout\;
\Shifter|ALT_INV_sign_bit~0_combout\ <= NOT \Shifter|sign_bit~0_combout\;
\Shifter|ALT_INV_stage[5][62]~46_combout\ <= NOT \Shifter|stage[5][62]~46_combout\;
\Shifter|ALT_INV_stage[1][5]~49_combout\ <= NOT \Shifter|stage[1][5]~49_combout\;
\Shifter|ALT_INV_stage[3][16]~17_combout\ <= NOT \Shifter|stage[3][16]~17_combout\;
\Shifter|ALT_INV_InputExtended[37]~27_combout\ <= NOT \Shifter|InputExtended[37]~27_combout\;
\Shifter|ALT_INV_stage[1][46]~32_combout\ <= NOT \Shifter|stage[1][46]~32_combout\;
\Shifter|ALT_INV_stage[1][50]~35_combout\ <= NOT \Shifter|stage[1][50]~35_combout\;
\Shifter|ALT_INV_InputExtended[32]~32_combout\ <= NOT \Shifter|InputExtended[32]~32_combout\;
\Shifter|ALT_INV_stage[3][62]~45_combout\ <= NOT \Shifter|stage[3][62]~45_combout\;
\Shifter|ALT_INV_stage[1][24]~18_combout\ <= NOT \Shifter|stage[1][24]~18_combout\;
\Shifter|ALT_INV_stage[1][34]~25_combout\ <= NOT \Shifter|stage[1][34]~25_combout\;
\Shifter|ALT_INV_stage[1][40]~29_combout\ <= NOT \Shifter|stage[1][40]~29_combout\;
\Shifter|ALT_INV_stage[1][54]~37_combout\ <= NOT \Shifter|stage[1][54]~37_combout\;
\Shifter|ALT_INV_stage[1][38]~27_combout\ <= NOT \Shifter|stage[1][38]~27_combout\;
\Shifter|ALT_INV_InputExtended[41]~23_combout\ <= NOT \Shifter|InputExtended[41]~23_combout\;
\Shifter|ALT_INV_stage[1][62]~42_combout\ <= NOT \Shifter|stage[1][62]~42_combout\;
\Shifter|ALT_INV_stage[1][56]~39_combout\ <= NOT \Shifter|stage[1][56]~39_combout\;
\Shifter|ALT_INV_stage[1][22]~16_combout\ <= NOT \Shifter|stage[1][22]~16_combout\;
\Shifter|ALT_INV_stage[5][1]~47_combout\ <= NOT \Shifter|stage[5][1]~47_combout\;
\Shifter|ALT_INV_stage[3][48]~38_combout\ <= NOT \Shifter|stage[3][48]~38_combout\;
\Shifter|ALT_INV_stage[1][26]~19_combout\ <= NOT \Shifter|stage[1][26]~19_combout\;
\Shifter|ALT_INV_stage[1][3]~48_combout\ <= NOT \Shifter|stage[1][3]~48_combout\;
\Shifter|ALT_INV_stage[1][7]~50_combout\ <= NOT \Shifter|stage[1][7]~50_combout\;
\Shifter|ALT_INV_stage[3][56]~43_combout\ <= NOT \Shifter|stage[3][56]~43_combout\;
\Shifter|ALT_INV_stage[5][1]~51_combout\ <= NOT \Shifter|stage[5][1]~51_combout\;
\Shifter|ALT_INV_stage[1][9]~52_combout\ <= NOT \Shifter|stage[1][9]~52_combout\;
\Shifter|ALT_INV_stage[1][52]~36_combout\ <= NOT \Shifter|stage[1][52]~36_combout\;
\Shifter|ALT_INV_stage[1][11]~53_combout\ <= NOT \Shifter|stage[1][11]~53_combout\;
\Shifter|ALT_INV_InputExtended[40]~24_combout\ <= NOT \Shifter|InputExtended[40]~24_combout\;
\Shifter|ALT_INV_stage[1][13]~54_combout\ <= NOT \Shifter|stage[1][13]~54_combout\;
\Shifter|ALT_INV_stage[1][15]~55_combout\ <= NOT \Shifter|stage[1][15]~55_combout\;
\Shifter|ALT_INV_Output[0]~0_combout\ <= NOT \Shifter|Output[0]~0_combout\;
\Shifter|ALT_INV_stage[5][0]~23_combout\ <= NOT \Shifter|stage[5][0]~23_combout\;
\Shifter|ALT_INV_stage[3][32]~28_combout\ <= NOT \Shifter|stage[3][32]~28_combout\;
\Shifter|ALT_INV_stage[1][20]~15_combout\ <= NOT \Shifter|stage[1][20]~15_combout\;
\ALT_INV_Y_internal~4_combout\ <= NOT \Y_internal~4_combout\;
\Shifter|ALT_INV_stage[3][9]~56_combout\ <= NOT \Shifter|stage[3][9]~56_combout\;
\Shifter|ALT_INV_stage[1][17]~57_combout\ <= NOT \Shifter|stage[1][17]~57_combout\;
\Shifter|ALT_INV_stage[1][48]~34_combout\ <= NOT \Shifter|stage[1][48]~34_combout\;
\Shifter|ALT_INV_stage[1][19]~58_combout\ <= NOT \Shifter|stage[1][19]~58_combout\;
\Shifter|ALT_INV_stage[1][21]~59_combout\ <= NOT \Shifter|stage[1][21]~59_combout\;
\Shifter|ALT_INV_stage[1][58]~40_combout\ <= NOT \Shifter|stage[1][58]~40_combout\;
\Shifter|ALT_INV_InputExtended[39]~25_combout\ <= NOT \Shifter|InputExtended[39]~25_combout\;
\Shifter|ALT_INV_InputExtended[36]~28_combout\ <= NOT \Shifter|InputExtended[36]~28_combout\;
\Shifter|ALT_INV_InputExtended[35]~29_combout\ <= NOT \Shifter|InputExtended[35]~29_combout\;
\Shifter|ALT_INV_stage[1][30]~21_combout\ <= NOT \Shifter|stage[1][30]~21_combout\;
\Shifter|ALT_INV_stage[1][36]~26_combout\ <= NOT \Shifter|stage[1][36]~26_combout\;
\Shifter|ALT_INV_stage[3][40]~33_combout\ <= NOT \Shifter|stage[3][40]~33_combout\;
\Shifter|ALT_INV_stage[1][42]~30_combout\ <= NOT \Shifter|stage[1][42]~30_combout\;
\Shifter|ALT_INV_stage[5][32]~44_combout\ <= NOT \Shifter|stage[5][32]~44_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~6_combout\ <= NOT \Adder|blk_c~6_combout\;
\Adder|ALT_INV_gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\;
\ALT_INV_Y_internal~236_combout\ <= NOT \Y_internal~236_combout\;
\Adder|ALT_INV_blk_c~2_combout\ <= NOT \Adder|blk_c~2_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~3_combout\ <= NOT \Adder|blk_c~3_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~7_combout\ <= NOT \Adder|blk_c~7_combout\;
\ALT_INV_Y_internal~240_combout\ <= NOT \Y_internal~240_combout\;
\ALT_INV_Y_internal~244_combout\ <= NOT \Y_internal~244_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\;
\ALT_INV_Y_internal~248_combout\ <= NOT \Y_internal~248_combout\;
\Adder|ALT_INV_blk_c~0_combout\ <= NOT \Adder|blk_c~0_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~4_combout\ <= NOT \Adder|blk_c~4_combout\;
\Adder|ALT_INV_blk_c~5_combout\ <= NOT \Adder|blk_c~5_combout\;
\ALT_INV_Y_internal~232_combout\ <= NOT \Y_internal~232_combout\;
\ALT_INV_Y_internal~224_combout\ <= NOT \Y_internal~224_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\;
\Adder|ALT_INV_blk_c~1_combout\ <= NOT \Adder|blk_c~1_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\;
\Adder|ALT_INV_gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\;
\Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\ <= NOT \Adder|gen_blk_cs:7:bits[7]~combout\;
\Shifter|ALT_INV_stage[3][50]~98_combout\ <= NOT \Shifter|stage[3][50]~98_combout\;
\Shifter|ALT_INV_stage[3][60]~101_combout\ <= NOT \Shifter|stage[3][60]~101_combout\;
\Shifter|ALT_INV_stage[1][45]~75_combout\ <= NOT \Shifter|stage[1][45]~75_combout\;
\ALT_INV_Y_internal~11_combout\ <= NOT \Y_internal~11_combout\;
\Shifter|ALT_INV_stage[1][61]~85_combout\ <= NOT \Shifter|stage[1][61]~85_combout\;
\Shifter|ALT_INV_stage[5][3]~103_combout\ <= NOT \Shifter|stage[5][3]~103_combout\;
\ALT_INV_Y_internal~9_combout\ <= NOT \Y_internal~9_combout\;
\Shifter|ALT_INV_stage[3][35]~108_combout\ <= NOT \Shifter|stage[3][35]~108_combout\;
\Shifter|ALT_INV_stage[3][43]~109_combout\ <= NOT \Shifter|stage[3][43]~109_combout\;
\Shifter|ALT_INV_stage[3][51]~110_combout\ <= NOT \Shifter|stage[3][51]~110_combout\;
\Shifter|ALT_INV_stage[3][59]~111_combout\ <= NOT \Shifter|stage[3][59]~111_combout\;
\Shifter|ALT_INV_stage[3][61]~89_combout\ <= NOT \Shifter|stage[3][61]~89_combout\;
\Shifter|ALT_INV_stage[5][33]~88_combout\ <= NOT \Shifter|stage[5][33]~88_combout\;
\Shifter|ALT_INV_stage[3][27]~106_combout\ <= NOT \Shifter|stage[3][27]~106_combout\;
\Shifter|ALT_INV_stage[5][35]~112_combout\ <= NOT \Shifter|stage[5][35]~112_combout\;
\ALT_INV_Y_internal~14_combout\ <= NOT \Y_internal~14_combout\;
\Shifter|ALT_INV_stage[1][23]~60_combout\ <= NOT \Shifter|stage[1][23]~60_combout\;
\Shifter|ALT_INV_stage[1][25]~62_combout\ <= NOT \Shifter|stage[1][25]~62_combout\;
\Shifter|ALT_INV_stage[1][41]~73_combout\ <= NOT \Shifter|stage[1][41]~73_combout\;
\Shifter|ALT_INV_stage[3][57]~87_combout\ <= NOT \Shifter|stage[3][57]~87_combout\;
\ALT_INV_Y_internal~6_combout\ <= NOT \Y_internal~6_combout\;
\Shifter|ALT_INV_stage[1][31]~65_combout\ <= NOT \Shifter|stage[1][31]~65_combout\;
\Shifter|ALT_INV_stage[5][1]~67_combout\ <= NOT \Shifter|stage[5][1]~67_combout\;
\Shifter|ALT_INV_stage[1][55]~81_combout\ <= NOT \Shifter|stage[1][55]~81_combout\;
\Shifter|ALT_INV_stage[1][63]~86_combout\ <= NOT \Shifter|stage[1][63]~86_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[1][47]~76_combout\ <= NOT \Shifter|stage[1][47]~76_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\;
\ALT_INV_Y_internal~8_combout\ <= NOT \Y_internal~8_combout\;
\Shifter|ALT_INV_stage[5][34]~100_combout\ <= NOT \Shifter|stage[5][34]~100_combout\;
\Shifter|ALT_INV_stage[1][49]~78_combout\ <= NOT \Shifter|stage[1][49]~78_combout\;
\Shifter|ALT_INV_stage[3][33]~72_combout\ <= NOT \Shifter|stage[3][33]~72_combout\;
\Shifter|ALT_INV_stage[3][58]~99_combout\ <= NOT \Shifter|stage[3][58]~99_combout\;
\Shifter|ALT_INV_stage[3][19]~105_combout\ <= NOT \Shifter|stage[3][19]~105_combout\;
\Shifter|ALT_INV_stage[3][26]~94_combout\ <= NOT \Shifter|stage[3][26]~94_combout\;
\Shifter|ALT_INV_stage[5][2]~91_combout\ <= NOT \Shifter|stage[5][2]~91_combout\;
\Shifter|ALT_INV_stage[5][3]~107_combout\ <= NOT \Shifter|stage[5][3]~107_combout\;
\Shifter|ALT_INV_stage[1][35]~69_combout\ <= NOT \Shifter|stage[1][35]~69_combout\;
\Shifter|ALT_INV_stage[1][59]~84_combout\ <= NOT \Shifter|stage[1][59]~84_combout\;
\Shifter|ALT_INV_stage[3][11]~104_combout\ <= NOT \Shifter|stage[3][11]~104_combout\;
\ALT_INV_Y_internal~12_combout\ <= NOT \Y_internal~12_combout\;
\Shifter|ALT_INV_stage[3][25]~66_combout\ <= NOT \Shifter|stage[3][25]~66_combout\;
\Shifter|ALT_INV_stage[1][29]~64_combout\ <= NOT \Shifter|stage[1][29]~64_combout\;
\Shifter|ALT_INV_stage[1][37]~70_combout\ <= NOT \Shifter|stage[1][37]~70_combout\;
\Shifter|ALT_INV_stage[1][33]~68_combout\ <= NOT \Shifter|stage[1][33]~68_combout\;
\Shifter|ALT_INV_stage[1][39]~71_combout\ <= NOT \Shifter|stage[1][39]~71_combout\;
\Shifter|ALT_INV_stage[5][61]~90_combout\ <= NOT \Shifter|stage[5][61]~90_combout\;
\Shifter|ALT_INV_stage[3][18]~93_combout\ <= NOT \Shifter|stage[3][18]~93_combout\;
\Shifter|ALT_INV_stage[3][34]~96_combout\ <= NOT \Shifter|stage[3][34]~96_combout\;
\Shifter|ALT_INV_stage[1][57]~83_combout\ <= NOT \Shifter|stage[1][57]~83_combout\;
\Shifter|ALT_INV_stage[5][60]~102_combout\ <= NOT \Shifter|stage[5][60]~102_combout\;
\Shifter|ALT_INV_stage[3][41]~77_combout\ <= NOT \Shifter|stage[3][41]~77_combout\;
\Shifter|ALT_INV_stage[5][2]~95_combout\ <= NOT \Shifter|stage[5][2]~95_combout\;
\Shifter|ALT_INV_stage[3][49]~82_combout\ <= NOT \Shifter|stage[3][49]~82_combout\;
\Shifter|ALT_INV_stage[1][27]~63_combout\ <= NOT \Shifter|stage[1][27]~63_combout\;
\Shifter|ALT_INV_stage[3][42]~97_combout\ <= NOT \Shifter|stage[3][42]~97_combout\;
\Shifter|ALT_INV_stage[1][53]~80_combout\ <= NOT \Shifter|stage[1][53]~80_combout\;
\Shifter|ALT_INV_stage[3][17]~61_combout\ <= NOT \Shifter|stage[3][17]~61_combout\;
\Shifter|ALT_INV_stage[1][43]~74_combout\ <= NOT \Shifter|stage[1][43]~74_combout\;
\Shifter|ALT_INV_stage[3][10]~92_combout\ <= NOT \Shifter|stage[3][10]~92_combout\;
\Shifter|ALT_INV_stage[1][51]~79_combout\ <= NOT \Shifter|stage[1][51]~79_combout\;
\Shifter|ALT_INV_stage[3][29]~127_combout\ <= NOT \Shifter|stage[3][29]~127_combout\;
\Shifter|ALT_INV_stage[3][45]~130_combout\ <= NOT \Shifter|stage[3][45]~130_combout\;
\Shifter|ALT_INV_stage[3][23]~146_combout\ <= NOT \Shifter|stage[3][23]~146_combout\;
\Shifter|ALT_INV_stage[5][7]~148_combout\ <= NOT \Shifter|stage[5][7]~148_combout\;
\Shifter|ALT_INV_stage[3][39]~149_combout\ <= NOT \Shifter|stage[3][39]~149_combout\;
\Shifter|ALT_INV_stage[3][46]~140_combout\ <= NOT \Shifter|stage[3][46]~140_combout\;
\Shifter|ALT_INV_stage[3][52]~121_combout\ <= NOT \Shifter|stage[3][52]~121_combout\;
\Shifter|ALT_INV_stage[3][37]~129_combout\ <= NOT \Shifter|stage[3][37]~129_combout\;
\Shifter|ALT_INV_stage[3][20]~116_combout\ <= NOT \Shifter|stage[3][20]~116_combout\;
\ALT_INV_Y_internal~21_combout\ <= NOT \Y_internal~21_combout\;
\Shifter|ALT_INV_stage[3][63]~152_combout\ <= NOT \Shifter|stage[3][63]~152_combout\;
\Shifter|ALT_INV_stage[3][12]~115_combout\ <= NOT \Shifter|stage[3][12]~115_combout\;
\ALT_INV_Y_internal~18_combout\ <= NOT \Y_internal~18_combout\;
\Shifter|ALT_INV_stage[3][31]~147_combout\ <= NOT \Shifter|stage[3][31]~147_combout\;
\ALT_INV_Y_internal~26_combout\ <= NOT \Y_internal~26_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[3][28]~117_combout\ <= NOT \Shifter|stage[3][28]~117_combout\;
\Shifter|ALT_INV_stage[5][39]~153_combout\ <= NOT \Shifter|stage[5][39]~153_combout\;
\ALT_INV_Y_internal~20_combout\ <= NOT \Y_internal~20_combout\;
\Shifter|ALT_INV_stage[5][6]~138_combout\ <= NOT \Shifter|stage[5][6]~138_combout\;
\Shifter|ALT_INV_stage[3][15]~145_combout\ <= NOT \Shifter|stage[3][15]~145_combout\;
\Shifter|ALT_INV_stage[5][4]~114_combout\ <= NOT \Shifter|stage[5][4]~114_combout\;
\ALT_INV_Y_internal~24_combout\ <= NOT \Y_internal~24_combout\;
\ALT_INV_Y_internal~17_combout\ <= NOT \Y_internal~17_combout\;
\Shifter|ALT_INV_stage[3][47]~150_combout\ <= NOT \Shifter|stage[3][47]~150_combout\;
\Shifter|ALT_INV_stage[3][53]~131_combout\ <= NOT \Shifter|stage[3][53]~131_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][6]~134_combout\ <= NOT \Shifter|stage[5][6]~134_combout\;
\Shifter|ALT_INV_stage[3][55]~151_combout\ <= NOT \Shifter|stage[3][55]~151_combout\;
\Shifter|ALT_INV_stage[5][55]~154_combout\ <= NOT \Shifter|stage[5][55]~154_combout\;
\Shifter|ALT_INV_stage[5][8]~155_combout\ <= NOT \Shifter|stage[5][8]~155_combout\;
\ALT_INV_Y_internal~27_combout\ <= NOT \Y_internal~27_combout\;
\Shifter|ALT_INV_stage[3][13]~125_combout\ <= NOT \Shifter|stage[3][13]~125_combout\;
\Shifter|ALT_INV_stage[5][56]~143_combout\ <= NOT \Shifter|stage[5][56]~143_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][38]~142_combout\ <= NOT \Shifter|stage[5][38]~142_combout\;
\Shifter|ALT_INV_stage[3][21]~126_combout\ <= NOT \Shifter|stage[3][21]~126_combout\;
\ALT_INV_Y_internal~23_combout\ <= NOT \Y_internal~23_combout\;
\Shifter|ALT_INV_stage[5][36]~122_combout\ <= NOT \Shifter|stage[5][36]~122_combout\;
\ALT_INV_Y_internal~29_combout\ <= NOT \Y_internal~29_combout\;
\Shifter|ALT_INV_stage[3][36]~119_combout\ <= NOT \Shifter|stage[3][36]~119_combout\;
\Shifter|ALT_INV_stage[5][5]~124_combout\ <= NOT \Shifter|stage[5][5]~124_combout\;
\Shifter|ALT_INV_stage[3][54]~141_combout\ <= NOT \Shifter|stage[3][54]~141_combout\;
\Shifter|ALT_INV_stage[5][59]~113_combout\ <= NOT \Shifter|stage[5][59]~113_combout\;
\Shifter|ALT_INV_stage[5][5]~128_combout\ <= NOT \Shifter|stage[5][5]~128_combout\;
\Shifter|ALT_INV_stage[3][14]~135_combout\ <= NOT \Shifter|stage[3][14]~135_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][40]~156_combout\ <= NOT \Shifter|stage[5][40]~156_combout\;
\Shifter|ALT_INV_stage[3][44]~120_combout\ <= NOT \Shifter|stage[3][44]~120_combout\;
\Shifter|ALT_INV_stage[5][7]~144_combout\ <= NOT \Shifter|stage[5][7]~144_combout\;
\Shifter|ALT_INV_stage[3][30]~137_combout\ <= NOT \Shifter|stage[3][30]~137_combout\;
\Shifter|ALT_INV_stage[5][4]~118_combout\ <= NOT \Shifter|stage[5][4]~118_combout\;
\Shifter|ALT_INV_stage[5][58]~123_combout\ <= NOT \Shifter|stage[5][58]~123_combout\;
\Shifter|ALT_INV_stage[5][37]~132_combout\ <= NOT \Shifter|stage[5][37]~132_combout\;
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][57]~133_combout\ <= NOT \Shifter|stage[5][57]~133_combout\;
\Shifter|ALT_INV_stage[3][22]~136_combout\ <= NOT \Shifter|stage[3][22]~136_combout\;
\ALT_INV_Y_internal~15_combout\ <= NOT \Y_internal~15_combout\;
\Shifter|ALT_INV_stage[3][38]~139_combout\ <= NOT \Shifter|stage[3][38]~139_combout\;
\ALT_INV_Y_internal~49_combout\ <= NOT \Y_internal~49_combout\;
\ALT_INV_Y_internal~46_combout\ <= NOT \Y_internal~46_combout\;
\Shifter|ALT_INV_stage[5][46]~174_combout\ <= NOT \Shifter|stage[5][46]~174_combout\;
\ALT_INV_Y_internal~30_combout\ <= NOT \Y_internal~30_combout\;
\ALT_INV_Y_internal~43_combout\ <= NOT \Y_internal~43_combout\;
\Shifter|ALT_INV_stage[5][50]~169_combout\ <= NOT \Shifter|stage[5][50]~169_combout\;
\ALT_INV_Y_internal~50_combout\ <= NOT \Y_internal~50_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][42]~162_combout\ <= NOT \Shifter|stage[5][42]~162_combout\;
\ALT_INV_Y_internal~52_combout\ <= NOT \Y_internal~52_combout\;
\ALT_INV_Y_internal~53_combout\ <= NOT \Y_internal~53_combout\;
\Shifter|ALT_INV_stage[5][49]~172_combout\ <= NOT \Shifter|stage[5][49]~172_combout\;
\Shifter|ALT_INV_stage[5][48]~175_combout\ <= NOT \Shifter|stage[5][48]~175_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\;
\ALT_INV_Y_internal~41_combout\ <= NOT \Y_internal~41_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\;
\ALT_INV_Y_internal~55_combout\ <= NOT \Y_internal~55_combout\;
\Shifter|ALT_INV_stage[5][17]~179_combout\ <= NOT \Shifter|stage[5][17]~179_combout\;
\ALT_INV_Y_internal~38_combout\ <= NOT \Y_internal~38_combout\;
\ALT_INV_Y_internal~58_combout\ <= NOT \Y_internal~58_combout\;
\ALT_INV_Y_internal~59_combout\ <= NOT \Y_internal~59_combout\;
\Shifter|ALT_INV_stage[5][18]~180_combout\ <= NOT \Shifter|stage[5][18]~180_combout\;
\Shifter|ALT_INV_stage[5][9]~158_combout\ <= NOT \Shifter|stage[5][9]~158_combout\;
\ALT_INV_Y_internal~35_combout\ <= NOT \Y_internal~35_combout\;
\ALT_INV_Y_internal~40_combout\ <= NOT \Y_internal~40_combout\;
\Shifter|ALT_INV_stage[5][12]~167_combout\ <= NOT \Shifter|stage[5][12]~167_combout\;
\Shifter|ALT_INV_stage[5][43]~165_combout\ <= NOT \Shifter|stage[5][43]~165_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][10]~161_combout\ <= NOT \Shifter|stage[5][10]~161_combout\;
\Shifter|ALT_INV_stage[5][51]~166_combout\ <= NOT \Shifter|stage[5][51]~166_combout\;
\ALT_INV_Y_internal~44_combout\ <= NOT \Y_internal~44_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][16]~178_combout\ <= NOT \Shifter|stage[5][16]~178_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][41]~159_combout\ <= NOT \Shifter|stage[5][41]~159_combout\;
\ALT_INV_Y_internal~56_combout\ <= NOT \Y_internal~56_combout\;
\ALT_INV_Y_internal~47_combout\ <= NOT \Y_internal~47_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][53]~160_combout\ <= NOT \Shifter|stage[5][53]~160_combout\;
\Shifter|ALT_INV_stage[5][11]~164_combout\ <= NOT \Shifter|stage[5][11]~164_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][52]~163_combout\ <= NOT \Shifter|stage[5][52]~163_combout\;
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\;
\ALT_INV_Y_internal~39_combout\ <= NOT \Y_internal~39_combout\;
\Shifter|ALT_INV_stage[5][44]~168_combout\ <= NOT \Shifter|stage[5][44]~168_combout\;
\Shifter|ALT_INV_stage[5][13]~170_combout\ <= NOT \Shifter|stage[5][13]~170_combout\;
\Shifter|ALT_INV_stage[5][54]~157_combout\ <= NOT \Shifter|stage[5][54]~157_combout\;
\Shifter|ALT_INV_stage[5][15]~176_combout\ <= NOT \Shifter|stage[5][15]~176_combout\;
\Shifter|ALT_INV_stage[5][47]~177_combout\ <= NOT \Shifter|stage[5][47]~177_combout\;
\ALT_INV_Y_internal~36_combout\ <= NOT \Y_internal~36_combout\;
\ALT_INV_Y_internal~33_combout\ <= NOT \Y_internal~33_combout\;
\Shifter|ALT_INV_stage[5][45]~171_combout\ <= NOT \Shifter|stage[5][45]~171_combout\;
\Shifter|ALT_INV_stage[5][14]~173_combout\ <= NOT \Shifter|stage[5][14]~173_combout\;
\ALT_INV_Y_internal~32_combout\ <= NOT \Y_internal~32_combout\;
\Shifter|ALT_INV_stage[5][24]~186_combout\ <= NOT \Shifter|stage[5][24]~186_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\;
\ALT_INV_Y_internal~74_combout\ <= NOT \Y_internal~74_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\;
\ALT_INV_Y_internal~88_combout\ <= NOT \Y_internal~88_combout\;
\ALT_INV_Y_internal~85_combout\ <= NOT \Y_internal~85_combout\;
\Shifter|ALT_INV_stage[5][29]~191_combout\ <= NOT \Shifter|stage[5][29]~191_combout\;
\Shifter|ALT_INV_stage[5][19]~181_combout\ <= NOT \Shifter|stage[5][19]~181_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\;
\ALT_INV_Y_internal~95_combout\ <= NOT \Y_internal~95_combout\;
\Shifter|ALT_INV_stage[5][31]~193_combout\ <= NOT \Shifter|stage[5][31]~193_combout\;
\ALT_INV_Y_internal~68_combout\ <= NOT \Y_internal~68_combout\;
\ALT_INV_Y_internal~80_combout\ <= NOT \Y_internal~80_combout\;
\ALT_INV_Y_internal~83_combout\ <= NOT \Y_internal~83_combout\;
\ALT_INV_Y_internal~71_combout\ <= NOT \Y_internal~71_combout\;
\ALT_INV_Y_internal~61_combout\ <= NOT \Y_internal~61_combout\;
\ALT_INV_Y_internal~64_combout\ <= NOT \Y_internal~64_combout\;
\Shifter|ALT_INV_stage[5][21]~183_combout\ <= NOT \Shifter|stage[5][21]~183_combout\;
\ALT_INV_Y_internal~76_combout\ <= NOT \Y_internal~76_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][25]~187_combout\ <= NOT \Shifter|stage[5][25]~187_combout\;
\Shifter|ALT_INV_stage[5][26]~188_combout\ <= NOT \Shifter|stage[5][26]~188_combout\;
\ALT_INV_Y_internal~92_combout\ <= NOT \Y_internal~92_combout\;
\ALT_INV_Y_internal~70_combout\ <= NOT \Y_internal~70_combout\;
\Shifter|ALT_INV_stage[5][22]~184_combout\ <= NOT \Shifter|stage[5][22]~184_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\;
\ALT_INV_Y_internal~82_combout\ <= NOT \Y_internal~82_combout\;
\Shifter|ALT_INV_stage[5][30]~192_combout\ <= NOT \Shifter|stage[5][30]~192_combout\;
\LogicUnit|ALT_INV_Mux32~0_combout\ <= NOT \LogicUnit|Mux32~0_combout\;
\Shifter|ALT_INV_stage_out[31]~0_combout\ <= NOT \Shifter|stage_out[31]~0_combout\;
\ALT_INV_Y_internal~77_combout\ <= NOT \Y_internal~77_combout\;
\Shifter|ALT_INV_stage[5][27]~189_combout\ <= NOT \Shifter|stage[5][27]~189_combout\;
\ALT_INV_Y_internal~73_combout\ <= NOT \Y_internal~73_combout\;
\ALT_INV_Y_internal~65_combout\ <= NOT \Y_internal~65_combout\;
\ALT_INV_Y_internal~86_combout\ <= NOT \Y_internal~86_combout\;
\ALT_INV_Y_internal~79_combout\ <= NOT \Y_internal~79_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][28]~190_combout\ <= NOT \Shifter|stage[5][28]~190_combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\;
\ALT_INV_Y_internal~91_combout\ <= NOT \Y_internal~91_combout\;
\ALT_INV_Y_internal~94_combout\ <= NOT \Y_internal~94_combout\;
\ALT_INV_Y_internal~62_combout\ <= NOT \Y_internal~62_combout\;
\ALT_INV_Y_internal~89_combout\ <= NOT \Y_internal~89_combout\;
\Shifter|ALT_INV_stage[5][20]~182_combout\ <= NOT \Shifter|stage[5][20]~182_combout\;
\ALT_INV_Y_internal~67_combout\ <= NOT \Y_internal~67_combout\;
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\;
\Shifter|ALT_INV_stage[5][23]~185_combout\ <= NOT \Shifter|stage[5][23]~185_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\;
\ALT_INV_Y_internal~138_combout\ <= NOT \Y_internal~138_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\;
\ALT_INV_Y_internal~98_combout\ <= NOT \Y_internal~98_combout\;
\ALT_INV_Y_internal~141_combout\ <= NOT \Y_internal~141_combout\;
\ALT_INV_Y_internal~145_combout\ <= NOT \Y_internal~145_combout\;
\ALT_INV_Y_internal~116_combout\ <= NOT \Y_internal~116_combout\;
\ALT_INV_Y_internal~146_combout\ <= NOT \Y_internal~146_combout\;
\ALT_INV_Y_internal~100_combout\ <= NOT \Y_internal~100_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\;
\ALT_INV_Y_internal~114_combout\ <= NOT \Y_internal~114_combout\;
\ALT_INV_Y_internal~122_combout\ <= NOT \Y_internal~122_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\;
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\;
\ALT_INV_Y_internal~108_combout\ <= NOT \Y_internal~108_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\;
\ALT_INV_Y_internal~110_combout\ <= NOT \Y_internal~110_combout\;
\ALT_INV_Y_internal~113_combout\ <= NOT \Y_internal~113_combout\;
\ALT_INV_Y_internal~118_combout\ <= NOT \Y_internal~118_combout\;
\ALT_INV_Y_internal~125_combout\ <= NOT \Y_internal~125_combout\;
\ALT_INV_Y_internal~112_combout\ <= NOT \Y_internal~112_combout\;
\ALT_INV_Y_internal~129_combout\ <= NOT \Y_internal~129_combout\;
\ALT_INV_Y_internal~130_combout\ <= NOT \Y_internal~130_combout\;
\ALT_INV_Y_internal~109_combout\ <= NOT \Y_internal~109_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\;
\ALT_INV_Y_internal~104_combout\ <= NOT \Y_internal~104_combout\;
\ALT_INV_Y_internal~132_combout\ <= NOT \Y_internal~132_combout\;
\ALT_INV_Y_internal~133_combout\ <= NOT \Y_internal~133_combout\;
\ALT_INV_Y_internal~136_combout\ <= NOT \Y_internal~136_combout\;
\ALT_INV_Y_internal~101_combout\ <= NOT \Y_internal~101_combout\;
\ALT_INV_Y_internal~140_combout\ <= NOT \Y_internal~140_combout\;
\ALT_INV_Y_internal~134_combout\ <= NOT \Y_internal~134_combout\;
\ALT_INV_Y_internal~142_combout\ <= NOT \Y_internal~142_combout\;
\ALT_INV_Y_internal~128_combout\ <= NOT \Y_internal~128_combout\;
\ALT_INV_Y_internal~120_combout\ <= NOT \Y_internal~120_combout\;
\ALT_INV_Y_internal~106_combout\ <= NOT \Y_internal~106_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\;
\ALT_INV_Y_internal~144_combout\ <= NOT \Y_internal~144_combout\;
\ALT_INV_Y_internal~126_combout\ <= NOT \Y_internal~126_combout\;
\ALT_INV_Y_internal~137_combout\ <= NOT \Y_internal~137_combout\;
\ALT_INV_Y_internal~102_combout\ <= NOT \Y_internal~102_combout\;
\ALT_INV_Y_internal~117_combout\ <= NOT \Y_internal~117_combout\;
\ALT_INV_Y_internal~121_combout\ <= NOT \Y_internal~121_combout\;
\ALT_INV_Y_internal~99_combout\ <= NOT \Y_internal~99_combout\;
\ALT_INV_Y_internal~124_combout\ <= NOT \Y_internal~124_combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\;
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\;
\ALT_INV_Y_internal~105_combout\ <= NOT \Y_internal~105_combout\;
\ALT_INV_Y_internal~189_combout\ <= NOT \Y_internal~189_combout\;
\ALT_INV_Y_internal~190_combout\ <= NOT \Y_internal~190_combout\;
\ALT_INV_Y_internal~156_combout\ <= NOT \Y_internal~156_combout\;
\ALT_INV_Y_internal~167_combout\ <= NOT \Y_internal~167_combout\;
\ALT_INV_Y_internal~183_combout\ <= NOT \Y_internal~183_combout\;
\ALT_INV_Y_internal~168_combout\ <= NOT \Y_internal~168_combout\;
\ALT_INV_Y_internal~164_combout\ <= NOT \Y_internal~164_combout\;
\ALT_INV_Y_internal~193_combout\ <= NOT \Y_internal~193_combout\;
\ALT_INV_Y_internal~154_combout\ <= NOT \Y_internal~154_combout\;
\ALT_INV_Y_internal~161_combout\ <= NOT \Y_internal~161_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\;
\ALT_INV_Y_internal~194_combout\ <= NOT \Y_internal~194_combout\;
\ALT_INV_Y_internal~149_combout\ <= NOT \Y_internal~149_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\;
\ALT_INV_Y_internal~191_combout\ <= NOT \Y_internal~191_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\;
\ALT_INV_Y_internal~186_combout\ <= NOT \Y_internal~186_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\;
\ALT_INV_Y_internal~195_combout\ <= NOT \Y_internal~195_combout\;
\ALT_INV_Y_internal~172_combout\ <= NOT \Y_internal~172_combout\;
\ALT_INV_Y_internal~197_combout\ <= NOT \Y_internal~197_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\;
\ALT_INV_Y_internal~158_combout\ <= NOT \Y_internal~158_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\;
\ALT_INV_Y_internal~200_combout\ <= NOT \Y_internal~200_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\;
\ALT_INV_Y_internal~180_combout\ <= NOT \Y_internal~180_combout\;
\ALT_INV_Y_internal~152_combout\ <= NOT \Y_internal~152_combout\;
\ALT_INV_Y_internal~185_combout\ <= NOT \Y_internal~185_combout\;
\ALT_INV_Y_internal~198_combout\ <= NOT \Y_internal~198_combout\;
\ALT_INV_Y_internal~169_combout\ <= NOT \Y_internal~169_combout\;
\ALT_INV_Y_internal~182_combout\ <= NOT \Y_internal~182_combout\;
\ALT_INV_Y_internal~165_combout\ <= NOT \Y_internal~165_combout\;
\ALT_INV_Y_internal~148_combout\ <= NOT \Y_internal~148_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\;
\ALT_INV_Y_internal~171_combout\ <= NOT \Y_internal~171_combout\;
\ALT_INV_Y_internal~160_combout\ <= NOT \Y_internal~160_combout\;
\ALT_INV_Y_internal~175_combout\ <= NOT \Y_internal~175_combout\;
\ALT_INV_Y_internal~187_combout\ <= NOT \Y_internal~187_combout\;
\ALT_INV_Y_internal~153_combout\ <= NOT \Y_internal~153_combout\;
\ALT_INV_Y_internal~163_combout\ <= NOT \Y_internal~163_combout\;
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\;
\ALT_INV_Y_internal~176_combout\ <= NOT \Y_internal~176_combout\;
\ALT_INV_Y_internal~178_combout\ <= NOT \Y_internal~178_combout\;
\ALT_INV_Y_internal~179_combout\ <= NOT \Y_internal~179_combout\;
\ALT_INV_Y_internal~150_combout\ <= NOT \Y_internal~150_combout\;
\ALT_INV_Y_internal~157_combout\ <= NOT \Y_internal~157_combout\;
\ALT_INV_Y_internal~174_combout\ <= NOT \Y_internal~174_combout\;
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\;
\ALT_INV_Equal3~8_combout\ <= NOT \Equal3~8_combout\;
\ALT_INV_Y_internal~219_combout\ <= NOT \Y_internal~219_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Y_internal~205_combout\ <= NOT \Y_internal~205_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_Y_internal~215_combout\ <= NOT \Y_internal~215_combout\;
\ALT_INV_Y_internal~208_combout\ <= NOT \Y_internal~208_combout\;
\ALT_INV_Equal3~7_combout\ <= NOT \Equal3~7_combout\;
\ALT_INV_Equal3~9_combout\ <= NOT \Equal3~9_combout\;
\ALT_INV_Y_internal~202_combout\ <= NOT \Y_internal~202_combout\;
\ALT_INV_Equal3~12_combout\ <= NOT \Equal3~12_combout\;
\ALT_INV_Y_internal~209_combout\ <= NOT \Y_internal~209_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\;
\ALT_INV_Equal3~11_combout\ <= NOT \Equal3~11_combout\;
\ALT_INV_Equal3~14_combout\ <= NOT \Equal3~14_combout\;
\ALT_INV_Equal3~15_combout\ <= NOT \Equal3~15_combout\;
\ALT_INV_Y_internal~204_combout\ <= NOT \Y_internal~204_combout\;
\ALT_INV_Y_internal~206_combout\ <= NOT \Y_internal~206_combout\;
\ALT_INV_Y_internal~213_combout\ <= NOT \Y_internal~213_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Y_internal~201_combout\ <= NOT \Y_internal~201_combout\;
\ALT_INV_Y_internal~217_combout\ <= NOT \Y_internal~217_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Y_internal~218_combout\ <= NOT \Y_internal~218_combout\;
\ALT_INV_Equal3~10_combout\ <= NOT \Equal3~10_combout\;
\ALT_INV_Y_internal~216_combout\ <= NOT \Y_internal~216_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\;
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\ <= NOT \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\;
\ALT_INV_Y_internal~211_combout\ <= NOT \Y_internal~211_combout\;
\ALT_INV_Equal3~13_combout\ <= NOT \Equal3~13_combout\;
\ALT_INV_Y_internal~212_combout\ <= NOT \Y_internal~212_combout\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[63]~input_o\ <= NOT \B[63]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_A[63]~input_o\ <= NOT \A[63]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[37]~input_o\ <= NOT \B[37]~input_o\;
\ALT_INV_B[35]~input_o\ <= NOT \B[35]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[34]~input_o\ <= NOT \B[34]~input_o\;
\ALT_INV_A[36]~input_o\ <= NOT \A[36]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[32]~input_o\ <= NOT \A[32]~input_o\;
\ALT_INV_A[35]~input_o\ <= NOT \A[35]~input_o\;
\ALT_INV_A[37]~input_o\ <= NOT \A[37]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[39]~input_o\ <= NOT \A[39]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[36]~input_o\ <= NOT \B[36]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[38]~input_o\ <= NOT \B[38]~input_o\;
\ALT_INV_B[32]~input_o\ <= NOT \B[32]~input_o\;
\ALT_INV_A[33]~input_o\ <= NOT \A[33]~input_o\;
\ALT_INV_A[38]~input_o\ <= NOT \A[38]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[39]~input_o\ <= NOT \B[39]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[33]~input_o\ <= NOT \B[33]~input_o\;
\ALT_INV_A[34]~input_o\ <= NOT \A[34]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[40]~input_o\ <= NOT \A[40]~input_o\;
\ALT_INV_B[55]~input_o\ <= NOT \B[55]~input_o\;
\ALT_INV_A[57]~input_o\ <= NOT \A[57]~input_o\;
\ALT_INV_A[58]~input_o\ <= NOT \A[58]~input_o\;
\ALT_INV_A[62]~input_o\ <= NOT \A[62]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[52]~input_o\ <= NOT \A[52]~input_o\;
\ALT_INV_B[40]~input_o\ <= NOT \B[40]~input_o\;
\ALT_INV_A[47]~input_o\ <= NOT \A[47]~input_o\;
\ALT_INV_A[49]~input_o\ <= NOT \A[49]~input_o\;
\ALT_INV_B[41]~input_o\ <= NOT \B[41]~input_o\;
\ALT_INV_B[42]~input_o\ <= NOT \B[42]~input_o\;
\ALT_INV_A[56]~input_o\ <= NOT \A[56]~input_o\;
\ALT_INV_B[57]~input_o\ <= NOT \B[57]~input_o\;
\ALT_INV_B[46]~input_o\ <= NOT \B[46]~input_o\;
\ALT_INV_A[44]~input_o\ <= NOT \A[44]~input_o\;
\ALT_INV_B[51]~input_o\ <= NOT \B[51]~input_o\;
\ALT_INV_B[47]~input_o\ <= NOT \B[47]~input_o\;
\ALT_INV_B[45]~input_o\ <= NOT \B[45]~input_o\;
\ALT_INV_A[45]~input_o\ <= NOT \A[45]~input_o\;
\ALT_INV_B[48]~input_o\ <= NOT \B[48]~input_o\;
\ALT_INV_A[51]~input_o\ <= NOT \A[51]~input_o\;
\ALT_INV_B[61]~input_o\ <= NOT \B[61]~input_o\;
\ALT_INV_B[60]~input_o\ <= NOT \B[60]~input_o\;
\ALT_INV_A[50]~input_o\ <= NOT \A[50]~input_o\;
\ALT_INV_B[62]~input_o\ <= NOT \B[62]~input_o\;
\ALT_INV_B[58]~input_o\ <= NOT \B[58]~input_o\;
\ALT_INV_A[59]~input_o\ <= NOT \A[59]~input_o\;
\ALT_INV_A[43]~input_o\ <= NOT \A[43]~input_o\;
\ALT_INV_A[55]~input_o\ <= NOT \A[55]~input_o\;
\ALT_INV_A[61]~input_o\ <= NOT \A[61]~input_o\;
\ALT_INV_B[49]~input_o\ <= NOT \B[49]~input_o\;
\ALT_INV_A[53]~input_o\ <= NOT \A[53]~input_o\;
\ALT_INV_B[54]~input_o\ <= NOT \B[54]~input_o\;
\ALT_INV_A[60]~input_o\ <= NOT \A[60]~input_o\;
\ALT_INV_A[42]~input_o\ <= NOT \A[42]~input_o\;
\ALT_INV_B[56]~input_o\ <= NOT \B[56]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[50]~input_o\ <= NOT \B[50]~input_o\;
\ALT_INV_A[46]~input_o\ <= NOT \A[46]~input_o\;
\ALT_INV_A[41]~input_o\ <= NOT \A[41]~input_o\;
\ALT_INV_B[53]~input_o\ <= NOT \B[53]~input_o\;
\ALT_INV_B[52]~input_o\ <= NOT \B[52]~input_o\;
\ALT_INV_A[48]~input_o\ <= NOT \A[48]~input_o\;
\ALT_INV_A[54]~input_o\ <= NOT \A[54]~input_o\;
\ALT_INV_B[59]~input_o\ <= NOT \B[59]~input_o\;
\ALT_INV_B[44]~input_o\ <= NOT \B[44]~input_o\;
\ALT_INV_B[43]~input_o\ <= NOT \B[43]~input_o\;

-- Location: IOOBUF_X32_Y0_N67
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X8_Y56_N36
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~7_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~10_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~13_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X46_Y56_N36
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~16_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X10_Y56_N5
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~19_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~22_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X8_Y56_N67
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~25_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~28_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X8_Y56_N2
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~31_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~34_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X46_Y56_N2
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~37_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~42_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~45_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X46_Y56_N67
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~48_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X19_Y56_N36
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~51_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~54_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X7_Y56_N98
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~57_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X23_Y56_N98
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~60_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X59_Y37_N36
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~63_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~66_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~69_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y49_N67
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~72_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X48_Y0_N67
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~75_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X10_Y56_N98
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~78_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N95
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~81_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y51_N33
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~84_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~87_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X56_Y56_N2
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~90_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X59_Y48_N67
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~93_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y36_N67
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~96_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y48_N98
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~97_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X59_Y6_N2
\Y[32]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~103_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X48_Y0_N33
\Y[33]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~107_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\Y[34]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~111_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Y[35]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~115_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X59_Y23_N98
\Y[36]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~119_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\Y[37]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~123_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\Y[38]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~127_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\Y[39]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~131_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X59_Y4_N2
\Y[40]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~135_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\Y[41]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~139_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X7_Y56_N2
\Y[42]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~143_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\Y[43]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~147_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\Y[44]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~151_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Y[45]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~155_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\Y[46]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~159_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Y[47]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~162_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
\Y[48]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~166_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X59_Y22_N36
\Y[49]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~170_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\Y[50]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~173_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\Y[51]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~177_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\Y[52]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~181_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X48_Y0_N98
\Y[53]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~184_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\Y[54]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~188_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[55]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~192_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X59_Y9_N5
\Y[56]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~196_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Y[57]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~199_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\Y[58]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~203_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\Y[59]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~207_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X25_Y56_N98
\Y[60]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~210_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\Y[61]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~214_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\Y[62]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~228_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\Y[63]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~220_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~16_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\AltB~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB_sig~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\AltBu~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|ALT_INV_Cout~combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X30_Y56_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X43_Y30_N4
\LogicUnit|Mux63~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LogicUnit|Mux63~0_combout\ = ( \B[0]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \LogicUnit|Mux63~0_combout\);

-- Location: IOIBUF_X30_Y0_N32
\B[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X21_Y56_N1
\A[63]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X59_Y31_N94
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LABCELL_X43_Y30_N30
\Adder|gen_blk_cs:7:bits[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:bits[7]~combout\ = ( \AddnSub~input_o\ & ( !\B[63]~input_o\ $ (\A[63]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[63]~input_o\ $ (!\A[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[63]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:bits[7]~combout\);

-- Location: IOIBUF_X59_Y23_N1
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y28_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: MLABCELL_X42_Y31_N20
\Shifter|stage[3][63]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][63]~0_combout\ = ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[3][63]~0_combout\);

-- Location: IOIBUF_X59_Y30_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y26_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X39_Y30_N22
\Shifter|stage[5][63]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][63]~1_combout\ = ( !\B[3]~input_o\ & ( (\Shifter|stage[3][63]~0_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|ALT_INV_stage[3][63]~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shifter|stage[5][63]~1_combout\);

-- Location: IOIBUF_X59_Y34_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X50_Y29_N22
\Shifter|InputExtended[63]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[63]~0_combout\ = ( \ExtWord~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Shifter|InputExtended[63]~0_combout\);

-- Location: LABCELL_X43_Y33_N20
\Shifter|InputExtended[63]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[63]~1_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\ShiftFN[0]~input_o\ & \A[31]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[63]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[63]~1_combout\);

-- Location: MLABCELL_X39_Y30_N26
\Shifter|stage[5][63]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][63]~2_combout\ = ( \A[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Shifter|stage[5][63]~1_combout\ & \Shifter|InputExtended[63]~1_combout\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Shifter|stage[5][63]~1_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Shifter|InputExtended[63]~1_combout\))))) ) ) # ( !\A[0]~input_o\ & ( (\Shifter|InputExtended[63]~1_combout\ & ((!\ShiftFN[0]~input_o\ & ((\Shifter|stage[5][63]~1_combout\))) # (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100000010000111110000001000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shifter|ALT_INV_stage[5][63]~1_combout\,
	datad => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shifter|stage[5][63]~2_combout\);

-- Location: IOIBUF_X25_Y56_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X45_Y32_N22
\ShiftCount[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ShiftCount[5]~0_combout\ = ( \B[5]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \ShiftCount[5]~0_combout\);

-- Location: IOIBUF_X44_Y56_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X40_Y30_N2
\Shifter|Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|Equal2~0_combout\ = ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Shifter|Equal2~0_combout\);

-- Location: IOIBUF_X25_Y56_N32
\A[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: MLABCELL_X42_Y32_N22
\Shifter|InputExtended[32]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[32]~32_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[31]~input_o\ & ( (\Shifter|InputExtended[63]~0_combout\) # (\A[32]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[31]~input_o\ & ( (\A[32]~input_o\ & 
-- !\Shifter|InputExtended[63]~0_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[31]~input_o\ & ( (\A[32]~input_o\ & !\Shifter|InputExtended[63]~0_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[31]~input_o\ & ( (\A[32]~input_o\ & 
-- !\Shifter|InputExtended[63]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[32]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[32]~32_combout\);

-- Location: IOIBUF_X59_Y21_N1
\A[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: MLABCELL_X44_Y32_N34
\Shifter|InputExtended[33]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[33]~31_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[31]~input_o\ & ( (\A[33]~input_o\) # (\Shifter|InputExtended[63]~0_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & 
-- \A[33]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & \A[33]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & \A[33]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datac => \ALT_INV_A[33]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[33]~31_combout\);

-- Location: LABCELL_X43_Y33_N12
\Shifter|stage[1][30]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][30]~21_combout\ = ( \B[0]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\A[31]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[32]~32_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \Shifter|InputExtended[33]~31_combout\ & ( (\Shifter|Equal2~0_combout\) # (\A[30]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\A[31]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[32]~32_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (\A[30]~input_o\ & !\Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[32]~32_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[33]~31_combout\,
	combout => \Shifter|stage[1][30]~21_combout\);

-- Location: IOIBUF_X59_Y16_N94
\A[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: MLABCELL_X46_Y30_N34
\Shifter|InputExtended[37]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[37]~27_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[37]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[37]~27_combout\);

-- Location: IOIBUF_X59_Y18_N94
\A[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LABCELL_X43_Y33_N26
\Shifter|InputExtended[36]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[36]~28_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[36]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[36]~28_combout\);

-- Location: IOIBUF_X59_Y36_N32
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: MLABCELL_X44_Y31_N38
\Shifter|stage[1][26]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][26]~19_combout\ = ( \A[26]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & (\Shifter|InputExtended[37]~27_combout\)) # (\B[0]~input_o\ & ((\Shifter|InputExtended[36]~28_combout\))) ) ) ) # ( !\A[26]~input_o\ & ( 
-- \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & (\Shifter|InputExtended[37]~27_combout\)) # (\B[0]~input_o\ & ((\Shifter|InputExtended[36]~28_combout\))) ) ) ) # ( \A[26]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\) # (\A[27]~input_o\) 
-- ) ) ) # ( !\A[26]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( (\B[0]~input_o\ & \A[27]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[37]~27_combout\,
	datac => \Shifter|ALT_INV_InputExtended[36]~28_combout\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][26]~19_combout\);

-- Location: IOIBUF_X21_Y56_N32
\A[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: MLABCELL_X44_Y33_N22
\Shifter|InputExtended[39]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[39]~25_combout\ = ( \A[39]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # ((\ShiftFN[0]~input_o\ & \A[31]~input_o\)) ) ) # ( !\A[39]~input_o\ & ( (\ShiftFN[0]~input_o\ & (\Shifter|InputExtended[63]~0_combout\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[39]~input_o\,
	combout => \Shifter|InputExtended[39]~25_combout\);

-- Location: IOIBUF_X56_Y56_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X29_Y0_N63
\A[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: MLABCELL_X46_Y30_N32
\Shifter|InputExtended[38]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[38]~26_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[38]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[38]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[38]~26_combout\);

-- Location: IOIBUF_X59_Y49_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X44_Y33_N8
\Shifter|stage[1][24]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][24]~18_combout\ = ( \Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( ((!\Shifter|Equal2~0_combout\ & ((\A[24]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\A[24]~input_o\) # (\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\ & (!\B[0]~input_o\))) ) ) ) # ( 
-- \Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\ & \A[24]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # (\Shifter|InputExtended[39]~25_combout\))) ) ) ) # ( 
-- !\Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[24]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_InputExtended[39]~25_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[38]~26_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shifter|stage[1][24]~18_combout\);

-- Location: IOIBUF_X30_Y56_N63
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\A[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LABCELL_X43_Y33_N22
\Shifter|InputExtended[34]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[34]~30_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[34]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[34]~30_combout\);

-- Location: IOIBUF_X59_Y33_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X19_Y0_N94
\A[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LABCELL_X43_Y33_N24
\Shifter|InputExtended[35]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[35]~29_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[35]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[35]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[35]~29_combout\);

-- Location: LABCELL_X43_Y33_N28
\Shifter|stage[1][28]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][28]~20_combout\ = ( \A[28]~input_o\ & ( \Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & (\A[29]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[34]~30_combout\)))) ) ) ) 
-- # ( !\A[28]~input_o\ & ( \Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\ & (\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[29]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[34]~30_combout\))))) ) ) ) # ( \A[28]~input_o\ & ( !\Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\ & (!\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[29]~input_o\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[34]~30_combout\))))) ) ) ) # ( !\A[28]~input_o\ & ( !\Shifter|InputExtended[35]~29_combout\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[29]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[34]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[34]~30_combout\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[35]~29_combout\,
	combout => \Shifter|stage[1][28]~20_combout\);

-- Location: LABCELL_X40_Y29_N6
\Shifter|stage[3][24]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][24]~22_combout\ = ( \Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][28]~20_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][28]~20_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][26]~19_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][30]~21_combout\))) ) ) ) # ( 
-- \Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][28]~20_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][26]~19_combout\)))) # (\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][28]~20_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][30]~21_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][26]~19_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][24]~18_combout\,
	dataf => \Shifter|ALT_INV_stage[1][28]~20_combout\,
	combout => \Shifter|stage[3][24]~22_combout\);

-- Location: IOIBUF_X30_Y0_N94
\A[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: MLABCELL_X46_Y31_N34
\Shifter|InputExtended[42]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[42]~22_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & (\A[42]~input_o\)) # (\Shifter|InputExtended[63]~0_combout\ & ((\A[31]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[42]~input_o\ & 
-- !\Shifter|InputExtended[63]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[42]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[42]~22_combout\);

-- Location: IOIBUF_X59_Y25_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\A[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: MLABCELL_X44_Y31_N30
\Shifter|InputExtended[43]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[43]~21_combout\ = ( \A[43]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # (\A[31]~input_o\) ) ) ) # ( !\A[43]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\A[31]~input_o\ & 
-- \Shifter|InputExtended[63]~0_combout\) ) ) ) # ( \A[43]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( !\Shifter|InputExtended[63]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datae => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[43]~21_combout\);

-- Location: IOIBUF_X59_Y33_N94
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: MLABCELL_X44_Y31_N34
\Shifter|stage[1][20]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][20]~15_combout\ = ( \B[0]~input_o\ & ( \A[20]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[21]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[42]~22_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[20]~input_o\ & ( 
-- (!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[43]~21_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[20]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[21]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[42]~22_combout\)) ) ) ) 
-- # ( !\B[0]~input_o\ & ( !\A[20]~input_o\ & ( (\Shifter|InputExtended[43]~21_combout\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[42]~22_combout\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[43]~21_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Shifter|stage[1][20]~15_combout\);

-- Location: IOIBUF_X59_Y46_N32
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X23_Y56_N63
\A[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: MLABCELL_X44_Y31_N26
\Shifter|InputExtended[45]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[45]~19_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & (\A[45]~input_o\)) # (\Shifter|InputExtended[63]~0_combout\ & ((\A[31]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\A[45]~input_o\ & 
-- !\Shifter|InputExtended[63]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[45]~19_combout\);

-- Location: IOIBUF_X59_Y46_N63
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X59_Y25_N63
\A[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: MLABCELL_X44_Y32_N2
\Shifter|InputExtended[44]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[44]~20_combout\ = ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[44]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\)) ) ) # ( !\A[31]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[44]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[44]~20_combout\);

-- Location: MLABCELL_X44_Y32_N10
\Shifter|stage[1][18]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][18]~14_combout\ = ( \A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\)))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))))) # (\B[0]~input_o\ & 
-- (((\Shifter|Equal2~0_combout\)))) ) ) ) # ( \A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))))) 
-- # (\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[45]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[45]~19_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[44]~20_combout\,
	combout => \Shifter|stage[1][18]~14_combout\);

-- Location: IOIBUF_X59_Y36_N94
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X44_Y56_N94
\A[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: MLABCELL_X44_Y32_N0
\Shifter|InputExtended[46]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[46]~18_combout\ = ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[46]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\)) ) ) # ( !\A[31]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[46]~18_combout\);

-- Location: IOIBUF_X28_Y56_N63
\A[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: MLABCELL_X44_Y34_N14
\Shifter|InputExtended[47]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[47]~17_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( \ShiftFN[0]~input_o\ & ( \A[31]~input_o\ ) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \ShiftFN[0]~input_o\ & ( \A[47]~input_o\ ) ) ) # ( 
-- !\Shifter|InputExtended[63]~0_combout\ & ( !\ShiftFN[0]~input_o\ & ( \A[47]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[47]~17_combout\);

-- Location: MLABCELL_X44_Y32_N26
\Shifter|stage[1][16]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][16]~13_combout\ = ( \Shifter|InputExtended[46]~18_combout\ & ( \Shifter|InputExtended[47]~17_combout\ & ( ((!\B[0]~input_o\ & (\A[16]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\)))) # (\Shifter|Equal2~0_combout\) ) ) ) # ( 
-- !\Shifter|InputExtended[46]~18_combout\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)) # (\A[16]~input_o\))) # (\B[0]~input_o\ & (((\A[17]~input_o\ & !\Shifter|Equal2~0_combout\)))) ) ) ) # ( 
-- \Shifter|InputExtended[46]~18_combout\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\B[0]~input_o\ & (\A[16]~input_o\ & ((!\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\) # (\A[17]~input_o\)))) ) ) ) # ( 
-- !\Shifter|InputExtended[46]~18_combout\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[16]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[46]~18_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[47]~17_combout\,
	combout => \Shifter|stage[1][16]~13_combout\);

-- Location: IOIBUF_X44_Y56_N32
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y31_N63
\A[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LABCELL_X50_Y31_N12
\Shifter|InputExtended[41]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[41]~23_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[41]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[41]~23_combout\);

-- Location: IOIBUF_X42_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X28_Y56_N94
\A[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: MLABCELL_X44_Y33_N20
\Shifter|InputExtended[40]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[40]~24_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & (\A[40]~input_o\)) # (\Shifter|InputExtended[63]~0_combout\ & ((\A[31]~input_o\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[40]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datac => \ALT_INV_A[40]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[40]~24_combout\);

-- Location: MLABCELL_X44_Y33_N26
\Shifter|stage[1][22]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][22]~16_combout\ = ( \B[0]~input_o\ & ( \Shifter|InputExtended[40]~24_combout\ & ( (\Shifter|Equal2~0_combout\) # (\A[23]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \Shifter|InputExtended[40]~24_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- ((\A[22]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[41]~23_combout\)) ) ) ) # ( \B[0]~input_o\ & ( !\Shifter|InputExtended[40]~24_combout\ & ( (\A[23]~input_o\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\Shifter|InputExtended[40]~24_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[22]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[41]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[41]~23_combout\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[40]~24_combout\,
	combout => \Shifter|stage[1][22]~16_combout\);

-- Location: LABCELL_X40_Y29_N0
\Shifter|stage[3][16]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][16]~17_combout\ = ( \Shifter|stage[1][16]~13_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][18]~14_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # 
-- (\Shifter|stage[1][20]~15_combout\))) ) ) ) # ( !\Shifter|stage[1][16]~13_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\ & \Shifter|stage[1][18]~14_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # 
-- (\Shifter|stage[1][20]~15_combout\))) ) ) ) # ( \Shifter|stage[1][16]~13_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][18]~14_combout\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][20]~15_combout\ & (!\B[1]~input_o\))) ) ) ) # ( !\Shifter|stage[1][16]~13_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\ & \Shifter|stage[1][18]~14_combout\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][20]~15_combout\ & (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][20]~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][18]~14_combout\,
	datae => \Shifter|ALT_INV_stage[1][16]~13_combout\,
	dataf => \Shifter|ALT_INV_stage[1][22]~16_combout\,
	combout => \Shifter|stage[3][16]~17_combout\);

-- Location: IOIBUF_X59_Y48_N32
\A[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: MLABCELL_X46_Y30_N4
\Shifter|InputExtended[54]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[54]~10_combout\ = ( \A[54]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # ((\ShiftFN[0]~input_o\ & \A[31]~input_o\)) ) ) # ( !\A[54]~input_o\ & ( (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Shifter|InputExtended[54]~10_combout\);

-- Location: IOIBUF_X59_Y18_N32
\A[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: MLABCELL_X46_Y30_N0
\Shifter|InputExtended[55]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[55]~9_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\ShiftFN[0]~input_o\ & \A[31]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[55]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[55]~9_combout\);

-- Location: IOIBUF_X33_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y30_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X40_Y30_N10
\Shifter|stage[1][8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][8]~8_combout\ = ( \A[9]~input_o\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[54]~10_combout\) ) ) ) # ( !\A[9]~input_o\ & ( \B[0]~input_o\ & ( (\Shifter|InputExtended[54]~10_combout\ & 
-- \Shifter|Equal2~0_combout\) ) ) ) # ( \A[9]~input_o\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) ) ) ) # ( !\A[9]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[54]~10_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[55]~9_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][8]~8_combout\);

-- Location: IOIBUF_X42_Y56_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X25_Y56_N63
\A[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: MLABCELL_X44_Y34_N22
\Shifter|InputExtended[48]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[48]~16_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[48]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\A[31]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[48]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datac => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[48]~16_combout\);

-- Location: IOIBUF_X30_Y56_N94
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y7_N63
\A[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LABCELL_X47_Y30_N34
\Shifter|InputExtended[49]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[49]~15_combout\ = ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & (\A[49]~input_o\)) # (\Shifter|InputExtended[63]~0_combout\ & ((\ShiftFN[0]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (\A[49]~input_o\ & 
-- !\Shifter|InputExtended[63]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[49]~15_combout\);

-- Location: MLABCELL_X44_Y34_N28
\Shifter|stage[1][14]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][14]~11_combout\ = ( \Shifter|InputExtended[49]~15_combout\ & ( \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\) # (\Shifter|InputExtended[48]~16_combout\) ) ) ) # ( !\Shifter|InputExtended[49]~15_combout\ & ( \Shifter|Equal2~0_combout\ & 
-- ( (\Shifter|InputExtended[48]~16_combout\ & \B[0]~input_o\) ) ) ) # ( \Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( 
-- !\Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[48]~16_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[49]~15_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][14]~11_combout\);

-- Location: IOIBUF_X31_Y56_N32
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\A[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: MLABCELL_X46_Y30_N10
\Shifter|InputExtended[51]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[51]~13_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[51]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[51]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[51]~13_combout\);

-- Location: IOIBUF_X30_Y56_N1
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y22_N94
\A[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: MLABCELL_X44_Y34_N20
\Shifter|InputExtended[50]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[50]~14_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[50]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\A[31]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datac => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[50]~14_combout\);

-- Location: MLABCELL_X44_Y34_N26
\Shifter|stage[1][12]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][12]~10_combout\ = ( \A[12]~input_o\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[51]~13_combout\)))) # (\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)) # 
-- (\A[13]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\ & \Shifter|InputExtended[51]~13_combout\)))) # (\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)) # 
-- (\A[13]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[51]~13_combout\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & 
-- (!\Shifter|Equal2~0_combout\))) ) ) ) # ( !\A[12]~input_o\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\ & \Shifter|InputExtended[51]~13_combout\)))) # (\B[0]~input_o\ & (\A[13]~input_o\ & 
-- (!\Shifter|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_InputExtended[51]~13_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[50]~14_combout\,
	combout => \Shifter|stage[1][12]~10_combout\);

-- Location: IOIBUF_X59_Y31_N1
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y18_N63
\A[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: MLABCELL_X46_Y30_N8
\Shifter|InputExtended[52]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[52]~12_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[52]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[52]~12_combout\);

-- Location: IOIBUF_X19_Y56_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\A[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: MLABCELL_X46_Y30_N6
\Shifter|InputExtended[53]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[53]~11_combout\ = ( \A[53]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # ((\ShiftFN[0]~input_o\ & \A[31]~input_o\)) ) ) # ( !\A[53]~input_o\ & ( (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Shifter|InputExtended[53]~11_combout\);

-- Location: LABCELL_X45_Y33_N14
\Shifter|stage[1][10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][10]~9_combout\ = ( \Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[11]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[52]~12_combout\)) ) ) ) # ( 
-- !\Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[11]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[52]~12_combout\)) ) ) ) # ( \Shifter|InputExtended[53]~11_combout\ & ( 
-- !\B[0]~input_o\ & ( (\A[10]~input_o\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( !\Shifter|InputExtended[53]~11_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[52]~12_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[53]~11_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][10]~9_combout\);

-- Location: LABCELL_X40_Y30_N12
\Shifter|stage[3][8]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][8]~12_combout\ = ( \Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][8]~8_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][14]~11_combout\)))) ) ) ) # ( !\Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][8]~8_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & 
-- \Shifter|stage[1][14]~11_combout\)))) ) ) ) # ( \Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][8]~8_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][14]~11_combout\)))) ) ) ) # ( !\Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][8]~8_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & 
-- \Shifter|stage[1][14]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][8]~8_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][14]~11_combout\,
	datae => \Shifter|ALT_INV_stage[1][12]~10_combout\,
	dataf => \Shifter|ALT_INV_stage[1][10]~9_combout\,
	combout => \Shifter|stage[3][8]~12_combout\);

-- Location: IOIBUF_X24_Y0_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N94
\A[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: MLABCELL_X44_Y30_N18
\Shifter|InputExtended[62]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[62]~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[62]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\A[31]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[62]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[62]~2_combout\);

-- Location: MLABCELL_X39_Y30_N30
\Shifter|stage[5][0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][0]~3_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( (\Shifter|InputExtended[63]~1_combout\) # (\B[0]~input_o\) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( 
-- (!\B[0]~input_o\ & (\A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\))) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & \Shifter|InputExtended[63]~1_combout\) ) ) ) # ( 
-- !\Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[62]~2_combout\,
	combout => \Shifter|stage[5][0]~3_combout\);

-- Location: IOIBUF_X25_Y0_N94
\A[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: MLABCELL_X39_Y30_N12
\Shifter|InputExtended[60]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[60]~4_combout\ = ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[60]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\)) ) ) # ( !\A[31]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[60]~4_combout\);

-- Location: IOIBUF_X31_Y56_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N32
\A[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: MLABCELL_X44_Y30_N16
\Shifter|InputExtended[61]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[61]~3_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[61]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\A[31]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Shifter|InputExtended[61]~3_combout\);

-- Location: IOIBUF_X31_Y56_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X39_Y30_N16
\Shifter|stage[1][2]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][2]~4_combout\ = ( \Shifter|InputExtended[61]~3_combout\ & ( \A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # (\A[2]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # 
-- (\Shifter|InputExtended[60]~4_combout\))) ) ) ) # ( !\Shifter|InputExtended[61]~3_combout\ & ( \A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # (\A[2]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[60]~4_combout\ & ((\B[0]~input_o\)))) ) ) ) # ( \Shifter|InputExtended[61]~3_combout\ & ( !\A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\A[2]~input_o\ & !\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (((!\B[0]~input_o\)) # (\Shifter|InputExtended[60]~4_combout\))) ) ) ) # ( !\Shifter|InputExtended[61]~3_combout\ & ( !\A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\A[2]~input_o\ & !\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[60]~4_combout\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[60]~4_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[61]~3_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shifter|stage[1][2]~4_combout\);

-- Location: IOIBUF_X28_Y56_N1
\A[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: MLABCELL_X39_Y30_N14
\Shifter|InputExtended[59]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[59]~5_combout\ = ( \A[31]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\ & ((\A[59]~input_o\))) # (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\)) ) ) # ( !\A[31]~input_o\ & ( 
-- (!\Shifter|InputExtended[63]~0_combout\ & \A[59]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shifter|InputExtended[59]~5_combout\);

-- Location: IOIBUF_X33_Y56_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y30_N63
\A[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: MLABCELL_X46_Y30_N18
\Shifter|InputExtended[58]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[58]~6_combout\ = ( \Shifter|InputExtended[63]~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\Shifter|InputExtended[63]~0_combout\ & ( \A[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[58]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	combout => \Shifter|InputExtended[58]~6_combout\);

-- Location: MLABCELL_X39_Y34_N20
\Shifter|stage[1][4]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][4]~5_combout\ = ( \Shifter|InputExtended[58]~6_combout\ & ( \B[0]~input_o\ & ( (\Shifter|Equal2~0_combout\) # (\A[5]~input_o\) ) ) ) # ( !\Shifter|InputExtended[58]~6_combout\ & ( \B[0]~input_o\ & ( (\A[5]~input_o\ & 
-- !\Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|InputExtended[58]~6_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[4]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[59]~5_combout\)) ) ) ) # ( 
-- !\Shifter|InputExtended[58]~6_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[4]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[59]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[59]~5_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[58]~6_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][4]~5_combout\);

-- Location: IOIBUF_X59_Y18_N1
\A[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: MLABCELL_X46_Y30_N16
\Shifter|InputExtended[57]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[57]~7_combout\ = ( \A[57]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # ((\A[31]~input_o\ & \ShiftFN[0]~input_o\)) ) ) # ( !\A[57]~input_o\ & ( (\A[31]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- \Shifter|InputExtended[63]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \Shifter|InputExtended[57]~7_combout\);

-- Location: IOIBUF_X21_Y56_N94
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X33_Y56_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\A[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: MLABCELL_X46_Y30_N2
\Shifter|InputExtended[56]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[56]~8_combout\ = ( \A[56]~input_o\ & ( (!\Shifter|InputExtended[63]~0_combout\) # ((\ShiftFN[0]~input_o\ & \A[31]~input_o\)) ) ) # ( !\A[56]~input_o\ & ( (\Shifter|InputExtended[63]~0_combout\ & (\ShiftFN[0]~input_o\ & 
-- \A[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110101010101110111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_A[56]~input_o\,
	combout => \Shifter|InputExtended[56]~8_combout\);

-- Location: MLABCELL_X39_Y34_N26
\Shifter|stage[1][6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][6]~6_combout\ = ( \Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (\Shifter|Equal2~0_combout\) # (\A[7]~input_o\) ) ) ) # ( !\Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (\A[7]~input_o\ & 
-- !\Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[6]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[57]~7_combout\)) ) ) ) # ( 
-- !\Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[6]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[57]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[57]~7_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[56]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][6]~6_combout\);

-- Location: LABCELL_X40_Y30_N4
\Shifter|stage[5][0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][0]~7_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][6]~6_combout\ & ( (\B[2]~input_o\) # (\Shifter|stage[1][2]~4_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][6]~6_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shifter|stage[5][0]~3_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][4]~5_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][6]~6_combout\ & ( (\Shifter|stage[1][2]~4_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][6]~6_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[5][0]~3_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][4]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][0]~3_combout\,
	datab => \Shifter|ALT_INV_stage[1][2]~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][4]~5_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][6]~6_combout\,
	combout => \Shifter|stage[5][0]~7_combout\);

-- Location: LABCELL_X43_Y29_N20
\Shifter|stage[5][0]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][0]~23_combout\ = ( \Shifter|stage[3][8]~12_combout\ & ( \Shifter|stage[5][0]~7_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][24]~22_combout\))) ) ) ) # 
-- ( !\Shifter|stage[3][8]~12_combout\ & ( \Shifter|stage[5][0]~7_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][24]~22_combout\)))) 
-- ) ) ) # ( \Shifter|stage[3][8]~12_combout\ & ( !\Shifter|stage[5][0]~7_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][24]~22_combout\)))) ) ) ) # ( !\Shifter|stage[3][8]~12_combout\ & ( !\Shifter|stage[5][0]~7_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][24]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][24]~22_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][16]~17_combout\,
	datae => \Shifter|ALT_INV_stage[3][8]~12_combout\,
	dataf => \Shifter|ALT_INV_stage[5][0]~7_combout\,
	combout => \Shifter|stage[5][0]~23_combout\);

-- Location: MLABCELL_X39_Y30_N0
\Shifter|stage[1][60]~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][60]~41_combout\ = ( \Shifter|InputExtended[61]~3_combout\ & ( \A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # (\Shifter|InputExtended[60]~4_combout\))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # 
-- (\A[2]~input_o\)))) ) ) ) # ( !\Shifter|InputExtended[61]~3_combout\ & ( \A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[60]~4_combout\ & ((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # 
-- (\A[2]~input_o\)))) ) ) ) # ( \Shifter|InputExtended[61]~3_combout\ & ( !\A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # (\Shifter|InputExtended[60]~4_combout\))) # (\Shifter|Equal2~0_combout\ & (((\A[2]~input_o\ & 
-- \B[0]~input_o\)))) ) ) ) # ( !\Shifter|InputExtended[61]~3_combout\ & ( !\A[3]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[60]~4_combout\ & ((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((\A[2]~input_o\ & 
-- \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[60]~4_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[61]~3_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shifter|stage[1][60]~41_combout\);

-- Location: MLABCELL_X39_Y34_N10
\Shifter|stage[1][56]~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][56]~39_combout\ = ( \Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[57]~7_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[6]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[57]~7_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[6]~input_o\))) ) ) ) # ( \Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & 
-- ( (!\Shifter|Equal2~0_combout\) # (\A[7]~input_o\) ) ) ) # ( !\Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (\A[7]~input_o\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[57]~7_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[56]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][56]~39_combout\);

-- Location: MLABCELL_X39_Y30_N4
\Shifter|stage[1][62]~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][62]~42_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( 
-- \Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\) # (\Shifter|InputExtended[63]~1_combout\) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[0]~input_o\)) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (\B[0]~input_o\ & \Shifter|InputExtended[63]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[62]~2_combout\,
	combout => \Shifter|stage[1][62]~42_combout\);

-- Location: MLABCELL_X39_Y34_N34
\Shifter|stage[1][58]~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][58]~40_combout\ = ( \Shifter|InputExtended[58]~6_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[59]~5_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[4]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[58]~6_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[59]~5_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[4]~input_o\))) ) ) ) # ( \Shifter|InputExtended[58]~6_combout\ & ( !\B[0]~input_o\ & 
-- ( (!\Shifter|Equal2~0_combout\) # (\A[5]~input_o\) ) ) ) # ( !\Shifter|InputExtended[58]~6_combout\ & ( !\B[0]~input_o\ & ( (\A[5]~input_o\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[59]~5_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[58]~6_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][58]~40_combout\);

-- Location: MLABCELL_X39_Y31_N10
\Shifter|stage[3][56]~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][56]~43_combout\ = ( \Shifter|stage[1][62]~42_combout\ & ( \Shifter|stage[1][58]~40_combout\ & ( ((!\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][60]~41_combout\))) # (\B[1]~input_o\) ) ) ) 
-- # ( !\Shifter|stage[1][62]~42_combout\ & ( \Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][60]~41_combout\)))) # (\B[1]~input_o\ & 
-- (((!\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][62]~42_combout\ & ( !\Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][60]~41_combout\)))) # 
-- (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][62]~42_combout\ & ( !\Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][60]~41_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][60]~41_combout\,
	datac => \Shifter|ALT_INV_stage[1][56]~39_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][62]~42_combout\,
	dataf => \Shifter|ALT_INV_stage[1][58]~40_combout\,
	combout => \Shifter|stage[3][56]~43_combout\);

-- Location: MLABCELL_X39_Y31_N2
\Shifter|stage[1][54]~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][54]~37_combout\ = ( \Shifter|Equal2~0_combout\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( \B[0]~input_o\ & ( \Shifter|InputExtended[55]~9_combout\ ) ) ) # ( \Shifter|Equal2~0_combout\ & ( 
-- !\B[0]~input_o\ & ( \A[9]~input_o\ ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\B[0]~input_o\ & ( \Shifter|InputExtended[54]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[55]~9_combout\,
	datab => \Shifter|ALT_INV_InputExtended[54]~10_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][54]~37_combout\);

-- Location: MLABCELL_X44_Y34_N38
\Shifter|stage[1][48]~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][48]~34_combout\ = ( \Shifter|InputExtended[49]~15_combout\ & ( \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\Shifter|InputExtended[49]~15_combout\ & ( 
-- \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( \Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (\B[0]~input_o\) # (\Shifter|InputExtended[48]~16_combout\) 
-- ) ) ) # ( !\Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (\Shifter|InputExtended[48]~16_combout\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[48]~16_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[49]~15_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][48]~34_combout\);

-- Location: LABCELL_X45_Y33_N38
\Shifter|stage[1][52]~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][52]~36_combout\ = ( \Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\) # (\A[10]~input_o\) ) ) ) # ( !\Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (\Shifter|Equal2~0_combout\ & 
-- \A[10]~input_o\) ) ) ) # ( \Shifter|InputExtended[53]~11_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[52]~12_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[11]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[53]~11_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[52]~12_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[52]~12_combout\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[53]~11_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][52]~36_combout\);

-- Location: MLABCELL_X44_Y34_N2
\Shifter|stage[1][50]~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][50]~35_combout\ = ( \A[12]~input_o\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((\Shifter|InputExtended[51]~13_combout\) # 
-- (\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\A[12]~input_o\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)) # (\A[13]~input_o\))) # (\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\ & 
-- \Shifter|InputExtended[51]~13_combout\)))) ) ) ) # ( \A[12]~input_o\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & (\Shifter|Equal2~0_combout\))) # (\B[0]~input_o\ & (((\Shifter|InputExtended[51]~13_combout\) # 
-- (\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & (\Shifter|Equal2~0_combout\))) # (\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\ & 
-- \Shifter|InputExtended[51]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_InputExtended[51]~13_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[50]~14_combout\,
	combout => \Shifter|stage[1][50]~35_combout\);

-- Location: MLABCELL_X39_Y31_N6
\Shifter|stage[3][48]~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][48]~38_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][54]~37_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shifter|stage[1][48]~34_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][52]~36_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][50]~35_combout\ & ( (\B[2]~input_o\ & \Shifter|stage[1][54]~37_combout\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][48]~34_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][52]~36_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][54]~37_combout\,
	datac => \Shifter|ALT_INV_stage[1][48]~34_combout\,
	datad => \Shifter|ALT_INV_stage[1][52]~36_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][50]~35_combout\,
	combout => \Shifter|stage[3][48]~38_combout\);

-- Location: MLABCELL_X44_Y32_N22
\Shifter|stage[1][46]~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][46]~32_combout\ = ( \Shifter|InputExtended[46]~18_combout\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\) # ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[46]~18_combout\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\B[0]~input_o\ & (((\A[17]~input_o\ & \Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)) # (\A[16]~input_o\))) ) ) ) # ( 
-- \Shifter|InputExtended[46]~18_combout\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\) # (\A[17]~input_o\)))) # (\B[0]~input_o\ & (\A[16]~input_o\ & ((\Shifter|Equal2~0_combout\)))) ) ) ) # ( 
-- !\Shifter|InputExtended[46]~18_combout\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[46]~18_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[47]~17_combout\,
	combout => \Shifter|stage[1][46]~32_combout\);

-- Location: MLABCELL_X44_Y31_N6
\Shifter|stage[1][42]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][42]~30_combout\ = ( \B[0]~input_o\ & ( \A[20]~input_o\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[43]~21_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[20]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[42]~22_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[21]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\A[20]~input_o\ & ( (\Shifter|InputExtended[43]~21_combout\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\A[20]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[42]~22_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[21]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[42]~22_combout\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[43]~21_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Shifter|stage[1][42]~30_combout\);

-- Location: MLABCELL_X44_Y33_N16
\Shifter|stage[1][40]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][40]~29_combout\ = ( \B[0]~input_o\ & ( \Shifter|InputExtended[40]~24_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[41]~23_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \Shifter|InputExtended[40]~24_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\A[23]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\Shifter|InputExtended[40]~24_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[41]~23_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\Shifter|InputExtended[40]~24_combout\ & ( (\A[23]~input_o\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[41]~23_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[40]~24_combout\,
	combout => \Shifter|stage[1][40]~29_combout\);

-- Location: MLABCELL_X44_Y32_N36
\Shifter|stage[1][44]~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][44]~31_combout\ = ( \A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[18]~input_o\))) ) ) ) 
-- # ( !\A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\A[18]~input_o\)))) ) ) ) # ( \A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)))) ) ) ) # ( !\A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\A[18]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_InputExtended[45]~19_combout\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[44]~20_combout\,
	combout => \Shifter|stage[1][44]~31_combout\);

-- Location: LABCELL_X43_Y31_N6
\Shifter|stage[3][40]~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][40]~33_combout\ = ( \Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][46]~32_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][46]~32_combout\)))) ) ) ) # ( \Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # 
-- (\B[2]~input_o\ & (\Shifter|stage[1][46]~32_combout\)))) ) ) ) # ( !\Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][46]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][46]~32_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][42]~30_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][40]~29_combout\,
	dataf => \Shifter|ALT_INV_stage[1][44]~31_combout\,
	combout => \Shifter|stage[3][40]~33_combout\);

-- Location: MLABCELL_X44_Y33_N12
\Shifter|stage[1][38]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][38]~27_combout\ = ( \Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[24]~input_o\)))) ) ) ) 
-- # ( !\Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\ & (\B[0]~input_o\))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # (\A[24]~input_o\)))) ) ) ) # ( 
-- \Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # (\Shifter|InputExtended[39]~25_combout\))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\ & \A[24]~input_o\)))) ) ) ) # ( 
-- !\Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[39]~25_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[24]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_InputExtended[39]~25_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[38]~26_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shifter|stage[1][38]~27_combout\);

-- Location: LABCELL_X43_Y33_N2
\Shifter|stage[1][34]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][34]~25_combout\ = ( \A[28]~input_o\ & ( \Shifter|InputExtended[35]~29_combout\ & ( ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\)))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\A[28]~input_o\ & ( \Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))))) # (\B[0]~input_o\ & 
-- (!\Shifter|Equal2~0_combout\)) ) ) ) # ( \A[28]~input_o\ & ( !\Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))))) # 
-- (\B[0]~input_o\ & (\Shifter|Equal2~0_combout\)) ) ) ) # ( !\A[28]~input_o\ & ( !\Shifter|InputExtended[35]~29_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\A[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[34]~30_combout\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[35]~29_combout\,
	combout => \Shifter|stage[1][34]~25_combout\);

-- Location: LABCELL_X43_Y33_N38
\Shifter|stage[1][32]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][32]~24_combout\ = ( \B[0]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\A[30]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[32]~32_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[31]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (\A[30]~input_o\ & \Shifter|Equal2~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\Shifter|InputExtended[33]~31_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[32]~32_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[32]~32_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[33]~31_combout\,
	combout => \Shifter|stage[1][32]~24_combout\);

-- Location: MLABCELL_X44_Y31_N0
\Shifter|stage[1][36]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][36]~26_combout\ = ( \A[26]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( (\A[27]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & \A[27]~input_o\) ) ) ) # ( \A[26]~input_o\ & ( 
-- !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & ((\Shifter|InputExtended[36]~28_combout\))) # (\B[0]~input_o\ & (\Shifter|InputExtended[37]~27_combout\)) ) ) ) # ( !\A[26]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & 
-- ((\Shifter|InputExtended[36]~28_combout\))) # (\B[0]~input_o\ & (\Shifter|InputExtended[37]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[37]~27_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[36]~28_combout\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][36]~26_combout\);

-- Location: LABCELL_X43_Y31_N2
\Shifter|stage[3][32]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][32]~28_combout\ = ( \Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][38]~27_combout\)))) ) ) ) # ( \Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # 
-- (\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)))) ) ) ) # ( !\Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][38]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][38]~27_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][34]~25_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][32]~24_combout\,
	dataf => \Shifter|ALT_INV_stage[1][36]~26_combout\,
	combout => \Shifter|stage[3][32]~28_combout\);

-- Location: LABCELL_X43_Y29_N4
\Shifter|stage[5][32]~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][32]~44_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][48]~38_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][56]~43_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][40]~33_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][48]~38_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][56]~43_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (\B[3]~input_o\ & \Shifter|stage[3][40]~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][56]~43_combout\,
	datab => \Shifter|ALT_INV_stage[3][48]~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][40]~33_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][32]~28_combout\,
	combout => \Shifter|stage[5][32]~44_combout\);

-- Location: LABCELL_X43_Y30_N28
\Shifter|Output[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|Output[0]~0_combout\ = ( \Shifter|Equal2~0_combout\ & ( (\Shifter|stage[5][63]~2_combout\ & !\ShiftCount[5]~0_combout\) ) ) # ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][0]~23_combout\)) # 
-- (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][32]~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][63]~2_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][0]~23_combout\,
	datad => \Shifter|ALT_INV_stage[5][32]~44_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|Output[0]~0_combout\);

-- Location: LABCELL_X50_Y29_N38
\Y_internal~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_internal~0_combout\);

-- Location: LABCELL_X43_Y30_N6
\Shifter|Output[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|Output[0]~1_combout\ = ( \Y_internal~0_combout\ & ( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) ) # ( !\Y_internal~0_combout\ & ( \Shifter|Output[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Output[0]~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	combout => \Shifter|Output[0]~1_combout\);

-- Location: IOIBUF_X59_Y23_N63
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X59_Y26_N1
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X59_Y21_N32
\B[55]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X19_Y56_N1
\B[54]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X59_Y26_N32
\B[52]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\B[51]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[50]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X59_Y7_N32
\B[49]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X25_Y0_N32
\B[47]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X10_Y56_N63
\B[46]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[44]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X59_Y6_N32
\B[43]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\B[42]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X7_Y56_N63
\B[41]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[40]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X59_Y4_N94
\B[35]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[34]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LABCELL_X50_Y29_N32
\Adder|blk_c~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~19_combout\ = ( \B[34]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[34]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\)))) # (\AddnSub~input_o\ & (\A[34]~input_o\ & (!\A[35]~input_o\ $ (\B[35]~input_o\)))) ) ) # ( !\B[34]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[34]~input_o\ & (!\A[35]~input_o\ $ (!\B[35]~input_o\)))) # (\AddnSub~input_o\ & (!\A[34]~input_o\ & (!\A[35]~input_o\ $ (\B[35]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_A[34]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \Adder|blk_c~19_combout\);

-- Location: IOIBUF_X59_Y9_N32
\B[32]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X56_Y0_N32
\B[33]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: MLABCELL_X49_Y29_N22
\Adder|blk_c~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~18_combout\ = ( \B[33]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\)))) # (\AddnSub~input_o\ & (\A[33]~input_o\ & (!\B[32]~input_o\ $ (\A[32]~input_o\)))) ) ) # ( !\B[33]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[33]~input_o\ & (!\B[32]~input_o\ $ (!\A[32]~input_o\)))) # (\AddnSub~input_o\ & (!\A[33]~input_o\ & (!\B[32]~input_o\ $ (\A[32]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000011000001001000001100001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[32]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \Adder|blk_c~18_combout\);

-- Location: IOIBUF_X59_Y6_N94
\B[37]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X59_Y23_N32
\B[36]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LABCELL_X50_Y29_N10
\Adder|blk_c~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~17_combout\ = ( \B[36]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[36]~input_o\ & (!\A[37]~input_o\ $ (!\B[37]~input_o\)))) # (\AddnSub~input_o\ & (\A[36]~input_o\ & (!\A[37]~input_o\ $ (\B[37]~input_o\)))) ) ) # ( !\B[36]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[36]~input_o\ & (!\A[37]~input_o\ $ (!\B[37]~input_o\)))) # (\AddnSub~input_o\ & (!\A[36]~input_o\ & (!\A[37]~input_o\ $ (\B[37]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_B[37]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Adder|blk_c~17_combout\);

-- Location: IOIBUF_X19_Y56_N94
\B[39]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[38]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X52_Y33_N0
\Adder|blk_c~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~12_combout\ = ( \B[31]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[31]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) # (\AddnSub~input_o\ & (\A[31]~input_o\ & (!\B[30]~input_o\ $ (\A[30]~input_o\)))) ) ) # ( !\B[31]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[31]~input_o\ & (!\B[30]~input_o\ $ (!\A[30]~input_o\)))) # (\AddnSub~input_o\ & (!\A[31]~input_o\ & (!\B[30]~input_o\ $ (\A[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Adder|blk_c~12_combout\);

-- Location: IOIBUF_X59_Y49_N94
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y51_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X52_Y33_N10
\Adder|blk_c~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~13_combout\ = ( \B[29]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) # (\AddnSub~input_o\ & (\A[29]~input_o\ & (!\B[28]~input_o\ $ (\A[28]~input_o\)))) ) ) # ( !\B[29]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[29]~input_o\ & (!\B[28]~input_o\ $ (!\A[28]~input_o\)))) # (\AddnSub~input_o\ & (!\A[29]~input_o\ & (!\B[28]~input_o\ $ (\A[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000010000010010100000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Adder|blk_c~13_combout\);

-- Location: IOIBUF_X48_Y56_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y33_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: MLABCELL_X49_Y33_N24
\Adder|blk_c~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~14_combout\ = ( \A[24]~input_o\ & ( \B[25]~input_o\ & ( (!\B[24]~input_o\ & (!\AddnSub~input_o\ & !\A[25]~input_o\)) # (\B[24]~input_o\ & (\AddnSub~input_o\ & \A[25]~input_o\)) ) ) ) # ( !\A[24]~input_o\ & ( \B[25]~input_o\ & ( 
-- (!\B[24]~input_o\ & (\AddnSub~input_o\ & \A[25]~input_o\)) # (\B[24]~input_o\ & (!\AddnSub~input_o\ & !\A[25]~input_o\)) ) ) ) # ( \A[24]~input_o\ & ( !\B[25]~input_o\ & ( (!\B[24]~input_o\ & (!\AddnSub~input_o\ & \A[25]~input_o\)) # (\B[24]~input_o\ & 
-- (\AddnSub~input_o\ & !\A[25]~input_o\)) ) ) ) # ( !\A[24]~input_o\ & ( !\B[25]~input_o\ & ( (!\B[24]~input_o\ & (\AddnSub~input_o\ & !\A[25]~input_o\)) # (\B[24]~input_o\ & (!\AddnSub~input_o\ & \A[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000000111100000000110000000011001100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Adder|blk_c~14_combout\);

-- Location: IOIBUF_X59_Y37_N1
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X59_Y28_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LABCELL_X50_Y33_N28
\Adder|blk_c~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~11_combout\ = ( \A[19]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\AddnSub~input_o\ & (\B[19]~input_o\ & (!\B[18]~input_o\ $ (\A[18]~input_o\)))) ) ) # ( !\A[19]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\AddnSub~input_o\ & (!\B[19]~input_o\ & (!\B[18]~input_o\ $ (\A[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Adder|blk_c~11_combout\);

-- Location: IOIBUF_X59_Y19_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X50_Y33_N4
\Adder|blk_c~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~9_combout\ = ( \B[21]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) # (\AddnSub~input_o\ & (\A[21]~input_o\ & (!\B[20]~input_o\ $ (\A[20]~input_o\)))) ) ) # ( !\B[21]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[21]~input_o\ & (!\B[20]~input_o\ $ (!\A[20]~input_o\)))) # (\AddnSub~input_o\ & (!\A[21]~input_o\ & (!\B[20]~input_o\ $ (\A[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Adder|blk_c~9_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X50_Y33_N34
\Adder|blk_c~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~8_combout\ = ( \A[22]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) # (\AddnSub~input_o\ & (\B[22]~input_o\ & (!\A[23]~input_o\ $ (\B[23]~input_o\)))) ) ) # ( !\A[22]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[22]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\)))) # (\AddnSub~input_o\ & (!\B[22]~input_o\ & (!\A[23]~input_o\ $ (\B[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[22]~input_o\,
	combout => \Adder|blk_c~8_combout\);

-- Location: IOIBUF_X56_Y56_N63
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LABCELL_X47_Y33_N20
\Adder|blk_c~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~10_combout\ = ( \B[16]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\)))) # (\AddnSub~input_o\ & (\A[16]~input_o\ & (!\B[17]~input_o\ $ (\A[17]~input_o\)))) ) ) # ( !\B[16]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[16]~input_o\ & (!\B[17]~input_o\ $ (!\A[17]~input_o\)))) # (\AddnSub~input_o\ & (!\A[16]~input_o\ & (!\B[17]~input_o\ $ (\A[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000010000010010100000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \Adder|blk_c~10_combout\);

-- Location: IOIBUF_X59_Y51_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X46_Y33_N12
\Adder|blk_c~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~5_combout\ = ( \B[12]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # (\AddnSub~input_o\ & (\A[12]~input_o\ & (!\A[13]~input_o\ $ (\B[13]~input_o\)))) ) ) # ( !\B[12]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[12]~input_o\ & (!\A[13]~input_o\ $ (!\B[13]~input_o\)))) # (\AddnSub~input_o\ & (!\A[12]~input_o\ & (!\A[13]~input_o\ $ (\B[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Adder|blk_c~5_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X46_Y33_N10
\Adder|blk_c~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~6_combout\ = ( \A[8]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\AddnSub~input_o\ & (\B[8]~input_o\ & (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) ) # ( !\A[8]~input_o\ & ( (!\AddnSub~input_o\ 
-- & (\B[8]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\)))) # (\AddnSub~input_o\ & (!\B[8]~input_o\ & (!\B[9]~input_o\ $ (\A[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000010000010010100000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Adder|blk_c~6_combout\);

-- Location: IOIBUF_X59_Y6_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X59_Y37_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X46_Y33_N16
\Adder|blk_c~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~4_combout\ = ( \A[14]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[14]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) # (\AddnSub~input_o\ & (\B[14]~input_o\ & (!\A[15]~input_o\ $ (\B[15]~input_o\)))) ) ) # ( !\A[14]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[14]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\)))) # (\AddnSub~input_o\ & (!\B[14]~input_o\ & (!\A[15]~input_o\ $ (\B[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000010000010010100000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Adder|blk_c~4_combout\);

-- Location: IOIBUF_X59_Y34_N63
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y33_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X46_Y33_N20
\Adder|blk_c~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~7_combout\ = ( \A[11]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) # (\AddnSub~input_o\ & (\B[11]~input_o\ & (!\B[10]~input_o\ $ (\A[10]~input_o\)))) ) ) # ( !\A[11]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[11]~input_o\ & (!\B[10]~input_o\ $ (!\A[10]~input_o\)))) # (\AddnSub~input_o\ & (!\B[11]~input_o\ & (!\B[10]~input_o\ $ (\A[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Adder|blk_c~7_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X43_Y32_N2
\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[0]~input_o\) # (\A[0]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\A[0]~input_o\ & \B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LABCELL_X43_Y32_N6
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[1]~input_o\)) # (\A[1]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[1]~input_o\ & (!\AddnSub~input_o\ $ (!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X43_Y32_N8
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\)) # (\A[2]~input_o\ & ((!\B[2]~input_o\) # 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\)) # (\A[2]~input_o\ & 
-- ((\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X43_Y32_N32
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[3]~input_o\)) # (\A[3]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (\A[3]~input_o\ & (!\AddnSub~input_o\ $ (!\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010011110110111101100010010000100100111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y32_N0
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \A[4]~input_o\ & ( \AddnSub~input_o\ & ( (!\B[4]~input_o\) # (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) ) # ( !\A[4]~input_o\ & ( \AddnSub~input_o\ & ( 
-- (!\B[4]~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) ) # ( \A[4]~input_o\ & ( !\AddnSub~input_o\ & ( (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\B[4]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( 
-- !\AddnSub~input_o\ & ( (\B[4]~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111100001010000010101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y32_N2
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[5]~input_o\)) # (\A[5]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (\A[5]~input_o\ & (!\AddnSub~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y32_N4
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[6]~input_o\ & ((\A[6]~input_o\) # (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\))) # (\B[6]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ & \A[6]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[6]~input_o\ & (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ & \A[6]~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\) # 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X45_Y32_N8
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\AddnSub~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\)) # (\A[7]~input_o\ & ((!\AddnSub~input_o\) # 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\))) ) ) # ( !\B[7]~input_o\ & ( (!\A[7]~input_o\ & (\AddnSub~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\)) # (\A[7]~input_o\ & 
-- ((\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y32_N14
\Adder|blk_c~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~1_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\AddnSub~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\)))) # (\A[7]~input_o\ & (\AddnSub~input_o\ & (!\B[6]~input_o\ $ (\A[6]~input_o\)))) ) ) # ( !\B[7]~input_o\ & ( (!\A[7]~input_o\ & 
-- (\AddnSub~input_o\ & (!\B[6]~input_o\ $ (\A[6]~input_o\)))) # (\A[7]~input_o\ & (!\AddnSub~input_o\ & (!\B[6]~input_o\ $ (!\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Adder|blk_c~1_combout\);

-- Location: LABCELL_X45_Y32_N0
\Adder|blk_c~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~2_combout\ = ( \A[1]~input_o\ & ( (\AddnSub~input_o\ & (\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\)))) ) ) # ( !\A[1]~input_o\ & ( (\AddnSub~input_o\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ $ (\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100010000000000010000010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Adder|blk_c~2_combout\);

-- Location: LABCELL_X43_Y32_N36
\Adder|blk_c~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~0_combout\ = ( \B[0]~input_o\ & ( \AddnSub~input_o\ & ( (\A[0]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \AddnSub~input_o\ & ( (!\A[0]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\AddnSub~input_o\ & ( (\A[0]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\AddnSub~input_o\ & ( (!\A[0]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000000001100000011010010000100100000000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|blk_c~0_combout\);

-- Location: LABCELL_X45_Y32_N38
\Adder|blk_c~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~3_combout\ = ( \AddnSub~input_o\ & ( (!\A[5]~input_o\ & (!\B[5]~input_o\ & (!\B[4]~input_o\ $ (\A[4]~input_o\)))) # (\A[5]~input_o\ & (\B[5]~input_o\ & (!\B[4]~input_o\ $ (\A[4]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[5]~input_o\ & 
-- (\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (\A[5]~input_o\ & (!\B[5]~input_o\ & (!\B[4]~input_o\ $ (!\A[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|blk_c~3_combout\);

-- Location: LABCELL_X45_Y32_N20
\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ = ( \Adder|blk_c~3_combout\ & ( (!\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ & ((!\Adder|blk_c~1_combout\) # ((!\Adder|blk_c~2_combout\) # (!\Adder|blk_c~0_combout\)))) ) ) # ( 
-- !\Adder|blk_c~3_combout\ & ( !\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	datab => \Adder|ALT_INV_blk_c~1_combout\,
	datac => \Adder|ALT_INV_blk_c~2_combout\,
	datad => \Adder|ALT_INV_blk_c~0_combout\,
	dataf => \Adder|ALT_INV_blk_c~3_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\);

-- Location: MLABCELL_X46_Y33_N2
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[8]~input_o\ & ((!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\) # (\A[8]~input_o\))) # (\B[8]~input_o\ & 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & \A[8]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[8]~input_o\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & \A[8]~input_o\)) # (\B[8]~input_o\ & 
-- ((!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\) # (\A[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101100010001110111001000100110111011000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \Adder|ALT_INV_gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y32_N4
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[9]~input_o\)) # (\A[9]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[9]~input_o\ & (!\AddnSub~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y33_N20
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (!\B[10]~input_o\ $ (!\AddnSub~input_o\)) # (\A[10]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (\A[10]~input_o\ & (!\B[10]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y33_N6
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \A[11]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[11]~input_o\)) # (\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\) ) ) # ( !\A[11]~input_o\ & ( 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y33_N8
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \B[12]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[12]~input_o\) # (\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\))) # (\AddnSub~input_o\ & 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ & \A[12]~input_o\)) ) ) # ( !\B[12]~input_o\ & ( (!\AddnSub~input_o\ & (\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ & \A[12]~input_o\)) # (\AddnSub~input_o\ & 
-- ((\A[12]~input_o\) # (\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y33_N6
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \A[13]~input_o\ & ( (!\B[13]~input_o\ $ (!\AddnSub~input_o\)) # (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\) ) ) # ( !\A[13]~input_o\ & ( 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ & (!\B[13]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y33_N8
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[14]~input_o\)) # (\A[14]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (\A[14]~input_o\ & (!\AddnSub~input_o\ $ (!\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y33_N14
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \B[15]~input_o\ & ( (!\AddnSub~input_o\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\A[15]~input_o\))) # (\AddnSub~input_o\ & (\A[15]~input_o\ & 
-- \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) ) # ( !\B[15]~input_o\ & ( (!\AddnSub~input_o\ & (\A[15]~input_o\ & \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\)) # (\AddnSub~input_o\ & 
-- ((\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y33_N26
\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & ( !\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\ ) ) # ( !\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( (!\Adder|blk_c~5_combout\) # ((!\Adder|blk_c~6_combout\) # ((!\Adder|blk_c~4_combout\) # (!\Adder|blk_c~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~5_combout\,
	datab => \Adder|ALT_INV_blk_c~6_combout\,
	datac => \Adder|ALT_INV_blk_c~4_combout\,
	datad => \Adder|ALT_INV_blk_c~7_combout\,
	datae => \Adder|ALT_INV_gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\);

-- Location: MLABCELL_X49_Y35_N2
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \A[16]~input_o\ & ( \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ( !\AddnSub~input_o\ $ (!\B[16]~input_o\) ) ) ) # ( \A[16]~input_o\ & ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ ) ) # ( !\A[16]~input_o\ & ( !\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ( !\AddnSub~input_o\ $ (!\B[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y33_N22
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[17]~input_o\)) # (\A[17]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[17]~input_o\ & (!\AddnSub~input_o\ $ (!\B[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y33_N26
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \A[18]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) # (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\) ) ) # ( !\A[18]~input_o\ & ( 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y33_N30
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \A[19]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[19]~input_o\)) # (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\) ) ) # ( !\A[19]~input_o\ & ( 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y31_N20
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( \A[20]~input_o\ & ( (!\B[20]~input_o\) # (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) ) # ( !\AddnSub~input_o\ & ( \A[20]~input_o\ & ( 
-- (\B[20]~input_o\) # (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) ) # ( \AddnSub~input_o\ & ( !\A[20]~input_o\ & ( (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ & !\B[20]~input_o\) ) ) ) # ( !\AddnSub~input_o\ & ( 
-- !\A[20]~input_o\ & ( (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ & \B[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000000000001111111111111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y33_N2
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \B[21]~input_o\ & ( (!\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ & \A[21]~input_o\)) # 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ & ((!\AddnSub~input_o\) # (\A[21]~input_o\))) ) ) # ( !\B[21]~input_o\ & ( (!\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ & \A[21]~input_o\)) # 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ & ((\A[21]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y33_N6
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \B[22]~input_o\ & ( (!\AddnSub~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\A[22]~input_o\))) # (\AddnSub~input_o\ & (\A[22]~input_o\ & 
-- \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\)) ) ) # ( !\B[22]~input_o\ & ( (!\AddnSub~input_o\ & (\A[22]~input_o\ & \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\)) # (\AddnSub~input_o\ & 
-- ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y33_N30
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[23]~input_o\)) # (\A[23]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (\A[23]~input_o\ & (!\AddnSub~input_o\ $ (!\B[23]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y33_N18
\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ = ( !\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ ) ) # ( !\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ( (!\Adder|blk_c~11_combout\) # ((!\Adder|blk_c~9_combout\) # ((!\Adder|blk_c~8_combout\) # (!\Adder|blk_c~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~11_combout\,
	datab => \Adder|ALT_INV_blk_c~9_combout\,
	datac => \Adder|ALT_INV_blk_c~8_combout\,
	datad => \Adder|ALT_INV_blk_c~10_combout\,
	datae => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \Adder|ALT_INV_gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X59_Y25_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X10_Y56_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X49_Y33_N22
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \A[24]~input_o\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ & ( !\AddnSub~input_o\ $ (!\B[24]~input_o\) ) ) ) # ( \A[24]~input_o\ & ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ ) ) # ( !\A[24]~input_o\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ & ( !\AddnSub~input_o\ $ (!\B[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LABCELL_X53_Y33_N20
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (!\B[25]~input_o\) # (\A[25]~input_o\) ) ) ) # ( !\AddnSub~input_o\ & ( 
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\B[25]~input_o\) # (\A[25]~input_o\) ) ) ) # ( \AddnSub~input_o\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[25]~input_o\ & !\B[25]~input_o\) ) ) ) # ( 
-- !\AddnSub~input_o\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[25]~input_o\ & \B[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000110011111111111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X53_Y33_N26
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (!\B[26]~input_o\ $ (!\AddnSub~input_o\)) # (\A[26]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (\A[26]~input_o\ & (!\B[26]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X53_Y33_N24
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[27]~input_o\)) # (\A[27]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (\A[27]~input_o\ & (!\AddnSub~input_o\ $ (!\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LABCELL_X53_Y33_N30
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \B[28]~input_o\ & ( (!\A[28]~input_o\ & (!\AddnSub~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\)) # (\A[28]~input_o\ & ((!\AddnSub~input_o\) # 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\))) ) ) # ( !\B[28]~input_o\ & ( (!\A[28]~input_o\ & (\AddnSub~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\)) # (\A[28]~input_o\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X52_Y33_N2
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \B[29]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[29]~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\))) # (\AddnSub~input_o\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ & \A[29]~input_o\)) ) ) # ( !\B[29]~input_o\ & ( (!\AddnSub~input_o\ & (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ & \A[29]~input_o\)) # (\AddnSub~input_o\ & 
-- ((\A[29]~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X52_Y33_N26
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[30]~input_o\)) # (\A[30]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (\A[30]~input_o\ & (!\AddnSub~input_o\ $ (!\B[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[30]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X52_Y33_N8
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \B[31]~input_o\ & ( (!\AddnSub~input_o\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\A[31]~input_o\))) # (\AddnSub~input_o\ & (\A[31]~input_o\ & 
-- \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) ) # ( !\B[31]~input_o\ & ( (!\AddnSub~input_o\ & (\A[31]~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\)) # (\AddnSub~input_o\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LABCELL_X53_Y33_N32
\Adder|blk_c~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~15_combout\ = ( \A[26]~input_o\ & ( (!\B[26]~input_o\ & (!\AddnSub~input_o\ & (!\A[27]~input_o\ $ (!\B[27]~input_o\)))) # (\B[26]~input_o\ & (\AddnSub~input_o\ & (!\A[27]~input_o\ $ (\B[27]~input_o\)))) ) ) # ( !\A[26]~input_o\ & ( 
-- (!\B[26]~input_o\ & (\AddnSub~input_o\ & (!\A[27]~input_o\ $ (\B[27]~input_o\)))) # (\B[26]~input_o\ & (!\AddnSub~input_o\ & (!\A[27]~input_o\ $ (!\B[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000010000110001000000100100100010000100001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	combout => \Adder|blk_c~15_combout\);

-- Location: MLABCELL_X52_Y33_N32
\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ = ( !\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( \Adder|blk_c~15_combout\ & ( (!\Adder|blk_c~12_combout\) # ((!\Adder|blk_c~13_combout\) # ((!\Adder|blk_c~14_combout\) # 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( !\Adder|blk_c~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111110111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~12_combout\,
	datab => \Adder|ALT_INV_blk_c~13_combout\,
	datac => \Adder|ALT_INV_blk_c~14_combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	datae => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \Adder|ALT_INV_blk_c~15_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\);

-- Location: MLABCELL_X49_Y29_N20
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \B[32]~input_o\ & ( (!\AddnSub~input_o\ & ((!\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\) # (\A[32]~input_o\))) # (\AddnSub~input_o\ & (\A[32]~input_o\ & 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\)) ) ) # ( !\B[32]~input_o\ & ( (!\AddnSub~input_o\ & (\A[32]~input_o\ & !\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\)) # (\AddnSub~input_o\ & 
-- ((!\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\) # (\A[32]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001111001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[32]~input_o\,
	datad => \Adder|ALT_INV_gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X49_Y29_N6
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \B[33]~input_o\ & ( (!\AddnSub~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\A[33]~input_o\))) # (\AddnSub~input_o\ & (\A[33]~input_o\ & 
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) ) # ( !\B[33]~input_o\ & ( (!\AddnSub~input_o\ & (\A[33]~input_o\ & \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\)) # (\AddnSub~input_o\ & 
-- ((\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\A[33]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y29_N2
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \A[34]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[34]~input_o\)) # (\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\) ) ) # ( !\A[34]~input_o\ & ( 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[34]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[34]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y29_N4
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[35]~input_o\)) # (\A[35]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (\A[35]~input_o\ & (!\AddnSub~input_o\ $ (!\B[35]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y29_N8
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \B[36]~input_o\ & ( (!\AddnSub~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\A[36]~input_o\))) # (\AddnSub~input_o\ & (\A[36]~input_o\ & 
-- \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) ) # ( !\B[36]~input_o\ & ( (!\AddnSub~input_o\ & (\A[36]~input_o\ & \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\)) # (\AddnSub~input_o\ & 
-- ((\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\A[36]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y28_N20
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[37]~input_o\)) # (\A[37]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (\A[37]~input_o\ & (!\AddnSub~input_o\ $ (!\B[37]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y28_N6
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[38]~input_o\)) # (\A[38]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (\A[38]~input_o\ & (!\AddnSub~input_o\ $ (!\B[38]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[38]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y28_N8
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[39]~input_o\)) # (\A[39]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (\A[39]~input_o\ & (!\AddnSub~input_o\ $ (!\B[39]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y28_N34
\Adder|blk_c~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~16_combout\ = ( \B[39]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[39]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) # (\AddnSub~input_o\ & (\A[39]~input_o\ & (!\A[38]~input_o\ $ (\B[38]~input_o\)))) ) ) # ( !\B[39]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[39]~input_o\ & (!\A[38]~input_o\ $ (!\B[38]~input_o\)))) # (\AddnSub~input_o\ & (!\A[39]~input_o\ & (!\A[38]~input_o\ $ (\B[38]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \Adder|blk_c~16_combout\);

-- Location: MLABCELL_X49_Y29_N10
\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & ( \Adder|blk_c~16_combout\ & ( !\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & ( \Adder|blk_c~16_combout\ & ( (!\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ & ((!\Adder|blk_c~19_combout\) # ((!\Adder|blk_c~18_combout\) # (!\Adder|blk_c~17_combout\)))) ) ) ) # 
-- ( \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & ( !\Adder|blk_c~16_combout\ & ( !\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & ( !\Adder|blk_c~16_combout\ & ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~19_combout\,
	datab => \Adder|ALT_INV_blk_c~18_combout\,
	datac => \Adder|ALT_INV_blk_c~17_combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	datae => \Adder|ALT_INV_gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	dataf => \Adder|ALT_INV_blk_c~16_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\);

-- Location: LABCELL_X50_Y31_N22
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \A[40]~input_o\ & ( (!\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\) # (!\B[40]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\A[40]~input_o\ & ( 
-- (!\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & (!\B[40]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000011111111010110101111111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LABCELL_X50_Y31_N4
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ = (!\A[41]~input_o\ & (\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[41]~input_o\)))) # (\A[41]~input_o\ & ((!\AddnSub~input_o\ $ 
-- (!\B[41]~input_o\)) # (\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111101000101000111110100010100011111010001010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[41]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y31_N20
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[42]~input_o\)) # (\A[42]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (\A[42]~input_o\ & (!\AddnSub~input_o\ $ (!\B[42]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[42]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y31_N24
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (!\B[43]~input_o\ $ (!\AddnSub~input_o\)) # (\A[43]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( (\A[43]~input_o\ & (!\B[43]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y29_N20
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[44]~input_o\)) # (\A[44]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & ( (\A[44]~input_o\ & (!\AddnSub~input_o\ $ (!\B[44]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[44]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X23_Y56_N1
\B[45]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LABCELL_X47_Y31_N6
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \A[45]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[45]~input_o\)) # (\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\) ) ) # ( !\A[45]~input_o\ & ( 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[45]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[45]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y31_N8
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[46]~input_o\)) # (\A[46]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (\A[46]~input_o\ & (!\AddnSub~input_o\ $ (!\B[46]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y31_N32
\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[47]~input_o\)) # (\A[47]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( (\A[47]~input_o\ & (!\AddnSub~input_o\ $ (!\B[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y31_N30
\Adder|blk_c~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~23_combout\ = ( \B[42]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[42]~input_o\ & (!\A[43]~input_o\ $ (!\B[43]~input_o\)))) # (\AddnSub~input_o\ & (\A[42]~input_o\ & (!\A[43]~input_o\ $ (\B[43]~input_o\)))) ) ) # ( !\B[42]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[42]~input_o\ & (!\A[43]~input_o\ $ (!\B[43]~input_o\)))) # (\AddnSub~input_o\ & (!\A[42]~input_o\ & (!\A[43]~input_o\ $ (\B[43]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datac => \ALT_INV_A[42]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_B[42]~input_o\,
	combout => \Adder|blk_c~23_combout\);

-- Location: LABCELL_X47_Y31_N34
\Adder|blk_c~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~21_combout\ = ( \A[45]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\)))) # (\AddnSub~input_o\ & (\B[45]~input_o\ & (!\B[44]~input_o\ $ (\A[44]~input_o\)))) ) ) # ( !\A[45]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[45]~input_o\ & (!\B[44]~input_o\ $ (!\A[44]~input_o\)))) # (\AddnSub~input_o\ & (!\B[45]~input_o\ & (!\B[44]~input_o\ $ (\A[44]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_A[45]~input_o\,
	combout => \Adder|blk_c~21_combout\);

-- Location: LABCELL_X47_Y31_N16
\Adder|gen_blk_cs:5:bits[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:bits[7]~0_combout\ = ( \AddnSub~input_o\ & ( !\B[47]~input_o\ $ (\A[47]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[47]~input_o\ $ (!\A[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[47]~input_o\,
	datad => \ALT_INV_A[47]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:5:bits[7]~0_combout\);

-- Location: LABCELL_X47_Y31_N20
\Adder|blk_c~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~20_combout\ = ( \Adder|gen_blk_cs:5:bits[7]~0_combout\ & ( !\A[46]~input_o\ $ (!\AddnSub~input_o\ $ (\B[46]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:5:bits[7]~0_combout\,
	combout => \Adder|blk_c~20_combout\);

-- Location: LABCELL_X50_Y31_N30
\Adder|blk_c~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~22_combout\ = ( \A[41]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[41]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\)))) # (\AddnSub~input_o\ & (\B[41]~input_o\ & (!\B[40]~input_o\ $ (\A[40]~input_o\)))) ) ) # ( !\A[41]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[41]~input_o\ & (!\B[40]~input_o\ $ (!\A[40]~input_o\)))) # (\AddnSub~input_o\ & (!\B[41]~input_o\ & (!\B[40]~input_o\ $ (\A[40]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_A[41]~input_o\,
	combout => \Adder|blk_c~22_combout\);

-- Location: LABCELL_X47_Y31_N22
\Adder|blk_c~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~24_combout\ = ( \Adder|blk_c~22_combout\ & ( (\Adder|blk_c~23_combout\ & (\Adder|blk_c~21_combout\ & \Adder|blk_c~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~23_combout\,
	datac => \Adder|ALT_INV_blk_c~21_combout\,
	datad => \Adder|ALT_INV_blk_c~20_combout\,
	dataf => \Adder|ALT_INV_blk_c~22_combout\,
	combout => \Adder|blk_c~24_combout\);

-- Location: LABCELL_X47_Y30_N6
\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ = ( \Adder|blk_c~24_combout\ & ( (!\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ & \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\) ) ) # ( !\Adder|blk_c~24_combout\ & ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	dataf => \Adder|ALT_INV_blk_c~24_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X56_Y0_N63
\B[48]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LABCELL_X47_Y30_N4
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \B[48]~input_o\ & ( (!\A[48]~input_o\ & (!\AddnSub~input_o\ & !\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\)) # (\A[48]~input_o\ & ((!\AddnSub~input_o\) # 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\))) ) ) # ( !\B[48]~input_o\ & ( (!\A[48]~input_o\ & (\AddnSub~input_o\ & !\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\)) # (\A[48]~input_o\ & 
-- ((!\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001111110011001100001111001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[48]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|ALT_INV_gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y30_N8
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \A[49]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[49]~input_o\)) # (\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\) ) ) # ( !\A[49]~input_o\ & ( 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[49]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y29_N26
\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (!\B[50]~input_o\ $ (!\AddnSub~input_o\)) # (\A[50]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( (\A[50]~input_o\ & (!\B[50]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X47_Y29_N30
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ = (!\A[51]~input_o\ & (\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ & (!\B[51]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[51]~input_o\ & ((!\B[51]~input_o\ $ 
-- (!\AddnSub~input_o\)) # (\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100101011000101110010101100010111001010110001011100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X49_Y29_N14
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[52]~input_o\ & ((\A[52]~input_o\) # (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\))) # (\B[52]~input_o\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ & \A[52]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[52]~input_o\ & (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ & \A[52]~input_o\)) # (\B[52]~input_o\ & 
-- ((\A[52]~input_o\) # (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[52]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[52]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X59_Y21_N94
\B[53]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: MLABCELL_X46_Y29_N6
\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \A[53]~input_o\ & ( (!\B[53]~input_o\ $ (!\AddnSub~input_o\)) # (\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\) ) ) # ( !\A[53]~input_o\ & ( 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ & (!\B[53]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y32_N10
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[54]~input_o\ & ((\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\A[54]~input_o\))) # (\B[54]~input_o\ & (\A[54]~input_o\ & 
-- \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[54]~input_o\ & (\A[54]~input_o\ & \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\)) # (\B[54]~input_o\ & 
-- ((\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\A[54]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y30_N22
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[55]~input_o\ & ((\A[55]~input_o\) # (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\))) # (\B[55]~input_o\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ & \A[55]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[55]~input_o\ & (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ & \A[55]~input_o\)) # (\B[55]~input_o\ & 
-- ((\A[55]~input_o\) # (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[55]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X46_Y29_N10
\Adder|gen_blk_cs:6:bits[5]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[5]~0_combout\ = ( \A[53]~input_o\ & ( !\B[53]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[53]~input_o\ & ( !\B[53]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[53]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[5]~0_combout\);

-- Location: MLABCELL_X46_Y30_N28
\Adder|blk_c~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~26_combout\ = ( \Adder|gen_blk_cs:6:bits[5]~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[52]~input_o\ $ (\B[52]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[52]~input_o\,
	datad => \ALT_INV_B[52]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:bits[5]~0_combout\,
	combout => \Adder|blk_c~26_combout\);

-- Location: MLABCELL_X46_Y30_N24
\Adder|blk_c~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~25_combout\ = ( \A[54]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[54]~input_o\ & (!\B[55]~input_o\ $ (!\A[55]~input_o\)))) # (\AddnSub~input_o\ & (\B[54]~input_o\ & (!\B[55]~input_o\ $ (\A[55]~input_o\)))) ) ) # ( !\A[54]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[54]~input_o\ & (!\B[55]~input_o\ $ (!\A[55]~input_o\)))) # (\AddnSub~input_o\ & (!\B[54]~input_o\ & (!\B[55]~input_o\ $ (\A[55]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_B[54]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \ALT_INV_A[54]~input_o\,
	combout => \Adder|blk_c~25_combout\);

-- Location: LABCELL_X47_Y30_N38
\Adder|gen_blk_cs:6:bits[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[2]~0_combout\ = ( \AddnSub~input_o\ & ( !\B[50]~input_o\ $ (\A[50]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[50]~input_o\ $ (!\A[50]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[50]~input_o\,
	datad => \ALT_INV_A[50]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[2]~0_combout\);

-- Location: MLABCELL_X46_Y30_N30
\Adder|blk_c~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~28_combout\ = ( \Adder|gen_blk_cs:6:bits[2]~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[51]~input_o\ $ (\A[51]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[51]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:bits[2]~0_combout\,
	combout => \Adder|blk_c~28_combout\);

-- Location: LABCELL_X47_Y30_N32
\Adder|blk_c~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~27_combout\ = ( \B[48]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[48]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\)))) # (\AddnSub~input_o\ & (\A[48]~input_o\ & (!\A[49]~input_o\ $ (\B[49]~input_o\)))) ) ) # ( !\B[48]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[48]~input_o\ & (!\A[49]~input_o\ $ (!\B[49]~input_o\)))) # (\AddnSub~input_o\ & (!\A[48]~input_o\ & (!\A[49]~input_o\ $ (\B[49]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[49]~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Adder|blk_c~27_combout\);

-- Location: MLABCELL_X46_Y30_N20
\Adder|blk_c~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~29_combout\ = ( \Adder|blk_c~27_combout\ & ( (\Adder|blk_c~26_combout\ & (\Adder|blk_c~25_combout\ & \Adder|blk_c~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~26_combout\,
	datac => \Adder|ALT_INV_blk_c~25_combout\,
	datad => \Adder|ALT_INV_blk_c~28_combout\,
	dataf => \Adder|ALT_INV_blk_c~27_combout\,
	combout => \Adder|blk_c~29_combout\);

-- Location: MLABCELL_X46_Y30_N14
\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ & ( !\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ & ( 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ & !\Adder|blk_c~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	datad => \Adder|ALT_INV_blk_c~29_combout\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X59_Y46_N1
\B[59]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\B[60]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LABCELL_X45_Y30_N14
\Adder|gen_blk_cs:7:bits[4]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:bits[4]~0_combout\ = ( \AddnSub~input_o\ & ( !\B[60]~input_o\ $ (\A[60]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[60]~input_o\ $ (!\A[60]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:bits[4]~0_combout\);

-- Location: LABCELL_X45_Y30_N16
\Adder|blk_c~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~31_combout\ = ( \Adder|gen_blk_cs:7:bits[4]~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[59]~input_o\ $ (\A[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_A[59]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:7:bits[4]~0_combout\,
	combout => \Adder|blk_c~31_combout\);

-- Location: IOIBUF_X8_Y56_N94
\B[62]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X33_Y0_N94
\B[61]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: MLABCELL_X44_Y30_N32
\Adder|blk_c~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~30_combout\ = ( \B[61]~input_o\ & ( (!\A[61]~input_o\ & (!\AddnSub~input_o\ & (!\B[62]~input_o\ $ (!\A[62]~input_o\)))) # (\A[61]~input_o\ & (\AddnSub~input_o\ & (!\B[62]~input_o\ $ (\A[62]~input_o\)))) ) ) # ( !\B[61]~input_o\ & ( 
-- (!\A[61]~input_o\ & (\AddnSub~input_o\ & (!\B[62]~input_o\ $ (\A[62]~input_o\)))) # (\A[61]~input_o\ & (!\AddnSub~input_o\ & (!\B[62]~input_o\ $ (!\A[62]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datab => \ALT_INV_A[62]~input_o\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[61]~input_o\,
	combout => \Adder|blk_c~30_combout\);

-- Location: IOIBUF_X59_Y21_N63
\B[56]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LABCELL_X43_Y30_N38
\Adder|blk_c~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~32_combout\ = ( \AddnSub~input_o\ & ( (\Adder|gen_blk_cs:7:bits[7]~combout\ & (!\A[56]~input_o\ $ (\B[56]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (\Adder|gen_blk_cs:7:bits[7]~combout\ & (!\A[56]~input_o\ $ (!\B[56]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|blk_c~32_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[58]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[57]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: MLABCELL_X44_Y28_N18
\Adder|gen_blk_cs:7:bits[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:bits[1]~0_combout\ = !\AddnSub~input_o\ $ (!\A[57]~input_o\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_B[57]~input_o\,
	combout => \Adder|gen_blk_cs:7:bits[1]~0_combout\);

-- Location: MLABCELL_X44_Y30_N6
\Adder|blk_c~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~33_combout\ = ( \Adder|gen_blk_cs:7:bits[1]~0_combout\ & ( !\B[58]~input_o\ $ (!\A[58]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:7:bits[1]~0_combout\,
	combout => \Adder|blk_c~33_combout\);

-- Location: LABCELL_X43_Y30_N36
\Adder|blk_c~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|blk_c~34_combout\ = ( \Adder|blk_c~33_combout\ & ( (\Adder|blk_c~31_combout\ & (\Adder|blk_c~30_combout\ & \Adder|blk_c~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|ALT_INV_blk_c~31_combout\,
	datac => \Adder|ALT_INV_blk_c~30_combout\,
	datad => \Adder|ALT_INV_blk_c~32_combout\,
	dataf => \Adder|ALT_INV_blk_c~33_combout\,
	combout => \Adder|blk_c~34_combout\);

-- Location: MLABCELL_X44_Y28_N16
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & ( (\A[56]~input_o\ & (!\AddnSub~input_o\ $ (!\B[56]~input_o\))) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & ( 
-- (!\AddnSub~input_o\ $ (!\B[56]~input_o\)) # (\A[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111001111001111111100111100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_B[56]~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y28_N0
\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (!\B[57]~input_o\ $ (!\AddnSub~input_o\)) # (\A[57]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( (\A[57]~input_o\ & (!\B[57]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y30_N4
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ = (!\A[58]~input_o\ & (\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ & (!\B[58]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[58]~input_o\ & ((!\B[58]~input_o\ $ 
-- (!\AddnSub~input_o\)) # (\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100101011000101110010101100010111001010110001011100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_A[58]~input_o\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y30_N26
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\A[59]~input_o\ & !\B[59]~input_o\)) # 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ & ((!\B[59]~input_o\) # (\A[59]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\A[59]~input_o\ & \B[59]~input_o\)) # 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ & ((\B[59]~input_o\) # (\A[59]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LABCELL_X45_Y30_N8
\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ = ( \A[60]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[60]~input_o\)) # (\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\) ) ) # ( !\A[60]~input_o\ & ( 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ & (!\AddnSub~input_o\ $ (!\B[60]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[60]~input_o\,
	dataf => \ALT_INV_A[60]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y30_N10
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (!\AddnSub~input_o\ $ (!\B[61]~input_o\)) # (\A[61]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( (\A[61]~input_o\ & (!\AddnSub~input_o\ $ (!\B[61]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[61]~input_o\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: MLABCELL_X44_Y30_N34
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (!\B[62]~input_o\ $ (!\AddnSub~input_o\)) # (\A[62]~input_o\) ) ) # ( 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( (\A[62]~input_o\ & (!\B[62]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[62]~input_o\,
	datac => \ALT_INV_A[62]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LABCELL_X43_Y30_N34
\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[63]~input_o\ & ((\A[63]~input_o\) # (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\))) # (\B[63]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ & \A[63]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[63]~input_o\ & (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ & \A[63]~input_o\)) # (\B[63]~input_o\ & 
-- ((\A[63]~input_o\) # (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[63]~input_o\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[63]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LABCELL_X43_Y30_N2
\Adder|Cout\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|Cout~combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & \Adder|blk_c~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	datad => \Adder|ALT_INV_blk_c~34_combout\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|Cout~combout\);

-- Location: LABCELL_X43_Y30_N10
\Y_internal~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~1_combout\ = ( \FuncClass[1]~input_o\ & ( \Adder|Cout~combout\ & ( (!\Adder|gen_blk_cs:7:bits[7]~combout\ & !\FuncClass[0]~input_o\) ) ) ) # ( !\FuncClass[1]~input_o\ & ( \Adder|Cout~combout\ & ( (!\FuncClass[0]~input_o\ & 
-- ((\Shifter|Output[0]~1_combout\))) # (\FuncClass[0]~input_o\ & (\LogicUnit|Mux63~0_combout\)) ) ) ) # ( \FuncClass[1]~input_o\ & ( !\Adder|Cout~combout\ & ( (\FuncClass[0]~input_o\) # (\Adder|gen_blk_cs:7:bits[7]~combout\) ) ) ) # ( 
-- !\FuncClass[1]~input_o\ & ( !\Adder|Cout~combout\ & ( (!\FuncClass[0]~input_o\ & ((\Shifter|Output[0]~1_combout\))) # (\FuncClass[0]~input_o\ & (\LogicUnit|Mux63~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100111111111100001111010101011100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|ALT_INV_Mux63~0_combout\,
	datab => \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\,
	datac => \Shifter|ALT_INV_Output[0]~1_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \Adder|ALT_INV_Cout~combout\,
	combout => \Y_internal~1_combout\);

-- Location: LABCELL_X45_Y32_N26
\Y_internal~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~5_combout\ = ( !\FuncClass[1]~input_o\ & ( !\FuncClass[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Y_internal~5_combout\);

-- Location: MLABCELL_X39_Y30_N10
\Shifter|sign_bit~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|sign_bit~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (\Shifter|InputExtended[63]~1_combout\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Shifter|sign_bit~0_combout\);

-- Location: MLABCELL_X39_Y31_N34
\Shifter|stage[3][62]~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][62]~45_combout\ = ( \B[2]~input_o\ & ( \Shifter|sign_bit~0_combout\ ) ) # ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][62]~42_combout\))) # (\B[1]~input_o\ & (\Shifter|sign_bit~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_stage[1][62]~42_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[3][62]~45_combout\);

-- Location: LABCELL_X38_Y32_N20
\Shifter|stage[5][62]~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][62]~46_combout\ = ( \Shifter|stage[3][62]~45_combout\ & ( ((!\B[4]~input_o\ & !\B[3]~input_o\)) # (\Shifter|sign_bit~0_combout\) ) ) # ( !\Shifter|stage[3][62]~45_combout\ & ( (\Shifter|sign_bit~0_combout\ & ((\B[3]~input_o\) # 
-- (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][62]~45_combout\,
	combout => \Shifter|stage[5][62]~46_combout\);

-- Location: MLABCELL_X44_Y31_N10
\Shifter|stage[1][21]~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][21]~59_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[41]~23_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( 
-- (!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[42]~22_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[41]~23_combout\))) ) ) ) 
-- # ( !\B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\Shifter|InputExtended[42]~22_combout\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[42]~22_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[41]~23_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shifter|stage[1][21]~59_combout\);

-- Location: MLABCELL_X44_Y32_N6
\Shifter|stage[1][17]~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][17]~57_combout\ = ( \Shifter|InputExtended[46]~18_combout\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\)))) ) ) ) 
-- # ( !\Shifter|InputExtended[46]~18_combout\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[45]~19_combout\))))) ) ) ) # ( \Shifter|InputExtended[46]~18_combout\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))))) ) ) ) # ( !\Shifter|InputExtended[46]~18_combout\ & ( !\A[17]~input_o\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[45]~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[45]~19_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[46]~18_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shifter|stage[1][17]~57_combout\);

-- Location: MLABCELL_X44_Y32_N30
\Shifter|stage[1][19]~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][19]~58_combout\ = ( \A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\)))) ) ) ) 
-- # ( !\A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[43]~21_combout\))))) ) ) ) # ( \A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)))) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\))))) ) ) ) # ( !\A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[43]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[43]~21_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[44]~20_combout\,
	combout => \Shifter|stage[1][19]~58_combout\);

-- Location: MLABCELL_X44_Y33_N0
\Shifter|stage[1][23]~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][23]~60_combout\ = ( \B[0]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[39]~25_combout\ ) ) ) # ( !\B[0]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[40]~24_combout\ ) ) ) # ( \B[0]~input_o\ & ( 
-- !\Shifter|Equal2~0_combout\ & ( \A[24]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( \A[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[40]~24_combout\,
	datab => \Shifter|ALT_INV_InputExtended[39]~25_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][23]~60_combout\);

-- Location: MLABCELL_X39_Y33_N30
\Shifter|stage[3][17]~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][17]~61_combout\ = ( \Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][23]~60_combout\ & ( ((!\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\))) # (\B[1]~input_o\) ) ) ) 
-- # ( !\Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][23]~60_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][17]~57_combout\ & !\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][21]~59_combout\))) ) ) ) # ( 
-- \Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][23]~60_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\Shifter|stage[1][17]~57_combout\)))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][23]~60_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][21]~59_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][17]~57_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][19]~58_combout\,
	dataf => \Shifter|ALT_INV_stage[1][23]~60_combout\,
	combout => \Shifter|stage[3][17]~61_combout\);

-- Location: MLABCELL_X44_Y34_N6
\Shifter|stage[1][13]~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][13]~54_combout\ = ( \Shifter|InputExtended[49]~15_combout\ & ( \Shifter|InputExtended[50]~14_combout\ & ( ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\))) # (\Shifter|Equal2~0_combout\) ) ) ) # ( 
-- !\Shifter|InputExtended[49]~15_combout\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)))) 
-- ) ) ) # ( \Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (((\B[0]~input_o\)))) ) ) ) # ( !\Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[49]~15_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[50]~14_combout\,
	combout => \Shifter|stage[1][13]~54_combout\);

-- Location: LABCELL_X45_Y33_N0
\Shifter|stage[1][11]~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][11]~53_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[51]~13_combout\) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (\Shifter|Equal2~0_combout\ & 
-- \Shifter|InputExtended[51]~13_combout\) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\A[11]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[52]~12_combout\))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\A[11]~input_o\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[52]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_InputExtended[51]~13_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[52]~12_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][11]~53_combout\);

-- Location: MLABCELL_X42_Y31_N26
\Shifter|stage[1][9]~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][9]~52_combout\ = ( \B[0]~input_o\ & ( \A[9]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[10]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[53]~11_combout\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[9]~input_o\ & ( 
-- (!\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[54]~10_combout\) ) ) ) # ( \B[0]~input_o\ & ( !\A[9]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[10]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[53]~11_combout\)) ) ) ) # 
-- ( !\B[0]~input_o\ & ( !\A[9]~input_o\ & ( (\Shifter|Equal2~0_combout\ & \Shifter|InputExtended[54]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_InputExtended[53]~11_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[54]~10_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shifter|stage[1][9]~52_combout\);

-- Location: MLABCELL_X44_Y34_N10
\Shifter|stage[1][15]~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][15]~55_combout\ = ( \A[15]~input_o\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # (\A[16]~input_o\))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # 
-- (\Shifter|InputExtended[48]~16_combout\)))) ) ) ) # ( !\A[15]~input_o\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\A[16]~input_o\ & ((\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # 
-- (\Shifter|InputExtended[48]~16_combout\)))) ) ) ) # ( \A[15]~input_o\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # (\A[16]~input_o\))) # (\Shifter|Equal2~0_combout\ & 
-- (((\Shifter|InputExtended[48]~16_combout\ & !\B[0]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\A[16]~input_o\ & ((\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (((\Shifter|InputExtended[48]~16_combout\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[48]~16_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[47]~17_combout\,
	combout => \Shifter|stage[1][15]~55_combout\);

-- Location: MLABCELL_X39_Y33_N26
\Shifter|stage[3][9]~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][9]~56_combout\ = ( \Shifter|stage[1][9]~52_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][11]~53_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # 
-- (\Shifter|stage[1][13]~54_combout\))) ) ) ) # ( !\Shifter|stage[1][9]~52_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][11]~53_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # 
-- (\Shifter|stage[1][13]~54_combout\))) ) ) ) # ( \Shifter|stage[1][9]~52_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][11]~53_combout\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][13]~54_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][9]~52_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][11]~53_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][13]~54_combout\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][13]~54_combout\,
	datab => \Shifter|ALT_INV_stage[1][11]~53_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][9]~52_combout\,
	dataf => \Shifter|ALT_INV_stage[1][15]~55_combout\,
	combout => \Shifter|stage[3][9]~56_combout\);

-- Location: MLABCELL_X39_Y34_N18
\Shifter|stage[1][3]~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][3]~48_combout\ = ( \Shifter|InputExtended[60]~4_combout\ & ( \Shifter|InputExtended[59]~5_combout\ & ( ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\)))) # (\Shifter|Equal2~0_combout\) ) ) ) # ( 
-- !\Shifter|InputExtended[60]~4_combout\ & ( \Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)))) ) ) ) 
-- # ( \Shifter|InputExtended[60]~4_combout\ & ( !\Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)))) 
-- ) ) ) # ( !\Shifter|InputExtended[60]~4_combout\ & ( !\Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[60]~4_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[59]~5_combout\,
	combout => \Shifter|stage[1][3]~48_combout\);

-- Location: MLABCELL_X39_Y34_N2
\Shifter|stage[1][5]~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][5]~49_combout\ = ( \Shifter|InputExtended[57]~7_combout\ & ( \B[0]~input_o\ & ( (\A[6]~input_o\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( !\Shifter|InputExtended[57]~7_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & 
-- \A[6]~input_o\) ) ) ) # ( \Shifter|InputExtended[57]~7_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[5]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[58]~6_combout\)) ) ) ) # ( 
-- !\Shifter|InputExtended[57]~7_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[5]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[58]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[58]~6_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[57]~7_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][5]~49_combout\);

-- Location: MLABCELL_X39_Y34_N4
\Shifter|stage[1][7]~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][7]~50_combout\ = ( \Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) ) ) ) # ( 
-- !\Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) ) ) ) # ( \Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & 
-- ( (\Shifter|Equal2~0_combout\) # (\A[7]~input_o\) ) ) ) # ( !\Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (\A[7]~input_o\ & !\Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[55]~9_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[56]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][7]~50_combout\);

-- Location: MLABCELL_X39_Y30_N34
\Shifter|stage[5][1]~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][1]~47_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\) # (\Shifter|InputExtended[61]~3_combout\) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( 
-- (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (\Shifter|InputExtended[61]~3_combout\ & \B[0]~input_o\) ) ) ) # ( !\Shifter|Equal2~0_combout\ 
-- & ( !\Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[61]~3_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[62]~2_combout\,
	combout => \Shifter|stage[5][1]~47_combout\);

-- Location: MLABCELL_X39_Y33_N0
\Shifter|stage[5][1]~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][1]~51_combout\ = ( \Shifter|stage[1][7]~50_combout\ & ( \Shifter|stage[5][1]~47_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][3]~48_combout\))) # (\B[2]~input_o\ & (((\Shifter|stage[1][5]~49_combout\) # 
-- (\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][7]~50_combout\ & ( \Shifter|stage[5][1]~47_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][3]~48_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & 
-- \Shifter|stage[1][5]~49_combout\)))) ) ) ) # ( \Shifter|stage[1][7]~50_combout\ & ( !\Shifter|stage[5][1]~47_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][3]~48_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((\Shifter|stage[1][5]~49_combout\) # 
-- (\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][7]~50_combout\ & ( !\Shifter|stage[5][1]~47_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][3]~48_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & 
-- \Shifter|stage[1][5]~49_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][3]~48_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][5]~49_combout\,
	datae => \Shifter|ALT_INV_stage[1][7]~50_combout\,
	dataf => \Shifter|ALT_INV_stage[5][1]~47_combout\,
	combout => \Shifter|stage[5][1]~51_combout\);

-- Location: LABCELL_X43_Y33_N10
\Shifter|stage[1][29]~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][29]~64_combout\ = ( \A[30]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( ((!\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\A[30]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)))) # (\B[0]~input_o\ & 
-- (\Shifter|Equal2~0_combout\)) ) ) ) # ( \A[30]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)))) # 
-- (\B[0]~input_o\ & (!\Shifter|Equal2~0_combout\)) ) ) ) # ( !\A[30]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[34]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[34]~30_combout\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[33]~31_combout\,
	combout => \Shifter|stage[1][29]~64_combout\);

-- Location: MLABCELL_X42_Y32_N24
\Shifter|stage[1][31]~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][31]~65_combout\ = ( \Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & ((\Shifter|InputExtended[32]~32_combout\))) # (\B[0]~input_o\ & (\A[31]~input_o\)) ) ) # ( !\Shifter|Equal2~0_combout\ & ( (!\B[0]~input_o\ & (\A[31]~input_o\)) # 
-- (\B[0]~input_o\ & ((\Shifter|InputExtended[32]~32_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000100011011101100100010011101110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[32]~32_combout\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][31]~65_combout\);

-- Location: LABCELL_X43_Y33_N6
\Shifter|stage[1][27]~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][27]~63_combout\ = ( \A[28]~input_o\ & ( \Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # (\A[27]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # 
-- (\Shifter|InputExtended[35]~29_combout\))) ) ) ) # ( !\A[28]~input_o\ & ( \Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\A[27]~input_o\ & !\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)) # 
-- (\Shifter|InputExtended[35]~29_combout\))) ) ) ) # ( \A[28]~input_o\ & ( !\Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\) # (\A[27]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[35]~29_combout\ & ((\B[0]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\A[27]~input_o\ & !\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[35]~29_combout\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[35]~29_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[36]~28_combout\,
	combout => \Shifter|stage[1][27]~63_combout\);

-- Location: MLABCELL_X44_Y33_N4
\Shifter|stage[1][25]~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][25]~62_combout\ = ( \Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & ((\A[26]~input_o\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[37]~27_combout\))) ) ) ) 
-- # ( !\Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & (!\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[26]~input_o\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[37]~27_combout\)))) ) ) ) # ( \Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[26]~input_o\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[37]~27_combout\)))) ) ) ) # ( !\Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\A[26]~input_o\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|InputExtended[37]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[37]~27_combout\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[38]~26_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shifter|stage[1][25]~62_combout\);

-- Location: MLABCELL_X42_Y33_N20
\Shifter|stage[3][25]~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][25]~66_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][31]~65_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][29]~64_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][31]~65_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (\Shifter|stage[1][29]~64_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][29]~64_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][31]~65_combout\,
	datad => \Shifter|ALT_INV_stage[1][27]~63_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][25]~62_combout\,
	combout => \Shifter|stage[3][25]~66_combout\);

-- Location: MLABCELL_X39_Y32_N20
\Shifter|stage[5][1]~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][1]~67_combout\ = ( \Shifter|stage[5][1]~51_combout\ & ( \Shifter|stage[3][25]~66_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][9]~56_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][17]~61_combout\))) ) ) ) # ( !\Shifter|stage[5][1]~51_combout\ & ( \Shifter|stage[3][25]~66_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][9]~56_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][17]~61_combout\))) ) ) ) # ( \Shifter|stage[5][1]~51_combout\ & ( !\Shifter|stage[3][25]~66_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][9]~56_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][17]~61_combout\ & (!\B[3]~input_o\))) ) ) ) # ( !\Shifter|stage[5][1]~51_combout\ & ( !\Shifter|stage[3][25]~66_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][9]~56_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][17]~61_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][17]~61_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][9]~56_combout\,
	datae => \Shifter|ALT_INV_stage[5][1]~51_combout\,
	dataf => \Shifter|ALT_INV_stage[3][25]~66_combout\,
	combout => \Shifter|stage[5][1]~67_combout\);

-- Location: LABCELL_X43_Y33_N34
\Shifter|stage[1][33]~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][33]~68_combout\ = ( \A[30]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\) # ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\)))) ) ) ) 
-- # ( !\A[30]~input_o\ & ( \Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\ & (!\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\A[29]~input_o\))))) ) ) ) # ( \A[30]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (!\B[0]~input_o\ & (\Shifter|Equal2~0_combout\)) # (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\A[29]~input_o\))))) ) ) ) # ( !\A[30]~input_o\ & ( !\Shifter|InputExtended[33]~31_combout\ & ( (\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[34]~30_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\A[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[34]~30_combout\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_A[30]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[33]~31_combout\,
	combout => \Shifter|stage[1][33]~68_combout\);

-- Location: MLABCELL_X44_Y33_N32
\Shifter|stage[1][39]~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][39]~71_combout\ = ( \B[0]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( \A[23]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \Shifter|Equal2~0_combout\ & ( \A[24]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( 
-- \Shifter|InputExtended[40]~24_combout\ ) ) ) # ( !\B[0]~input_o\ & ( !\Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[39]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[40]~24_combout\,
	datab => \Shifter|ALT_INV_InputExtended[39]~25_combout\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Shifter|stage[1][39]~71_combout\);

-- Location: LABCELL_X43_Y33_N18
\Shifter|stage[1][35]~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][35]~69_combout\ = ( \A[28]~input_o\ & ( \Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # (\Shifter|InputExtended[35]~29_combout\))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # 
-- (\A[27]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( \Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # (\Shifter|InputExtended[35]~29_combout\))) # (\Shifter|Equal2~0_combout\ & (((\A[27]~input_o\ & 
-- \B[0]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[35]~29_combout\ & ((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # 
-- (\A[27]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\Shifter|InputExtended[36]~28_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[35]~29_combout\ & ((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & (((\A[27]~input_o\ & 
-- \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[35]~29_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[36]~28_combout\,
	combout => \Shifter|stage[1][35]~69_combout\);

-- Location: MLABCELL_X44_Y33_N30
\Shifter|stage[1][37]~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][37]~70_combout\ = ( \Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[37]~27_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[26]~input_o\))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\Shifter|InputExtended[38]~26_combout\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[37]~27_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[26]~input_o\)))) # (\B[0]~input_o\ & 
-- (\Shifter|Equal2~0_combout\)) ) ) ) # ( \Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[37]~27_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[26]~input_o\)))) # 
-- (\B[0]~input_o\ & (!\Shifter|Equal2~0_combout\)) ) ) ) # ( !\Shifter|InputExtended[38]~26_combout\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[37]~27_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\A[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[37]~27_combout\,
	datae => \Shifter|ALT_INV_InputExtended[38]~26_combout\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shifter|stage[1][37]~70_combout\);

-- Location: MLABCELL_X42_Y33_N26
\Shifter|stage[3][33]~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][33]~72_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][35]~69_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][39]~71_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][37]~70_combout\ & ( (\B[2]~input_o\) # (\Shifter|stage[1][33]~68_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][35]~69_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][39]~71_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (\Shifter|stage[1][33]~68_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][33]~68_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][39]~71_combout\,
	datad => \Shifter|ALT_INV_stage[1][35]~69_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][37]~70_combout\,
	combout => \Shifter|stage[3][33]~72_combout\);

-- Location: MLABCELL_X39_Y31_N38
\Shifter|stage[1][53]~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][53]~80_combout\ = ( \Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[54]~10_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[9]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[53]~11_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[54]~10_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[9]~input_o\))) ) ) ) # ( \Shifter|InputExtended[53]~11_combout\ & ( 
-- !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\) # (\A[10]~input_o\) ) ) ) # ( !\Shifter|InputExtended[53]~11_combout\ & ( !\B[0]~input_o\ & ( (\A[10]~input_o\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[54]~10_combout\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[53]~11_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][53]~80_combout\);

-- Location: LABCELL_X45_Y33_N24
\Shifter|stage[1][51]~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][51]~79_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[52]~12_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[11]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( 
-- (!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[52]~12_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[11]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (\Shifter|InputExtended[51]~13_combout\) # (\Shifter|Equal2~0_combout\) ) ) ) # 
-- ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|InputExtended[51]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_InputExtended[51]~13_combout\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[52]~12_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][51]~79_combout\);

-- Location: MLABCELL_X39_Y34_N28
\Shifter|stage[1][55]~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][55]~81_combout\ = ( \Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\) # (\A[7]~input_o\) ) ) ) # ( !\Shifter|InputExtended[56]~8_combout\ & ( \B[0]~input_o\ & ( (\A[7]~input_o\ & 
-- \Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[56]~8_combout\ & ( !\B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[55]~9_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[55]~9_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[56]~8_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][55]~81_combout\);

-- Location: MLABCELL_X44_Y34_N18
\Shifter|stage[1][49]~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][49]~78_combout\ = ( \Shifter|InputExtended[49]~15_combout\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\) # ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\)))) ) ) ) # ( 
-- !\Shifter|InputExtended[49]~15_combout\ & ( \Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))))) ) 
-- ) ) # ( \Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[13]~input_o\))))) ) ) ) # ( !\Shifter|InputExtended[49]~15_combout\ & ( !\Shifter|InputExtended[50]~14_combout\ & ( (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[49]~15_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[50]~14_combout\,
	combout => \Shifter|stage[1][49]~78_combout\);

-- Location: LABCELL_X40_Y32_N6
\Shifter|stage[3][49]~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][49]~82_combout\ = ( \Shifter|stage[1][55]~81_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\Shifter|stage[1][53]~80_combout\)))) # (\B[1]~input_o\ & (((\Shifter|stage[1][51]~79_combout\)) # 
-- (\B[2]~input_o\))) ) ) ) # ( !\Shifter|stage[1][55]~81_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\Shifter|stage[1][53]~80_combout\)))) # (\B[1]~input_o\ & (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][51]~79_combout\)))) ) ) ) # ( \Shifter|stage[1][55]~81_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & (\Shifter|stage[1][53]~80_combout\))) # (\B[1]~input_o\ & 
-- (((\Shifter|stage[1][51]~79_combout\)) # (\B[2]~input_o\))) ) ) ) # ( !\Shifter|stage[1][55]~81_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & (\Shifter|stage[1][53]~80_combout\))) # (\B[1]~input_o\ & 
-- (!\B[2]~input_o\ & ((\Shifter|stage[1][51]~79_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][53]~80_combout\,
	datad => \Shifter|ALT_INV_stage[1][51]~79_combout\,
	datae => \Shifter|ALT_INV_stage[1][55]~81_combout\,
	dataf => \Shifter|ALT_INV_stage[1][49]~78_combout\,
	combout => \Shifter|stage[3][49]~82_combout\);

-- Location: MLABCELL_X44_Y31_N14
\Shifter|stage[1][41]~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][41]~73_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|InputExtended[42]~22_combout\) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|InputExtended[41]~23_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\Shifter|InputExtended[42]~22_combout\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\A[21]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[41]~23_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[42]~22_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[41]~23_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shifter|stage[1][41]~73_combout\);

-- Location: MLABCELL_X44_Y34_N32
\Shifter|stage[1][47]~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][47]~76_combout\ = ( \A[15]~input_o\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # (\Shifter|InputExtended[48]~16_combout\)))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # 
-- (\A[16]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\) # (\Shifter|InputExtended[48]~16_combout\)))) # (\Shifter|Equal2~0_combout\ & (\A[16]~input_o\ & 
-- (!\B[0]~input_o\))) ) ) ) # ( \A[15]~input_o\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\ & \Shifter|InputExtended[48]~16_combout\)))) # (\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)) # 
-- (\A[16]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\Shifter|InputExtended[47]~17_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\ & \Shifter|InputExtended[48]~16_combout\)))) # (\Shifter|Equal2~0_combout\ & (\A[16]~input_o\ & 
-- (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[48]~16_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[47]~17_combout\,
	combout => \Shifter|stage[1][47]~76_combout\);

-- Location: MLABCELL_X44_Y32_N18
\Shifter|stage[1][45]~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][45]~75_combout\ = ( \Shifter|InputExtended[46]~18_combout\ & ( \A[17]~input_o\ & ( ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[18]~input_o\))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\Shifter|InputExtended[46]~18_combout\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\Shifter|Equal2~0_combout\)))) ) ) ) # ( \Shifter|InputExtended[46]~18_combout\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[18]~input_o\)))) 
-- # (\B[0]~input_o\ & (((!\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\Shifter|InputExtended[46]~18_combout\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[45]~19_combout\))) # (\Shifter|Equal2~0_combout\ 
-- & (\A[18]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \Shifter|ALT_INV_InputExtended[45]~19_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_InputExtended[46]~18_combout\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shifter|stage[1][45]~75_combout\);

-- Location: MLABCELL_X44_Y32_N14
\Shifter|stage[1][43]~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][43]~74_combout\ = ( \A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[20]~input_o\))) # (\B[0]~input_o\) ) ) ) # 
-- ( !\A[19]~input_o\ & ( \Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\))) # (\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\Shifter|Equal2~0_combout\)))) ) ) ) # ( \A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\A[20]~input_o\)))) # (\B[0]~input_o\ & (((\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\A[19]~input_o\ & ( !\Shifter|InputExtended[44]~20_combout\ & ( (!\B[0]~input_o\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[43]~21_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shifter|ALT_INV_InputExtended[43]~21_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_A[19]~input_o\,
	dataf => \Shifter|ALT_INV_InputExtended[44]~20_combout\,
	combout => \Shifter|stage[1][43]~74_combout\);

-- Location: LABCELL_X40_Y32_N20
\Shifter|stage[3][41]~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][41]~77_combout\ = ( \B[1]~input_o\ & ( \B[2]~input_o\ & ( \Shifter|stage[1][47]~76_combout\ ) ) ) # ( !\B[1]~input_o\ & ( \B[2]~input_o\ & ( \Shifter|stage[1][45]~75_combout\ ) ) ) # ( \B[1]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shifter|stage[1][43]~74_combout\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ & ( \Shifter|stage[1][41]~73_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][41]~73_combout\,
	datab => \Shifter|ALT_INV_stage[1][47]~76_combout\,
	datac => \Shifter|ALT_INV_stage[1][45]~75_combout\,
	datad => \Shifter|ALT_INV_stage[1][43]~74_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[3][41]~77_combout\);

-- Location: MLABCELL_X39_Y30_N24
\Shifter|stage[1][63]~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][63]~86_combout\ = ( \B[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \Shifter|InputExtended[63]~1_combout\)) ) ) # ( !\B[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- ((\Shifter|InputExtended[63]~1_combout\))) # (\ShiftFN[0]~input_o\ & (\A[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\Shifter|InputExtended[63]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011011111000000101101111100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][63]~86_combout\);

-- Location: MLABCELL_X39_Y34_N14
\Shifter|stage[1][57]~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][57]~83_combout\ = ( \Shifter|InputExtended[57]~7_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[58]~6_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[5]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[57]~7_combout\ & ( \B[0]~input_o\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[58]~6_combout\)) # (\Shifter|Equal2~0_combout\ & ((\A[5]~input_o\))) ) ) ) # ( \Shifter|InputExtended[57]~7_combout\ & ( !\B[0]~input_o\ & 
-- ( (!\Shifter|Equal2~0_combout\) # (\A[6]~input_o\) ) ) ) # ( !\Shifter|InputExtended[57]~7_combout\ & ( !\B[0]~input_o\ & ( (\Shifter|Equal2~0_combout\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[58]~6_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[57]~7_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shifter|stage[1][57]~83_combout\);

-- Location: MLABCELL_X39_Y34_N38
\Shifter|stage[1][59]~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][59]~84_combout\ = ( \Shifter|InputExtended[60]~4_combout\ & ( \Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\) # ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\))) ) ) ) # ( 
-- !\Shifter|InputExtended[60]~4_combout\ & ( \Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) ) ) 
-- ) # ( \Shifter|InputExtended[60]~4_combout\ & ( !\Shifter|InputExtended[59]~5_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\B[0]~input_o\)))) # (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) 
-- ) ) ) # ( !\Shifter|InputExtended[60]~4_combout\ & ( !\Shifter|InputExtended[59]~5_combout\ & ( (\Shifter|Equal2~0_combout\ & ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \Shifter|ALT_INV_InputExtended[60]~4_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[59]~5_combout\,
	combout => \Shifter|stage[1][59]~84_combout\);

-- Location: MLABCELL_X39_Y30_N38
\Shifter|stage[1][61]~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][61]~85_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\))) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( 
-- \Shifter|InputExtended[62]~2_combout\ & ( (\B[0]~input_o\) # (\Shifter|InputExtended[61]~3_combout\) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[1]~input_o\))) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\Shifter|InputExtended[62]~2_combout\ & ( (\Shifter|InputExtended[61]~3_combout\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_InputExtended[61]~3_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_InputExtended[62]~2_combout\,
	combout => \Shifter|stage[1][61]~85_combout\);

-- Location: LABCELL_X40_Y32_N10
\Shifter|stage[3][57]~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][57]~87_combout\ = ( \Shifter|stage[1][59]~84_combout\ & ( \Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\Shifter|stage[1][57]~83_combout\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # 
-- (\Shifter|stage[1][63]~86_combout\))) ) ) ) # ( !\Shifter|stage[1][59]~84_combout\ & ( \Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][57]~83_combout\ & !\B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # 
-- (\Shifter|stage[1][63]~86_combout\))) ) ) ) # ( \Shifter|stage[1][59]~84_combout\ & ( !\Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\Shifter|stage[1][57]~83_combout\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][63]~86_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][59]~84_combout\ & ( !\Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][57]~83_combout\ & !\B[1]~input_o\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][63]~86_combout\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][63]~86_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][57]~83_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][59]~84_combout\,
	dataf => \Shifter|ALT_INV_stage[1][61]~85_combout\,
	combout => \Shifter|stage[3][57]~87_combout\);

-- Location: MLABCELL_X39_Y32_N6
\Shifter|stage[5][33]~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][33]~88_combout\ = ( \Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][57]~87_combout\ & ( ((!\B[4]~input_o\ & (\Shifter|stage[3][33]~72_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][49]~82_combout\)))) # (\B[3]~input_o\) ) ) ) 
-- # ( !\Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][57]~87_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][33]~72_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # (\Shifter|stage[3][49]~82_combout\)))) ) ) ) # ( 
-- \Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][57]~87_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][33]~72_combout\))) # (\B[4]~input_o\ & (((\Shifter|stage[3][49]~82_combout\ & !\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][57]~87_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & (\Shifter|stage[3][33]~72_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][49]~82_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][33]~72_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][49]~82_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][41]~77_combout\,
	dataf => \Shifter|ALT_INV_stage[3][57]~87_combout\,
	combout => \Shifter|stage[5][33]~88_combout\);

-- Location: MLABCELL_X39_Y32_N28
\Y_internal~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~6_combout\ = ( \Shifter|stage[5][33]~88_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][1]~67_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][62]~46_combout\)))) # 
-- (\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][33]~88_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][1]~67_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][62]~46_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][62]~46_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][1]~67_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][33]~88_combout\,
	combout => \Y_internal~6_combout\);

-- Location: LABCELL_X43_Y32_N22
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y32_N12
\Y_internal~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~2_combout\ = ( !\FuncClass[1]~input_o\ & ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & \FuncClass[0]~input_o\) ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\LogicFN[1]~input_o\ & ( (\LogicFN[0]~input_o\ & \FuncClass[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000000000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~2_combout\);

-- Location: LABCELL_X47_Y33_N34
\Y_internal~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~3_combout\);

-- Location: LABCELL_X43_Y32_N20
\Y_internal~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~4_combout\ = ( \Y_internal~3_combout\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & \Y_internal~2_combout\)) # (\B[1]~input_o\ & (!\A[1]~input_o\ $ (!\Y_internal~2_combout\))) ) ) # ( !\Y_internal~3_combout\ & ( (\Y_internal~2_combout\ & 
-- ((\A[1]~input_o\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100010110000101100001011000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_Y_internal~2_combout\,
	dataf => \ALT_INV_Y_internal~3_combout\,
	combout => \Y_internal~4_combout\);

-- Location: LABCELL_X43_Y32_N24
\Y_internal~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~7_combout\ = ( \Y_internal~4_combout\ & ( (!\Y_internal~5_combout\) # ((!\Y_internal~0_combout\ & (\Y_internal~6_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~4_combout\ & ( (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\ & (\Y_internal~6_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~6_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~4_combout\,
	combout => \Y_internal~7_combout\);

-- Location: LABCELL_X43_Y32_N10
\Y_internal~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~8_combout\ = ( \Y_internal~2_combout\ & ( (!\B[2]~input_o\ & (\A[2]~input_o\)) # (\B[2]~input_o\ & ((!\A[2]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\B[2]~input_o\ & (\A[2]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110110011101100111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~8_combout\);

-- Location: LABCELL_X43_Y32_N4
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ = !\AddnSub~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LABCELL_X43_Y31_N14
\Shifter|stage[3][34]~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][34]~96_combout\ = ( \Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\))) # (\B[1]~input_o\) ) ) ) 
-- # ( !\Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)))) # (\B[1]~input_o\ & 
-- (((!\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)))) # 
-- (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][38]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][38]~27_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][34]~25_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][40]~29_combout\,
	dataf => \Shifter|ALT_INV_stage[1][36]~26_combout\,
	combout => \Shifter|stage[3][34]~96_combout\);

-- Location: LABCELL_X43_Y31_N38
\Shifter|stage[3][42]~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][42]~97_combout\ = ( \Shifter|stage[1][48]~34_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][46]~32_combout\))) # (\B[1]~input_o\) ) ) ) 
-- # ( !\Shifter|stage[1][48]~34_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][46]~32_combout\)))) # (\B[1]~input_o\ & 
-- (((!\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][48]~34_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][46]~32_combout\)))) # 
-- (\B[1]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][48]~34_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][46]~32_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][46]~32_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][42]~30_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][48]~34_combout\,
	dataf => \Shifter|ALT_INV_stage[1][44]~31_combout\,
	combout => \Shifter|stage[3][42]~97_combout\);

-- Location: MLABCELL_X39_Y31_N20
\Shifter|stage[3][50]~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][50]~98_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][52]~36_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][54]~37_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][52]~36_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][56]~39_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][50]~35_combout\ & ( (\B[2]~input_o\ & \Shifter|stage[1][54]~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][54]~37_combout\,
	datac => \Shifter|ALT_INV_stage[1][52]~36_combout\,
	datad => \Shifter|ALT_INV_stage[1][56]~39_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][50]~35_combout\,
	combout => \Shifter|stage[3][50]~98_combout\);

-- Location: MLABCELL_X39_Y31_N24
\Shifter|stage[3][58]~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][58]~99_combout\ = ( \Shifter|stage[1][62]~42_combout\ & ( \Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\Shifter|stage[1][60]~41_combout\))) # (\B[2]~input_o\ & (\Shifter|sign_bit~0_combout\))) ) ) ) # ( 
-- !\Shifter|stage[1][62]~42_combout\ & ( \Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][60]~41_combout\))) # (\B[2]~input_o\ & (\Shifter|sign_bit~0_combout\)))) ) ) 
-- ) # ( \Shifter|stage[1][62]~42_combout\ & ( !\Shifter|stage[1][58]~40_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][60]~41_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|sign_bit~0_combout\)))) ) ) ) # ( !\Shifter|stage[1][62]~42_combout\ & ( !\Shifter|stage[1][58]~40_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][60]~41_combout\))) # (\B[2]~input_o\ & (\Shifter|sign_bit~0_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][60]~41_combout\,
	datae => \Shifter|ALT_INV_stage[1][62]~42_combout\,
	dataf => \Shifter|ALT_INV_stage[1][58]~40_combout\,
	combout => \Shifter|stage[3][58]~99_combout\);

-- Location: LABCELL_X40_Y31_N6
\Shifter|stage[5][34]~100\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][34]~100_combout\ = ( \B[3]~input_o\ & ( \Shifter|stage[3][58]~99_combout\ & ( (\B[4]~input_o\) # (\Shifter|stage[3][42]~97_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shifter|stage[3][58]~99_combout\ & ( (!\B[4]~input_o\ & 
-- (\Shifter|stage[3][34]~96_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][50]~98_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shifter|stage[3][58]~99_combout\ & ( (\Shifter|stage[3][42]~97_combout\ & !\B[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shifter|stage[3][58]~99_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][34]~96_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][50]~98_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][34]~96_combout\,
	datab => \Shifter|ALT_INV_stage[3][42]~97_combout\,
	datac => \Shifter|ALT_INV_stage[3][50]~98_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][58]~99_combout\,
	combout => \Shifter|stage[5][34]~100_combout\);

-- Location: MLABCELL_X39_Y30_N8
\Shifter|stage[3][61]~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][61]~89_combout\ = ( \Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][63]~86_combout\))) # (\B[2]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[1][61]~85_combout\ 
-- & ( (!\B[2]~input_o\ & (\Shifter|stage[1][63]~86_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011111000100111101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][63]~86_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[1][61]~85_combout\,
	combout => \Shifter|stage[3][61]~89_combout\);

-- Location: LABCELL_X43_Y32_N28
\Shifter|stage[5][61]~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][61]~90_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][61]~89_combout\ & ( \Shifter|sign_bit~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][61]~89_combout\ & ( (!\B[3]~input_o\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( 
-- \B[4]~input_o\ & ( !\Shifter|stage[3][61]~89_combout\ & ( \Shifter|sign_bit~0_combout\ ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][61]~89_combout\ & ( (\B[3]~input_o\ & \Shifter|sign_bit~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111110101010111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][61]~89_combout\,
	combout => \Shifter|stage[5][61]~90_combout\);

-- Location: LABCELL_X40_Y30_N16
\Shifter|stage[5][2]~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][2]~91_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][8]~8_combout\ & ( (\Shifter|stage[1][4]~5_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][8]~8_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][2]~4_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][6]~6_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][8]~8_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][4]~5_combout\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][8]~8_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][2]~4_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][6]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][6]~6_combout\,
	datab => \Shifter|ALT_INV_stage[1][2]~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][4]~5_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][8]~8_combout\,
	combout => \Shifter|stage[5][2]~91_combout\);

-- Location: LABCELL_X40_Y29_N8
\Shifter|stage[3][18]~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][18]~93_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][20]~15_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][24]~18_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][22]~16_combout\ & ( (\Shifter|stage[1][18]~14_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][20]~15_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][24]~18_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][18]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][24]~18_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][20]~15_combout\,
	datad => \Shifter|ALT_INV_stage[1][18]~14_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][22]~16_combout\,
	combout => \Shifter|stage[3][18]~93_combout\);

-- Location: LABCELL_X40_Y30_N22
\Shifter|stage[3][10]~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][10]~92_combout\ = ( \Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\Shifter|stage[1][14]~11_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][16]~13_combout\))) ) ) ) 
-- # ( !\Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][14]~11_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][16]~13_combout\)))) ) ) ) # ( \Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][14]~11_combout\))) # 
-- (\B[1]~input_o\ & (\Shifter|stage[1][16]~13_combout\)))) ) ) ) # ( !\Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][14]~11_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][16]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][16]~13_combout\,
	datac => \Shifter|ALT_INV_stage[1][14]~11_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][12]~10_combout\,
	dataf => \Shifter|ALT_INV_stage[1][10]~9_combout\,
	combout => \Shifter|stage[3][10]~92_combout\);

-- Location: LABCELL_X43_Y31_N30
\Shifter|stage[3][26]~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][26]~94_combout\ = ( \Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][26]~19_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\Shifter|stage[1][30]~21_combout\))) # (\B[1]~input_o\ & (((\B[2]~input_o\) # 
-- (\Shifter|stage[1][28]~20_combout\)))) ) ) ) # ( !\Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][26]~19_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)) # (\Shifter|stage[1][30]~21_combout\))) # (\B[1]~input_o\ & 
-- (((\Shifter|stage[1][28]~20_combout\ & !\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][26]~19_combout\ & ( (!\B[1]~input_o\ & (\Shifter|stage[1][30]~21_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[2]~input_o\) # (\Shifter|stage[1][28]~20_combout\)))) ) ) ) # ( !\Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][26]~19_combout\ & ( (!\B[1]~input_o\ & (\Shifter|stage[1][30]~21_combout\ & ((\B[2]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\Shifter|stage[1][28]~20_combout\ & !\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][30]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][28]~20_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][32]~24_combout\,
	dataf => \Shifter|ALT_INV_stage[1][26]~19_combout\,
	combout => \Shifter|stage[3][26]~94_combout\);

-- Location: LABCELL_X40_Y31_N2
\Shifter|stage[5][2]~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][2]~95_combout\ = ( \Shifter|stage[3][10]~92_combout\ & ( \Shifter|stage[3][26]~94_combout\ & ( ((!\B[4]~input_o\ & (\Shifter|stage[5][2]~91_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\)))) # (\B[3]~input_o\) ) ) ) # 
-- ( !\Shifter|stage[3][10]~92_combout\ & ( \Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & (\Shifter|stage[5][2]~91_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))))) # (\B[3]~input_o\ & 
-- (((\B[4]~input_o\)))) ) ) ) # ( \Shifter|stage[3][10]~92_combout\ & ( !\Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & (\Shifter|stage[5][2]~91_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))))) # 
-- (\B[3]~input_o\ & (((!\B[4]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][10]~92_combout\ & ( !\Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & (\Shifter|stage[5][2]~91_combout\)) # (\B[4]~input_o\ & 
-- ((\Shifter|stage[3][18]~93_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][2]~91_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][18]~93_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][10]~92_combout\,
	dataf => \Shifter|ALT_INV_stage[3][26]~94_combout\,
	combout => \Shifter|stage[5][2]~95_combout\);

-- Location: MLABCELL_X44_Y29_N22
\Y_internal~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~9_combout\ = ( \ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][34]~100_combout\ & !\Shifter|Equal2~0_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][2]~95_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][61]~90_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][34]~100_combout\,
	datab => \Shifter|ALT_INV_stage[5][61]~90_combout\,
	datac => \Shifter|ALT_INV_stage[5][2]~95_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~9_combout\);

-- Location: LABCELL_X43_Y32_N26
\Y_internal~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~10_combout\ = ( \Y_internal~9_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~8_combout\)))) # (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\) # ((\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~9_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~8_combout\)))) # (\Y_internal~5_combout\ & (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~8_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~9_combout\,
	combout => \Y_internal~10_combout\);

-- Location: MLABCELL_X39_Y31_N32
\Shifter|stage[3][60]~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][60]~101_combout\ = ( \Shifter|stage[1][60]~41_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\) # ((\Shifter|stage[1][62]~42_combout\)))) # (\B[2]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[1][60]~41_combout\ 
-- & ( (!\B[2]~input_o\ & (\B[1]~input_o\ & ((\Shifter|stage[1][62]~42_combout\)))) # (\B[2]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001110100011111100111010001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][62]~42_combout\,
	dataf => \Shifter|ALT_INV_stage[1][60]~41_combout\,
	combout => \Shifter|stage[3][60]~101_combout\);

-- Location: MLABCELL_X42_Y31_N30
\Shifter|stage[5][60]~102\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][60]~102_combout\ = ( \Shifter|sign_bit~0_combout\ & ( ((\Shifter|stage[3][60]~101_combout\) # (\B[3]~input_o\)) # (\B[4]~input_o\) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & 
-- \Shifter|stage[3][60]~101_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][60]~101_combout\,
	dataf => \Shifter|ALT_INV_sign_bit~0_combout\,
	combout => \Shifter|stage[5][60]~102_combout\);

-- Location: LABCELL_X40_Y32_N2
\Shifter|stage[3][59]~111\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][59]~111_combout\ = ( \Shifter|stage[1][59]~84_combout\ & ( \Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\Shifter|stage[1][63]~86_combout\)) # (\B[1]~input_o\ & ((\Shifter|sign_bit~0_combout\)))) ) ) ) # 
-- ( !\Shifter|stage[1][59]~84_combout\ & ( \Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][63]~86_combout\)) # (\B[1]~input_o\ & ((\Shifter|sign_bit~0_combout\))))) ) 
-- ) ) # ( \Shifter|stage[1][59]~84_combout\ & ( !\Shifter|stage[1][61]~85_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][63]~86_combout\)) # (\B[1]~input_o\ & 
-- ((\Shifter|sign_bit~0_combout\))))) ) ) ) # ( !\Shifter|stage[1][59]~84_combout\ & ( !\Shifter|stage[1][61]~85_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][63]~86_combout\)) # (\B[1]~input_o\ & ((\Shifter|sign_bit~0_combout\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][63]~86_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][59]~84_combout\,
	dataf => \Shifter|ALT_INV_stage[1][61]~85_combout\,
	combout => \Shifter|stage[3][59]~111_combout\);

-- Location: LABCELL_X40_Y32_N16
\Shifter|stage[3][51]~110\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][51]~110_combout\ = ( \Shifter|stage[1][55]~81_combout\ & ( \Shifter|stage[1][57]~83_combout\ & ( ((!\B[1]~input_o\ & (\Shifter|stage[1][51]~79_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][53]~80_combout\)))) # (\B[2]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][55]~81_combout\ & ( \Shifter|stage[1][57]~83_combout\ & ( (!\B[1]~input_o\ & (!\B[2]~input_o\ & (\Shifter|stage[1][51]~79_combout\))) # (\B[1]~input_o\ & (((\Shifter|stage[1][53]~80_combout\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- \Shifter|stage[1][55]~81_combout\ & ( !\Shifter|stage[1][57]~83_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][51]~79_combout\)) # (\B[2]~input_o\))) # (\B[1]~input_o\ & (!\B[2]~input_o\ & ((\Shifter|stage[1][53]~80_combout\)))) ) ) ) # ( 
-- !\Shifter|stage[1][55]~81_combout\ & ( !\Shifter|stage[1][57]~83_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][51]~79_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][53]~80_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][51]~79_combout\,
	datad => \Shifter|ALT_INV_stage[1][53]~80_combout\,
	datae => \Shifter|ALT_INV_stage[1][55]~81_combout\,
	dataf => \Shifter|ALT_INV_stage[1][57]~83_combout\,
	combout => \Shifter|stage[3][51]~110_combout\);

-- Location: MLABCELL_X42_Y33_N34
\Shifter|stage[3][35]~108\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][35]~108_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][41]~73_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][35]~69_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][39]~71_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (\Shifter|stage[1][41]~73_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][35]~69_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][39]~71_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][41]~73_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][39]~71_combout\,
	datad => \Shifter|ALT_INV_stage[1][35]~69_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][37]~70_combout\,
	combout => \Shifter|stage[3][35]~108_combout\);

-- Location: LABCELL_X40_Y32_N34
\Shifter|stage[3][43]~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][43]~109_combout\ = ( \Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( ((!\B[1]~input_o\ & ((\Shifter|stage[1][43]~74_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][45]~75_combout\))) # (\B[2]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][43]~74_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][45]~75_combout\)))) # (\B[2]~input_o\ & 
-- (((\B[1]~input_o\)))) ) ) ) # ( \Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][43]~74_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][45]~75_combout\)))) # 
-- (\B[2]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][43]~74_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][45]~75_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][45]~75_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][43]~74_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][47]~76_combout\,
	dataf => \Shifter|ALT_INV_stage[1][49]~78_combout\,
	combout => \Shifter|stage[3][43]~109_combout\);

-- Location: LABCELL_X40_Y33_N24
\Shifter|stage[5][35]~112\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][35]~112_combout\ = ( \Shifter|stage[3][35]~108_combout\ & ( \Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & ((\Shifter|stage[3][51]~110_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][59]~111_combout\))) 
-- ) ) ) # ( !\Shifter|stage[3][35]~108_combout\ & ( \Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][51]~110_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][59]~111_combout\)))) ) ) ) # ( \Shifter|stage[3][35]~108_combout\ & ( !\Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][51]~110_combout\))) # 
-- (\B[3]~input_o\ & (\Shifter|stage[3][59]~111_combout\)))) ) ) ) # ( !\Shifter|stage[3][35]~108_combout\ & ( !\Shifter|stage[3][43]~109_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][51]~110_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][59]~111_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][59]~111_combout\,
	datac => \Shifter|ALT_INV_stage[3][51]~110_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][35]~108_combout\,
	dataf => \Shifter|ALT_INV_stage[3][43]~109_combout\,
	combout => \Shifter|stage[5][35]~112_combout\);

-- Location: MLABCELL_X39_Y33_N32
\Shifter|stage[5][3]~103\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][3]~103_combout\ = ( \Shifter|stage[1][7]~50_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\Shifter|stage[1][9]~52_combout\) ) ) ) # ( !\Shifter|stage[1][7]~50_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\ & 
-- \Shifter|stage[1][9]~52_combout\) ) ) ) # ( \Shifter|stage[1][7]~50_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\Shifter|stage[1][3]~48_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][5]~49_combout\))) ) ) ) # ( 
-- !\Shifter|stage[1][7]~50_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\Shifter|stage[1][3]~48_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][5]~49_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][3]~48_combout\,
	datab => \Shifter|ALT_INV_stage[1][5]~49_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][9]~52_combout\,
	datae => \Shifter|ALT_INV_stage[1][7]~50_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[5][3]~103_combout\);

-- Location: MLABCELL_X39_Y33_N38
\Shifter|stage[3][11]~104\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][11]~104_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][13]~54_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][17]~57_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][15]~55_combout\ & ( (\B[2]~input_o\) # (\Shifter|stage[1][11]~53_combout\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][13]~54_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][17]~57_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (\Shifter|stage[1][11]~53_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][17]~57_combout\,
	datab => \Shifter|ALT_INV_stage[1][11]~53_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][13]~54_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][15]~55_combout\,
	combout => \Shifter|stage[3][11]~104_combout\);

-- Location: MLABCELL_X39_Y33_N20
\Shifter|stage[3][19]~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][19]~105_combout\ = ( \Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][23]~60_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][25]~62_combout\)))) ) ) 
-- ) # ( !\Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][23]~60_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][25]~62_combout\)))) ) ) ) # ( 
-- \Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][23]~60_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][21]~59_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \Shifter|stage[1][25]~62_combout\)))) ) ) ) # ( 
-- !\Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][23]~60_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][25]~62_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][21]~59_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][25]~62_combout\,
	datae => \Shifter|ALT_INV_stage[1][19]~58_combout\,
	dataf => \Shifter|ALT_INV_stage[1][23]~60_combout\,
	combout => \Shifter|stage[3][19]~105_combout\);

-- Location: MLABCELL_X42_Y33_N28
\Shifter|stage[3][27]~106\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][27]~106_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][29]~64_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][33]~68_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][29]~64_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][27]~63_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][31]~65_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][29]~64_combout\ & ( (\Shifter|stage[1][33]~68_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][29]~64_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][31]~65_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][33]~68_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][31]~65_combout\,
	datad => \Shifter|ALT_INV_stage[1][27]~63_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][29]~64_combout\,
	combout => \Shifter|stage[3][27]~106_combout\);

-- Location: LABCELL_X40_Y33_N22
\Shifter|stage[5][3]~107\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][3]~107_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][27]~106_combout\ & ( (\Shifter|stage[3][19]~105_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shifter|stage[5][3]~103_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][11]~104_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & \Shifter|stage[3][19]~105_combout\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[5][3]~103_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][11]~104_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][3]~103_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][11]~104_combout\,
	datad => \Shifter|ALT_INV_stage[3][19]~105_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][27]~106_combout\,
	combout => \Shifter|stage[5][3]~107_combout\);

-- Location: MLABCELL_X42_Y32_N28
\Y_internal~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~12_combout\ = ( \Shifter|stage[5][3]~107_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)) # (\Shifter|stage[5][60]~102_combout\))) # (\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][35]~112_combout\ & 
-- !\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][3]~107_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][60]~102_combout\ & ((\Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][35]~112_combout\ & 
-- !\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010010001010101111001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][60]~102_combout\,
	datac => \Shifter|ALT_INV_stage[5][35]~112_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][3]~107_combout\,
	combout => \Y_internal~12_combout\);

-- Location: LABCELL_X43_Y32_N12
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ = !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LABCELL_X43_Y32_N14
\Y_internal~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~11_combout\ = ( \Y_internal~2_combout\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\)) # (\B[3]~input_o\ & ((!\A[3]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\B[3]~input_o\ & (\A[3]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110110011101100111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~11_combout\);

-- Location: LABCELL_X43_Y32_N0
\Y_internal~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~13_combout\ = ( \Y_internal~11_combout\ & ( (!\Y_internal~5_combout\) # ((!\Y_internal~0_combout\ & (\Y_internal~12_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~11_combout\ & ( (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\ & (\Y_internal~12_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011111110100111101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~12_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~5_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~11_combout\,
	combout => \Y_internal~13_combout\);

-- Location: MLABCELL_X39_Y31_N28
\Shifter|stage[3][52]~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][52]~121_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][58]~40_combout\ & ( (\Shifter|stage[1][54]~37_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][58]~40_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shifter|stage[1][52]~36_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][58]~40_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][54]~37_combout\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][58]~40_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][52]~36_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][56]~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][54]~37_combout\,
	datac => \Shifter|ALT_INV_stage[1][52]~36_combout\,
	datad => \Shifter|ALT_INV_stage[1][56]~39_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][58]~40_combout\,
	combout => \Shifter|stage[3][52]~121_combout\);

-- Location: LABCELL_X43_Y31_N10
\Shifter|stage[3][44]~120\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][44]~120_combout\ = ( \Shifter|stage[1][50]~35_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\Shifter|stage[1][48]~34_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # 
-- (\Shifter|stage[1][46]~32_combout\))) ) ) ) # ( !\Shifter|stage[1][50]~35_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\Shifter|stage[1][48]~34_combout\)))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][46]~32_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][50]~35_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][48]~34_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[2]~input_o\)) # (\Shifter|stage[1][46]~32_combout\))) ) ) ) # ( !\Shifter|stage[1][50]~35_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][48]~34_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][46]~32_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][46]~32_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][48]~34_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][50]~35_combout\,
	dataf => \Shifter|ALT_INV_stage[1][44]~31_combout\,
	combout => \Shifter|stage[3][44]~120_combout\);

-- Location: LABCELL_X43_Y31_N24
\Shifter|stage[3][36]~119\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][36]~119_combout\ = ( \Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\)))) ) ) 
-- ) # ( !\Shifter|stage[1][40]~29_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][42]~30_combout\))))) ) ) ) # ( \Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & (((\B[2]~input_o\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)) # 
-- (\B[2]~input_o\ & ((\Shifter|stage[1][42]~30_combout\))))) ) ) ) # ( !\Shifter|stage[1][40]~29_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][38]~27_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][42]~30_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][38]~27_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][42]~30_combout\,
	datae => \Shifter|ALT_INV_stage[1][40]~29_combout\,
	dataf => \Shifter|ALT_INV_stage[1][36]~26_combout\,
	combout => \Shifter|stage[3][36]~119_combout\);

-- Location: LABCELL_X45_Y31_N10
\Shifter|stage[5][36]~122\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][36]~122_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][60]~101_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][52]~121_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][60]~101_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shifter|stage[3][36]~119_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][60]~101_combout\ & ( (\Shifter|stage[3][52]~121_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][60]~101_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][36]~119_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][52]~121_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][44]~120_combout\,
	datad => \Shifter|ALT_INV_stage[3][36]~119_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][60]~101_combout\,
	combout => \Shifter|stage[5][36]~122_combout\);

-- Location: LABCELL_X40_Y30_N26
\Shifter|stage[5][4]~114\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][4]~114_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][10]~9_combout\ & ( (\Shifter|stage[1][6]~6_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shifter|stage[1][4]~5_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][8]~8_combout\))) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][6]~6_combout\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][4]~5_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][8]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][4]~5_combout\,
	datac => \Shifter|ALT_INV_stage[1][8]~8_combout\,
	datad => \Shifter|ALT_INV_stage[1][6]~6_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][10]~9_combout\,
	combout => \Shifter|stage[5][4]~114_combout\);

-- Location: LABCELL_X40_Y29_N36
\Shifter|stage[3][20]~116\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][20]~116_combout\ = ( \Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][20]~15_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][26]~19_combout\)))) ) ) ) # ( !\Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][20]~15_combout\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & 
-- \Shifter|stage[1][26]~19_combout\)))) ) ) ) # ( \Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][20]~15_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][26]~19_combout\)))) ) ) ) # ( !\Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][20]~15_combout\ & (!\B[1]~input_o\))) # (\B[2]~input_o\ & (((\B[1]~input_o\ & 
-- \Shifter|stage[1][26]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][20]~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][26]~19_combout\,
	datae => \Shifter|ALT_INV_stage[1][24]~18_combout\,
	dataf => \Shifter|ALT_INV_stage[1][22]~16_combout\,
	combout => \Shifter|stage[3][20]~116_combout\);

-- Location: LABCELL_X40_Y29_N12
\Shifter|stage[3][12]~115\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][12]~115_combout\ = ( \Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][18]~14_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][14]~11_combout\))) # (\B[2]~input_o\ & (((\Shifter|stage[1][16]~13_combout\) # 
-- (\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][12]~10_combout\ & ( \Shifter|stage[1][18]~14_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][14]~11_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((\Shifter|stage[1][16]~13_combout\) # 
-- (\B[1]~input_o\)))) ) ) ) # ( \Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][18]~14_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][14]~11_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & 
-- \Shifter|stage[1][16]~13_combout\)))) ) ) ) # ( !\Shifter|stage[1][12]~10_combout\ & ( !\Shifter|stage[1][18]~14_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][14]~11_combout\ & (\B[1]~input_o\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\ & 
-- \Shifter|stage[1][16]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][14]~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][16]~13_combout\,
	datae => \Shifter|ALT_INV_stage[1][12]~10_combout\,
	dataf => \Shifter|ALT_INV_stage[1][18]~14_combout\,
	combout => \Shifter|stage[3][12]~115_combout\);

-- Location: LABCELL_X43_Y31_N20
\Shifter|stage[3][28]~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][28]~117_combout\ = ( \Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][34]~25_combout\ & ( ((!\B[1]~input_o\ & ((\Shifter|stage[1][28]~20_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][30]~21_combout\))) # (\B[2]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][34]~25_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\ & \Shifter|stage[1][28]~20_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # (\Shifter|stage[1][30]~21_combout\))) ) ) ) # ( 
-- \Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][34]~25_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][28]~20_combout\) # (\B[2]~input_o\)))) # (\B[1]~input_o\ & (\Shifter|stage[1][30]~21_combout\ & (!\B[2]~input_o\))) ) ) ) # ( 
-- !\Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][34]~25_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][28]~20_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][30]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][30]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][28]~20_combout\,
	datae => \Shifter|ALT_INV_stage[1][32]~24_combout\,
	dataf => \Shifter|ALT_INV_stage[1][34]~25_combout\,
	combout => \Shifter|stage[3][28]~117_combout\);

-- Location: LABCELL_X45_Y31_N6
\Shifter|stage[5][4]~118\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][4]~118_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][28]~117_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][20]~116_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][28]~117_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shifter|stage[5][4]~114_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][12]~115_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][28]~117_combout\ & ( (\Shifter|stage[3][20]~116_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][28]~117_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[5][4]~114_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][12]~115_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][4]~114_combout\,
	datab => \Shifter|ALT_INV_stage[3][20]~116_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][12]~115_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][28]~117_combout\,
	combout => \Shifter|stage[5][4]~118_combout\);

-- Location: LABCELL_X45_Y31_N20
\Shifter|stage[5][59]~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][59]~113_combout\ = ( \B[3]~input_o\ & ( \Shifter|sign_bit~0_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][59]~111_combout\)) # (\B[4]~input_o\ & ((\Shifter|sign_bit~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][59]~111_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shifter|stage[5][59]~113_combout\);

-- Location: LABCELL_X45_Y31_N34
\Y_internal~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~15_combout\ = ( \Shifter|stage[5][59]~113_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][4]~118_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][36]~122_combout\)))) # 
-- (\Shifter|Equal2~0_combout\ & (((!\ShiftCount[5]~0_combout\)))) ) ) # ( !\Shifter|stage[5][59]~113_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][4]~118_combout\))) # (\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][36]~122_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001001011111001000100101111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][36]~122_combout\,
	datac => \Shifter|ALT_INV_stage[5][4]~118_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][59]~113_combout\,
	combout => \Y_internal~15_combout\);

-- Location: MLABCELL_X46_Y32_N36
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y32_N38
\Y_internal~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~14_combout\ = ( \Y_internal~2_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\)) # (\B[4]~input_o\ & ((!\A[4]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\B[4]~input_o\ & (\A[4]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111011001100111011101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~14_combout\);

-- Location: MLABCELL_X46_Y32_N22
\Y_internal~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~16_combout\ = ( \Y_internal~14_combout\ & ( (!\Y_internal~5_combout\) # ((!\Y_internal~0_combout\ & (\Y_internal~15_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~14_combout\ & ( (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\ & (\Y_internal~15_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~15_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~14_combout\,
	combout => \Y_internal~16_combout\);

-- Location: LABCELL_X45_Y32_N30
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ = ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ $ 
-- (!\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y32_N36
\Y_internal~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~17_combout\ = ( \Y_internal~2_combout\ & ( (!\A[5]~input_o\ & (\B[5]~input_o\)) # (\A[5]~input_o\ & ((!\B[5]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\A[5]~input_o\ & (\B[5]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110110011101100111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~17_combout\);

-- Location: MLABCELL_X39_Y33_N10
\Shifter|stage[3][13]~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][13]~125_combout\ = ( \Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( ((!\B[2]~input_o\ & (\Shifter|stage[1][13]~54_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\)))) # (\B[1]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][13]~54_combout\))) # (\B[2]~input_o\ & (((\Shifter|stage[1][17]~57_combout\ & !\B[1]~input_o\)))) ) ) ) # ( 
-- \Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][13]~54_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\) # (\Shifter|stage[1][17]~57_combout\)))) ) ) ) # ( 
-- !\Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][13]~54_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][13]~54_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][17]~57_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][19]~58_combout\,
	dataf => \Shifter|ALT_INV_stage[1][15]~55_combout\,
	combout => \Shifter|stage[3][13]~125_combout\);

-- Location: MLABCELL_X39_Y33_N6
\Shifter|stage[5][5]~124\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][5]~124_combout\ = ( \Shifter|stage[1][9]~52_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\) # (\Shifter|stage[1][11]~53_combout\) ) ) ) # ( !\Shifter|stage[1][9]~52_combout\ & ( \B[2]~input_o\ & ( (\Shifter|stage[1][11]~53_combout\ & 
-- \B[1]~input_o\) ) ) ) # ( \Shifter|stage[1][9]~52_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][5]~49_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) ) ) ) # ( !\Shifter|stage[1][9]~52_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][5]~49_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][7]~50_combout\,
	datab => \Shifter|ALT_INV_stage[1][11]~53_combout\,
	datac => \Shifter|ALT_INV_stage[1][5]~49_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][9]~52_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[5][5]~124_combout\);

-- Location: MLABCELL_X42_Y33_N38
\Shifter|stage[3][21]~126\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][21]~126_combout\ = ( \Shifter|stage[1][23]~60_combout\ & ( \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][21]~59_combout\))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][27]~63_combout\)))) ) ) ) # ( !\Shifter|stage[1][23]~60_combout\ & ( \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # 
-- (\Shifter|stage[1][27]~63_combout\)))) ) ) ) # ( \Shifter|stage[1][23]~60_combout\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shifter|stage[1][21]~59_combout\))) # (\B[2]~input_o\ & 
-- (((\Shifter|stage[1][27]~63_combout\ & \B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][23]~60_combout\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\ & ((!\B[1]~input_o\)))) # (\B[2]~input_o\ & 
-- (((\Shifter|stage[1][27]~63_combout\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][21]~59_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][27]~63_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][23]~60_combout\,
	dataf => \Shifter|ALT_INV_stage[1][25]~62_combout\,
	combout => \Shifter|stage[3][21]~126_combout\);

-- Location: MLABCELL_X42_Y33_N2
\Shifter|stage[3][29]~127\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][29]~127_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][33]~68_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][31]~65_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][35]~69_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][33]~68_combout\ & ( (\Shifter|stage[1][29]~64_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][33]~68_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][31]~65_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][35]~69_combout\)) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][33]~68_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][29]~64_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][35]~69_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][29]~64_combout\,
	datad => \Shifter|ALT_INV_stage[1][31]~65_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][33]~68_combout\,
	combout => \Shifter|stage[3][29]~127_combout\);

-- Location: MLABCELL_X42_Y31_N12
\Shifter|stage[5][5]~128\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][5]~128_combout\ = ( \Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][29]~127_combout\ & ( ((!\B[3]~input_o\ & ((\Shifter|stage[5][5]~124_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][13]~125_combout\))) # (\B[4]~input_o\) ) 
-- ) ) # ( !\Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][29]~127_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][5]~124_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][13]~125_combout\)))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][29]~127_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][5]~124_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][13]~125_combout\)))) # 
-- (\B[4]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][29]~127_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][5]~124_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][13]~125_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][13]~125_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[5][5]~124_combout\,
	datae => \Shifter|ALT_INV_stage[3][21]~126_combout\,
	dataf => \Shifter|ALT_INV_stage[3][29]~127_combout\,
	combout => \Shifter|stage[5][5]~128_combout\);

-- Location: LABCELL_X40_Y31_N28
\Shifter|stage[5][58]~123\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][58]~123_combout\ = ( \Shifter|stage[3][58]~99_combout\ & ( ((!\B[3]~input_o\ & !\B[4]~input_o\)) # (\Shifter|sign_bit~0_combout\) ) ) # ( !\Shifter|stage[3][58]~99_combout\ & ( (\Shifter|sign_bit~0_combout\ & ((\B[4]~input_o\) # 
-- (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][58]~99_combout\,
	combout => \Shifter|stage[5][58]~123_combout\);

-- Location: LABCELL_X40_Y32_N28
\Shifter|stage[3][53]~131\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][53]~131_combout\ = ( \Shifter|stage[1][59]~84_combout\ & ( \B[2]~input_o\ & ( (\B[1]~input_o\) # (\Shifter|stage[1][57]~83_combout\) ) ) ) # ( !\Shifter|stage[1][59]~84_combout\ & ( \B[2]~input_o\ & ( (\Shifter|stage[1][57]~83_combout\ & 
-- !\B[1]~input_o\) ) ) ) # ( \Shifter|stage[1][59]~84_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][53]~80_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][55]~81_combout\)) ) ) ) # ( !\Shifter|stage[1][59]~84_combout\ & ( 
-- !\B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][53]~80_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][55]~81_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][55]~81_combout\,
	datab => \Shifter|ALT_INV_stage[1][57]~83_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][53]~80_combout\,
	datae => \Shifter|ALT_INV_stage[1][59]~84_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[3][53]~131_combout\);

-- Location: LABCELL_X40_Y32_N26
\Shifter|stage[3][45]~130\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][45]~130_combout\ = ( \Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][51]~79_combout\ & ( ((!\B[2]~input_o\ & ((\Shifter|stage[1][45]~75_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][49]~78_combout\))) # (\B[1]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][51]~79_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][45]~75_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][49]~78_combout\)))) # (\B[1]~input_o\ & 
-- (\B[2]~input_o\)) ) ) ) # ( \Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][51]~79_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][45]~75_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][49]~78_combout\)))) # 
-- (\B[1]~input_o\ & (!\B[2]~input_o\)) ) ) ) # ( !\Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][51]~79_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][45]~75_combout\))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][49]~78_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][49]~78_combout\,
	datad => \Shifter|ALT_INV_stage[1][45]~75_combout\,
	datae => \Shifter|ALT_INV_stage[1][47]~76_combout\,
	dataf => \Shifter|ALT_INV_stage[1][51]~79_combout\,
	combout => \Shifter|stage[3][45]~130_combout\);

-- Location: MLABCELL_X42_Y33_N6
\Shifter|stage[3][37]~129\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][37]~129_combout\ = ( \Shifter|stage[1][43]~74_combout\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][39]~71_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # 
-- (\Shifter|stage[1][41]~73_combout\))) ) ) ) # ( !\Shifter|stage[1][43]~74_combout\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][39]~71_combout\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][41]~73_combout\ & ((!\B[1]~input_o\)))) ) ) ) # ( \Shifter|stage[1][43]~74_combout\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][39]~71_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & 
-- (((\B[1]~input_o\)) # (\Shifter|stage[1][41]~73_combout\))) ) ) ) # ( !\Shifter|stage[1][43]~74_combout\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][39]~71_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & 
-- (\Shifter|stage[1][41]~73_combout\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][41]~73_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][39]~71_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][43]~74_combout\,
	dataf => \Shifter|ALT_INV_stage[1][37]~70_combout\,
	combout => \Shifter|stage[3][37]~129_combout\);

-- Location: MLABCELL_X42_Y31_N16
\Shifter|stage[5][37]~132\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][37]~132_combout\ = ( \Shifter|stage[3][45]~130_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & ((\Shifter|stage[3][53]~131_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][61]~89_combout\))) 
-- ) ) ) # ( !\Shifter|stage[3][45]~130_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][53]~131_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][61]~89_combout\)))) ) ) ) # ( \Shifter|stage[3][45]~130_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][53]~131_combout\))) # 
-- (\B[3]~input_o\ & (\Shifter|stage[3][61]~89_combout\)))) ) ) ) # ( !\Shifter|stage[3][45]~130_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][53]~131_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][61]~89_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][61]~89_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][53]~131_combout\,
	datae => \Shifter|ALT_INV_stage[3][45]~130_combout\,
	dataf => \Shifter|ALT_INV_stage[3][37]~129_combout\,
	combout => \Shifter|stage[5][37]~132_combout\);

-- Location: LABCELL_X45_Y29_N4
\Y_internal~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~18_combout\ = ( \Shifter|stage[5][37]~132_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][5]~128_combout\)) # (\ShiftCount[5]~0_combout\))) # (\Shifter|Equal2~0_combout\ & (!\ShiftCount[5]~0_combout\ & 
-- ((\Shifter|stage[5][58]~123_combout\)))) ) ) # ( !\Shifter|stage[5][37]~132_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][5]~128_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][58]~123_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][5]~128_combout\,
	datad => \Shifter|ALT_INV_stage[5][58]~123_combout\,
	dataf => \Shifter|ALT_INV_stage[5][37]~132_combout\,
	combout => \Y_internal~18_combout\);

-- Location: LABCELL_X45_Y32_N32
\Y_internal~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~19_combout\ = ( \Y_internal~18_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~17_combout\)))) # (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\) # ((\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~18_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~17_combout\)))) # (\Y_internal~5_combout\ & (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~17_combout\,
	dataf => \ALT_INV_Y_internal~18_combout\,
	combout => \Y_internal~19_combout\);

-- Location: MLABCELL_X39_Y32_N14
\Shifter|stage[5][57]~133\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][57]~133_combout\ = ( \Shifter|stage[3][57]~87_combout\ & ( ((!\B[3]~input_o\ & !\B[4]~input_o\)) # (\Shifter|sign_bit~0_combout\) ) ) # ( !\Shifter|stage[3][57]~87_combout\ & ( (\Shifter|sign_bit~0_combout\ & ((\B[4]~input_o\) # 
-- (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][57]~87_combout\,
	combout => \Shifter|stage[5][57]~133_combout\);

-- Location: LABCELL_X43_Y31_N18
\Shifter|stage[3][38]~139\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][38]~139_combout\ = ( \Shifter|stage[1][38]~27_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\Shifter|stage[1][42]~30_combout\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # 
-- (\Shifter|stage[1][40]~29_combout\))) ) ) ) # ( !\Shifter|stage[1][38]~27_combout\ & ( \Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][42]~30_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & (((\B[2]~input_o\)) # 
-- (\Shifter|stage[1][40]~29_combout\))) ) ) ) # ( \Shifter|stage[1][38]~27_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((!\B[2]~input_o\) # (\Shifter|stage[1][42]~30_combout\)))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][40]~29_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][38]~27_combout\ & ( !\Shifter|stage[1][44]~31_combout\ & ( (!\B[1]~input_o\ & (((\Shifter|stage[1][42]~30_combout\ & \B[2]~input_o\)))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][40]~29_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][40]~29_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][42]~30_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][38]~27_combout\,
	dataf => \Shifter|ALT_INV_stage[1][44]~31_combout\,
	combout => \Shifter|stage[3][38]~139_combout\);

-- Location: MLABCELL_X39_Y31_N14
\Shifter|stage[3][46]~140\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][46]~140_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][48]~34_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][52]~36_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][50]~35_combout\ & ( (\Shifter|stage[1][46]~32_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][48]~34_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][52]~36_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][50]~35_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][46]~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][46]~32_combout\,
	datac => \Shifter|ALT_INV_stage[1][48]~34_combout\,
	datad => \Shifter|ALT_INV_stage[1][52]~36_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][50]~35_combout\,
	combout => \Shifter|stage[3][46]~140_combout\);

-- Location: MLABCELL_X39_Y31_N16
\Shifter|stage[3][54]~141\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][54]~141_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][56]~39_combout\ & ( (!\B[2]~input_o\) # (\Shifter|stage[1][60]~41_combout\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][56]~39_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][54]~37_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][58]~40_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][56]~39_combout\ & ( (\Shifter|stage[1][60]~41_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][56]~39_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][54]~37_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][58]~40_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][58]~40_combout\,
	datab => \Shifter|ALT_INV_stage[1][60]~41_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][54]~37_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][56]~39_combout\,
	combout => \Shifter|stage[3][54]~141_combout\);

-- Location: LABCELL_X38_Y32_N10
\Shifter|stage[5][38]~142\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][38]~142_combout\ = ( \Shifter|stage[3][54]~141_combout\ & ( \Shifter|stage[3][62]~45_combout\ & ( ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\)))) # (\B[4]~input_o\) ) 
-- ) ) # ( !\Shifter|stage[3][54]~141_combout\ & ( \Shifter|stage[3][62]~45_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][54]~141_combout\ & ( !\Shifter|stage[3][62]~45_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))))) # 
-- (\B[4]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][54]~141_combout\ & ( !\Shifter|stage[3][62]~45_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][46]~140_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][38]~139_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][46]~140_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][54]~141_combout\,
	dataf => \Shifter|ALT_INV_stage[3][62]~45_combout\,
	combout => \Shifter|stage[5][38]~142_combout\);

-- Location: LABCELL_X40_Y29_N22
\Shifter|stage[3][14]~135\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][14]~135_combout\ = ( \Shifter|stage[1][16]~13_combout\ & ( \Shifter|stage[1][14]~11_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\Shifter|stage[1][18]~14_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][20]~15_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][16]~13_combout\ & ( \Shifter|stage[1][14]~11_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][18]~14_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][20]~15_combout\)))) ) ) ) # ( \Shifter|stage[1][16]~13_combout\ & ( !\Shifter|stage[1][14]~11_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][18]~14_combout\))) # 
-- (\B[1]~input_o\ & (\Shifter|stage[1][20]~15_combout\)))) ) ) ) # ( !\Shifter|stage[1][16]~13_combout\ & ( !\Shifter|stage[1][14]~11_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][18]~14_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][20]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][20]~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][18]~14_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][16]~13_combout\,
	dataf => \Shifter|ALT_INV_stage[1][14]~11_combout\,
	combout => \Shifter|stage[3][14]~135_combout\);

-- Location: LABCELL_X40_Y30_N30
\Shifter|stage[5][6]~134\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][6]~134_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][8]~8_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][12]~10_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- \Shifter|stage[1][10]~9_combout\ & ( (\Shifter|stage[1][6]~6_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & (\Shifter|stage[1][8]~8_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][12]~10_combout\))) ) ) ) # ( !\B[1]~input_o\ & ( !\Shifter|stage[1][10]~9_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][6]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shifter|ALT_INV_stage[1][8]~8_combout\,
	datac => \Shifter|ALT_INV_stage[1][12]~10_combout\,
	datad => \Shifter|ALT_INV_stage[1][6]~6_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][10]~9_combout\,
	combout => \Shifter|stage[5][6]~134_combout\);

-- Location: LABCELL_X40_Y29_N26
\Shifter|stage[3][22]~136\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][22]~136_combout\ = ( \Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][28]~20_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][24]~18_combout\ & ( \Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][28]~20_combout\)))) ) ) ) # ( \Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # 
-- (\B[1]~input_o\ & (\Shifter|stage[1][28]~20_combout\)))) ) ) ) # ( !\Shifter|stage[1][24]~18_combout\ & ( !\Shifter|stage[1][22]~16_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][26]~19_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][28]~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][28]~20_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][26]~19_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][24]~18_combout\,
	dataf => \Shifter|ALT_INV_stage[1][22]~16_combout\,
	combout => \Shifter|stage[3][22]~136_combout\);

-- Location: LABCELL_X43_Y31_N34
\Shifter|stage[3][30]~137\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][30]~137_combout\ = ( \Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( ((!\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\)))) # (\B[1]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[1][32]~24_combout\ & ( \Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))))) # (\B[1]~input_o\ & 
-- (((\B[2]~input_o\)))) ) ) ) # ( \Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\)) # (\B[2]~input_o\ & ((\Shifter|stage[1][34]~25_combout\))))) # 
-- (\B[1]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][32]~24_combout\ & ( !\Shifter|stage[1][36]~26_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\ & (\Shifter|stage[1][30]~21_combout\)) # (\B[2]~input_o\ & 
-- ((\Shifter|stage[1][34]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][30]~21_combout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][34]~25_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][32]~24_combout\,
	dataf => \Shifter|ALT_INV_stage[1][36]~26_combout\,
	combout => \Shifter|stage[3][30]~137_combout\);

-- Location: LABCELL_X38_Y32_N26
\Shifter|stage[5][6]~138\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][6]~138_combout\ = ( \Shifter|stage[3][22]~136_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( ((!\B[3]~input_o\ & ((\Shifter|stage[5][6]~134_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\))) # (\B[4]~input_o\) ) 
-- ) ) # ( !\Shifter|stage[3][22]~136_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][6]~134_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][22]~136_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][6]~134_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)))) # 
-- (\B[4]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][22]~136_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[5][6]~134_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][14]~135_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][14]~135_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[5][6]~134_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][22]~136_combout\,
	dataf => \Shifter|ALT_INV_stage[3][30]~137_combout\,
	combout => \Shifter|stage[5][6]~138_combout\);

-- Location: LABCELL_X45_Y29_N28
\Y_internal~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~21_combout\ = ( \Shifter|Equal2~0_combout\ & ( (\Shifter|stage[5][57]~133_combout\ & !\ShiftCount[5]~0_combout\) ) ) # ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][6]~138_combout\))) # 
-- (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][38]~142_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][57]~133_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][38]~142_combout\,
	datad => \Shifter|ALT_INV_stage[5][6]~138_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~21_combout\);

-- Location: LABCELL_X45_Y32_N12
\Y_internal~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~20_combout\ = ( \Y_internal~2_combout\ & ( (!\B[6]~input_o\ & (\A[6]~input_o\)) # (\B[6]~input_o\ & ((!\A[6]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\B[6]~input_o\ & (\A[6]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110110011101100111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~20_combout\);

-- Location: LABCELL_X45_Y32_N6
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\B[6]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (!\A[6]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[6]~input_o\ $ 
-- (!\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\A[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y32_N18
\Y_internal~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~22_combout\ = ( \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~20_combout\)))) # (\Y_internal~5_combout\ & (((\Y_internal~21_combout\)) # (\Y_internal~0_combout\))) ) ) # ( 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~20_combout\)))) # (\Y_internal~5_combout\ & (!\Y_internal~0_combout\ & (\Y_internal~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~21_combout\,
	datad => \ALT_INV_Y_internal~20_combout\,
	dataf => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~22_combout\);

-- Location: MLABCELL_X42_Y29_N20
\Shifter|stage[5][56]~143\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][56]~143_combout\ = ( \Shifter|stage[3][56]~43_combout\ & ( ((!\B[3]~input_o\ & !\B[4]~input_o\)) # (\Shifter|sign_bit~0_combout\) ) ) # ( !\Shifter|stage[3][56]~43_combout\ & ( (\Shifter|sign_bit~0_combout\ & ((\B[4]~input_o\) # 
-- (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][56]~43_combout\,
	combout => \Shifter|stage[5][56]~143_combout\);

-- Location: LABCELL_X40_Y32_N36
\Shifter|stage[3][55]~151\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][55]~151_combout\ = ( \Shifter|stage[1][55]~81_combout\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][59]~84_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][61]~85_combout\)) ) ) ) # ( !\Shifter|stage[1][55]~81_combout\ 
-- & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & ((\Shifter|stage[1][59]~84_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][61]~85_combout\)) ) ) ) # ( \Shifter|stage[1][55]~81_combout\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\) # 
-- (\Shifter|stage[1][57]~83_combout\) ) ) ) # ( !\Shifter|stage[1][55]~81_combout\ & ( !\B[2]~input_o\ & ( (\B[1]~input_o\ & \Shifter|stage[1][57]~83_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][61]~85_combout\,
	datab => \Shifter|ALT_INV_stage[1][59]~84_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \Shifter|ALT_INV_stage[1][57]~83_combout\,
	datae => \Shifter|ALT_INV_stage[1][55]~81_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shifter|stage[3][55]~151_combout\);

-- Location: LABCELL_X40_Y32_N14
\Shifter|stage[3][47]~150\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][47]~150_combout\ = ( \Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\Shifter|stage[1][51]~79_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][53]~80_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][47]~76_combout\ & ( \Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & (\B[2]~input_o\ & ((\Shifter|stage[1][51]~79_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\Shifter|stage[1][53]~80_combout\)))) ) ) ) # ( 
-- \Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (!\B[1]~input_o\ & ((!\B[2]~input_o\) # ((\Shifter|stage[1][51]~79_combout\)))) # (\B[1]~input_o\ & (\B[2]~input_o\ & (\Shifter|stage[1][53]~80_combout\))) ) ) ) # ( 
-- !\Shifter|stage[1][47]~76_combout\ & ( !\Shifter|stage[1][49]~78_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][51]~79_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][53]~80_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][53]~80_combout\,
	datad => \Shifter|ALT_INV_stage[1][51]~79_combout\,
	datae => \Shifter|ALT_INV_stage[1][47]~76_combout\,
	dataf => \Shifter|ALT_INV_stage[1][49]~78_combout\,
	combout => \Shifter|stage[3][47]~150_combout\);

-- Location: MLABCELL_X39_Y30_N20
\Shifter|stage[3][63]~152\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][63]~152_combout\ = ( \A[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Shifter|stage[3][63]~0_combout\ & \Shifter|InputExtended[63]~1_combout\)))) # (\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Shifter|stage[3][63]~0_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Shifter|InputExtended[63]~1_combout\))))) ) ) # ( !\A[0]~input_o\ & ( (\Shifter|InputExtended[63]~1_combout\ & ((!\ShiftFN[0]~input_o\ & ((\Shifter|stage[3][63]~0_combout\))) # (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011001001110000001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][63]~0_combout\,
	datac => \Shifter|ALT_INV_InputExtended[63]~1_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shifter|stage[3][63]~152_combout\);

-- Location: MLABCELL_X42_Y33_N18
\Shifter|stage[3][39]~149\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][39]~149_combout\ = ( \Shifter|stage[1][39]~71_combout\ & ( \Shifter|stage[1][41]~73_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & (\Shifter|stage[1][43]~74_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][45]~75_combout\)))) ) ) 
-- ) # ( !\Shifter|stage[1][39]~71_combout\ & ( \Shifter|stage[1][41]~73_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][43]~74_combout\)) # (\B[1]~input_o\ & 
-- ((\Shifter|stage[1][45]~75_combout\))))) ) ) ) # ( \Shifter|stage[1][39]~71_combout\ & ( !\Shifter|stage[1][41]~73_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][43]~74_combout\)) # 
-- (\B[1]~input_o\ & ((\Shifter|stage[1][45]~75_combout\))))) ) ) ) # ( !\Shifter|stage[1][39]~71_combout\ & ( !\Shifter|stage[1][41]~73_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][43]~74_combout\)) # (\B[1]~input_o\ & 
-- ((\Shifter|stage[1][45]~75_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][43]~74_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][45]~75_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][39]~71_combout\,
	dataf => \Shifter|ALT_INV_stage[1][41]~73_combout\,
	combout => \Shifter|stage[3][39]~149_combout\);

-- Location: MLABCELL_X42_Y29_N28
\Shifter|stage[5][39]~153\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][39]~153_combout\ = ( \Shifter|stage[3][63]~152_combout\ & ( \Shifter|stage[3][39]~149_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][47]~150_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][55]~151_combout\))) ) ) ) # ( !\Shifter|stage[3][63]~152_combout\ & ( \Shifter|stage[3][39]~149_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][47]~150_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][55]~151_combout\ & (!\B[3]~input_o\))) ) ) ) # ( \Shifter|stage[3][63]~152_combout\ & ( !\Shifter|stage[3][39]~149_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][47]~150_combout\)))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\)) # (\Shifter|stage[3][55]~151_combout\))) ) ) ) # ( !\Shifter|stage[3][63]~152_combout\ & ( !\Shifter|stage[3][39]~149_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][47]~150_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][55]~151_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][55]~151_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][47]~150_combout\,
	datae => \Shifter|ALT_INV_stage[3][63]~152_combout\,
	dataf => \Shifter|ALT_INV_stage[3][39]~149_combout\,
	combout => \Shifter|stage[5][39]~153_combout\);

-- Location: MLABCELL_X39_Y33_N18
\Shifter|stage[3][15]~145\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][15]~145_combout\ = ( \Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[1]~input_o\) # ((!\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][19]~58_combout\ & ( \Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\) # (\Shifter|stage[1][17]~57_combout\)))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\ & ((\B[1]~input_o\)))) ) ) ) # ( 
-- \Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (!\B[2]~input_o\ & (((\Shifter|stage[1][17]~57_combout\ & \B[1]~input_o\)))) # (\B[2]~input_o\ & (((!\B[1]~input_o\)) # (\Shifter|stage[1][21]~59_combout\))) ) ) ) # ( 
-- !\Shifter|stage[1][19]~58_combout\ & ( !\Shifter|stage[1][15]~55_combout\ & ( (\B[1]~input_o\ & ((!\B[2]~input_o\ & ((\Shifter|stage[1][17]~57_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][21]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][21]~59_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][17]~57_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][19]~58_combout\,
	dataf => \Shifter|ALT_INV_stage[1][15]~55_combout\,
	combout => \Shifter|stage[3][15]~145_combout\);

-- Location: MLABCELL_X39_Y33_N14
\Shifter|stage[5][7]~144\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][7]~144_combout\ = ( \Shifter|stage[1][13]~54_combout\ & ( \Shifter|stage[1][11]~53_combout\ & ( ((!\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][9]~52_combout\)))) # (\B[2]~input_o\) ) ) ) # 
-- ( !\Shifter|stage[1][13]~54_combout\ & ( \Shifter|stage[1][11]~53_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][9]~52_combout\))))) # (\B[2]~input_o\ & 
-- (((!\B[1]~input_o\)))) ) ) ) # ( \Shifter|stage[1][13]~54_combout\ & ( !\Shifter|stage[1][11]~53_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) # (\B[1]~input_o\ & ((\Shifter|stage[1][9]~52_combout\))))) # 
-- (\B[2]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\Shifter|stage[1][13]~54_combout\ & ( !\Shifter|stage[1][11]~53_combout\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & (\Shifter|stage[1][7]~50_combout\)) # (\B[1]~input_o\ & 
-- ((\Shifter|stage[1][9]~52_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][7]~50_combout\,
	datab => \Shifter|ALT_INV_stage[1][9]~52_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][13]~54_combout\,
	dataf => \Shifter|ALT_INV_stage[1][11]~53_combout\,
	combout => \Shifter|stage[5][7]~144_combout\);

-- Location: MLABCELL_X42_Y33_N14
\Shifter|stage[3][31]~147\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][31]~147_combout\ = ( \B[1]~input_o\ & ( \Shifter|stage[1][37]~70_combout\ & ( (\Shifter|stage[1][33]~68_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & 
-- ((\Shifter|stage[1][31]~65_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][35]~69_combout\)) ) ) ) # ( \B[1]~input_o\ & ( !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & \Shifter|stage[1][33]~68_combout\) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\Shifter|stage[1][37]~70_combout\ & ( (!\B[2]~input_o\ & ((\Shifter|stage[1][31]~65_combout\))) # (\B[2]~input_o\ & (\Shifter|stage[1][35]~69_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][35]~69_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][31]~65_combout\,
	datad => \Shifter|ALT_INV_stage[1][33]~68_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \Shifter|ALT_INV_stage[1][37]~70_combout\,
	combout => \Shifter|stage[3][31]~147_combout\);

-- Location: MLABCELL_X42_Y33_N10
\Shifter|stage[3][23]~146\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][23]~146_combout\ = ( \Shifter|stage[1][23]~60_combout\ & ( \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[1]~input_o\ & (\Shifter|stage[1][29]~64_combout\))) ) ) 
-- ) # ( !\Shifter|stage[1][23]~60_combout\ & ( \Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (((\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][29]~64_combout\)))) ) ) ) # ( \Shifter|stage[1][23]~60_combout\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (!\B[2]~input_o\ & (((!\B[1]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # 
-- (\B[1]~input_o\ & (\Shifter|stage[1][29]~64_combout\)))) ) ) ) # ( !\Shifter|stage[1][23]~60_combout\ & ( !\Shifter|stage[1][25]~62_combout\ & ( (\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\Shifter|stage[1][27]~63_combout\))) # (\B[1]~input_o\ & 
-- (\Shifter|stage[1][29]~64_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[1][29]~64_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shifter|ALT_INV_stage[1][27]~63_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \Shifter|ALT_INV_stage[1][23]~60_combout\,
	dataf => \Shifter|ALT_INV_stage[1][25]~62_combout\,
	combout => \Shifter|stage[3][23]~146_combout\);

-- Location: MLABCELL_X42_Y29_N26
\Shifter|stage[5][7]~148\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][7]~148_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][31]~147_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shifter|stage[5][7]~144_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][15]~145_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][23]~146_combout\ & ( (\Shifter|stage[3][31]~147_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[5][7]~144_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][15]~145_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][15]~145_combout\,
	datab => \Shifter|ALT_INV_stage[5][7]~144_combout\,
	datac => \Shifter|ALT_INV_stage[3][31]~147_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][23]~146_combout\,
	combout => \Shifter|stage[5][7]~148_combout\);

-- Location: MLABCELL_X42_Y29_N32
\Y_internal~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~24_combout\ = ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|stage[5][39]~153_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][7]~148_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][56]~143_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][56]~143_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][39]~153_combout\,
	datad => \Shifter|ALT_INV_stage[5][7]~148_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~24_combout\);

-- Location: LABCELL_X45_Y32_N10
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\ = ( \B[7]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[7]~input_o\ $ (!\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) ) # ( !\B[7]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[7]~input_o\ $ 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y32_N28
\Y_internal~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~23_combout\ = ( \B[7]~input_o\ & ( !\Y_internal~2_combout\ $ (((!\Y_internal~3_combout\) # (!\A[7]~input_o\))) ) ) # ( !\B[7]~input_o\ & ( (\Y_internal~2_combout\ & \A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y_internal~2_combout\,
	datac => \ALT_INV_Y_internal~3_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Y_internal~23_combout\);

-- Location: LABCELL_X45_Y32_N16
\Y_internal~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~25_combout\ = ( \Y_internal~23_combout\ & ( (!\Y_internal~5_combout\) # ((!\Y_internal~0_combout\ & (\Y_internal~24_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~23_combout\ & ( (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\ & (\Y_internal~24_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~24_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~23_combout\,
	combout => \Y_internal~25_combout\);

-- Location: MLABCELL_X46_Y33_N22
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ = ( \A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ $ (\B[8]~input_o\)) ) ) # ( !\A[8]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ $ (!\B[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|ALT_INV_gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y33_N30
\Y_internal~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~26_combout\ = ( \Y_internal~3_combout\ & ( (!\A[8]~input_o\ & (\Y_internal~2_combout\ & \B[8]~input_o\)) # (\A[8]~input_o\ & (!\Y_internal~2_combout\ $ (!\B[8]~input_o\))) ) ) # ( !\Y_internal~3_combout\ & ( (\Y_internal~2_combout\ & 
-- ((\B[8]~input_o\) # (\A[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101010110100000010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_Y_internal~2_combout\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_Y_internal~3_combout\,
	combout => \Y_internal~26_combout\);

-- Location: LABCELL_X43_Y29_N34
\Shifter|stage[5][40]~156\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][40]~156_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][40]~33_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][56]~43_combout\)) # (\B[3]~input_o\ & ((\Shifter|sign_bit~0_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][40]~33_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][48]~38_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][40]~33_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][56]~43_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|sign_bit~0_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][40]~33_combout\ & ( (\Shifter|stage[3][48]~38_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][56]~43_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[3][48]~38_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][40]~33_combout\,
	combout => \Shifter|stage[5][40]~156_combout\);

-- Location: MLABCELL_X42_Y29_N22
\Shifter|stage[5][55]~154\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][55]~154_combout\ = ( \Shifter|stage[3][55]~151_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][63]~152_combout\)))) # (\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\)) ) ) # ( !\Shifter|stage[3][55]~151_combout\ 
-- & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][63]~152_combout\)))) # (\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][63]~152_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][55]~151_combout\,
	combout => \Shifter|stage[5][55]~154_combout\);

-- Location: LABCELL_X43_Y29_N28
\Shifter|stage[5][8]~155\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][8]~155_combout\ = ( \Shifter|stage[3][8]~12_combout\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][16]~17_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][24]~22_combout\))) ) ) ) # ( !\Shifter|stage[3][8]~12_combout\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][16]~17_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][24]~22_combout\))) ) ) ) # ( \Shifter|stage[3][8]~12_combout\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][16]~17_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][24]~22_combout\ & (!\B[3]~input_o\))) ) ) ) # ( !\Shifter|stage[3][8]~12_combout\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][16]~17_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][24]~22_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][24]~22_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][16]~17_combout\,
	datae => \Shifter|ALT_INV_stage[3][8]~12_combout\,
	dataf => \Shifter|ALT_INV_stage[3][32]~28_combout\,
	combout => \Shifter|stage[5][8]~155_combout\);

-- Location: MLABCELL_X44_Y29_N26
\Y_internal~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~27_combout\ = ( \Shifter|stage[5][8]~155_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][55]~154_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][40]~156_combout\ & 
-- (!\Shifter|Equal2~0_combout\))) ) ) # ( !\Shifter|stage[5][8]~155_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|Equal2~0_combout\ & \Shifter|stage[5][55]~154_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][40]~156_combout\ & 
-- (!\Shifter|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000100000001101010110000101110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][40]~156_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][55]~154_combout\,
	dataf => \Shifter|ALT_INV_stage[5][8]~155_combout\,
	combout => \Y_internal~27_combout\);

-- Location: LABCELL_X45_Y32_N34
\Y_internal~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~28_combout\ = ( \Y_internal~27_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~26_combout\)))) # (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\) # ((\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~27_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~26_combout\)))) # (\Y_internal~5_combout\ & (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~26_combout\,
	dataf => \ALT_INV_Y_internal~27_combout\,
	combout => \Y_internal~28_combout\);

-- Location: MLABCELL_X46_Y32_N26
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ (!\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[9]~input_o\ $ (!\A[9]~input_o\ $ 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LABCELL_X38_Y32_N22
\Shifter|stage[5][54]~157\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][54]~157_combout\ = ( \Shifter|stage[3][62]~45_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][54]~141_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[3][62]~45_combout\ 
-- & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shifter|stage[3][54]~141_combout\)))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_stage[3][54]~141_combout\,
	dataf => \Shifter|ALT_INV_stage[3][62]~45_combout\,
	combout => \Shifter|stage[5][54]~157_combout\);

-- Location: MLABCELL_X39_Y32_N0
\Shifter|stage[5][41]~159\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][41]~159_combout\ = ( \Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][57]~87_combout\ & ( (!\B[3]~input_o\) # ((!\B[4]~input_o\ & ((\Shifter|stage[3][49]~82_combout\))) # (\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\))) ) ) ) # 
-- ( !\Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][57]~87_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][49]~82_combout\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|sign_bit~0_combout\))) ) ) ) # ( 
-- \Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][57]~87_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][49]~82_combout\)))) # (\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\ & (\B[3]~input_o\))) ) ) ) # ( 
-- !\Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][57]~87_combout\ & ( (\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][49]~82_combout\))) # (\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][49]~82_combout\,
	datae => \Shifter|ALT_INV_stage[3][41]~77_combout\,
	dataf => \Shifter|ALT_INV_stage[3][57]~87_combout\,
	combout => \Shifter|stage[5][41]~159_combout\);

-- Location: MLABCELL_X39_Y32_N38
\Shifter|stage[5][9]~158\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][9]~158_combout\ = ( \Shifter|stage[3][9]~56_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|stage[3][17]~61_combout\))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # 
-- (\Shifter|stage[3][25]~66_combout\)))) ) ) ) # ( !\Shifter|stage[3][9]~56_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][17]~61_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # 
-- (\Shifter|stage[3][25]~66_combout\)))) ) ) ) # ( \Shifter|stage[3][9]~56_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|stage[3][17]~61_combout\))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][25]~66_combout\ & !\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][9]~56_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][17]~61_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][25]~66_combout\ & !\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][17]~61_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][25]~66_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][9]~56_combout\,
	dataf => \Shifter|ALT_INV_stage[3][33]~72_combout\,
	combout => \Shifter|stage[5][9]~158_combout\);

-- Location: LABCELL_X38_Y32_N34
\Y_internal~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~30_combout\ = ( \Shifter|stage[5][9]~158_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\) # ((\Shifter|stage[5][54]~157_combout\)))) # (\ShiftCount[5]~0_combout\ & (!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][41]~159_combout\)))) ) ) # ( !\Shifter|stage[5][9]~158_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][54]~157_combout\))) # (\ShiftCount[5]~0_combout\ & (!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][41]~159_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][54]~157_combout\,
	datad => \Shifter|ALT_INV_stage[5][41]~159_combout\,
	dataf => \Shifter|ALT_INV_stage[5][9]~158_combout\,
	combout => \Y_internal~30_combout\);

-- Location: MLABCELL_X46_Y32_N24
\Y_internal~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~29_combout\ = (!\B[9]~input_o\ & (\A[9]~input_o\ & (\Y_internal~2_combout\))) # (\B[9]~input_o\ & (!\Y_internal~2_combout\ $ (((!\A[9]~input_o\) # (!\Y_internal~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100010110000001110001011000000111000101100000011100010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_Y_internal~2_combout\,
	datad => \ALT_INV_Y_internal~3_combout\,
	combout => \Y_internal~29_combout\);

-- Location: MLABCELL_X46_Y32_N20
\Y_internal~31\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~31_combout\ = ( \Y_internal~29_combout\ & ( (!\Y_internal~5_combout\) # ((!\Y_internal~0_combout\ & ((\Y_internal~30_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\))) ) ) # ( 
-- !\Y_internal~29_combout\ & ( (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\ & ((\Y_internal~30_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~30_combout\,
	dataf => \ALT_INV_Y_internal~29_combout\,
	combout => \Y_internal~31_combout\);

-- Location: LABCELL_X40_Y31_N18
\Shifter|stage[5][42]~162\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][42]~162_combout\ = ( \B[3]~input_o\ & ( \Shifter|stage[3][58]~99_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][50]~98_combout\)) # (\B[4]~input_o\ & ((\Shifter|sign_bit~0_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shifter|stage[3][58]~99_combout\ & ( (\B[4]~input_o\) # (\Shifter|stage[3][42]~97_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shifter|stage[3][58]~99_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][50]~98_combout\)) # (\B[4]~input_o\ & 
-- ((\Shifter|sign_bit~0_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shifter|stage[3][58]~99_combout\ & ( (\Shifter|stage[3][42]~97_combout\ & !\B[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][50]~98_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[3][42]~97_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][58]~99_combout\,
	combout => \Shifter|stage[5][42]~162_combout\);

-- Location: MLABCELL_X42_Y31_N28
\Shifter|stage[5][53]~160\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][53]~160_combout\ = ( \Shifter|stage[3][61]~89_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][53]~131_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[3][61]~89_combout\ 
-- & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shifter|stage[3][53]~131_combout\)))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_stage[3][53]~131_combout\,
	dataf => \Shifter|ALT_INV_stage[3][61]~89_combout\,
	combout => \Shifter|stage[5][53]~160_combout\);

-- Location: LABCELL_X40_Y31_N14
\Shifter|stage[5][10]~161\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][10]~161_combout\ = ( \Shifter|stage[3][10]~92_combout\ & ( \Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\) # ((!\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][34]~96_combout\))) ) ) 
-- ) # ( !\Shifter|stage[3][10]~92_combout\ & ( \Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\ & (((\B[4]~input_o\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][34]~96_combout\)))) ) ) ) # ( \Shifter|stage[3][10]~92_combout\ & ( !\Shifter|stage[3][26]~94_combout\ & ( (!\B[3]~input_o\ & (((!\B[4]~input_o\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))) # 
-- (\B[4]~input_o\ & (\Shifter|stage[3][34]~96_combout\)))) ) ) ) # ( !\Shifter|stage[3][10]~92_combout\ & ( !\Shifter|stage[3][26]~94_combout\ & ( (\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][34]~96_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][34]~96_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][18]~93_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][10]~92_combout\,
	dataf => \Shifter|ALT_INV_stage[3][26]~94_combout\,
	combout => \Shifter|stage[5][10]~161_combout\);

-- Location: MLABCELL_X42_Y31_N22
\Y_internal~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~33_combout\ = ( \Shifter|stage[5][10]~161_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][53]~160_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][42]~162_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][10]~161_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][53]~160_combout\ & \Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][42]~162_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010000101010111011000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][42]~162_combout\,
	datac => \Shifter|ALT_INV_stage[5][53]~160_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][10]~161_combout\,
	combout => \Y_internal~33_combout\);

-- Location: LABCELL_X45_Y33_N30
\Y_internal~32\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~32_combout\ = ( \Y_internal~2_combout\ & ( (!\B[10]~input_o\ & (\A[10]~input_o\)) # (\B[10]~input_o\ & ((!\A[10]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\Y_internal~2_combout\ & ( (\B[10]~input_o\ & (\A[10]~input_o\ & 
-- \Y_internal~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110110011101100111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_Y_internal~2_combout\,
	combout => \Y_internal~32_combout\);

-- Location: LABCELL_X45_Y33_N28
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\B[10]~input_o\ $ (!\A[10]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y33_N32
\Y_internal~34\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~34_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~32_combout\)))) # (\Y_internal~5_combout\ & (((\Y_internal~33_combout\)) # (\Y_internal~0_combout\))) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~32_combout\)))) # (\Y_internal~5_combout\ & (!\Y_internal~0_combout\ & (\Y_internal~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~33_combout\,
	datad => \ALT_INV_Y_internal~32_combout\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~34_combout\);

-- Location: LABCELL_X45_Y33_N22
\Y_internal~35\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~35_combout\ = ( \A[11]~input_o\ & ( !\Y_internal~2_combout\ $ (((!\B[11]~input_o\) # (!\Y_internal~3_combout\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & \Y_internal~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_Y_internal~2_combout\,
	datad => \ALT_INV_Y_internal~3_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Y_internal~35_combout\);

-- Location: LABCELL_X45_Y33_N4
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\ = ( \A[11]~input_o\ & ( !\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\ $ (!\B[11]~input_o\)) ) ) # ( !\A[11]~input_o\ & ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\ $ (\B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LABCELL_X40_Y33_N10
\Shifter|stage[5][11]~164\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][11]~164_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][35]~108_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shifter|stage[3][11]~104_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][19]~105_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (\Shifter|stage[3][35]~108_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][11]~104_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][19]~105_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][35]~108_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][11]~104_combout\,
	datad => \Shifter|ALT_INV_stage[3][19]~105_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][27]~106_combout\,
	combout => \Shifter|stage[5][11]~164_combout\);

-- Location: LABCELL_X45_Y31_N22
\Shifter|stage[5][52]~163\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][52]~163_combout\ = ( \Shifter|stage[3][60]~101_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][52]~121_combout\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( 
-- !\Shifter|stage[3][60]~101_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][52]~121_combout\ & (!\B[3]~input_o\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][52]~121_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][60]~101_combout\,
	combout => \Shifter|stage[5][52]~163_combout\);

-- Location: LABCELL_X40_Y33_N14
\Shifter|stage[5][43]~165\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][43]~165_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][51]~110_combout\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # 
-- (\Shifter|stage[3][59]~111_combout\))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][51]~110_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][59]~111_combout\ & (!\B[3]~input_o\))) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][51]~110_combout\)))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\)) # (\Shifter|stage[3][59]~111_combout\))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][43]~109_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\ & \Shifter|stage[3][51]~110_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][59]~111_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][59]~111_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][51]~110_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][43]~109_combout\,
	combout => \Shifter|stage[5][43]~165_combout\);

-- Location: MLABCELL_X46_Y29_N8
\Y_internal~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~36_combout\ = ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|stage[5][43]~165_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][11]~164_combout\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][52]~163_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][11]~164_combout\,
	datac => \Shifter|ALT_INV_stage[5][52]~163_combout\,
	datad => \Shifter|ALT_INV_stage[5][43]~165_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~36_combout\);

-- Location: LABCELL_X45_Y33_N34
\Y_internal~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~37_combout\ = ( \Y_internal~36_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~35_combout\)))) # (\Y_internal~5_combout\ & ((!\Y_internal~0_combout\) # ((\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\)))) ) ) # ( 
-- !\Y_internal~36_combout\ & ( (!\Y_internal~5_combout\ & (((\Y_internal~35_combout\)))) # (\Y_internal~5_combout\ & (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_Y_internal~35_combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~36_combout\,
	combout => \Y_internal~37_combout\);

-- Location: LABCELL_X50_Y30_N22
\Y_internal~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~38_combout\ = ( !\FuncClass[1]~input_o\ & ( \Y_internal~0_combout\ & ( \FuncClass[0]~input_o\ ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\Y_internal~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	combout => \Y_internal~38_combout\);

-- Location: LABCELL_X47_Y33_N36
\Y_internal~39\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~39_combout\ = ( \Y_internal~0_combout\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\Y_internal~0_combout\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	combout => \Y_internal~39_combout\);

-- Location: LABCELL_X45_Y33_N10
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ = ( \B[12]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (!\A[12]~input_o\)) ) ) # ( !\B[12]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y31_N2
\Shifter|stage[5][44]~168\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][44]~168_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][60]~101_combout\ & ( ((!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][52]~121_combout\)))) # (\B[4]~input_o\) ) ) ) 
-- # ( !\Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][60]~101_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][52]~121_combout\))))) # (\B[4]~input_o\ & (!\B[3]~input_o\)) 
-- ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][60]~101_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][52]~121_combout\))))) # (\B[4]~input_o\ & 
-- (\B[3]~input_o\)) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][60]~101_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][52]~121_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][44]~120_combout\,
	datad => \Shifter|ALT_INV_stage[3][52]~121_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][60]~101_combout\,
	combout => \Shifter|stage[5][44]~168_combout\);

-- Location: LABCELL_X40_Y33_N18
\Shifter|stage[5][51]~166\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][51]~166_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][59]~111_combout\ & ( ((\Shifter|stage[3][51]~110_combout\) # (\B[3]~input_o\)) # (\B[4]~input_o\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( 
-- \Shifter|stage[3][59]~111_combout\ & ( (!\B[4]~input_o\ & ((\Shifter|stage[3][51]~110_combout\) # (\B[3]~input_o\))) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][59]~111_combout\ & ( ((!\B[3]~input_o\ & 
-- \Shifter|stage[3][51]~110_combout\)) # (\B[4]~input_o\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][59]~111_combout\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shifter|stage[3][51]~110_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010101011111010100001010101010100101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][51]~110_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][59]~111_combout\,
	combout => \Shifter|stage[5][51]~166_combout\);

-- Location: LABCELL_X45_Y31_N18
\Shifter|stage[5][12]~167\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][12]~167_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][36]~119_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][28]~117_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][36]~119_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shifter|stage[3][12]~115_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][20]~116_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][36]~119_combout\ & ( (\Shifter|stage[3][28]~117_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][36]~119_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][12]~115_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][20]~116_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][28]~117_combout\,
	datab => \Shifter|ALT_INV_stage[3][20]~116_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][12]~115_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][36]~119_combout\,
	combout => \Shifter|stage[5][12]~167_combout\);

-- Location: MLABCELL_X46_Y29_N32
\Y_internal~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~41_combout\ = ( \Shifter|stage[5][12]~167_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\ShiftCount[5]~0_combout\)) # (\Shifter|stage[5][44]~168_combout\))) # (\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][51]~166_combout\ & 
-- !\ShiftCount[5]~0_combout\)))) ) ) # ( !\Shifter|stage[5][12]~167_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][44]~168_combout\ & ((\ShiftCount[5]~0_combout\)))) # (\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][51]~166_combout\ & 
-- !\ShiftCount[5]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][44]~168_combout\,
	datab => \Shifter|ALT_INV_stage[5][51]~166_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][12]~167_combout\,
	combout => \Y_internal~41_combout\);

-- Location: MLABCELL_X46_Y33_N34
\Y_internal~40\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~40_combout\ = ( \B[12]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[0]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\A[12]~input_o\)))) ) ) # ( !\B[12]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[0]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[12]~input_o\)))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & (\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100101111011010110010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Y_internal~40_combout\);

-- Location: MLABCELL_X49_Y33_N30
\Y_internal~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~42_combout\ = ( \Y_internal~40_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (((\Y_internal~41_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~40_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- ((\Y_internal~41_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~41_combout\,
	dataf => \ALT_INV_Y_internal~40_combout\,
	combout => \Y_internal~42_combout\);

-- Location: LABCELL_X40_Y31_N30
\Shifter|stage[5][50]~169\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][50]~169_combout\ = ( \Shifter|stage[3][50]~98_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\) # ((\Shifter|stage[3][58]~99_combout\)))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[3][50]~98_combout\ 
-- & ( (!\B[4]~input_o\ & (\B[3]~input_o\ & (\Shifter|stage[3][58]~99_combout\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][58]~99_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][50]~98_combout\,
	combout => \Shifter|stage[5][50]~169_combout\);

-- Location: MLABCELL_X42_Y31_N6
\Shifter|stage[5][45]~171\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][45]~171_combout\ = ( \Shifter|stage[3][53]~131_combout\ & ( \Shifter|sign_bit~0_combout\ & ( ((!\B[4]~input_o\ & ((\Shifter|stage[3][45]~130_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][61]~89_combout\))) # (\B[3]~input_o\) ) ) ) # 
-- ( !\Shifter|stage[3][53]~131_combout\ & ( \Shifter|sign_bit~0_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][45]~130_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][61]~89_combout\))) ) ) ) # ( 
-- \Shifter|stage[3][53]~131_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\Shifter|stage[3][45]~130_combout\)))) # (\B[4]~input_o\ & (\Shifter|stage[3][61]~89_combout\ & ((!\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[3][53]~131_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][45]~130_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][61]~89_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][61]~89_combout\,
	datac => \Shifter|ALT_INV_stage[3][45]~130_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][53]~131_combout\,
	dataf => \Shifter|ALT_INV_sign_bit~0_combout\,
	combout => \Shifter|stage[5][45]~171_combout\);

-- Location: MLABCELL_X42_Y31_N2
\Shifter|stage[5][13]~170\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][13]~170_combout\ = ( \Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( ((!\B[4]~input_o\ & (\Shifter|stage[3][13]~125_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][29]~127_combout\)))) # (\B[3]~input_o\) 
-- ) ) ) # ( !\Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][13]~125_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # (\Shifter|stage[3][29]~127_combout\)))) ) ) ) 
-- # ( \Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][13]~125_combout\))) # (\B[4]~input_o\ & (((\Shifter|stage[3][29]~127_combout\ & !\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & (\Shifter|stage[3][13]~125_combout\)) # (\B[4]~input_o\ & ((\Shifter|stage[3][29]~127_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][13]~125_combout\,
	datac => \Shifter|ALT_INV_stage[3][29]~127_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][21]~126_combout\,
	dataf => \Shifter|ALT_INV_stage[3][37]~129_combout\,
	combout => \Shifter|stage[5][13]~170_combout\);

-- Location: LABCELL_X40_Y31_N20
\Y_internal~44\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~44_combout\ = ( \Shifter|stage[5][13]~170_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)) # (\Shifter|stage[5][50]~169_combout\))) # (\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][45]~171_combout\ & 
-- !\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][13]~170_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][50]~169_combout\ & ((\Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][45]~171_combout\ & 
-- !\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010010001010101111001000101010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][50]~169_combout\,
	datac => \Shifter|ALT_INV_stage[5][45]~171_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][13]~170_combout\,
	combout => \Y_internal~44_combout\);

-- Location: MLABCELL_X46_Y33_N4
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\ = ( \A[13]~input_o\ & ( !\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\B[13]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\A[13]~input_o\ & ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\B[13]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y33_N32
\Y_internal~43\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~43_combout\ = ( \B[13]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[1]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\A[13]~input_o\)))) ) ) # ( !\B[13]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[1]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[13]~input_o\)))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & (\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100101111011010110010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Y_internal~43_combout\);

-- Location: LABCELL_X47_Y33_N2
\Y_internal~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~45_combout\ = ( \Y_internal~43_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (((\Y_internal~44_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~43_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- (\Y_internal~44_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~44_combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~43_combout\,
	combout => \Y_internal~45_combout\);

-- Location: MLABCELL_X39_Y32_N12
\Shifter|stage[5][49]~172\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][49]~172_combout\ = ( \Shifter|stage[3][57]~87_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][49]~82_combout\)) # (\B[3]~input_o\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) ) # ( !\Shifter|stage[3][57]~87_combout\ 
-- & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shifter|stage[3][49]~82_combout\))) # (\B[4]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][49]~82_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][57]~87_combout\,
	combout => \Shifter|stage[5][49]~172_combout\);

-- Location: LABCELL_X38_Y32_N2
\Shifter|stage[5][46]~174\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][46]~174_combout\ = ( \Shifter|stage[3][54]~141_combout\ & ( \Shifter|sign_bit~0_combout\ & ( ((!\B[4]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][62]~45_combout\))) # (\B[3]~input_o\) ) ) ) # 
-- ( !\Shifter|stage[3][54]~141_combout\ & ( \Shifter|sign_bit~0_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][46]~140_combout\ & !\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][62]~45_combout\))) ) ) ) # ( 
-- \Shifter|stage[3][54]~141_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\) # (\Shifter|stage[3][46]~140_combout\)))) # (\B[4]~input_o\ & (\Shifter|stage[3][62]~45_combout\ & ((!\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[3][54]~141_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][62]~45_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][62]~45_combout\,
	datab => \Shifter|ALT_INV_stage[3][46]~140_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][54]~141_combout\,
	dataf => \Shifter|ALT_INV_sign_bit~0_combout\,
	combout => \Shifter|stage[5][46]~174_combout\);

-- Location: LABCELL_X38_Y32_N36
\Shifter|stage[5][14]~173\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][14]~173_combout\ = ( \Shifter|stage[3][38]~139_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( ((!\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][22]~136_combout\)))) # (\B[4]~input_o\) 
-- ) ) ) # ( !\Shifter|stage[3][38]~139_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][22]~136_combout\))))) # (\B[4]~input_o\ & 
-- (((!\B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][38]~139_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][22]~136_combout\))))) # 
-- (\B[4]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][38]~139_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][14]~135_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][22]~136_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][14]~135_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][22]~136_combout\,
	datae => \Shifter|ALT_INV_stage[3][38]~139_combout\,
	dataf => \Shifter|ALT_INV_stage[3][30]~137_combout\,
	combout => \Shifter|stage[5][14]~173_combout\);

-- Location: MLABCELL_X42_Y32_N14
\Y_internal~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~47_combout\ = ( \Shifter|stage[5][14]~173_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)) # (\Shifter|stage[5][49]~172_combout\))) # (\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\ & 
-- \Shifter|stage[5][46]~174_combout\)))) ) ) # ( !\Shifter|stage[5][14]~173_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][49]~172_combout\ & (\Shifter|Equal2~0_combout\))) # (\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\ & 
-- \Shifter|stage[5][46]~174_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000000100101001010100010111100101010001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][49]~172_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][46]~174_combout\,
	dataf => \Shifter|ALT_INV_stage[5][14]~173_combout\,
	combout => \Y_internal~47_combout\);

-- Location: MLABCELL_X46_Y33_N38
\Y_internal~46\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~46_combout\ = ( \A[14]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[2]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\B[14]~input_o\)))) ) ) # ( !\A[14]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[2]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[14]~input_o\)))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & (\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100101111011010110010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Y_internal~46_combout\);

-- Location: MLABCELL_X46_Y33_N28
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\A[14]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[14]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\A[14]~input_o\ $ (!\AddnSub~input_o\ $ (\B[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LABCELL_X47_Y33_N4
\Y_internal~48\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~48_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~47_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~46_combout\))))) ) ) # ( !\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~47_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~46_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~47_combout\,
	datad => \ALT_INV_Y_internal~46_combout\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~48_combout\);

-- Location: MLABCELL_X42_Y29_N2
\Shifter|stage[5][47]~177\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][47]~177_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][47]~150_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|stage[3][55]~151_combout\))) # (\B[4]~input_o\ & (((\B[3]~input_o\) # 
-- (\Shifter|stage[3][63]~152_combout\)))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \Shifter|stage[3][47]~150_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|stage[3][55]~151_combout\))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][63]~152_combout\ & !\B[3]~input_o\)))) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][47]~150_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][55]~151_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (((\B[3]~input_o\) # (\Shifter|stage[3][63]~152_combout\)))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[3][47]~150_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][55]~151_combout\ & ((\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][63]~152_combout\ & !\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][55]~151_combout\,
	datab => \Shifter|ALT_INV_stage[3][63]~152_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[3][47]~150_combout\,
	combout => \Shifter|stage[5][47]~177_combout\);

-- Location: LABCELL_X40_Y33_N2
\Shifter|stage[5][48]~175\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][48]~175_combout\ = ( \B[4]~input_o\ & ( \Shifter|sign_bit~0_combout\ ) ) # ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][48]~38_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][56]~43_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100110011001101010000010111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][48]~38_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][56]~43_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	combout => \Shifter|stage[5][48]~175_combout\);

-- Location: MLABCELL_X42_Y29_N36
\Shifter|stage[5][15]~176\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][15]~176_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][31]~147_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][39]~149_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][23]~146_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][15]~145_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][31]~147_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][39]~149_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][23]~146_combout\ & ( (\Shifter|stage[3][15]~145_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][15]~145_combout\,
	datab => \Shifter|ALT_INV_stage[3][39]~149_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][31]~147_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][23]~146_combout\,
	combout => \Shifter|stage[5][15]~176_combout\);

-- Location: MLABCELL_X44_Y29_N28
\Y_internal~50\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~50_combout\ = ( \ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][47]~177_combout\ & !\Shifter|Equal2~0_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][15]~176_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][48]~175_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][47]~177_combout\,
	datab => \Shifter|ALT_INV_stage[5][48]~175_combout\,
	datac => \Shifter|ALT_INV_stage[5][15]~176_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~50_combout\);

-- Location: MLABCELL_X46_Y33_N36
\Y_internal~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~49_combout\ = ( \B[3]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[15]~input_o\ $ (!\A[15]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # 
-- (\LogicFN[0]~input_o\ & (\B[15]~input_o\ & \A[15]~input_o\)))) ) ) # ( !\B[3]~input_o\ & ( (!\B[15]~input_o\ & (\A[15]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[15]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[15]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100101000001100110010110001110111011011000111011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_internal~49_combout\);

-- Location: MLABCELL_X46_Y33_N18
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ = ( \B[15]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[15]~input_o\ $ (!\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) ) # ( !\B[15]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\A[15]~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LABCELL_X47_Y33_N0
\Y_internal~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~51_combout\ = ( \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~50_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~49_combout\))))) ) ) # ( !\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~50_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~50_combout\,
	datad => \ALT_INV_Y_internal~49_combout\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~51_combout\);

-- Location: LABCELL_X43_Y29_N16
\Shifter|stage[5][16]~178\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][16]~178_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][40]~33_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & 
-- ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][24]~22_combout\)) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (\B[3]~input_o\ & \Shifter|stage[3][40]~33_combout\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][16]~17_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][24]~22_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][24]~22_combout\,
	datab => \Shifter|ALT_INV_stage[3][16]~17_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][40]~33_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][32]~28_combout\,
	combout => \Shifter|stage[5][16]~178_combout\);

-- Location: MLABCELL_X44_Y29_N30
\Y_internal~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~53_combout\ = ( \ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][48]~175_combout\ & !\Shifter|Equal2~0_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][16]~178_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][47]~177_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][47]~177_combout\,
	datab => \Shifter|ALT_INV_stage[5][48]~175_combout\,
	datac => \Shifter|ALT_INV_stage[5][16]~178_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~53_combout\);

-- Location: MLABCELL_X49_Y33_N12
\Y_internal~52\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~52_combout\ = ( \B[4]~input_o\ & ( (!\B[16]~input_o\ & ((!\A[16]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[16]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\B[16]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\A[16]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[4]~input_o\ & ( (!\B[16]~input_o\ & (\A[16]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[16]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\A[16]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Y_internal~52_combout\);

-- Location: MLABCELL_X49_Y33_N14
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ( !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (\AddnSub~input_o\)) ) ) # ( !\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ( 
-- !\B[16]~input_o\ $ (!\A[16]~input_o\ $ (!\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X49_Y33_N28
\Y_internal~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~54_combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~53_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~52_combout\))))) ) ) # ( !\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~53_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~52_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~53_combout\,
	datad => \ALT_INV_Y_internal~52_combout\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~54_combout\);

-- Location: LABCELL_X47_Y33_N10
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ & ( !\A[17]~input_o\ $ (!\B[17]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: MLABCELL_X39_Y32_N24
\Shifter|stage[5][17]~179\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][17]~179_combout\ = ( \Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( ((!\B[3]~input_o\ & (\Shifter|stage[3][17]~61_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][25]~66_combout\)))) # (\B[4]~input_o\) ) ) 
-- ) # ( !\Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][17]~61_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][25]~66_combout\))))) # (\B[4]~input_o\ & 
-- (((!\B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][17]~61_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][25]~66_combout\))))) # 
-- (\B[4]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][17]~61_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][25]~66_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][17]~61_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][25]~66_combout\,
	datae => \Shifter|ALT_INV_stage[3][41]~77_combout\,
	dataf => \Shifter|ALT_INV_stage[3][33]~72_combout\,
	combout => \Shifter|stage[5][17]~179_combout\);

-- Location: MLABCELL_X42_Y32_N12
\Y_internal~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~56_combout\ = ( \Shifter|stage[5][17]~179_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][46]~174_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][49]~172_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][17]~179_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][46]~174_combout\ & \Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][49]~172_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010000101010111011000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][49]~172_combout\,
	datac => \Shifter|ALT_INV_stage[5][46]~174_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][17]~179_combout\,
	combout => \Y_internal~56_combout\);

-- Location: LABCELL_X47_Y33_N8
\Y_internal~55\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~55_combout\ = ( \B[5]~input_o\ & ( (!\A[17]~input_o\ & ((!\B[17]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[17]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\A[17]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\B[17]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\A[17]~input_o\ & (\B[17]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\A[17]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\B[17]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Y_internal~55_combout\);

-- Location: LABCELL_X47_Y33_N6
\Y_internal~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~57_combout\ = ( \Y_internal~55_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (((\Y_internal~56_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~55_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- ((\Y_internal~56_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~56_combout\,
	dataf => \ALT_INV_Y_internal~55_combout\,
	combout => \Y_internal~57_combout\);

-- Location: LABCELL_X50_Y33_N22
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\A[18]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\A[18]~input_o\ $ (!\AddnSub~input_o\ $ (\B[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LABCELL_X40_Y31_N24
\Shifter|stage[5][18]~180\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][18]~180_combout\ = ( \B[3]~input_o\ & ( \Shifter|stage[3][26]~94_combout\ & ( (!\B[4]~input_o\) # (\Shifter|stage[3][42]~97_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shifter|stage[3][26]~94_combout\ & ( (!\B[4]~input_o\ & 
-- ((\Shifter|stage[3][18]~93_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][34]~96_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shifter|stage[3][26]~94_combout\ & ( (\B[4]~input_o\ & \Shifter|stage[3][42]~97_combout\) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shifter|stage[3][26]~94_combout\ & ( (!\B[4]~input_o\ & ((\Shifter|stage[3][18]~93_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][34]~96_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][34]~96_combout\,
	datab => \Shifter|ALT_INV_stage[3][18]~93_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][42]~97_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][26]~94_combout\,
	combout => \Shifter|stage[5][18]~180_combout\);

-- Location: LABCELL_X40_Y31_N22
\Y_internal~59\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~59_combout\ = ( \Shifter|stage[5][18]~180_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][45]~171_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][50]~169_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][18]~180_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][45]~171_combout\ & \Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][50]~169_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010000101010111011000010101011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][50]~169_combout\,
	datac => \Shifter|ALT_INV_stage[5][45]~171_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][18]~180_combout\,
	combout => \Y_internal~59_combout\);

-- Location: LABCELL_X47_Y33_N14
\Y_internal~58\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~58_combout\ = ( \A[18]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[6]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[18]~input_o\))))) ) ) # ( !\A[18]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & (\B[6]~input_o\)) # (\LogicFN[1]~input_o\ & ((\B[18]~input_o\))))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & ((\B[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110001110110110111000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Y_internal~58_combout\);

-- Location: LABCELL_X47_Y33_N16
\Y_internal~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~60_combout\ = ( \Y_internal~58_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (((\Y_internal~59_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~58_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- ((\Y_internal~59_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~59_combout\,
	dataf => \ALT_INV_Y_internal~58_combout\,
	combout => \Y_internal~60_combout\);

-- Location: LABCELL_X47_Y33_N24
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ = ( \A[19]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (!\B[19]~input_o\)) ) ) # ( !\A[19]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (\B[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LABCELL_X40_Y33_N6
\Shifter|stage[5][19]~181\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][19]~181_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][35]~108_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][43]~109_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][27]~106_combout\ & ( (\Shifter|stage[3][19]~105_combout\) # (\B[3]~input_o\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][35]~108_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][43]~109_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & \Shifter|stage[3][19]~105_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][43]~109_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][35]~108_combout\,
	datad => \Shifter|ALT_INV_stage[3][19]~105_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][27]~106_combout\,
	combout => \Shifter|stage[5][19]~181_combout\);

-- Location: MLABCELL_X46_Y29_N34
\Y_internal~62\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~62_combout\ = ( \Shifter|Equal2~0_combout\ & ( (\Shifter|stage[5][44]~168_combout\ & !\ShiftCount[5]~0_combout\) ) ) # ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][19]~181_combout\))) # 
-- (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][51]~166_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][44]~168_combout\,
	datab => \Shifter|ALT_INV_stage[5][51]~166_combout\,
	datac => \ALT_INV_ShiftCount[5]~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][19]~181_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~62_combout\);

-- Location: LABCELL_X50_Y33_N26
\Y_internal~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~61_combout\ = ( \A[19]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[7]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[19]~input_o\))))) ) ) # ( !\A[19]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & (\B[7]~input_o\)) # (\LogicFN[1]~input_o\ & ((\B[19]~input_o\))))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & ((\B[19]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110001110110110111000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Y_internal~61_combout\);

-- Location: LABCELL_X50_Y33_N8
\Y_internal~63\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~63_combout\ = ( \Y_internal~61_combout\ & ( \Y_internal~38_combout\ & ( (\Y_internal~62_combout\) # (\Y_internal~39_combout\) ) ) ) # ( !\Y_internal~61_combout\ & ( \Y_internal~38_combout\ & ( (!\Y_internal~39_combout\ & 
-- \Y_internal~62_combout\) ) ) ) # ( \Y_internal~61_combout\ & ( !\Y_internal~38_combout\ & ( (\Y_internal~39_combout\ & \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\) ) ) ) # ( !\Y_internal~61_combout\ & ( !\Y_internal~38_combout\ & ( 
-- (\Y_internal~39_combout\ & \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~39_combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	datac => \ALT_INV_Y_internal~62_combout\,
	datae => \ALT_INV_Y_internal~61_combout\,
	dataf => \ALT_INV_Y_internal~38_combout\,
	combout => \Y_internal~63_combout\);

-- Location: LABCELL_X45_Y31_N26
\Shifter|stage[5][20]~182\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][20]~182_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][44]~120_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][36]~119_combout\) ) ) ) # ( !\B[4]~input_o\ & ( \Shifter|stage[3][44]~120_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shifter|stage[3][20]~116_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][28]~117_combout\))) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][44]~120_combout\ & ( (\Shifter|stage[3][36]~119_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[4]~input_o\ & ( 
-- !\Shifter|stage[3][44]~120_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][20]~116_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][28]~117_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][36]~119_combout\,
	datab => \Shifter|ALT_INV_stage[3][20]~116_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][28]~117_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][44]~120_combout\,
	combout => \Shifter|stage[5][20]~182_combout\);

-- Location: MLABCELL_X46_Y31_N18
\Y_internal~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~65_combout\ = ( \Shifter|stage[5][20]~182_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\) # ((\Shifter|stage[5][52]~163_combout\)))) # (\Shifter|Equal2~0_combout\ & (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][43]~165_combout\))) ) ) # ( !\Shifter|stage[5][20]~182_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][52]~163_combout\)))) # (\Shifter|Equal2~0_combout\ & (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][43]~165_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][43]~165_combout\,
	datad => \Shifter|ALT_INV_stage[5][52]~163_combout\,
	dataf => \Shifter|ALT_INV_stage[5][20]~182_combout\,
	combout => \Y_internal~65_combout\);

-- Location: LABCELL_X47_Y33_N28
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ = ( \A[20]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (!\B[20]~input_o\)) ) ) # ( !\A[20]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\B[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LABCELL_X47_Y33_N12
\Y_internal~64\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~64_combout\ = ( \A[20]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[8]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[20]~input_o\))))) ) ) # ( !\A[20]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & (\B[8]~input_o\)) # (\LogicFN[1]~input_o\ & ((\B[20]~input_o\))))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & ((\B[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110001110110110111000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Y_internal~64_combout\);

-- Location: LABCELL_X47_Y33_N18
\Y_internal~66\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~66_combout\ = ( \Y_internal~64_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (((\Y_internal~65_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~64_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- (\Y_internal~65_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~65_combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~64_combout\,
	combout => \Y_internal~66_combout\);

-- Location: MLABCELL_X42_Y31_N10
\Shifter|stage[5][21]~183\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][21]~183_combout\ = ( \Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[3]~input_o\) # ((!\B[4]~input_o\ & ((\Shifter|stage[3][29]~127_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][45]~130_combout\))) 
-- ) ) ) # ( !\Shifter|stage[3][21]~126_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][29]~127_combout\ & \B[3]~input_o\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # (\Shifter|stage[3][45]~130_combout\))) ) ) ) 
-- # ( \Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\) # (\Shifter|stage[3][29]~127_combout\)))) # (\B[4]~input_o\ & (\Shifter|stage[3][45]~130_combout\ & ((\B[3]~input_o\)))) ) ) ) # ( 
-- !\Shifter|stage[3][21]~126_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (\B[3]~input_o\ & ((!\B[4]~input_o\ & ((\Shifter|stage[3][29]~127_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][45]~130_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][45]~130_combout\,
	datac => \Shifter|ALT_INV_stage[3][29]~127_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][21]~126_combout\,
	dataf => \Shifter|ALT_INV_stage[3][37]~129_combout\,
	combout => \Shifter|stage[5][21]~183_combout\);

-- Location: MLABCELL_X46_Y31_N16
\Y_internal~68\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~68_combout\ = ( \Shifter|stage[5][42]~162_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][21]~183_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][53]~160_combout\)))) # 
-- (\Shifter|Equal2~0_combout\ & (!\ShiftCount[5]~0_combout\)) ) ) # ( !\Shifter|stage[5][42]~162_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][21]~183_combout\))) # (\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][53]~160_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][53]~160_combout\,
	datad => \Shifter|ALT_INV_stage[5][21]~183_combout\,
	dataf => \Shifter|ALT_INV_stage[5][42]~162_combout\,
	combout => \Y_internal~68_combout\);

-- Location: LABCELL_X50_Y33_N0
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ = ( \B[21]~input_o\ & ( !\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\ $ (!\A[21]~input_o\)) ) ) # ( !\B[21]~input_o\ & ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\ $ (\A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LABCELL_X53_Y33_N16
\Y_internal~67\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~67_combout\ = ( \A[21]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[9]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\B[21]~input_o\)))) ) ) # ( !\A[21]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[9]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[21]~input_o\)))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & (\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100101111011010110010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Y_internal~67_combout\);

-- Location: LABCELL_X50_Y33_N14
\Y_internal~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~69_combout\ = ( \Y_internal~67_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (((\Y_internal~68_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~67_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- (\Y_internal~68_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~68_combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~67_combout\,
	combout => \Y_internal~69_combout\);

-- Location: LABCELL_X38_Y32_N4
\Shifter|stage[5][22]~184\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][22]~184_combout\ = ( \Shifter|stage[3][22]~136_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\)))) 
-- ) ) ) # ( !\Shifter|stage[3][22]~136_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][46]~140_combout\))))) ) ) ) # ( \Shifter|stage[3][22]~136_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # 
-- (\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))))) ) ) ) # ( !\Shifter|stage[3][22]~136_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & (\Shifter|stage[3][38]~139_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][46]~140_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][38]~139_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][46]~140_combout\,
	datae => \Shifter|ALT_INV_stage[3][22]~136_combout\,
	dataf => \Shifter|ALT_INV_stage[3][30]~137_combout\,
	combout => \Shifter|stage[5][22]~184_combout\);

-- Location: LABCELL_X38_Y32_N32
\Y_internal~71\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~71_combout\ = ( \Shifter|stage[5][41]~159_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][22]~184_combout\)) # (\Shifter|Equal2~0_combout\))) # (\ShiftCount[5]~0_combout\ & (!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][54]~157_combout\)))) ) ) # ( !\Shifter|stage[5][41]~159_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][22]~184_combout\)) # (\ShiftCount[5]~0_combout\ & 
-- ((\Shifter|stage[5][54]~157_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][22]~184_combout\,
	datad => \Shifter|ALT_INV_stage[5][54]~157_combout\,
	dataf => \Shifter|ALT_INV_stage[5][41]~159_combout\,
	combout => \Y_internal~71_combout\);

-- Location: LABCELL_X50_Y33_N36
\Y_internal~70\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~70_combout\ = ( \B[10]~input_o\ & ( (!\B[22]~input_o\ & ((!\A[22]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[22]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\B[22]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\A[22]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[10]~input_o\ & ( (!\B[22]~input_o\ & (\A[22]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[22]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\A[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Y_internal~70_combout\);

-- Location: LABCELL_X50_Y33_N38
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\B[22]~input_o\ $ (!\A[22]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LABCELL_X50_Y33_N12
\Y_internal~72\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~72_combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~71_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~70_combout\))))) ) ) # ( !\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~71_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~70_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~71_combout\,
	datad => \ALT_INV_Y_internal~70_combout\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~72_combout\);

-- Location: MLABCELL_X42_Y29_N4
\Shifter|stage[5][23]~185\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][23]~185_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][39]~149_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][47]~150_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][31]~147_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][23]~146_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][39]~149_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][47]~150_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][23]~146_combout\ & ( (\Shifter|stage[3][31]~147_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][47]~150_combout\,
	datab => \Shifter|ALT_INV_stage[3][31]~147_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][39]~149_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][23]~146_combout\,
	combout => \Shifter|stage[5][23]~185_combout\);

-- Location: MLABCELL_X44_Y29_N24
\Y_internal~74\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~74_combout\ = ( \Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & \Shifter|stage[5][40]~156_combout\) ) ) # ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][23]~185_combout\)) # 
-- (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][55]~154_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][40]~156_combout\,
	datac => \Shifter|ALT_INV_stage[5][23]~185_combout\,
	datad => \Shifter|ALT_INV_stage[5][55]~154_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~74_combout\);

-- Location: LABCELL_X50_Y33_N20
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[23]~input_o\ $ (!\B[23]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[23]~input_o\ $ (\B[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LABCELL_X50_Y33_N32
\Y_internal~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~73_combout\ = ( \B[11]~input_o\ & ( (!\A[23]~input_o\ & ((!\B[23]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[23]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\A[23]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\B[23]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[11]~input_o\ & ( (!\A[23]~input_o\ & (\B[23]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\A[23]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\B[23]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Y_internal~73_combout\);

-- Location: MLABCELL_X49_Y33_N16
\Y_internal~75\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~75_combout\ = ( \Y_internal~73_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (((\Y_internal~74_combout\)) # 
-- (\Y_internal~39_combout\))) ) ) # ( !\Y_internal~73_combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\)))) # (\Y_internal~38_combout\ & (!\Y_internal~39_combout\ & 
-- (\Y_internal~74_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~74_combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~73_combout\,
	combout => \Y_internal~75_combout\);

-- Location: LABCELL_X43_Y29_N0
\Shifter|stage[5][24]~186\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][24]~186_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][40]~33_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][48]~38_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][32]~28_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][24]~22_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][40]~33_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][48]~38_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][32]~28_combout\ & ( (\Shifter|stage[3][24]~22_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][24]~22_combout\,
	datab => \Shifter|ALT_INV_stage[3][48]~38_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][40]~33_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][32]~28_combout\,
	combout => \Shifter|stage[5][24]~186_combout\);

-- Location: MLABCELL_X42_Y29_N34
\Y_internal~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~77_combout\ = ( \ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][56]~143_combout\ & !\Shifter|Equal2~0_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][24]~186_combout\)) # 
-- (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][39]~153_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][56]~143_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][24]~186_combout\,
	datad => \Shifter|ALT_INV_stage[5][39]~153_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~77_combout\);

-- Location: MLABCELL_X49_Y33_N0
\Y_internal~76\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~76_combout\ = ( \B[12]~input_o\ & ( (!\A[24]~input_o\ & ((!\B[24]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[24]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\A[24]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\B[24]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[12]~input_o\ & ( (!\A[24]~input_o\ & (\B[24]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\A[24]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\B[24]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Y_internal~76_combout\);

-- Location: MLABCELL_X49_Y33_N2
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ & ( !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (\AddnSub~input_o\)) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ & ( 
-- !\A[24]~input_o\ $ (!\B[24]~input_o\ $ (!\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X49_Y33_N18
\Y_internal~78\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~78_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~77_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~76_combout\))))) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~77_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~76_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~77_combout\,
	datad => \ALT_INV_Y_internal~76_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~78_combout\);

-- Location: MLABCELL_X39_Y32_N10
\Shifter|stage[5][25]~187\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][25]~187_combout\ = ( \Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][25]~66_combout\))) # (\B[4]~input_o\ & (((!\B[3]~input_o\) # 
-- (\Shifter|stage[3][49]~82_combout\)))) ) ) ) # ( !\Shifter|stage[3][41]~77_combout\ & ( \Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)) # (\Shifter|stage[3][25]~66_combout\))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][49]~82_combout\ & \B[3]~input_o\)))) ) ) ) # ( \Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][25]~66_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (((!\B[3]~input_o\) # (\Shifter|stage[3][49]~82_combout\)))) ) ) ) # ( !\Shifter|stage[3][41]~77_combout\ & ( !\Shifter|stage[3][33]~72_combout\ & ( (!\B[4]~input_o\ & (\Shifter|stage[3][25]~66_combout\ & ((!\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (((\Shifter|stage[3][49]~82_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][25]~66_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][49]~82_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][41]~77_combout\,
	dataf => \Shifter|ALT_INV_stage[3][33]~72_combout\,
	combout => \Shifter|stage[5][25]~187_combout\);

-- Location: LABCELL_X45_Y29_N30
\Y_internal~80\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~80_combout\ = ( \Shifter|stage[5][38]~142_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][25]~187_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][57]~133_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][38]~142_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][25]~187_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][57]~133_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][57]~133_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][25]~187_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][38]~142_combout\,
	combout => \Y_internal~80_combout\);

-- Location: MLABCELL_X49_Y33_N4
\Y_internal~79\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~79_combout\ = ( \LogicFN[0]~input_o\ & ( \B[25]~input_o\ & ( !\A[25]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[25]~input_o\ & ( (\LogicFN[1]~input_o\) # (\B[13]~input_o\) ) ) ) # ( \LogicFN[0]~input_o\ & ( 
-- !\B[25]~input_o\ & ( (\A[25]~input_o\ & !\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\B[25]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((\B[13]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011001100110000000000001111111111111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Y_internal~79_combout\);

-- Location: LABCELL_X53_Y33_N28
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ = ( \A[25]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (!\B[25]~input_o\)) ) ) # ( !\A[25]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (\B[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LABCELL_X53_Y33_N2
\Y_internal~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~81_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~80_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~79_combout\))))) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~80_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~79_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~80_combout\,
	datad => \ALT_INV_Y_internal~79_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~81_combout\);

-- Location: LABCELL_X40_Y31_N8
\Shifter|stage[5][26]~188\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][26]~188_combout\ = ( \B[3]~input_o\ & ( \Shifter|stage[3][50]~98_combout\ & ( (\B[4]~input_o\) # (\Shifter|stage[3][34]~96_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shifter|stage[3][50]~98_combout\ & ( (!\B[4]~input_o\ & 
-- ((\Shifter|stage[3][26]~94_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][42]~97_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shifter|stage[3][50]~98_combout\ & ( (\Shifter|stage[3][34]~96_combout\ & !\B[4]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shifter|stage[3][50]~98_combout\ & ( (!\B[4]~input_o\ & ((\Shifter|stage[3][26]~94_combout\))) # (\B[4]~input_o\ & (\Shifter|stage[3][42]~97_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][34]~96_combout\,
	datab => \Shifter|ALT_INV_stage[3][42]~97_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][26]~94_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][50]~98_combout\,
	combout => \Shifter|stage[5][26]~188_combout\);

-- Location: LABCELL_X45_Y29_N6
\Y_internal~83\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~83_combout\ = ( \Shifter|stage[5][37]~132_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][26]~188_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][58]~123_combout\)))) # 
-- (\Shifter|Equal2~0_combout\ & (!\ShiftCount[5]~0_combout\)) ) ) # ( !\Shifter|stage[5][37]~132_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][26]~188_combout\))) # (\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][58]~123_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][58]~123_combout\,
	datad => \Shifter|ALT_INV_stage[5][26]~188_combout\,
	dataf => \Shifter|ALT_INV_stage[5][37]~132_combout\,
	combout => \Y_internal~83_combout\);

-- Location: LABCELL_X53_Y33_N18
\Y_internal~82\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~82_combout\ = ( \B[26]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[14]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\A[26]~input_o\))))) ) ) # ( !\B[26]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[14]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[26]~input_o\))))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & ((\A[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110010111010110111001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Y_internal~82_combout\);

-- Location: LABCELL_X53_Y33_N6
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\B[26]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[26]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\B[26]~input_o\ $ (!\AddnSub~input_o\ $ (\A[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LABCELL_X53_Y33_N0
\Y_internal~84\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~84_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~83_combout\)) # 
-- (\Y_internal~39_combout\ & ((\Y_internal~82_combout\))))) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & (\Y_internal~83_combout\)) # (\Y_internal~39_combout\ & 
-- ((\Y_internal~82_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~83_combout\,
	datad => \ALT_INV_Y_internal~82_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~84_combout\);

-- Location: LABCELL_X53_Y31_N22
\Y_internal~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~85_combout\ = ( \A[27]~input_o\ & ( \B[27]~input_o\ & ( ((!\LogicFN[0]~input_o\ & \B[15]~input_o\)) # (\LogicFN[1]~input_o\) ) ) ) # ( !\A[27]~input_o\ & ( \B[27]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[15]~input_o\) # 
-- (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\)) ) ) ) # ( \A[27]~input_o\ & ( !\B[27]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[15]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\)) ) ) ) 
-- # ( !\A[27]~input_o\ & ( !\B[27]~input_o\ & ( (!\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000011001101110111001100110111011100011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \Y_internal~85_combout\);

-- Location: LABCELL_X40_Y33_N30
\Shifter|stage[5][27]~189\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][27]~189_combout\ = ( \Shifter|stage[3][51]~110_combout\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (((!\B[4]~input_o\)) # (\Shifter|stage[3][43]~109_combout\))) # (\B[3]~input_o\ & (((\B[4]~input_o\) # 
-- (\Shifter|stage[3][35]~108_combout\)))) ) ) ) # ( !\Shifter|stage[3][51]~110_combout\ & ( \Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (((!\B[4]~input_o\)) # (\Shifter|stage[3][43]~109_combout\))) # (\B[3]~input_o\ & 
-- (((\Shifter|stage[3][35]~108_combout\ & !\B[4]~input_o\)))) ) ) ) # ( \Shifter|stage[3][51]~110_combout\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][43]~109_combout\ & ((\B[4]~input_o\)))) # (\B[3]~input_o\ & 
-- (((\B[4]~input_o\) # (\Shifter|stage[3][35]~108_combout\)))) ) ) ) # ( !\Shifter|stage[3][51]~110_combout\ & ( !\Shifter|stage[3][27]~106_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][43]~109_combout\ & ((\B[4]~input_o\)))) # (\B[3]~input_o\ & 
-- (((\Shifter|stage[3][35]~108_combout\ & !\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][43]~109_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shifter|ALT_INV_stage[3][35]~108_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \Shifter|ALT_INV_stage[3][51]~110_combout\,
	dataf => \Shifter|ALT_INV_stage[3][27]~106_combout\,
	combout => \Shifter|stage[5][27]~189_combout\);

-- Location: LABCELL_X45_Y31_N32
\Y_internal~86\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~86_combout\ = ( \Shifter|stage[5][59]~113_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][27]~189_combout\)))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][36]~122_combout\ & 
-- ((!\ShiftCount[5]~0_combout\)))) ) ) # ( !\Shifter|stage[5][59]~113_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][27]~189_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][36]~122_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][36]~122_combout\,
	datac => \Shifter|ALT_INV_stage[5][27]~189_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][59]~113_combout\,
	combout => \Y_internal~86_combout\);

-- Location: LABCELL_X53_Y33_N4
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[27]~input_o\ $ (!\B[27]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[27]~input_o\ $ (\B[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LABCELL_X53_Y33_N10
\Y_internal~87\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~87_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & ((\Y_internal~86_combout\))) # 
-- (\Y_internal~39_combout\ & (\Y_internal~85_combout\)))) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & ((\Y_internal~86_combout\))) # (\Y_internal~39_combout\ & 
-- (\Y_internal~85_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~85_combout\,
	datad => \ALT_INV_Y_internal~86_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~87_combout\);

-- Location: LABCELL_X53_Y33_N12
\Y_internal~88\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~88_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[28]~input_o\ & (\B[28]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[28]~input_o\ & (!\B[28]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[16]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\B[28]~input_o\)) # (\A[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~88_combout\);

-- Location: LABCELL_X45_Y31_N28
\Shifter|stage[5][28]~190\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][28]~190_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][36]~119_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & ((\Shifter|stage[3][52]~121_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][36]~119_combout\ & ( (\B[3]~input_o\) # (\Shifter|stage[3][28]~117_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][36]~119_combout\ & ( (!\B[3]~input_o\ & (\Shifter|stage[3][44]~120_combout\)) # (\B[3]~input_o\ & 
-- ((\Shifter|stage[3][52]~121_combout\))) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][36]~119_combout\ & ( (\Shifter|stage[3][28]~117_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][28]~117_combout\,
	datab => \Shifter|ALT_INV_stage[3][44]~120_combout\,
	datac => \Shifter|ALT_INV_stage[3][52]~121_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][36]~119_combout\,
	combout => \Shifter|stage[5][28]~190_combout\);

-- Location: MLABCELL_X42_Y32_N30
\Y_internal~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~89_combout\ = ( \Shifter|stage[5][35]~112_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][28]~190_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][60]~102_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][35]~112_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][28]~190_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][60]~102_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][60]~102_combout\,
	datac => \Shifter|ALT_INV_stage[5][28]~190_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][35]~112_combout\,
	combout => \Y_internal~89_combout\);

-- Location: LABCELL_X53_Y33_N14
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ = ( \B[28]~input_o\ & ( !\A[28]~input_o\ $ (!\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) ) # ( !\B[28]~input_o\ & ( !\A[28]~input_o\ $ 
-- (!\AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LABCELL_X53_Y33_N8
\Y_internal~90\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~90_combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ & ( (!\Y_internal~38_combout\ & (\Y_internal~39_combout\)) # (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & ((\Y_internal~89_combout\))) # 
-- (\Y_internal~39_combout\ & (\Y_internal~88_combout\)))) ) ) # ( !\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\ & ((\Y_internal~89_combout\))) # (\Y_internal~39_combout\ & 
-- (\Y_internal~88_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~38_combout\,
	datab => \ALT_INV_Y_internal~39_combout\,
	datac => \ALT_INV_Y_internal~88_combout\,
	datad => \ALT_INV_Y_internal~89_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~90_combout\);

-- Location: MLABCELL_X52_Y33_N36
\Y_internal~91\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~91_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[29]~input_o\ & (\B[29]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[29]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[29]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[17]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[29]~input_o\ $ ((!\B[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011110110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~91_combout\);

-- Location: MLABCELL_X42_Y31_N32
\Shifter|stage[5][29]~191\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][29]~191_combout\ = ( \Shifter|stage[3][45]~130_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][29]~127_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (((!\B[3]~input_o\)) # 
-- (\Shifter|stage[3][53]~131_combout\))) ) ) ) # ( !\Shifter|stage[3][45]~130_combout\ & ( \Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((\Shifter|stage[3][29]~127_combout\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][53]~131_combout\ & (\B[3]~input_o\))) ) ) ) # ( \Shifter|stage[3][45]~130_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shifter|stage[3][29]~127_combout\)))) # (\B[4]~input_o\ & 
-- (((!\B[3]~input_o\)) # (\Shifter|stage[3][53]~131_combout\))) ) ) ) # ( !\Shifter|stage[3][45]~130_combout\ & ( !\Shifter|stage[3][37]~129_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shifter|stage[3][29]~127_combout\)))) # (\B[4]~input_o\ & 
-- (\Shifter|stage[3][53]~131_combout\ & (\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \Shifter|ALT_INV_stage[3][53]~131_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][29]~127_combout\,
	datae => \Shifter|ALT_INV_stage[3][45]~130_combout\,
	dataf => \Shifter|ALT_INV_stage[3][37]~129_combout\,
	combout => \Shifter|stage[5][29]~191_combout\);

-- Location: MLABCELL_X44_Y29_N12
\Y_internal~92\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~92_combout\ = ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|stage[5][61]~90_combout\) ) ) # ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][29]~191_combout\))) # 
-- (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][34]~100_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][61]~90_combout\,
	datac => \Shifter|ALT_INV_stage[5][34]~100_combout\,
	datad => \Shifter|ALT_INV_stage[5][29]~191_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~92_combout\);

-- Location: MLABCELL_X52_Y33_N38
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\A[29]~input_o\ $ (!\B[29]~input_o\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[29]~input_o\ $ 
-- (!\B[29]~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: MLABCELL_X52_Y33_N22
\Y_internal~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~93_combout\ = ( \Y_internal~92_combout\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ & ( (!\Y_internal~39_combout\ & ((\Y_internal~38_combout\))) # (\Y_internal~39_combout\ & ((!\Y_internal~38_combout\) # 
-- (\Y_internal~91_combout\))) ) ) ) # ( !\Y_internal~92_combout\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ & ( (\Y_internal~39_combout\ & ((!\Y_internal~38_combout\) # (\Y_internal~91_combout\))) ) ) ) # ( \Y_internal~92_combout\ & ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ & ( (\Y_internal~38_combout\ & ((!\Y_internal~39_combout\) # (\Y_internal~91_combout\))) ) ) ) # ( !\Y_internal~92_combout\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ & ( 
-- (\Y_internal~39_combout\ & (\Y_internal~91_combout\ & \Y_internal~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010110000101101010001010100010101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~39_combout\,
	datab => \ALT_INV_Y_internal~91_combout\,
	datac => \ALT_INV_Y_internal~38_combout\,
	datae => \ALT_INV_Y_internal~92_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~93_combout\);

-- Location: MLABCELL_X52_Y33_N6
\Y_internal~94\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~94_combout\ = ( \B[30]~input_o\ & ( \B[18]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[30]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) ) # ( !\B[30]~input_o\ & ( \B[18]~input_o\ & ( (!\A[30]~input_o\ & (!\LogicFN[1]~input_o\ & 
-- !\LogicFN[0]~input_o\)) # (\A[30]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) ) ) # ( \B[30]~input_o\ & ( !\B[18]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[30]~input_o\))) ) ) ) # ( !\B[30]~input_o\ & ( 
-- !\B[18]~input_o\ & ( (\A[30]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000011111010010111110101010100001111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Y_internal~94_combout\);

-- Location: LABCELL_X38_Y32_N28
\Shifter|stage[5][30]~192\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][30]~192_combout\ = ( \Shifter|stage[3][38]~139_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\) # ((!\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][54]~141_combout\))) 
-- ) ) ) # ( !\Shifter|stage[3][38]~139_combout\ & ( \Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & (((!\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][54]~141_combout\)))) ) ) ) # ( \Shifter|stage[3][38]~139_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (!\B[4]~input_o\ & (((\B[3]~input_o\)))) # (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # 
-- (\B[3]~input_o\ & (\Shifter|stage[3][54]~141_combout\)))) ) ) ) # ( !\Shifter|stage[3][38]~139_combout\ & ( !\Shifter|stage[3][30]~137_combout\ & ( (\B[4]~input_o\ & ((!\B[3]~input_o\ & ((\Shifter|stage[3][46]~140_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][54]~141_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][54]~141_combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shifter|ALT_INV_stage[3][46]~140_combout\,
	datae => \Shifter|ALT_INV_stage[3][38]~139_combout\,
	dataf => \Shifter|ALT_INV_stage[3][30]~137_combout\,
	combout => \Shifter|stage[5][30]~192_combout\);

-- Location: MLABCELL_X39_Y32_N30
\Y_internal~95\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~95_combout\ = ( \Shifter|stage[5][30]~192_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][33]~88_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][62]~46_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) ) # ( !\Shifter|stage[5][30]~192_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[5][33]~88_combout\ & \Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][62]~46_combout\ & 
-- ((!\Shifter|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][62]~46_combout\,
	datab => \ALT_INV_ShiftCount[5]~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][33]~88_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][30]~192_combout\,
	combout => \Y_internal~95_combout\);

-- Location: MLABCELL_X52_Y33_N24
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[30]~input_o\ $ (!\A[30]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[30]~input_o\ $ (\A[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: MLABCELL_X52_Y33_N30
\Y_internal~96\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~96_combout\ = ( \Y_internal~38_combout\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~39_combout\ & ((\Y_internal~95_combout\))) # (\Y_internal~39_combout\ & (\Y_internal~94_combout\)) ) ) ) # ( 
-- !\Y_internal~38_combout\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~39_combout\ ) ) ) # ( \Y_internal~38_combout\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Y_internal~39_combout\ & 
-- ((\Y_internal~95_combout\))) # (\Y_internal~39_combout\ & (\Y_internal~94_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011101101010101010101010001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~39_combout\,
	datab => \ALT_INV_Y_internal~94_combout\,
	datad => \ALT_INV_Y_internal~95_combout\,
	datae => \ALT_INV_Y_internal~38_combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~96_combout\);

-- Location: MLABCELL_X52_Y33_N16
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ = ( \A[31]~input_o\ & ( \B[31]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) ) ) ) # ( !\A[31]~input_o\ & ( \B[31]~input_o\ & ( 
-- !\AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) ) ) ) # ( \A[31]~input_o\ & ( !\B[31]~input_o\ & ( !\AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) ) ) ) # ( !\A[31]~input_o\ & ( 
-- !\B[31]~input_o\ & ( !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y29_N10
\Shifter|stage[5][31]~193\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][31]~193_combout\ = ( \B[4]~input_o\ & ( \Shifter|stage[3][31]~147_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][47]~150_combout\))) # (\B[3]~input_o\ & (\Shifter|stage[3][55]~151_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( 
-- \Shifter|stage[3][31]~147_combout\ & ( (!\B[3]~input_o\) # (\Shifter|stage[3][39]~149_combout\) ) ) ) # ( \B[4]~input_o\ & ( !\Shifter|stage[3][31]~147_combout\ & ( (!\B[3]~input_o\ & ((\Shifter|stage[3][47]~150_combout\))) # (\B[3]~input_o\ & 
-- (\Shifter|stage[3][55]~151_combout\)) ) ) ) # ( !\B[4]~input_o\ & ( !\Shifter|stage[3][31]~147_combout\ & ( (\Shifter|stage[3][39]~149_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[3][55]~151_combout\,
	datab => \Shifter|ALT_INV_stage[3][47]~150_combout\,
	datac => \Shifter|ALT_INV_stage[3][39]~149_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \Shifter|ALT_INV_stage[3][31]~147_combout\,
	combout => \Shifter|stage[5][31]~193_combout\);

-- Location: MLABCELL_X42_Y32_N36
\Shifter|stage_out[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shifter|stage_out[31]~0_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][32]~44_combout\ & ( !\ShiftCount[5]~0_combout\ ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][32]~44_combout\ & ( (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][31]~193_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][63]~2_combout\))) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\Shifter|stage[5][32]~44_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][31]~193_combout\)) 
-- # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][63]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000000001010011010100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][31]~193_combout\,
	datab => \Shifter|ALT_INV_stage[5][63]~2_combout\,
	datac => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][32]~44_combout\,
	combout => \Shifter|stage_out[31]~0_combout\);

-- Location: MLABCELL_X52_Y33_N14
\LogicUnit|Mux32~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LogicUnit|Mux32~0_combout\ = ( \LogicFN[0]~input_o\ & ( \B[31]~input_o\ & ( !\A[31]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \B[31]~input_o\ & ( (\B[19]~input_o\) # (\LogicFN[1]~input_o\) ) ) ) # ( \LogicFN[0]~input_o\ & ( 
-- !\B[31]~input_o\ & ( (\A[31]~input_o\ & !\LogicFN[1]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\B[31]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[31]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101010001000100010000110011111111111001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \LogicUnit|Mux32~0_combout\);

-- Location: MLABCELL_X46_Y32_N30
\Y_internal~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~97_combout\ = ( !\FuncClass[1]~input_o\ & ( \LogicUnit|Mux32~0_combout\ & ( ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) # 
-- (\FuncClass[0]~input_o\) ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\LogicUnit|Mux32~0_combout\ & ( (!\FuncClass[0]~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000000000000000000011111110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \LogicUnit|ALT_INV_Mux32~0_combout\,
	combout => \Y_internal~97_combout\);

-- Location: MLABCELL_X49_Y29_N0
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\B[32]~input_o\ $ (!\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ $ (\A[32]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[32]~input_o\ $ 
-- (!\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ $ (!\A[32]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[32]~input_o\,
	datac => \Adder|ALT_INV_gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	datad => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y32_N2
\Y_internal~100\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~100_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|sign_bit~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][31]~193_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][63]~2_combout\))) ) ) ) # ( 
-- !\Shifter|Equal2~0_combout\ & ( \Shifter|sign_bit~0_combout\ & ( (\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][32]~44_combout\) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[5][31]~193_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][63]~2_combout\))) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (\Shifter|stage[5][32]~44_combout\ & !\ShiftCount[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][31]~193_combout\,
	datab => \Shifter|ALT_INV_stage[5][63]~2_combout\,
	datac => \Shifter|ALT_INV_stage[5][32]~44_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_sign_bit~0_combout\,
	combout => \Y_internal~100_combout\);

-- Location: MLABCELL_X46_Y29_N36
\Y_internal~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~101_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~100_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~100_combout\ & ( (!\ExtWord~input_o\ & (((!\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & ( 
-- !\Y_internal~100_combout\ & ( (!\ExtWord~input_o\ & (((\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~100_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~100_combout\,
	combout => \Y_internal~101_combout\);

-- Location: MLABCELL_X49_Y29_N36
\Y_internal~99\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~99_combout\ = ( \FuncClass[0]~input_o\ & ( (!\LogicFN[1]~input_o\) # ((\FuncClass[1]~input_o\) # (\LogicFN[0]~input_o\)) ) ) # ( !\FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Y_internal~99_combout\);

-- Location: MLABCELL_X49_Y29_N2
\Y_internal~102\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~102_combout\ = ( \LogicFN[1]~input_o\ & ( (\A[32]~input_o\ & \B[32]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[32]~input_o\ $ ((!\B[32]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011110110011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[32]~input_o\,
	datab => \ALT_INV_B[32]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~102_combout\);

-- Location: MLABCELL_X49_Y29_N12
\Y_internal~98\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~98_combout\ = ( \FuncClass[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & !\LogicFN[0]~input_o\)) # (\FuncClass[1]~input_o\) ) ) # ( !\FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Y_internal~98_combout\);

-- Location: MLABCELL_X49_Y29_N26
\Y_internal~103\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~103_combout\ = ( \A[32]~input_o\ & ( \B[32]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~98_combout\)) # (\Y_internal~101_combout\))) # (\Y_internal~99_combout\ & (((\Y_internal~102_combout\ & !\Y_internal~98_combout\)))) ) ) ) # ( 
-- !\A[32]~input_o\ & ( \B[32]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~98_combout\)) # (\Y_internal~101_combout\))) # (\Y_internal~99_combout\ & (((\Y_internal~102_combout\ & !\Y_internal~98_combout\)))) ) ) ) # ( \A[32]~input_o\ & ( 
-- !\B[32]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~98_combout\)) # (\Y_internal~101_combout\))) # (\Y_internal~99_combout\ & (((\Y_internal~102_combout\ & !\Y_internal~98_combout\)))) ) ) ) # ( !\A[32]~input_o\ & ( !\B[32]~input_o\ & ( 
-- (!\Y_internal~98_combout\ & ((!\Y_internal~99_combout\ & (\Y_internal~101_combout\)) # (\Y_internal~99_combout\ & ((\Y_internal~102_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111110011000100011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~101_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_Y_internal~102_combout\,
	datad => \ALT_INV_Y_internal~98_combout\,
	datae => \ALT_INV_A[32]~input_o\,
	dataf => \ALT_INV_B[32]~input_o\,
	combout => \Y_internal~103_combout\);

-- Location: MLABCELL_X49_Y29_N4
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ = ( \B[33]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[33]~input_o\ $ (!\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) ) # ( !\B[33]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\A[33]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[33]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: MLABCELL_X39_Y32_N34
\Y_internal~104\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~104_combout\ = ( \Shifter|stage[5][30]~192_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][62]~46_combout\)) ) ) ) # ( 
-- !\Shifter|stage[5][30]~192_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][62]~46_combout\)) ) ) ) # ( \Shifter|stage[5][30]~192_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][33]~88_combout\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( !\Shifter|stage[5][30]~192_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|stage[5][33]~88_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][62]~46_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][33]~88_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][30]~192_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~104_combout\);

-- Location: MLABCELL_X46_Y29_N38
\Y_internal~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~105_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~104_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~104_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ & ( !\Y_internal~104_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ & ( !\Y_internal~104_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_Y_internal~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~104_combout\,
	combout => \Y_internal~105_combout\);

-- Location: MLABCELL_X49_Y29_N38
\Y_internal~106\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~106_combout\ = ( \B[33]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (!\A[33]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\A[33]~input_o\)))) ) ) # ( !\B[33]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[33]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100101101011010010010110101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \Y_internal~106_combout\);

-- Location: MLABCELL_X49_Y29_N30
\Y_internal~107\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~107_combout\ = ( \Y_internal~98_combout\ & ( \B[33]~input_o\ & ( !\Y_internal~99_combout\ ) ) ) # ( !\Y_internal~98_combout\ & ( \B[33]~input_o\ & ( (!\Y_internal~99_combout\ & (\Y_internal~105_combout\)) # (\Y_internal~99_combout\ & 
-- ((\Y_internal~106_combout\))) ) ) ) # ( \Y_internal~98_combout\ & ( !\B[33]~input_o\ & ( (!\Y_internal~99_combout\ & \A[33]~input_o\) ) ) ) # ( !\Y_internal~98_combout\ & ( !\B[33]~input_o\ & ( (!\Y_internal~99_combout\ & (\Y_internal~105_combout\)) # 
-- (\Y_internal~99_combout\ & ((\Y_internal~106_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~105_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_A[33]~input_o\,
	datad => \ALT_INV_Y_internal~106_combout\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_B[33]~input_o\,
	combout => \Y_internal~107_combout\);

-- Location: LABCELL_X50_Y29_N30
\Y_internal~110\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~110_combout\ = ( \A[34]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[34]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[34]~input_o\)))) ) ) # ( !\A[34]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[34]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101000100111101001010010011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[34]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \Y_internal~110_combout\);

-- Location: LABCELL_X50_Y29_N0
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ = ( \A[34]~input_o\ & ( !\B[34]~input_o\ $ (!\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\)) ) ) # ( !\A[34]~input_o\ & ( !\B[34]~input_o\ $ 
-- (!\AddnSub~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[34]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[34]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: MLABCELL_X44_Y29_N38
\Y_internal~108\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~108_combout\ = ( \Shifter|stage[5][29]~191_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][61]~90_combout\))) ) ) ) # ( 
-- !\Shifter|stage[5][29]~191_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][61]~90_combout\))) ) ) ) # ( \Shifter|stage[5][29]~191_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][34]~100_combout\) ) ) ) # ( !\Shifter|stage[5][29]~191_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][34]~100_combout\ & !\Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][34]~100_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][61]~90_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][29]~191_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~108_combout\);

-- Location: LABCELL_X50_Y29_N26
\Y_internal~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~109_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~108_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~108_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & (\ExtWord~input_o\))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ & ( !\Y_internal~108_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\ExtWord~input_o\ & \Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ & ( !\Y_internal~108_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~0_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~108_combout\,
	combout => \Y_internal~109_combout\);

-- Location: LABCELL_X50_Y29_N14
\Y_internal~111\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~111_combout\ = ( \Y_internal~99_combout\ & ( \B[34]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~110_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( \B[34]~input_o\ & ( (\Y_internal~109_combout\) # (\Y_internal~98_combout\) ) ) ) # ( 
-- \Y_internal~99_combout\ & ( !\B[34]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~110_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( !\B[34]~input_o\ & ( (!\Y_internal~98_combout\ & (\Y_internal~109_combout\)) # (\Y_internal~98_combout\ & 
-- ((\A[34]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001001011111010111110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~110_combout\,
	datac => \ALT_INV_Y_internal~109_combout\,
	datad => \ALT_INV_A[34]~input_o\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_B[34]~input_o\,
	combout => \Y_internal~111_combout\);

-- Location: LABCELL_X50_Y29_N28
\Y_internal~114\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~114_combout\ = ( \A[35]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[35]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[35]~input_o\)))) ) ) # ( !\A[35]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[35]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101000101010011101010010101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[35]~input_o\,
	dataf => \ALT_INV_A[35]~input_o\,
	combout => \Y_internal~114_combout\);

-- Location: LABCELL_X50_Y29_N34
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[35]~input_o\ $ (!\B[35]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[35]~input_o\ $ (\B[35]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y32_N6
\Y_internal~112\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~112_combout\ = ( \Shifter|stage[5][28]~190_combout\ & ( \Shifter|stage[5][35]~112_combout\ & ( (!\ShiftCount[5]~0_combout\) # ((!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][60]~102_combout\))) ) ) ) # ( !\Shifter|stage[5][28]~190_combout\ & ( \Shifter|stage[5][35]~112_combout\ & ( (!\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][60]~102_combout\)))) ) ) ) # ( \Shifter|stage[5][28]~190_combout\ & ( !\Shifter|stage[5][35]~112_combout\ & ( (!\ShiftCount[5]~0_combout\ & 
-- (((\Shifter|Equal2~0_combout\)))) # (\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][60]~102_combout\)))) ) ) ) # ( !\Shifter|stage[5][28]~190_combout\ & ( 
-- !\Shifter|stage[5][35]~112_combout\ & ( (\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][60]~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][60]~102_combout\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][28]~190_combout\,
	dataf => \Shifter|ALT_INV_stage[5][35]~112_combout\,
	combout => \Y_internal~112_combout\);

-- Location: LABCELL_X50_Y29_N24
\Y_internal~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~113_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~112_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~112_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~112_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~112_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~0_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~112_combout\,
	combout => \Y_internal~113_combout\);

-- Location: LABCELL_X50_Y29_N18
\Y_internal~115\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~115_combout\ = ( \Y_internal~98_combout\ & ( \Y_internal~113_combout\ & ( (!\Y_internal~99_combout\ & ((\B[35]~input_o\) # (\A[35]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( \Y_internal~113_combout\ & ( (!\Y_internal~99_combout\) # 
-- (\Y_internal~114_combout\) ) ) ) # ( \Y_internal~98_combout\ & ( !\Y_internal~113_combout\ & ( (!\Y_internal~99_combout\ & ((\B[35]~input_o\) # (\A[35]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( !\Y_internal~113_combout\ & ( 
-- (\Y_internal~114_combout\ & \Y_internal~99_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001111110000000011111111010101010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~114_combout\,
	datab => \ALT_INV_A[35]~input_o\,
	datac => \ALT_INV_B[35]~input_o\,
	datad => \ALT_INV_Y_internal~99_combout\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_Y_internal~113_combout\,
	combout => \Y_internal~115_combout\);

-- Location: LABCELL_X50_Y31_N0
\Y_internal~118\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~118_combout\ = ( \B[19]~input_o\ & ( \B[36]~input_o\ & ( (!\A[36]~input_o\ & (!\LogicFN[1]~input_o\)) # (\A[36]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) ) # ( !\B[19]~input_o\ & ( \B[36]~input_o\ & ( (!\A[36]~input_o\ 
-- & (!\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)) # (\A[36]~input_o\ & (\LogicFN[1]~input_o\)) ) ) ) # ( \B[19]~input_o\ & ( !\B[36]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[36]~input_o\))) ) ) ) # ( !\B[19]~input_o\ & ( 
-- !\B[36]~input_o\ & ( (\A[36]~input_o\ & (!\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111100000011000000000011110000111111001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Y_internal~118_combout\);

-- Location: LABCELL_X45_Y31_N14
\Y_internal~116\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~116_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][59]~113_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][59]~113_combout\ & ( 
-- (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][36]~122_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][27]~189_combout\)) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][59]~113_combout\ & ( (\Shifter|sign_bit~0_combout\ & 
-- !\Shifter|Equal2~0_combout\) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][59]~113_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][36]~122_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][27]~189_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][27]~189_combout\,
	datab => \Shifter|ALT_INV_stage[5][36]~122_combout\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][59]~113_combout\,
	combout => \Y_internal~116_combout\);

-- Location: LABCELL_X50_Y29_N6
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ = ( \B[36]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[36]~input_o\ $ (!\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) ) # ( !\B[36]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\A[36]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[36]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LABCELL_X50_Y31_N36
\Y_internal~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~117_combout\ = ( \ExtWord~input_o\ & ( \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ & ( (!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)) ) ) ) # ( !\ExtWord~input_o\ & ( \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Y_internal~0_combout\) # (\Y_internal~116_combout\) ) ) ) # ( \ExtWord~input_o\ & ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ & ( (!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)) ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Y_internal~116_combout\ & !\Y_internal~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_Y_internal~116_combout\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	combout => \Y_internal~117_combout\);

-- Location: LABCELL_X50_Y31_N24
\Y_internal~119\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~119_combout\ = ( \Y_internal~99_combout\ & ( \B[36]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~118_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( \B[36]~input_o\ & ( (\Y_internal~117_combout\) # (\Y_internal~98_combout\) ) ) ) # ( 
-- \Y_internal~99_combout\ & ( !\B[36]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~118_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( !\B[36]~input_o\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~117_combout\))) # (\Y_internal~98_combout\ & 
-- (\A[36]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101001010101111111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_A[36]~input_o\,
	datac => \ALT_INV_Y_internal~118_combout\,
	datad => \ALT_INV_Y_internal~117_combout\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_B[36]~input_o\,
	combout => \Y_internal~119_combout\);

-- Location: MLABCELL_X44_Y28_N22
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( !\B[37]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[37]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( !\B[37]~input_o\ $ (!\AddnSub~input_o\ $ (\A[37]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y29_N32
\Y_internal~120\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~120_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][58]~123_combout\ ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][26]~188_combout\ ) ) ) # ( 
-- \ShiftCount[5]~0_combout\ & ( !\Shifter|Equal2~0_combout\ & ( \Shifter|sign_bit~0_combout\ ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][37]~132_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][58]~123_combout\,
	datac => \Shifter|ALT_INV_stage[5][26]~188_combout\,
	datad => \Shifter|ALT_INV_stage[5][37]~132_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~120_combout\);

-- Location: LABCELL_X45_Y29_N38
\Y_internal~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~121_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~120_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~120_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ & ( !\Y_internal~120_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ & ( !\Y_internal~120_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~120_combout\,
	combout => \Y_internal~121_combout\);

-- Location: MLABCELL_X44_Y28_N24
\Y_internal~122\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~122_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[37]~input_o\ $ (!\A[37]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[37]~input_o\ & \A[37]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (\B[19]~input_o\)) # (\LogicFN[1]~input_o\ & (((\B[37]~input_o\ & \A[37]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[37]~input_o\,
	datad => \ALT_INV_A[37]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~122_combout\);

-- Location: MLABCELL_X44_Y28_N30
\Y_internal~123\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~123_combout\ = ( \Y_internal~98_combout\ & ( \Y_internal~122_combout\ & ( (!\Y_internal~99_combout\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( \Y_internal~122_combout\ & ( (\Y_internal~121_combout\) # 
-- (\Y_internal~99_combout\) ) ) ) # ( \Y_internal~98_combout\ & ( !\Y_internal~122_combout\ & ( (!\Y_internal~99_combout\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( !\Y_internal~122_combout\ & ( 
-- (!\Y_internal~99_combout\ & \Y_internal~121_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010011000100110000110011111111110100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[37]~input_o\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_A[37]~input_o\,
	datad => \ALT_INV_Y_internal~121_combout\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_Y_internal~122_combout\,
	combout => \Y_internal~123_combout\);

-- Location: MLABCELL_X44_Y28_N4
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[38]~input_o\ $ (!\B[38]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[38]~input_o\ $ (\B[38]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[38]~input_o\,
	datad => \ALT_INV_B[38]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y29_N0
\Y_internal~124\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~124_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|stage[5][25]~187_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\ShiftCount[5]~0_combout\)) # (\Shifter|stage[5][38]~142_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (((!\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][57]~133_combout\)))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \Shifter|stage[5][25]~187_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][38]~142_combout\ & 
-- ((!\ShiftCount[5]~0_combout\)))) # (\Shifter|Equal2~0_combout\ & (((!\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][57]~133_combout\)))) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[5][25]~187_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (((\ShiftCount[5]~0_combout\)) # (\Shifter|stage[5][38]~142_combout\))) # (\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][57]~133_combout\ & \ShiftCount[5]~0_combout\)))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|stage[5][25]~187_combout\ & 
-- ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][38]~142_combout\ & ((!\ShiftCount[5]~0_combout\)))) # (\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][57]~133_combout\ & \ShiftCount[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][38]~142_combout\,
	datac => \Shifter|ALT_INV_stage[5][57]~133_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][25]~187_combout\,
	combout => \Y_internal~124_combout\);

-- Location: LABCELL_X45_Y29_N24
\Y_internal~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~125_combout\ = ( \ExtWord~input_o\ & ( \Y_internal~0_combout\ & ( \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ ) ) ) # ( !\ExtWord~input_o\ & ( \Y_internal~0_combout\ & ( \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ 
-- ) ) ) # ( \ExtWord~input_o\ & ( !\Y_internal~0_combout\ & ( \Shifter|stage_out[31]~0_combout\ ) ) ) # ( !\ExtWord~input_o\ & ( !\Y_internal~0_combout\ & ( \Y_internal~124_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~124_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	combout => \Y_internal~125_combout\);

-- Location: MLABCELL_X44_Y28_N32
\Y_internal~126\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~126_combout\ = ( \LogicFN[1]~input_o\ & ( (\A[38]~input_o\ & \B[38]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[38]~input_o\ $ ((!\B[38]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_B[38]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~126_combout\);

-- Location: MLABCELL_X44_Y28_N12
\Y_internal~127\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~127_combout\ = ( \Y_internal~99_combout\ & ( \Y_internal~126_combout\ & ( !\Y_internal~98_combout\ ) ) ) # ( !\Y_internal~99_combout\ & ( \Y_internal~126_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~125_combout\)))) # 
-- (\Y_internal~98_combout\ & (((\B[38]~input_o\)) # (\A[38]~input_o\))) ) ) ) # ( !\Y_internal~99_combout\ & ( !\Y_internal~126_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~125_combout\)))) # (\Y_internal~98_combout\ & (((\B[38]~input_o\)) # 
-- (\A[38]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101011111000000000000000000110011010111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[38]~input_o\,
	datab => \ALT_INV_Y_internal~125_combout\,
	datac => \ALT_INV_B[38]~input_o\,
	datad => \ALT_INV_Y_internal~98_combout\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_Y_internal~126_combout\,
	combout => \Y_internal~127_combout\);

-- Location: MLABCELL_X44_Y28_N26
\Y_internal~130\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~130_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[39]~input_o\ $ (!\A[39]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[39]~input_o\ & \A[39]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (\B[19]~input_o\)) # (\LogicFN[1]~input_o\ & (((\B[39]~input_o\ & \A[39]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[39]~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~130_combout\);

-- Location: MLABCELL_X44_Y28_N10
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\B[39]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[39]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\B[39]~input_o\ $ (!\AddnSub~input_o\ $ (\A[39]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[39]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[39]~input_o\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y29_N14
\Y_internal~128\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~128_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][56]~143_combout\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|Equal2~0_combout\ & \Shifter|stage[5][56]~143_combout\) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][39]~153_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][24]~186_combout\))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][39]~153_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][24]~186_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][39]~153_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][24]~186_combout\,
	datad => \Shifter|ALT_INV_stage[5][56]~143_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~128_combout\);

-- Location: LABCELL_X45_Y29_N36
\Y_internal~129\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~129_combout\ = ( \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & ( \Y_internal~128_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & ( \Y_internal~128_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & (\ExtWord~input_o\))) ) ) ) # ( \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & ( !\Y_internal~128_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\ExtWord~input_o\ & \Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & ( !\Y_internal~128_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~128_combout\,
	combout => \Y_internal~129_combout\);

-- Location: MLABCELL_X44_Y33_N38
\Y_internal~131\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~131_combout\ = ( \Y_internal~99_combout\ & ( \B[39]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~130_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( \B[39]~input_o\ & ( (\Y_internal~129_combout\) # (\Y_internal~98_combout\) ) ) ) # ( 
-- \Y_internal~99_combout\ & ( !\B[39]~input_o\ & ( (!\Y_internal~98_combout\ & \Y_internal~130_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( !\B[39]~input_o\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~129_combout\))) # (\Y_internal~98_combout\ & 
-- (\A[39]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101001010101111111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_A[39]~input_o\,
	datac => \ALT_INV_Y_internal~130_combout\,
	datad => \ALT_INV_Y_internal~129_combout\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_B[39]~input_o\,
	combout => \Y_internal~131_combout\);

-- Location: LABCELL_X50_Y31_N20
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ = ( \A[40]~input_o\ & ( !\B[40]~input_o\ $ (!\AddnSub~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\)) ) ) # ( !\A[40]~input_o\ & ( !\B[40]~input_o\ $ (!\AddnSub~input_o\ $ 
-- (!\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	dataf => \ALT_INV_A[40]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X44_Y29_N2
\Y_internal~132\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~132_combout\ = ( \Shifter|stage[5][55]~154_combout\ & ( \ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( !\Shifter|stage[5][55]~154_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|sign_bit~0_combout\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|stage[5][55]~154_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][40]~156_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][23]~185_combout\)) ) ) ) # ( !\Shifter|stage[5][55]~154_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][40]~156_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][23]~185_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][23]~185_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][40]~156_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][55]~154_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~132_combout\);

-- Location: LABCELL_X50_Y31_N10
\Y_internal~133\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~133_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~132_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~132_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~132_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~132_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_Y_internal~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~132_combout\,
	combout => \Y_internal~133_combout\);

-- Location: LABCELL_X50_Y31_N28
\Y_internal~134\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~134_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[40]~input_o\ & (\A[40]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[40]~input_o\ & (!\A[40]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[19]~input_o\)))) # (\LogicFN[1]~input_o\ & (\B[40]~input_o\ & (\A[40]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~134_combout\);

-- Location: LABCELL_X50_Y31_N34
\Y_internal~135\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~135_combout\ = ( !\Y_internal~99_combout\ & ( \Y_internal~98_combout\ & ( (\A[40]~input_o\) # (\B[40]~input_o\) ) ) ) # ( \Y_internal~99_combout\ & ( !\Y_internal~98_combout\ & ( \Y_internal~134_combout\ ) ) ) # ( !\Y_internal~99_combout\ & ( 
-- !\Y_internal~98_combout\ & ( \Y_internal~133_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101110111011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[40]~input_o\,
	datab => \ALT_INV_A[40]~input_o\,
	datac => \ALT_INV_Y_internal~133_combout\,
	datad => \ALT_INV_Y_internal~134_combout\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_Y_internal~98_combout\,
	combout => \Y_internal~135_combout\);

-- Location: LABCELL_X50_Y31_N14
\Y_internal~138\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~138_combout\ = ( \LogicFN[1]~input_o\ & ( (\A[41]~input_o\ & \B[41]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[41]~input_o\ $ (((!\B[41]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100101110000111010010111000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[41]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~138_combout\);

-- Location: LABCELL_X50_Y31_N6
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ = !\A[41]~input_o\ $ (!\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (!\B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[41]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_B[41]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LABCELL_X38_Y32_N14
\Y_internal~136\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~136_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][41]~159_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][54]~157_combout\))) ) ) ) # ( 
-- !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][41]~159_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][22]~184_combout\) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][41]~159_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][54]~157_combout\))) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][41]~159_combout\ & ( (\Shifter|Equal2~0_combout\ & \Shifter|stage[5][22]~184_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][54]~157_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][22]~184_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][41]~159_combout\,
	combout => \Y_internal~136_combout\);

-- Location: LABCELL_X50_Y31_N8
\Y_internal~137\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~137_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~136_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~136_combout\ & ( (!\ExtWord~input_o\ & (((!\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & ( 
-- !\Y_internal~136_combout\ & ( (!\ExtWord~input_o\ & (((\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & ( !\Y_internal~136_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~136_combout\,
	combout => \Y_internal~137_combout\);

-- Location: LABCELL_X50_Y31_N16
\Y_internal~139\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~139_combout\ = ( \Y_internal~137_combout\ & ( \Y_internal~98_combout\ & ( (!\Y_internal~99_combout\ & ((\A[41]~input_o\) # (\B[41]~input_o\))) ) ) ) # ( !\Y_internal~137_combout\ & ( \Y_internal~98_combout\ & ( (!\Y_internal~99_combout\ & 
-- ((\A[41]~input_o\) # (\B[41]~input_o\))) ) ) ) # ( \Y_internal~137_combout\ & ( !\Y_internal~98_combout\ & ( (!\Y_internal~99_combout\) # (\Y_internal~138_combout\) ) ) ) # ( !\Y_internal~137_combout\ & ( !\Y_internal~98_combout\ & ( 
-- (\Y_internal~138_combout\ & \Y_internal~99_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[41]~input_o\,
	datab => \ALT_INV_Y_internal~138_combout\,
	datac => \ALT_INV_A[41]~input_o\,
	datad => \ALT_INV_Y_internal~99_combout\,
	datae => \ALT_INV_Y_internal~137_combout\,
	dataf => \ALT_INV_Y_internal~98_combout\,
	combout => \Y_internal~139_combout\);

-- Location: MLABCELL_X46_Y31_N22
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[42]~input_o\ $ (!\B[42]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[42]~input_o\ $ (\B[42]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[42]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y31_N2
\Y_internal~140\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~140_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][21]~183_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][53]~160_combout\))) ) ) ) # ( 
-- !\Shifter|sign_bit~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][21]~183_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][53]~160_combout\))) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( 
-- !\Shifter|Equal2~0_combout\ & ( (\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][42]~162_combout\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (\Shifter|stage[5][42]~162_combout\ & !\ShiftCount[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][21]~183_combout\,
	datab => \Shifter|ALT_INV_stage[5][42]~162_combout\,
	datac => \ALT_INV_ShiftCount[5]~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][53]~160_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~140_combout\);

-- Location: MLABCELL_X46_Y31_N4
\Y_internal~141\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~141_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~140_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~140_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & \ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & ( !\Y_internal~140_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & ((\ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & ( !\Y_internal~140_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \ALT_INV_Y_internal~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~140_combout\,
	combout => \Y_internal~141_combout\);

-- Location: MLABCELL_X46_Y31_N32
\Y_internal~142\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~142_combout\ = ( \LogicFN[1]~input_o\ & ( (\B[42]~input_o\ & \A[42]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\B[42]~input_o\ $ ((!\A[42]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011110110011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~142_combout\);

-- Location: MLABCELL_X46_Y31_N8
\Y_internal~143\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~143_combout\ = ( \Y_internal~141_combout\ & ( \Y_internal~142_combout\ & ( (!\Y_internal~98_combout\) # ((!\Y_internal~99_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\)))) ) ) ) # ( !\Y_internal~141_combout\ & ( \Y_internal~142_combout\ & ( 
-- (!\Y_internal~98_combout\ & (((\Y_internal~99_combout\)))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\)))) ) ) ) # ( \Y_internal~141_combout\ & ( !\Y_internal~142_combout\ & ( (!\Y_internal~99_combout\ & 
-- (((!\Y_internal~98_combout\) # (\A[42]~input_o\)) # (\B[42]~input_o\))) ) ) ) # ( !\Y_internal~141_combout\ & ( !\Y_internal~142_combout\ & ( (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & ((\A[42]~input_o\) # (\B[42]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000111101110000000000000111111100001111011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[42]~input_o\,
	datab => \ALT_INV_A[42]~input_o\,
	datac => \ALT_INV_Y_internal~98_combout\,
	datad => \ALT_INV_Y_internal~99_combout\,
	datae => \ALT_INV_Y_internal~141_combout\,
	dataf => \ALT_INV_Y_internal~142_combout\,
	combout => \Y_internal~143_combout\);

-- Location: MLABCELL_X46_Y31_N26
\Y_internal~146\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~146_combout\ = ( \LogicFN[1]~input_o\ & ( (\B[43]~input_o\ & \A[43]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[43]~input_o\ $ (!\A[43]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101011100010100110101110000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_B[43]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[43]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~146_combout\);

-- Location: MLABCELL_X46_Y31_N28
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[43]~input_o\ $ (!\B[43]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[43]~input_o\ $ (\B[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[43]~input_o\,
	datad => \ALT_INV_B[43]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y31_N14
\Y_internal~144\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~144_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][43]~165_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][52]~163_combout\))) ) ) ) # ( 
-- !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][43]~165_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][20]~182_combout\) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][43]~165_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][52]~163_combout\))) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][43]~165_combout\ & ( (\Shifter|stage[5][20]~182_combout\ & \Shifter|Equal2~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][20]~182_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][52]~163_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][43]~165_combout\,
	combout => \Y_internal~144_combout\);

-- Location: MLABCELL_X46_Y31_N6
\Y_internal~145\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~145_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~144_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~144_combout\ & ( (!\ExtWord~input_o\ & (((!\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ & ( 
-- !\Y_internal~144_combout\ & ( (!\ExtWord~input_o\ & (((\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~144_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) 
-- # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~144_combout\,
	combout => \Y_internal~145_combout\);

-- Location: MLABCELL_X46_Y31_N36
\Y_internal~147\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~147_combout\ = ( \B[43]~input_o\ & ( \Y_internal~145_combout\ & ( (!\Y_internal~99_combout\) # ((\Y_internal~146_combout\ & !\Y_internal~98_combout\)) ) ) ) # ( !\B[43]~input_o\ & ( \Y_internal~145_combout\ & ( (!\Y_internal~98_combout\ & 
-- (((!\Y_internal~99_combout\) # (\Y_internal~146_combout\)))) # (\Y_internal~98_combout\ & (\A[43]~input_o\ & ((!\Y_internal~99_combout\)))) ) ) ) # ( \B[43]~input_o\ & ( !\Y_internal~145_combout\ & ( (!\Y_internal~98_combout\ & (\Y_internal~146_combout\ & 
-- \Y_internal~99_combout\)) # (\Y_internal~98_combout\ & ((!\Y_internal~99_combout\))) ) ) ) # ( !\B[43]~input_o\ & ( !\Y_internal~145_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~146_combout\ & \Y_internal~99_combout\)))) # 
-- (\Y_internal~98_combout\ & (\A[43]~input_o\ & ((!\Y_internal~99_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000011110011000011110101001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[43]~input_o\,
	datab => \ALT_INV_Y_internal~146_combout\,
	datac => \ALT_INV_Y_internal~98_combout\,
	datad => \ALT_INV_Y_internal~99_combout\,
	datae => \ALT_INV_B[43]~input_o\,
	dataf => \ALT_INV_Y_internal~145_combout\,
	combout => \Y_internal~147_combout\);

-- Location: LABCELL_X47_Y29_N22
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & ( !\A[44]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[44]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & ( !\A[44]~input_o\ $ (!\AddnSub~input_o\ $ (\B[44]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[44]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y29_N2
\Y_internal~148\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~148_combout\ = ( \Shifter|stage[5][19]~181_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][51]~166_combout\))) ) ) ) # ( 
-- !\Shifter|stage[5][19]~181_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][51]~166_combout\))) ) ) ) # ( \Shifter|stage[5][19]~181_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][44]~168_combout\) ) ) ) # ( !\Shifter|stage[5][19]~181_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][44]~168_combout\ & !\Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][44]~168_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][51]~166_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][19]~181_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~148_combout\);

-- Location: MLABCELL_X46_Y29_N24
\Y_internal~149\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~149_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ( \Y_internal~148_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ( \Y_internal~148_combout\ & ( (!\ExtWord~input_o\ & (((!\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ( 
-- !\Y_internal~148_combout\ & ( (!\ExtWord~input_o\ & (((\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ( !\Y_internal~148_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~148_combout\,
	combout => \Y_internal~149_combout\);

-- Location: LABCELL_X47_Y29_N14
\Y_internal~150\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~150_combout\ = ( \LogicFN[1]~input_o\ & ( (\B[44]~input_o\ & \A[44]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[44]~input_o\ $ (!\A[44]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101110010001001110111001000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~150_combout\);

-- Location: LABCELL_X47_Y29_N38
\Y_internal~151\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~151_combout\ = ( \A[44]~input_o\ & ( \Y_internal~150_combout\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~99_combout\) # (\Y_internal~149_combout\))) # (\Y_internal~98_combout\ & ((!\Y_internal~99_combout\))) ) ) ) # ( !\A[44]~input_o\ & ( 
-- \Y_internal~150_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~99_combout\)) # (\Y_internal~149_combout\))) # (\Y_internal~98_combout\ & (((\B[44]~input_o\ & !\Y_internal~99_combout\)))) ) ) ) # ( \A[44]~input_o\ & ( !\Y_internal~150_combout\ & ( 
-- (!\Y_internal~99_combout\ & ((\Y_internal~149_combout\) # (\Y_internal~98_combout\))) ) ) ) # ( !\A[44]~input_o\ & ( !\Y_internal~150_combout\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & (\Y_internal~149_combout\)) # 
-- (\Y_internal~98_combout\ & ((\B[44]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000011101110000000000100111101010100111011110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~149_combout\,
	datac => \ALT_INV_B[44]~input_o\,
	datad => \ALT_INV_Y_internal~99_combout\,
	datae => \ALT_INV_A[44]~input_o\,
	dataf => \ALT_INV_Y_internal~150_combout\,
	combout => \Y_internal~151_combout\);

-- Location: MLABCELL_X44_Y31_N24
\Y_internal~154\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~154_combout\ = ( \B[45]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (!\A[45]~input_o\)))) # (\LogicFN[1]~input_o\ & (\A[45]~input_o\)) ) ) # ( !\B[45]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[45]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001000011001101110010001100110111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_A[45]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_B[45]~input_o\,
	combout => \Y_internal~154_combout\);

-- Location: LABCELL_X47_Y31_N4
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ = !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (!\A[45]~input_o\ $ (!\B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[45]~input_o\,
	datad => \ALT_INV_B[45]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LABCELL_X40_Y31_N32
\Y_internal~152\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~152_combout\ = ( \Shifter|stage[5][50]~169_combout\ & ( \ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( !\Shifter|stage[5][50]~169_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|sign_bit~0_combout\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|stage[5][50]~169_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][45]~171_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][18]~180_combout\))) ) ) ) # ( !\Shifter|stage[5][50]~169_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][45]~171_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][18]~180_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][45]~171_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][18]~180_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][50]~169_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~152_combout\);

-- Location: LABCELL_X47_Y31_N26
\Y_internal~153\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~153_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~152_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~152_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\ExtWord~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ & ( !\Y_internal~152_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & (\ExtWord~input_o\))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ & ( !\Y_internal~152_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~0_combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~152_combout\,
	combout => \Y_internal~153_combout\);

-- Location: MLABCELL_X44_Y31_N16
\Y_internal~155\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~155_combout\ = ( \A[45]~input_o\ & ( \Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & \Y_internal~154_combout\) ) ) ) # ( !\A[45]~input_o\ & ( \Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & \Y_internal~154_combout\) ) ) ) # ( 
-- \A[45]~input_o\ & ( !\Y_internal~99_combout\ & ( (\Y_internal~153_combout\) # (\Y_internal~98_combout\) ) ) ) # ( !\A[45]~input_o\ & ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~153_combout\))) # (\Y_internal~98_combout\ & 
-- (\B[45]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011010101011111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_B[45]~input_o\,
	datac => \ALT_INV_Y_internal~154_combout\,
	datad => \ALT_INV_Y_internal~153_combout\,
	datae => \ALT_INV_A[45]~input_o\,
	dataf => \ALT_INV_Y_internal~99_combout\,
	combout => \Y_internal~155_combout\);

-- Location: LABCELL_X47_Y31_N30
\Y_internal~158\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~158_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[46]~input_o\ $ (!\B[46]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[46]~input_o\ & \B[46]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (\B[19]~input_o\)) # (\LogicFN[1]~input_o\ & (((\A[46]~input_o\ & \B[46]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[46]~input_o\,
	datad => \ALT_INV_B[46]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~158_combout\);

-- Location: LABCELL_X47_Y31_N10
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[46]~input_o\ $ (!\B[46]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[46]~input_o\ $ (\B[46]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[46]~input_o\,
	datac => \ALT_INV_B[46]~input_o\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y32_N10
\Y_internal~156\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~156_combout\ = ( \Shifter|stage[5][46]~174_combout\ & ( \Shifter|stage[5][17]~179_combout\ & ( (!\ShiftCount[5]~0_combout\) # ((!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][49]~172_combout\)))) ) ) ) # ( !\Shifter|stage[5][46]~174_combout\ & ( \Shifter|stage[5][17]~179_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\ & ((\ShiftCount[5]~0_combout\)))) # (\Shifter|Equal2~0_combout\ 
-- & (((!\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][49]~172_combout\)))) ) ) ) # ( \Shifter|stage[5][46]~174_combout\ & ( !\Shifter|stage[5][17]~179_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\ShiftCount[5]~0_combout\)) # 
-- (\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (((\Shifter|stage[5][49]~172_combout\ & \ShiftCount[5]~0_combout\)))) ) ) ) # ( !\Shifter|stage[5][46]~174_combout\ & ( !\Shifter|stage[5][17]~179_combout\ & ( (\ShiftCount[5]~0_combout\ & 
-- ((!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][49]~172_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][49]~172_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][46]~174_combout\,
	dataf => \Shifter|ALT_INV_stage[5][17]~179_combout\,
	combout => \Y_internal~156_combout\);

-- Location: LABCELL_X47_Y31_N24
\Y_internal~157\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~157_combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~156_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~156_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & \ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Y_internal~156_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & ((\ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Y_internal~156_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~0_combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~156_combout\,
	combout => \Y_internal~157_combout\);

-- Location: LABCELL_X47_Y31_N12
\Y_internal~159\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~159_combout\ = ( \Y_internal~158_combout\ & ( \Y_internal~157_combout\ & ( (!\Y_internal~98_combout\) # ((!\Y_internal~99_combout\ & ((\A[46]~input_o\) # (\B[46]~input_o\)))) ) ) ) # ( !\Y_internal~158_combout\ & ( \Y_internal~157_combout\ & ( 
-- (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\) # ((\A[46]~input_o\) # (\B[46]~input_o\)))) ) ) ) # ( \Y_internal~158_combout\ & ( !\Y_internal~157_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~99_combout\)))) # (\Y_internal~98_combout\ 
-- & (!\Y_internal~99_combout\ & ((\A[46]~input_o\) # (\B[46]~input_o\)))) ) ) ) # ( !\Y_internal~158_combout\ & ( !\Y_internal~157_combout\ & ( (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & ((\A[46]~input_o\) # (\B[46]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000110100101101010110000111100001011101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_B[46]~input_o\,
	datac => \ALT_INV_Y_internal~99_combout\,
	datad => \ALT_INV_A[46]~input_o\,
	datae => \ALT_INV_Y_internal~158_combout\,
	dataf => \ALT_INV_Y_internal~157_combout\,
	combout => \Y_internal~159_combout\);

-- Location: LABCELL_X47_Y31_N28
\Y_internal~161\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~161_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[47]~input_o\ $ (!\B[47]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[47]~input_o\ & \B[47]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (\B[19]~input_o\)) # (\LogicFN[1]~input_o\ & (((\A[47]~input_o\ & \B[47]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~161_combout\);

-- Location: MLABCELL_X44_Y29_N6
\Y_internal~160\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~160_combout\ = ( \Shifter|stage[5][47]~177_combout\ & ( \Shifter|stage[5][16]~178_combout\ & ( (!\ShiftCount[5]~0_combout\) # ((!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][48]~175_combout\))) ) ) ) # ( !\Shifter|stage[5][47]~177_combout\ & ( \Shifter|stage[5][16]~178_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((\Shifter|sign_bit~0_combout\ & \ShiftCount[5]~0_combout\)))) # (\Shifter|Equal2~0_combout\ & 
-- (((!\ShiftCount[5]~0_combout\)) # (\Shifter|stage[5][48]~175_combout\))) ) ) ) # ( \Shifter|stage[5][47]~177_combout\ & ( !\Shifter|stage[5][16]~178_combout\ & ( (!\Shifter|Equal2~0_combout\ & (((!\ShiftCount[5]~0_combout\) # 
-- (\Shifter|sign_bit~0_combout\)))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][48]~175_combout\ & ((\ShiftCount[5]~0_combout\)))) ) ) ) # ( !\Shifter|stage[5][47]~177_combout\ & ( !\Shifter|stage[5][16]~178_combout\ & ( (\ShiftCount[5]~0_combout\ & 
-- ((!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][48]~175_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][48]~175_combout\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][47]~177_combout\,
	dataf => \Shifter|ALT_INV_stage[5][16]~178_combout\,
	combout => \Y_internal~160_combout\);

-- Location: LABCELL_X47_Y31_N0
\Y_internal~248\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~248_combout\ = ( !\ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Y_internal~160_combout\)) # (\Y_internal~0_combout\ & ((!\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ $ (!\Adder|gen_blk_cs:5:bits[7]~0_combout\))))) ) ) # 
-- ( \ExtWord~input_o\ & ( (((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101001100110011001100001111111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~160_combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:5:bits[7]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	datag => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Y_internal~248_combout\);

-- Location: LABCELL_X43_Y30_N12
\Y_internal~162\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~162_combout\ = ( \B[47]~input_o\ & ( \Y_internal~99_combout\ & ( (\Y_internal~161_combout\ & !\Y_internal~98_combout\) ) ) ) # ( !\B[47]~input_o\ & ( \Y_internal~99_combout\ & ( (\Y_internal~161_combout\ & !\Y_internal~98_combout\) ) ) ) # ( 
-- \B[47]~input_o\ & ( !\Y_internal~99_combout\ & ( (\Y_internal~98_combout\) # (\Y_internal~248_combout\) ) ) ) # ( !\B[47]~input_o\ & ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & (\Y_internal~248_combout\)) # (\Y_internal~98_combout\ & 
-- ((\A[47]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100111111111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~161_combout\,
	datab => \ALT_INV_Y_internal~248_combout\,
	datac => \ALT_INV_A[47]~input_o\,
	datad => \ALT_INV_Y_internal~98_combout\,
	datae => \ALT_INV_B[47]~input_o\,
	dataf => \ALT_INV_Y_internal~99_combout\,
	combout => \Y_internal~162_combout\);

-- Location: LABCELL_X47_Y30_N30
\Y_internal~165\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~165_combout\ = ( \B[48]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\A[48]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\A[48]~input_o\)))) ) ) # ( !\B[48]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[48]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001000111110000110100011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[48]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Y_internal~165_combout\);

-- Location: LABCELL_X47_Y30_N22
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ (!\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ $ (!\AddnSub~input_o\)) ) ) ) # 
-- ( !\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & ( \B[48]~input_o\ & ( !\A[48]~input_o\ $ (!\AddnSub~input_o\ $ (((!\Adder|blk_c~24_combout\ & !\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\)))) ) ) ) # ( 
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & ( !\B[48]~input_o\ & ( !\A[48]~input_o\ $ (!\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\)) ) ) ) # ( !\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & ( 
-- !\B[48]~input_o\ & ( !\A[48]~input_o\ $ (!\AddnSub~input_o\ $ (((\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\) # (\Adder|blk_c~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011001111001100001110010011011011001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|ALT_INV_blk_c~24_combout\,
	datab => \ALT_INV_A[48]~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \Adder|ALT_INV_gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X44_Y29_N8
\Y_internal~163\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~163_combout\ = ( \Shifter|stage[5][47]~177_combout\ & ( \ShiftCount[5]~0_combout\ & ( (\Shifter|sign_bit~0_combout\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( !\Shifter|stage[5][47]~177_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (!\Shifter|Equal2~0_combout\ & \Shifter|sign_bit~0_combout\) ) ) ) # ( \Shifter|stage[5][47]~177_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][48]~175_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][15]~176_combout\)) ) ) ) # ( !\Shifter|stage[5][47]~177_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][48]~175_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][15]~176_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][15]~176_combout\,
	datab => \Shifter|ALT_INV_stage[5][48]~175_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][47]~177_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~163_combout\);

-- Location: LABCELL_X47_Y30_N24
\Y_internal~164\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~164_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~163_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~163_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & \ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~163_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & ((\ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~163_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~163_combout\,
	combout => \Y_internal~164_combout\);

-- Location: LABCELL_X47_Y30_N14
\Y_internal~166\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~166_combout\ = ( \A[48]~input_o\ & ( \B[48]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~164_combout\) # (\Y_internal~98_combout\)))) # (\Y_internal~99_combout\ & (\Y_internal~165_combout\ & (!\Y_internal~98_combout\))) ) ) ) # ( 
-- !\A[48]~input_o\ & ( \B[48]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~164_combout\) # (\Y_internal~98_combout\)))) # (\Y_internal~99_combout\ & (\Y_internal~165_combout\ & (!\Y_internal~98_combout\))) ) ) ) # ( \A[48]~input_o\ & ( 
-- !\B[48]~input_o\ & ( (!\Y_internal~99_combout\ & (((\Y_internal~164_combout\) # (\Y_internal~98_combout\)))) # (\Y_internal~99_combout\ & (\Y_internal~165_combout\ & (!\Y_internal~98_combout\))) ) ) ) # ( !\A[48]~input_o\ & ( !\B[48]~input_o\ & ( 
-- (!\Y_internal~98_combout\ & ((!\Y_internal~99_combout\ & ((\Y_internal~164_combout\))) # (\Y_internal~99_combout\ & (\Y_internal~165_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000011010101110100001101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~99_combout\,
	datab => \ALT_INV_Y_internal~165_combout\,
	datac => \ALT_INV_Y_internal~98_combout\,
	datad => \ALT_INV_Y_internal~164_combout\,
	datae => \ALT_INV_A[48]~input_o\,
	dataf => \ALT_INV_B[48]~input_o\,
	combout => \Y_internal~166_combout\);

-- Location: LABCELL_X47_Y30_N10
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ = ( \A[49]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[49]~input_o\ $ (!\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) ) # ( !\A[49]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\B[49]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[49]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y32_N34
\Y_internal~167\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~167_combout\ = ( \Shifter|stage[5][46]~174_combout\ & ( \ShiftCount[5]~0_combout\ & ( (\Shifter|sign_bit~0_combout\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( !\Shifter|stage[5][46]~174_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (!\Shifter|Equal2~0_combout\ & \Shifter|sign_bit~0_combout\) ) ) ) # ( \Shifter|stage[5][46]~174_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][49]~172_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][14]~173_combout\)) ) ) ) # ( !\Shifter|stage[5][46]~174_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][49]~172_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][14]~173_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][14]~173_combout\,
	datab => \Shifter|ALT_INV_stage[5][49]~172_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_sign_bit~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][46]~174_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~167_combout\);

-- Location: LABCELL_X47_Y30_N26
\Y_internal~168\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~168_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~167_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & ( \Y_internal~167_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\ExtWord~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & ( !\Y_internal~167_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & (\ExtWord~input_o\))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & ( !\Y_internal~167_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~167_combout\,
	combout => \Y_internal~168_combout\);

-- Location: LABCELL_X47_Y30_N28
\Y_internal~169\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~169_combout\ = ( \A[49]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[49]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[49]~input_o\)))) ) ) # ( !\A[49]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[49]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001000111110000110100011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[49]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[49]~input_o\,
	combout => \Y_internal~169_combout\);

-- Location: LABCELL_X47_Y30_N18
\Y_internal~170\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~170_combout\ = ( \B[49]~input_o\ & ( \Y_internal~169_combout\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~98_combout\) # (\Y_internal~168_combout\))) # (\Y_internal~99_combout\ & ((!\Y_internal~98_combout\))) ) ) ) # ( !\B[49]~input_o\ & ( 
-- \Y_internal~169_combout\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & (\Y_internal~168_combout\)) # (\Y_internal~98_combout\ & ((\A[49]~input_o\))))) # (\Y_internal~99_combout\ & (((!\Y_internal~98_combout\)))) ) ) ) # ( \B[49]~input_o\ & 
-- ( !\Y_internal~169_combout\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~98_combout\) # (\Y_internal~168_combout\))) ) ) ) # ( !\B[49]~input_o\ & ( !\Y_internal~169_combout\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & 
-- (\Y_internal~168_combout\)) # (\Y_internal~98_combout\ & ((\A[49]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001010100010101001110000011110100111101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~99_combout\,
	datab => \ALT_INV_Y_internal~168_combout\,
	datac => \ALT_INV_Y_internal~98_combout\,
	datad => \ALT_INV_A[49]~input_o\,
	datae => \ALT_INV_B[49]~input_o\,
	dataf => \ALT_INV_Y_internal~169_combout\,
	combout => \Y_internal~170_combout\);

-- Location: LABCELL_X40_Y31_N36
\Y_internal~171\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~171_combout\ = ( \Shifter|stage[5][50]~169_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][45]~171_combout\))) ) ) ) # ( 
-- !\Shifter|stage[5][50]~169_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][45]~171_combout\))) ) ) ) # ( \Shifter|stage[5][50]~169_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][13]~170_combout\) ) ) ) # ( !\Shifter|stage[5][50]~169_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\ & \Shifter|stage[5][13]~170_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][45]~171_combout\,
	datad => \Shifter|ALT_INV_stage[5][13]~170_combout\,
	datae => \Shifter|ALT_INV_stage[5][50]~169_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~171_combout\);

-- Location: LABCELL_X47_Y30_N0
\Y_internal~244\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~244_combout\ = ( !\ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Y_internal~171_combout\)) # (\Y_internal~0_combout\ & ((!\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (!\Adder|gen_blk_cs:6:bits[2]~0_combout\))))) ) ) # 
-- ( \ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111010101010000111100110011111100000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~171_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:bits[2]~0_combout\,
	datag => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Y_internal~244_combout\);

-- Location: LABCELL_X47_Y29_N24
\Y_internal~172\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~172_combout\ = ( \A[50]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[50]~input_o\)))) # (\LogicFN[1]~input_o\ & (\B[50]~input_o\)) ) ) # ( !\A[50]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[50]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000111010010101010011101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[50]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[50]~input_o\,
	combout => \Y_internal~172_combout\);

-- Location: LABCELL_X47_Y29_N2
\Y_internal~173\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~173_combout\ = ( \Y_internal~98_combout\ & ( \Y_internal~172_combout\ & ( (!\Y_internal~99_combout\ & ((\B[50]~input_o\) # (\A[50]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( \Y_internal~172_combout\ & ( (\Y_internal~244_combout\) # 
-- (\Y_internal~99_combout\) ) ) ) # ( \Y_internal~98_combout\ & ( !\Y_internal~172_combout\ & ( (!\Y_internal~99_combout\ & ((\B[50]~input_o\) # (\A[50]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( !\Y_internal~172_combout\ & ( 
-- (!\Y_internal~99_combout\ & \Y_internal~244_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000101010101001011111010111110010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~99_combout\,
	datab => \ALT_INV_A[50]~input_o\,
	datac => \ALT_INV_Y_internal~244_combout\,
	datad => \ALT_INV_B[50]~input_o\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_Y_internal~172_combout\,
	combout => \Y_internal~173_combout\);

-- Location: LABCELL_X47_Y29_N28
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\B[51]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[51]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ & ( !\B[51]~input_o\ $ (!\AddnSub~input_o\ $ (\A[51]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[51]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y29_N28
\Y_internal~174\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~174_combout\ = ( \Shifter|stage[5][44]~168_combout\ & ( \Shifter|sign_bit~0_combout\ & ( ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][51]~166_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][12]~167_combout\))) # 
-- (\ShiftCount[5]~0_combout\) ) ) ) # ( !\Shifter|stage[5][44]~168_combout\ & ( \Shifter|sign_bit~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][51]~166_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][12]~167_combout\)))) # (\ShiftCount[5]~0_combout\ & (((!\Shifter|Equal2~0_combout\)))) ) ) ) # ( \Shifter|stage[5][44]~168_combout\ & ( !\Shifter|sign_bit~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][51]~166_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][12]~167_combout\)))) # (\ShiftCount[5]~0_combout\ & (((\Shifter|Equal2~0_combout\)))) ) ) ) # ( !\Shifter|stage[5][44]~168_combout\ & ( 
-- !\Shifter|sign_bit~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][51]~166_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][12]~167_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][12]~167_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][51]~166_combout\,
	datae => \Shifter|ALT_INV_stage[5][44]~168_combout\,
	dataf => \Shifter|ALT_INV_sign_bit~0_combout\,
	combout => \Y_internal~174_combout\);

-- Location: MLABCELL_X46_Y29_N26
\Y_internal~175\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~175_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~174_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~174_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~174_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~174_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_Y_internal~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~174_combout\,
	combout => \Y_internal~175_combout\);

-- Location: LABCELL_X47_Y29_N12
\Y_internal~176\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~176_combout\ = ( \B[51]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\A[51]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\A[51]~input_o\)))) ) ) # ( !\B[51]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[51]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000001110000001011110111000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[51]~input_o\,
	dataf => \ALT_INV_B[51]~input_o\,
	combout => \Y_internal~176_combout\);

-- Location: LABCELL_X47_Y29_N6
\Y_internal~177\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~177_combout\ = ( \Y_internal~176_combout\ & ( \Y_internal~99_combout\ & ( !\Y_internal~98_combout\ ) ) ) # ( \Y_internal~176_combout\ & ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~175_combout\)))) # 
-- (\Y_internal~98_combout\ & (((\B[51]~input_o\)) # (\A[51]~input_o\))) ) ) ) # ( !\Y_internal~176_combout\ & ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~175_combout\)))) # (\Y_internal~98_combout\ & (((\B[51]~input_o\)) # 
-- (\A[51]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_A[51]~input_o\,
	datac => \ALT_INV_Y_internal~175_combout\,
	datad => \ALT_INV_B[51]~input_o\,
	datae => \ALT_INV_Y_internal~176_combout\,
	dataf => \ALT_INV_Y_internal~99_combout\,
	combout => \Y_internal~177_combout\);

-- Location: MLABCELL_X49_Y29_N34
\Y_internal~180\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~180_combout\ = ( \LogicFN[1]~input_o\ & ( (\A[52]~input_o\ & \B[52]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[52]~input_o\ $ ((!\B[52]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[52]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~180_combout\);

-- Location: MLABCELL_X49_Y29_N32
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\A[52]~input_o\ $ (!\B[52]~input_o\ $ (!\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[52]~input_o\ $ 
-- (!\B[52]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[52]~input_o\,
	datab => \ALT_INV_B[52]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: MLABCELL_X46_Y29_N14
\Y_internal~178\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~178_combout\ = ( \Shifter|stage[5][43]~165_combout\ & ( \ShiftCount[5]~0_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( !\Shifter|stage[5][43]~165_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|sign_bit~0_combout\ & !\Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|stage[5][43]~165_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][52]~163_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][11]~164_combout\))) ) ) ) # ( !\Shifter|stage[5][43]~165_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][52]~163_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][11]~164_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][52]~163_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][11]~164_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][43]~165_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~178_combout\);

-- Location: MLABCELL_X46_Y29_N18
\Y_internal~179\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~179_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ & ( \Y_internal~178_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ & ( \Y_internal~178_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # 
-- (\Shifter|stage_out[31]~0_combout\)))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & ((\ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ & ( !\Y_internal~178_combout\ & ( 
-- (!\Y_internal~0_combout\ & (((\Shifter|stage_out[31]~0_combout\ & \ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ & ( !\Y_internal~178_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_Y_internal~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~178_combout\,
	combout => \Y_internal~179_combout\);

-- Location: MLABCELL_X49_Y29_N18
\Y_internal~181\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~181_combout\ = ( \Y_internal~99_combout\ & ( \Y_internal~179_combout\ & ( (!\Y_internal~98_combout\ & \Y_internal~180_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( \Y_internal~179_combout\ & ( (!\Y_internal~98_combout\) # ((\A[52]~input_o\) 
-- # (\B[52]~input_o\)) ) ) ) # ( \Y_internal~99_combout\ & ( !\Y_internal~179_combout\ & ( (!\Y_internal~98_combout\ & \Y_internal~180_combout\) ) ) ) # ( !\Y_internal~99_combout\ & ( !\Y_internal~179_combout\ & ( (\Y_internal~98_combout\ & 
-- ((\A[52]~input_o\) # (\B[52]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101001000100010001010101111111111110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~180_combout\,
	datac => \ALT_INV_B[52]~input_o\,
	datad => \ALT_INV_A[52]~input_o\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_Y_internal~179_combout\,
	combout => \Y_internal~181_combout\);

-- Location: MLABCELL_X42_Y31_N36
\Y_internal~182\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~182_combout\ = ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][10]~161_combout\ & ( (!\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][42]~162_combout\) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][10]~161_combout\ & ( 
-- (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][53]~160_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|sign_bit~0_combout\)) ) ) ) # ( \Shifter|Equal2~0_combout\ & ( !\Shifter|stage[5][10]~161_combout\ & ( (\ShiftCount[5]~0_combout\ & 
-- \Shifter|stage[5][42]~162_combout\) ) ) ) # ( !\Shifter|Equal2~0_combout\ & ( !\Shifter|stage[5][10]~161_combout\ & ( (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][53]~160_combout\))) # (\ShiftCount[5]~0_combout\ & (\Shifter|sign_bit~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][42]~162_combout\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][53]~160_combout\,
	datae => \Shifter|ALT_INV_Equal2~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][10]~161_combout\,
	combout => \Y_internal~182_combout\);

-- Location: MLABCELL_X46_Y29_N20
\Y_internal~240\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~240_combout\ = ( !\ExtWord~input_o\ & ( (!\Y_internal~0_combout\ & (\Y_internal~182_combout\)) # (\Y_internal~0_combout\ & ((!\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (((!\Adder|gen_blk_cs:6:bits[5]~0_combout\)))))) ) ) 
-- # ( \ExtWord~input_o\ & ( (!\Y_internal~0_combout\ & ((((\Shifter|stage_out[31]~0_combout\))))) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100111000001011010111101110010011100100000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~0_combout\,
	datab => \ALT_INV_Y_internal~182_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:bits[5]~0_combout\,
	datag => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Y_internal~240_combout\);

-- Location: LABCELL_X47_Y29_N10
\Y_internal~183\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~183_combout\ = ( \B[53]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\A[53]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\A[53]~input_o\)))) ) ) # ( !\B[53]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[53]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000001110010000011110111001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[53]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[53]~input_o\,
	combout => \Y_internal~183_combout\);

-- Location: LABCELL_X47_Y29_N32
\Y_internal~184\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~184_combout\ = ( \Y_internal~98_combout\ & ( \A[53]~input_o\ & ( !\Y_internal~99_combout\ ) ) ) # ( !\Y_internal~98_combout\ & ( \A[53]~input_o\ & ( (!\Y_internal~99_combout\ & (\Y_internal~240_combout\)) # (\Y_internal~99_combout\ & 
-- ((\Y_internal~183_combout\))) ) ) ) # ( \Y_internal~98_combout\ & ( !\A[53]~input_o\ & ( (\B[53]~input_o\ & !\Y_internal~99_combout\) ) ) ) # ( !\Y_internal~98_combout\ & ( !\A[53]~input_o\ & ( (!\Y_internal~99_combout\ & (\Y_internal~240_combout\)) # 
-- (\Y_internal~99_combout\ & ((\Y_internal~183_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~240_combout\,
	datab => \ALT_INV_B[53]~input_o\,
	datac => \ALT_INV_Y_internal~99_combout\,
	datad => \ALT_INV_Y_internal~183_combout\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_A[53]~input_o\,
	combout => \Y_internal~184_combout\);

-- Location: MLABCELL_X46_Y32_N8
\Y_internal~187\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~187_combout\ = ( \LogicFN[1]~input_o\ & ( (\B[54]~input_o\ & \A[54]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\B[54]~input_o\ $ ((!\A[54]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[54]~input_o\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~187_combout\);

-- Location: MLABCELL_X46_Y32_N6
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ = !\AddnSub~input_o\ $ (!\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (!\A[54]~input_o\ $ (!\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[54]~input_o\,
	datad => \ALT_INV_B[54]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LABCELL_X38_Y32_N18
\Y_internal~185\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~185_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][41]~159_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|sign_bit~0_combout\) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][41]~159_combout\ & ( 
-- (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][54]~157_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][9]~158_combout\))) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][41]~159_combout\ & ( (\Shifter|sign_bit~0_combout\ & 
-- !\Shifter|Equal2~0_combout\) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][41]~159_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][54]~157_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][9]~158_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][54]~157_combout\,
	datac => \Shifter|ALT_INV_Equal2~0_combout\,
	datad => \Shifter|ALT_INV_stage[5][9]~158_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][41]~159_combout\,
	combout => \Y_internal~185_combout\);

-- Location: MLABCELL_X46_Y32_N32
\Y_internal~186\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~186_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~185_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~185_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & \ExtWord~input_o\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Y_internal~185_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & ((\ExtWord~input_o\)))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Y_internal~185_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~185_combout\,
	combout => \Y_internal~186_combout\);

-- Location: MLABCELL_X46_Y32_N18
\Y_internal~188\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~188_combout\ = ( \B[54]~input_o\ & ( \Y_internal~186_combout\ & ( (!\Y_internal~99_combout\) # ((!\Y_internal~98_combout\ & \Y_internal~187_combout\)) ) ) ) # ( !\B[54]~input_o\ & ( \Y_internal~186_combout\ & ( (!\Y_internal~98_combout\ & 
-- (((!\Y_internal~99_combout\) # (\Y_internal~187_combout\)))) # (\Y_internal~98_combout\ & (\A[54]~input_o\ & (!\Y_internal~99_combout\))) ) ) ) # ( \B[54]~input_o\ & ( !\Y_internal~186_combout\ & ( (!\Y_internal~98_combout\ & (\Y_internal~99_combout\ & 
-- \Y_internal~187_combout\)) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\)) ) ) ) # ( !\B[54]~input_o\ & ( !\Y_internal~186_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~99_combout\ & \Y_internal~187_combout\)))) # 
-- (\Y_internal~98_combout\ & (\A[54]~input_o\ & (!\Y_internal~99_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010010100000101101010110000101110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_A[54]~input_o\,
	datac => \ALT_INV_Y_internal~99_combout\,
	datad => \ALT_INV_Y_internal~187_combout\,
	datae => \ALT_INV_B[54]~input_o\,
	dataf => \ALT_INV_Y_internal~186_combout\,
	combout => \Y_internal~188_combout\);

-- Location: MLABCELL_X46_Y30_N26
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[55]~input_o\ $ (!\A[55]~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ & ( !\AddnSub~input_o\ $ (!\B[55]~input_o\ $ (\A[55]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[55]~input_o\,
	datad => \ALT_INV_A[55]~input_o\,
	dataf => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: MLABCELL_X44_Y29_N34
\Y_internal~189\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~189_combout\ = ( \Shifter|stage[5][55]~154_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][40]~156_combout\))) ) ) ) # ( 
-- !\Shifter|stage[5][55]~154_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][40]~156_combout\))) ) ) ) # ( \Shifter|stage[5][55]~154_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][8]~155_combout\) ) ) ) # ( !\Shifter|stage[5][55]~154_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][8]~155_combout\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][8]~155_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][40]~156_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][55]~154_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~189_combout\);

-- Location: MLABCELL_X46_Y32_N34
\Y_internal~190\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~190_combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & ( \Y_internal~189_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & ( \Y_internal~189_combout\ & ( (!\Y_internal~0_combout\ & (((!\ExtWord~input_o\)) # 
-- (\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (((\ExtWord~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & ( !\Y_internal~189_combout\ & ( 
-- (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\ & (\ExtWord~input_o\))) # (\Y_internal~0_combout\ & (((!\ExtWord~input_o\) # (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & ( !\Y_internal~189_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~189_combout\,
	combout => \Y_internal~190_combout\);

-- Location: MLABCELL_X49_Y33_N10
\Y_internal~191\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~191_combout\ = ( \A[55]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[55]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[55]~input_o\)))) ) ) # ( !\A[55]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[55]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100111100001101010000001100000101001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[19]~input_o\,
	datab => \ALT_INV_B[55]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_A[55]~input_o\,
	combout => \Y_internal~191_combout\);

-- Location: MLABCELL_X49_Y33_N34
\Y_internal~192\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~192_combout\ = ( \B[55]~input_o\ & ( \Y_internal~191_combout\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~190_combout\) # (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\)) ) ) ) # ( !\B[55]~input_o\ & ( 
-- \Y_internal~191_combout\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~190_combout\)) # (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & (\A[55]~input_o\))) ) ) ) # ( \B[55]~input_o\ & ( !\Y_internal~191_combout\ & ( 
-- (!\Y_internal~99_combout\ & ((\Y_internal~190_combout\) # (\Y_internal~98_combout\))) ) ) ) # ( !\B[55]~input_o\ & ( !\Y_internal~191_combout\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & ((\Y_internal~190_combout\))) # 
-- (\Y_internal~98_combout\ & (\A[55]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100010001001100110000100110101011100110011011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_A[55]~input_o\,
	datad => \ALT_INV_Y_internal~190_combout\,
	datae => \ALT_INV_B[55]~input_o\,
	dataf => \ALT_INV_Y_internal~191_combout\,
	combout => \Y_internal~192_combout\);

-- Location: MLABCELL_X46_Y30_N38
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( \Adder|blk_c~29_combout\ & ( !\A[56]~input_o\ $ (!\B[56]~input_o\ $ (!\AddnSub~input_o\)) ) ) ) # ( 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( \Adder|blk_c~29_combout\ & ( !\A[56]~input_o\ $ (!\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ $ (!\B[56]~input_o\ $ (\AddnSub~input_o\))) ) ) ) # ( 
-- \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( !\Adder|blk_c~29_combout\ & ( !\A[56]~input_o\ $ (!\B[56]~input_o\ $ (!\AddnSub~input_o\)) ) ) ) # ( !\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( 
-- !\Adder|blk_c~29_combout\ & ( !\A[56]~input_o\ $ (!\B[56]~input_o\ $ (\AddnSub~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010010110011010011010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \Adder|ALT_INV_gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	datac => \ALT_INV_B[56]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \Adder|ALT_INV_blk_c~29_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: MLABCELL_X42_Y29_N18
\Y_internal~193\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~193_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][39]~153_combout\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|stage[5][39]~153_combout\ & \Shifter|Equal2~0_combout\) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][56]~143_combout\))) # (\Shifter|Equal2~0_combout\ & 
-- (\Shifter|stage[5][7]~148_combout\)) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][56]~143_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][7]~148_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][39]~153_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][7]~148_combout\,
	datad => \Shifter|ALT_INV_stage[5][56]~143_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~193_combout\);

-- Location: MLABCELL_X46_Y29_N16
\Y_internal~194\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~194_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~193_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ & ( \Y_internal~193_combout\ & ( (!\ExtWord~input_o\ & (((!\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ & ( 
-- !\Y_internal~193_combout\ & ( (!\ExtWord~input_o\ & (((\Y_internal~0_combout\)))) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ & ( !\Y_internal~193_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~193_combout\,
	combout => \Y_internal~194_combout\);

-- Location: LABCELL_X47_Y29_N8
\Y_internal~195\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~195_combout\ = ( \B[56]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\A[56]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\A[56]~input_o\)))) ) ) # ( !\B[56]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[56]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000001110010000011110111001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[56]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[56]~input_o\,
	combout => \Y_internal~195_combout\);

-- Location: LABCELL_X47_Y29_N18
\Y_internal~196\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~196_combout\ = ( !\Y_internal~98_combout\ & ( \Y_internal~99_combout\ & ( \Y_internal~195_combout\ ) ) ) # ( \Y_internal~98_combout\ & ( !\Y_internal~99_combout\ & ( (\B[56]~input_o\) # (\A[56]~input_o\) ) ) ) # ( !\Y_internal~98_combout\ & ( 
-- !\Y_internal~99_combout\ & ( \Y_internal~194_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011101110111011100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[56]~input_o\,
	datab => \ALT_INV_B[56]~input_o\,
	datac => \ALT_INV_Y_internal~194_combout\,
	datad => \ALT_INV_Y_internal~195_combout\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_Y_internal~99_combout\,
	combout => \Y_internal~196_combout\);

-- Location: MLABCELL_X44_Y28_N2
\Y_internal~198\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~198_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[57]~input_o\ & (\A[57]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[57]~input_o\ & (!\A[57]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[19]~input_o\)))) # (\LogicFN[1]~input_o\ & (\B[57]~input_o\ & (\A[57]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[57]~input_o\,
	datab => \ALT_INV_A[57]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~198_combout\);

-- Location: LABCELL_X45_Y29_N8
\Y_internal~197\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~197_combout\ = ( \Shifter|stage[5][6]~138_combout\ & ( \Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\) # (\Shifter|stage[5][38]~142_combout\) ) ) ) # ( !\Shifter|stage[5][6]~138_combout\ & ( \Shifter|Equal2~0_combout\ & ( 
-- (\Shifter|stage[5][38]~142_combout\ & \ShiftCount[5]~0_combout\) ) ) ) # ( \Shifter|stage[5][6]~138_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][57]~133_combout\)) # (\ShiftCount[5]~0_combout\ & 
-- ((\Shifter|sign_bit~0_combout\))) ) ) ) # ( !\Shifter|stage[5][6]~138_combout\ & ( !\Shifter|Equal2~0_combout\ & ( (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[5][57]~133_combout\)) # (\ShiftCount[5]~0_combout\ & ((\Shifter|sign_bit~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][57]~133_combout\,
	datab => \Shifter|ALT_INV_stage[5][38]~142_combout\,
	datac => \Shifter|ALT_INV_sign_bit~0_combout\,
	datad => \ALT_INV_ShiftCount[5]~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][6]~138_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~197_combout\);

-- Location: LABCELL_X45_Y29_N20
\Y_internal~236\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~236_combout\ = ( !\ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Y_internal~197_combout\)) # (\Y_internal~0_combout\ & ((!\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (!\Adder|gen_blk_cs:7:bits[1]~0_combout\))))) ) ) # 
-- ( \ExtWord~input_o\ & ( (((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101001100110011001100001111111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~197_combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:7:bits[1]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_internal~0_combout\,
	datag => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Y_internal~236_combout\);

-- Location: MLABCELL_X44_Y28_N38
\Y_internal~199\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~199_combout\ = ( \Y_internal~98_combout\ & ( \A[57]~input_o\ & ( !\Y_internal~99_combout\ ) ) ) # ( !\Y_internal~98_combout\ & ( \A[57]~input_o\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~236_combout\))) # (\Y_internal~99_combout\ & 
-- (\Y_internal~198_combout\)) ) ) ) # ( \Y_internal~98_combout\ & ( !\A[57]~input_o\ & ( (!\Y_internal~99_combout\ & \B[57]~input_o\) ) ) ) # ( !\Y_internal~98_combout\ & ( !\A[57]~input_o\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~236_combout\))) # 
-- (\Y_internal~99_combout\ & (\Y_internal~198_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~198_combout\,
	datab => \ALT_INV_Y_internal~236_combout\,
	datac => \ALT_INV_Y_internal~99_combout\,
	datad => \ALT_INV_B[57]~input_o\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_A[57]~input_o\,
	combout => \Y_internal~199_combout\);

-- Location: MLABCELL_X44_Y30_N22
\Y_internal~202\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~202_combout\ = ( \A[58]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((!\B[58]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[58]~input_o\)))) ) ) # ( !\A[58]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[58]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000101010010111010010101001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Y_internal~202_combout\);

-- Location: LABCELL_X45_Y30_N18
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ = ( \AddnSub~input_o\ & ( !\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (!\A[58]~input_o\ $ (!\B[58]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (!\A[58]~input_o\ $ (\B[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_A[58]~input_o\,
	datad => \ALT_INV_B[58]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y29_N12
\Y_internal~200\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~200_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][37]~132_combout\ ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( \Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][5]~128_combout\ ) ) ) # ( 
-- \ShiftCount[5]~0_combout\ & ( !\Shifter|Equal2~0_combout\ & ( \Shifter|sign_bit~0_combout\ ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|Equal2~0_combout\ & ( \Shifter|stage[5][58]~123_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_sign_bit~0_combout\,
	datab => \Shifter|ALT_INV_stage[5][58]~123_combout\,
	datac => \Shifter|ALT_INV_stage[5][5]~128_combout\,
	datad => \Shifter|ALT_INV_stage[5][37]~132_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_Equal2~0_combout\,
	combout => \Y_internal~200_combout\);

-- Location: LABCELL_X45_Y30_N0
\Y_internal~201\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~201_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~200_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ & ( \Y_internal~200_combout\ & ( (!\ExtWord~input_o\ & (!\Y_internal~0_combout\)) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ & ( 
-- !\Y_internal~200_combout\ & ( (!\ExtWord~input_o\ & (\Y_internal~0_combout\)) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ & ( !\Y_internal~200_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~200_combout\,
	combout => \Y_internal~201_combout\);

-- Location: MLABCELL_X44_Y30_N24
\Y_internal~203\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~203_combout\ = ( \Y_internal~201_combout\ & ( \A[58]~input_o\ & ( (!\Y_internal~99_combout\) # ((\Y_internal~202_combout\ & !\Y_internal~98_combout\)) ) ) ) # ( !\Y_internal~201_combout\ & ( \A[58]~input_o\ & ( (!\Y_internal~99_combout\ & 
-- ((\Y_internal~98_combout\))) # (\Y_internal~99_combout\ & (\Y_internal~202_combout\ & !\Y_internal~98_combout\)) ) ) ) # ( \Y_internal~201_combout\ & ( !\A[58]~input_o\ & ( (!\Y_internal~99_combout\ & (((!\Y_internal~98_combout\)) # (\B[58]~input_o\))) # 
-- (\Y_internal~99_combout\ & (((\Y_internal~202_combout\ & !\Y_internal~98_combout\)))) ) ) ) # ( !\Y_internal~201_combout\ & ( !\A[58]~input_o\ & ( (!\Y_internal~99_combout\ & (\B[58]~input_o\ & ((\Y_internal~98_combout\)))) # (\Y_internal~99_combout\ & 
-- (((\Y_internal~202_combout\ & !\Y_internal~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[58]~input_o\,
	datab => \ALT_INV_Y_internal~202_combout\,
	datac => \ALT_INV_Y_internal~99_combout\,
	datad => \ALT_INV_Y_internal~98_combout\,
	datae => \ALT_INV_Y_internal~201_combout\,
	dataf => \ALT_INV_A[58]~input_o\,
	combout => \Y_internal~203_combout\);

-- Location: LABCELL_X45_Y30_N24
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ = !\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (!\A[59]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_A[59]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[59]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LABCELL_X45_Y31_N36
\Y_internal~204\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~204_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][4]~118_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][36]~122_combout\))) ) ) ) # ( 
-- !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][4]~118_combout\ & ( (\Shifter|stage[5][59]~113_combout\) # (\Shifter|Equal2~0_combout\) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][4]~118_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][36]~122_combout\))) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][4]~118_combout\ & ( (!\Shifter|Equal2~0_combout\ & \Shifter|stage[5][59]~113_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_Equal2~0_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][59]~113_combout\,
	datad => \Shifter|ALT_INV_stage[5][36]~122_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][4]~118_combout\,
	combout => \Y_internal~204_combout\);

-- Location: LABCELL_X45_Y30_N2
\Y_internal~205\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~205_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~204_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & ( \Y_internal~204_combout\ & ( (!\ExtWord~input_o\ & (!\Y_internal~0_combout\)) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & ( 
-- !\Y_internal~204_combout\ & ( (!\ExtWord~input_o\ & (\Y_internal~0_combout\)) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Y_internal~204_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) 
-- # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~204_combout\,
	combout => \Y_internal~205_combout\);

-- Location: LABCELL_X50_Y33_N24
\Y_internal~206\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~206_combout\ = ( \B[59]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (!\A[59]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\A[59]~input_o\)))) ) ) # ( !\B[59]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[59]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000011110010110100001111001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[59]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_B[59]~input_o\,
	combout => \Y_internal~206_combout\);

-- Location: LABCELL_X45_Y30_N4
\Y_internal~207\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~207_combout\ = ( \Y_internal~206_combout\ & ( \A[59]~input_o\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~205_combout\) # (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\)) ) ) ) # ( 
-- !\Y_internal~206_combout\ & ( \A[59]~input_o\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~205_combout\) # (\Y_internal~98_combout\))) ) ) ) # ( \Y_internal~206_combout\ & ( !\A[59]~input_o\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~205_combout\)) # 
-- (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & (\B[59]~input_o\))) ) ) ) # ( !\Y_internal~206_combout\ & ( !\A[59]~input_o\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & ((\Y_internal~205_combout\))) # 
-- (\Y_internal~98_combout\ & (\B[59]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111001000100110011000110011011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_B[59]~input_o\,
	datad => \ALT_INV_Y_internal~205_combout\,
	datae => \ALT_INV_Y_internal~206_combout\,
	dataf => \ALT_INV_A[59]~input_o\,
	combout => \Y_internal~207_combout\);

-- Location: LABCELL_X45_Y30_N28
\Y_internal~208\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~208_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][60]~102_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][35]~112_combout\)) ) ) ) # ( 
-- !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][60]~102_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][3]~107_combout\) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][60]~102_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][35]~112_combout\)) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][60]~102_combout\ & ( (\Shifter|stage[5][3]~107_combout\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][35]~112_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][3]~107_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][60]~102_combout\,
	combout => \Y_internal~208_combout\);

-- Location: LABCELL_X45_Y30_N20
\Y_internal~232\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~232_combout\ = ( !\ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (((\Y_internal~208_combout\)))) # (\Y_internal~0_combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ $ ((!\Adder|gen_blk_cs:7:bits[4]~0_combout\))))) ) 
-- ) # ( \ExtWord~input_o\ & ( (!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100110000010001110100011111001111111111000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:7:bits[4]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_internal~208_combout\,
	datag => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Y_internal~232_combout\);

-- Location: LABCELL_X45_Y30_N12
\Y_internal~209\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~209_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[60]~input_o\ & (\A[60]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[60]~input_o\ & (!\A[60]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[19]~input_o\)))) # (\LogicFN[1]~input_o\ & (\B[60]~input_o\ & (\A[60]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[60]~input_o\,
	datab => \ALT_INV_A[60]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~209_combout\);

-- Location: LABCELL_X45_Y30_N32
\Y_internal~210\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~210_combout\ = ( \Y_internal~209_combout\ & ( \B[60]~input_o\ & ( (!\Y_internal~98_combout\ & ((\Y_internal~232_combout\) # (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\)) ) ) ) # ( 
-- !\Y_internal~209_combout\ & ( \B[60]~input_o\ & ( (!\Y_internal~99_combout\ & ((\Y_internal~232_combout\) # (\Y_internal~98_combout\))) ) ) ) # ( \Y_internal~209_combout\ & ( !\B[60]~input_o\ & ( (!\Y_internal~98_combout\ & (((\Y_internal~232_combout\)) # 
-- (\Y_internal~99_combout\))) # (\Y_internal~98_combout\ & (!\Y_internal~99_combout\ & ((\A[60]~input_o\)))) ) ) ) # ( !\Y_internal~209_combout\ & ( !\B[60]~input_o\ & ( (!\Y_internal~99_combout\ & ((!\Y_internal~98_combout\ & (\Y_internal~232_combout\)) # 
-- (\Y_internal~98_combout\ & ((\A[60]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111001001100010011000110111001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~98_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_Y_internal~232_combout\,
	datad => \ALT_INV_A[60]~input_o\,
	datae => \ALT_INV_Y_internal~209_combout\,
	dataf => \ALT_INV_B[60]~input_o\,
	combout => \Y_internal~210_combout\);

-- Location: MLABCELL_X44_Y30_N28
\Y_internal~213\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~213_combout\ = ( \LogicFN[1]~input_o\ & ( (\A[61]~input_o\ & \B[61]~input_o\) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[61]~input_o\ $ ((!\B[61]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Y_internal~213_combout\);

-- Location: MLABCELL_X44_Y30_N30
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ & ( !\A[61]~input_o\ $ (!\B[61]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[61]~input_o\,
	datab => \ALT_INV_B[61]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: MLABCELL_X44_Y29_N18
\Y_internal~211\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~211_combout\ = ( \Shifter|stage[5][61]~90_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][34]~100_combout\)) ) ) ) # ( 
-- !\Shifter|stage[5][61]~90_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][34]~100_combout\)) ) ) ) # ( \Shifter|stage[5][61]~90_combout\ & ( 
-- !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][2]~95_combout\) ) ) ) # ( !\Shifter|stage[5][61]~90_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (\Shifter|stage[5][2]~95_combout\ & \Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][34]~100_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][2]~95_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \Shifter|ALT_INV_stage[5][61]~90_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~211_combout\);

-- Location: MLABCELL_X44_Y30_N14
\Y_internal~212\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~212_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~211_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & ( \Y_internal~211_combout\ & ( (!\ExtWord~input_o\ & (!\Y_internal~0_combout\)) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & ( 
-- !\Y_internal~211_combout\ & ( (!\ExtWord~input_o\ & (\Y_internal~0_combout\)) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & 
-- ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & ( !\Y_internal~211_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) 
-- # (\Y_internal~0_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~211_combout\,
	combout => \Y_internal~212_combout\);

-- Location: MLABCELL_X44_Y30_N36
\Y_internal~214\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~214_combout\ = ( \Y_internal~98_combout\ & ( \Y_internal~212_combout\ & ( (!\Y_internal~99_combout\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( \Y_internal~212_combout\ & ( (!\Y_internal~99_combout\) # 
-- (\Y_internal~213_combout\) ) ) ) # ( \Y_internal~98_combout\ & ( !\Y_internal~212_combout\ & ( (!\Y_internal~99_combout\ & ((\B[61]~input_o\) # (\A[61]~input_o\))) ) ) ) # ( !\Y_internal~98_combout\ & ( !\Y_internal~212_combout\ & ( 
-- (\Y_internal~213_combout\ & \Y_internal~99_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011001100110011011101110111010000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~213_combout\,
	datab => \ALT_INV_Y_internal~99_combout\,
	datac => \ALT_INV_A[61]~input_o\,
	datad => \ALT_INV_B[61]~input_o\,
	datae => \ALT_INV_Y_internal~98_combout\,
	dataf => \ALT_INV_Y_internal~212_combout\,
	combout => \Y_internal~214_combout\);

-- Location: MLABCELL_X44_Y30_N8
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum\ : arriaii_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ = ( \A[62]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[62]~input_o\ $ (!\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\)) ) ) # ( !\A[62]~input_o\ & ( !\AddnSub~input_o\ $ 
-- (!\B[62]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[62]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: MLABCELL_X39_Y32_N18
\Y_internal~215\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~215_combout\ = ( \Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][33]~88_combout\) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( \ShiftCount[5]~0_combout\ & ( 
-- (\Shifter|Equal2~0_combout\ & \Shifter|stage[5][33]~88_combout\) ) ) ) # ( \Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][62]~46_combout\)) # (\Shifter|Equal2~0_combout\ & 
-- ((\Shifter|stage[5][1]~67_combout\))) ) ) ) # ( !\Shifter|sign_bit~0_combout\ & ( !\ShiftCount[5]~0_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|stage[5][62]~46_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][1]~67_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][62]~46_combout\,
	datab => \Shifter|ALT_INV_Equal2~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][33]~88_combout\,
	datad => \Shifter|ALT_INV_stage[5][1]~67_combout\,
	datae => \Shifter|ALT_INV_sign_bit~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~0_combout\,
	combout => \Y_internal~215_combout\);

-- Location: MLABCELL_X44_Y30_N12
\Y_internal~216\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~216_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~215_combout\ & ( (!\ExtWord~input_o\) # ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & ( \Y_internal~215_combout\ & ( (!\ExtWord~input_o\ & (!\Y_internal~0_combout\)) # (\ExtWord~input_o\ & 
-- ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & ( 
-- !\Y_internal~215_combout\ & ( (!\ExtWord~input_o\ & (\Y_internal~0_combout\)) # (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) # (\Y_internal~0_combout\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Y_internal~215_combout\ & ( (\ExtWord~input_o\ & ((!\Y_internal~0_combout\ & ((\Shifter|stage_out[31]~0_combout\))) 
-- # (\Y_internal~0_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_Y_internal~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datae => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Y_internal~215_combout\,
	combout => \Y_internal~216_combout\);

-- Location: MLABCELL_X44_Y30_N20
\Y_internal~217\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~217_combout\ = ( \A[62]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[62]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\B[62]~input_o\)))) ) ) # ( !\A[62]~input_o\ & ( 
-- (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[62]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100101101011010010010110101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[62]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[62]~input_o\,
	combout => \Y_internal~217_combout\);

-- Location: MLABCELL_X44_Y30_N0
\Y_internal~228\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~228_combout\ = ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & (\Y_internal~216_combout\ & (\Y_internal~5_combout\))) # (\Y_internal~98_combout\ & ((((\Y_internal~216_combout\ & \Y_internal~5_combout\)) # (\A[62]~input_o\)) # 
-- (\B[62]~input_o\))) ) ) # ( \Y_internal~99_combout\ & ( (!\Y_internal~216_combout\ & (((\Y_internal~217_combout\ & (!\Y_internal~98_combout\))))) # (\Y_internal~216_combout\ & (((\Y_internal~217_combout\ & (!\Y_internal~98_combout\))) # 
-- (\Y_internal~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011111000111110001000100010001111111110001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~216_combout\,
	datab => \ALT_INV_Y_internal~5_combout\,
	datac => \ALT_INV_Y_internal~217_combout\,
	datad => \ALT_INV_Y_internal~98_combout\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_A[62]~input_o\,
	datag => \ALT_INV_B[62]~input_o\,
	combout => \Y_internal~228_combout\);

-- Location: LABCELL_X43_Y30_N32
\Y_internal~219\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~219_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[63]~input_o\ & (\B[63]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[63]~input_o\ & (!\B[63]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[19]~input_o\)))) # (\LogicFN[1]~input_o\ & (\A[63]~input_o\ & (\B[63]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010001000011110001000101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[63]~input_o\,
	datab => \ALT_INV_B[63]~input_o\,
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Y_internal~219_combout\);

-- Location: LABCELL_X43_Y30_N16
\Y_internal~218\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~218_combout\ = ( \ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][0]~23_combout\ & ( (!\Shifter|Equal2~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][32]~44_combout\))) ) ) ) # ( 
-- !\ShiftCount[5]~0_combout\ & ( \Shifter|stage[5][0]~23_combout\ & ( (\Shifter|Equal2~0_combout\) # (\Shifter|stage[5][63]~2_combout\) ) ) ) # ( \ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][0]~23_combout\ & ( (!\Shifter|Equal2~0_combout\ & 
-- (\Shifter|sign_bit~0_combout\)) # (\Shifter|Equal2~0_combout\ & ((\Shifter|stage[5][32]~44_combout\))) ) ) ) # ( !\ShiftCount[5]~0_combout\ & ( !\Shifter|stage[5][0]~23_combout\ & ( (\Shifter|stage[5][63]~2_combout\ & !\Shifter|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|ALT_INV_stage[5][63]~2_combout\,
	datab => \Shifter|ALT_INV_sign_bit~0_combout\,
	datac => \Shifter|ALT_INV_stage[5][32]~44_combout\,
	datad => \Shifter|ALT_INV_Equal2~0_combout\,
	datae => \ALT_INV_ShiftCount[5]~0_combout\,
	dataf => \Shifter|ALT_INV_stage[5][0]~23_combout\,
	combout => \Y_internal~218_combout\);

-- Location: LABCELL_X43_Y30_N24
\Y_internal~224\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~224_combout\ = ( !\ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Y_internal~218_combout\)) # (\Y_internal~0_combout\ & ((!\Adder|gen_blk_cs:7:bits[7]~combout\ $ (!\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\))))) ) ) # ( 
-- \ExtWord~input_o\ & ( ((!\Y_internal~0_combout\ & (\Shifter|stage_out[31]~0_combout\)) # (\Y_internal~0_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001111001100110000111101010101111100000011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~218_combout\,
	datab => \Shifter|ALT_INV_stage_out[31]~0_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Y_internal~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	datag => \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\,
	combout => \Y_internal~224_combout\);

-- Location: LABCELL_X43_Y30_N20
\Y_internal~220\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_internal~220_combout\ = ( !\Y_internal~99_combout\ & ( (!\Y_internal~98_combout\ & (\Y_internal~5_combout\ & (((\Y_internal~224_combout\))))) # (\Y_internal~98_combout\ & ((((\Y_internal~5_combout\ & \Y_internal~224_combout\)) # (\B[63]~input_o\)) # 
-- (\A[63]~input_o\))) ) ) # ( \Y_internal~99_combout\ & ( (!\Y_internal~5_combout\ & (!\Y_internal~98_combout\ & (\Y_internal~219_combout\))) # (\Y_internal~5_combout\ & ((((!\Y_internal~98_combout\ & \Y_internal~219_combout\)) # 
-- (\Y_internal~224_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100110011000011000000110001010111011101110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_internal~5_combout\,
	datab => \ALT_INV_Y_internal~98_combout\,
	datac => \ALT_INV_Y_internal~219_combout\,
	datad => \ALT_INV_B[63]~input_o\,
	datae => \ALT_INV_Y_internal~99_combout\,
	dataf => \ALT_INV_Y_internal~224_combout\,
	datag => \ALT_INV_A[63]~input_o\,
	combout => \Y_internal~220_combout\);

-- Location: LABCELL_X43_Y32_N16
\Equal3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\)) ) ) ) 
-- # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X45_Y32_N24
\Equal3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\ & (\Equal3~0_combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X45_Y33_N16
\Equal3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( \Equal3~1_combout\ & ( !\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ & 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datae => \ALT_INV_Equal3~1_combout\,
	dataf => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X47_Y33_N32
\Equal3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ & (\Equal3~2_combout\ & 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \ALT_INV_Equal3~2_combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X47_Y33_N38
\Equal3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( !\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ & ( (\Equal3~3_combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~3_combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~4_combout\);

-- Location: MLABCELL_X49_Y33_N36
\Equal3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ & ( !\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ & ( (\Equal3~4_combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~5_combout\);

-- Location: LABCELL_X53_Y33_N38
\Equal3~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( !\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ & ( !\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ & 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ & \Equal3~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	datad => \ALT_INV_Equal3~5_combout\,
	datae => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~6_combout\);

-- Location: LABCELL_X50_Y29_N20
\Equal3~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = ( \Equal3~6_combout\ & ( (!\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \Equal3~7_combout\);

-- Location: LABCELL_X50_Y29_N36
\Equal3~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = ( !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Equal3~7_combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~7_combout\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~8_combout\);

-- Location: LABCELL_X45_Y29_N18
\Equal3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = ( !\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ & ( !\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & ( (\Equal3~8_combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~8_combout\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	datae => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~9_combout\);

-- Location: LABCELL_X47_Y31_N18
\Equal3~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = ( !\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Equal3~9_combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~9_combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~10_combout\);

-- Location: LABCELL_X47_Y31_N38
\Equal3~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~11_combout\ = ( \Equal3~10_combout\ & ( \Adder|gen_blk_cs:5:bits[7]~0_combout\ & ( (\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\)) ) ) ) # ( \Equal3~10_combout\ & ( !\Adder|gen_blk_cs:5:bits[7]~0_combout\ & ( (!\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ & 
-- (!\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	datae => \ALT_INV_Equal3~10_combout\,
	dataf => \Adder|ALT_INV_gen_blk_cs:5:bits[7]~0_combout\,
	combout => \Equal3~11_combout\);

-- Location: LABCELL_X47_Y30_N36
\Equal3~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~12_combout\ = ( \Adder|gen_blk_cs:6:bits[2]~0_combout\ & ( (!\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & (\Equal3~11_combout\ & (\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ & 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\))) ) ) # ( !\Adder|gen_blk_cs:6:bits[2]~0_combout\ & ( (!\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ & (\Equal3~11_combout\ & 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ & !\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_sum~combout\,
	datab => \ALT_INV_Equal3~11_combout\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|ALT_INV_cout~0_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|ALT_INV_gen_blk_cs:6:bits[2]~0_combout\,
	combout => \Equal3~12_combout\);

-- Location: MLABCELL_X46_Y29_N4
\Equal3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~13_combout\ = ( !\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ & ( (\Equal3~12_combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ $ 
-- (\Adder|gen_blk_cs:6:bits[5]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000010010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_cout~0_combout\,
	datab => \Adder|ALT_INV_gen_blk_cs:6:bits[5]~0_combout\,
	datac => \ALT_INV_Equal3~12_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~13_combout\);

-- Location: LABCELL_X45_Y30_N36
\Equal3~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~14_combout\ = ( \Equal3~13_combout\ & ( !\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ & 
-- (!\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (\Adder|gen_blk_cs:7:bits[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_cout~0_combout\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|ALT_INV_sum~combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:7:bits[1]~0_combout\,
	datae => \ALT_INV_Equal3~13_combout\,
	dataf => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~14_combout\);

-- Location: LABCELL_X45_Y30_N10
\Equal3~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~15_combout\ = ( \Adder|gen_blk_cs:7:bits[4]~0_combout\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & (\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\Equal3~14_combout\ & 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\))) ) ) # ( !\Adder|gen_blk_cs:7:bits[4]~0_combout\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ & 
-- (\Equal3~14_combout\ & !\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_Equal3~14_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|ALT_INV_sum~combout\,
	dataf => \Adder|ALT_INV_gen_blk_cs:7:bits[4]~0_combout\,
	combout => \Equal3~15_combout\);

-- Location: MLABCELL_X46_Y30_N12
\Equal3~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~16_combout\ = ( !\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & ( (!\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & (\Equal3~15_combout\ & (!\Adder|gen_blk_cs:7:bits[7]~combout\ $ 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|ALT_INV_sum~combout\,
	datab => \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\,
	datac => \ALT_INV_Equal3~15_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_cout~0_combout\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|ALT_INV_sum~combout\,
	combout => \Equal3~16_combout\);

-- Location: LABCELL_X43_Y30_N0
\AltB_sig~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB_sig~0_combout\ = ( \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( !\Adder|gen_blk_cs:7:bits[7]~combout\ ) ) # ( !\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ & ( !\Adder|gen_blk_cs:7:bits[7]~combout\ $ 
-- (((!\Adder|blk_c~34_combout\) # (\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder|ALT_INV_blk_c~34_combout\,
	datac => \Adder|ALT_INV_gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	datad => \Adder|ALT_INV_gen_blk_cs:7:bits[7]~combout\,
	dataf => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|ALT_INV_cout~0_combout\,
	combout => \AltB_sig~0_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


