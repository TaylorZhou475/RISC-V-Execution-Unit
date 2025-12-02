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

-- DATE "12/02/2025 07:05:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- Y[0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~18_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~15_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~20_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~19_combout\ : std_logic;
SIGNAL \Adder|blk_c~16_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:bits[0]~0_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:bits[6]~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:bits[2]~0_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:bits[4]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~17_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~6_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~8_combout\ : std_logic;
SIGNAL \Adder|blk_c~7_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~6_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:bits[5]~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~5_combout\ : std_logic;
SIGNAL \Adder|blk_c~4_combout\ : std_logic;
SIGNAL \Adder|blk_c~5_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~4_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~3_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Adder|blk_c~2_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
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
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:bits[2]~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~11_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~10_combout\ : std_logic;
SIGNAL \Adder|blk_c~8_combout\ : std_logic;
SIGNAL \Adder|blk_c~9_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~12_combout\ : std_logic;
SIGNAL \Adder|blk_c~10_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~13_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~14_combout\ : std_logic;
SIGNAL \Adder|blk_c~11_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \LogicUnit|Y~16_combout\ : std_logic;
SIGNAL \LogicUnit|Y~15_combout\ : std_logic;
SIGNAL \Adder|blk_c~12_combout\ : std_logic;
SIGNAL \LogicUnit|Y~17_combout\ : std_logic;
SIGNAL \Adder|blk_c~13_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:bits[6]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:bits[0]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:bits[2]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:bits[4]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~14_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \LogicUnit|Y~21_combout\ : std_logic;
SIGNAL \Adder|blk_c~18_combout\ : std_logic;
SIGNAL \LogicUnit|Y~23_combout\ : std_logic;
SIGNAL \LogicUnit|Y~22_combout\ : std_logic;
SIGNAL \Adder|blk_c~19_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:bits[6]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:bits[2]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:bits[0]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:bits[4]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~20_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[2]~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[6]~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[0]~0_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:bits[4]~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~23_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~25_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~26_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \LogicUnit|Y~24_combout\ : std_logic;
SIGNAL \Adder|blk_c~21_combout\ : std_logic;
SIGNAL \Adder|blk_c~22_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Adder|blk_c~26_combout\ : std_logic;
SIGNAL \Adder|blk_c~27_combout\ : std_logic;
SIGNAL \Adder|blk_c~28_combout\ : std_logic;
SIGNAL \Adder|blk_c~29_combout\ : std_logic;
SIGNAL \LogicUnit|Y~29_combout\ : std_logic;
SIGNAL \LogicUnit|Y~28_combout\ : std_logic;
SIGNAL \LogicUnit|Y~27_combout\ : std_logic;
SIGNAL \Adder|blk_c~24_combout\ : std_logic;
SIGNAL \Adder|blk_c~25_combout\ : std_logic;
SIGNAL \Adder|Cout~combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicUnit|Mux63~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \ShiftCount[5]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shifter|InputExtended[32]~0_combout\ : std_logic;
SIGNAL \Shifter|stage_in[34]~105_combout\ : std_logic;
SIGNAL \Shifter|stage_in[34]~151_combout\ : std_logic;
SIGNAL \Shifter|stage_in[35]~104_combout\ : std_logic;
SIGNAL \Shifter|stage_in[35]~150_combout\ : std_logic;
SIGNAL \Shifter|stage[2][32]~92_combout\ : std_logic;
SIGNAL \Shifter|InputExtended[32]~2_combout\ : std_logic;
SIGNAL \Shifter|Equal2~0_combout\ : std_logic;
SIGNAL \Shifter|stage[1][32]~93_combout\ : std_logic;
SIGNAL \Shifter|stage_in[33]~106_combout\ : std_logic;
SIGNAL \Shifter|stage_in[33]~152_combout\ : std_logic;
SIGNAL \Shifter|stage[1][32]~94_combout\ : std_logic;
SIGNAL \Shifter|stage[2][32]~95_combout\ : std_logic;
SIGNAL \Shifter|stage_in[41]~101_combout\ : std_logic;
SIGNAL \Shifter|stage_in[41]~147_combout\ : std_logic;
SIGNAL \Shifter|stage_in[43]~100_combout\ : std_logic;
SIGNAL \Shifter|stage_in[43]~146_combout\ : std_logic;
SIGNAL \Shifter|stage[2][41]~89_combout\ : std_logic;
SIGNAL \Shifter|stage_in[42]~102_combout\ : std_logic;
SIGNAL \Shifter|stage_in[42]~148_combout\ : std_logic;
SIGNAL \Shifter|stage_in[40]~103_combout\ : std_logic;
SIGNAL \Shifter|stage_in[40]~149_combout\ : std_logic;
SIGNAL \Shifter|stage[2][40]~90_combout\ : std_logic;
SIGNAL \Shifter|stage[2][40]~91_combout\ : std_logic;
SIGNAL \Shifter|stage[4][32]~96_combout\ : std_logic;
SIGNAL \Shifter|stage_in[47]~92_combout\ : std_logic;
SIGNAL \Shifter|stage_in[47]~138_combout\ : std_logic;
SIGNAL \Shifter|stage_in[45]~93_combout\ : std_logic;
SIGNAL \Shifter|stage_in[45]~139_combout\ : std_logic;
SIGNAL \Shifter|stage[2][45]~82_combout\ : std_logic;
SIGNAL \Shifter|stage_in[46]~94_combout\ : std_logic;
SIGNAL \Shifter|stage_in[46]~140_combout\ : std_logic;
SIGNAL \Shifter|stage_in[44]~95_combout\ : std_logic;
SIGNAL \Shifter|stage_in[44]~141_combout\ : std_logic;
SIGNAL \Shifter|stage[2][44]~83_combout\ : std_logic;
SIGNAL \Shifter|stage[2][44]~84_combout\ : std_logic;
SIGNAL \Shifter|stage_in[37]~97_combout\ : std_logic;
SIGNAL \Shifter|stage_in[37]~143_combout\ : std_logic;
SIGNAL \Shifter|stage_in[39]~96_combout\ : std_logic;
SIGNAL \Shifter|stage_in[39]~142_combout\ : std_logic;
SIGNAL \Shifter|stage[2][37]~85_combout\ : std_logic;
SIGNAL \Shifter|stage_in[36]~99_combout\ : std_logic;
SIGNAL \Shifter|stage_in[36]~145_combout\ : std_logic;
SIGNAL \Shifter|stage_in[38]~98_combout\ : std_logic;
SIGNAL \Shifter|stage_in[38]~144_combout\ : std_logic;
SIGNAL \Shifter|stage[2][36]~86_combout\ : std_logic;
SIGNAL \Shifter|stage[2][36]~87_combout\ : std_logic;
SIGNAL \Shifter|stage[4][36]~88_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~97_combout\ : std_logic;
SIGNAL \Shifter|stage_in[4]~110_combout\ : std_logic;
SIGNAL \Shifter|stage_in[5]~109_combout\ : std_logic;
SIGNAL \Shifter|stage[1][4]~99_combout\ : std_logic;
SIGNAL \Shifter|stage_in[6]~108_combout\ : std_logic;
SIGNAL \Shifter|stage_in[7]~107_combout\ : std_logic;
SIGNAL \Shifter|stage[2][4]~98_combout\ : std_logic;
SIGNAL \Shifter|stage[2][4]~100_combout\ : std_logic;
SIGNAL \Shifter|stage_in[2]~112_combout\ : std_logic;
SIGNAL \Shifter|stage_in[3]~111_combout\ : std_logic;
SIGNAL \Shifter|stage[1][2]~101_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~102_combout\ : std_logic;
SIGNAL \Shifter|InputExtended[63]~1_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~103_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~104_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~105_combout\ : std_logic;
SIGNAL \Shifter|stage_in[12]~116_combout\ : std_logic;
SIGNAL \Shifter|stage_in[14]~115_combout\ : std_logic;
SIGNAL \Shifter|stage[2][12]~107_combout\ : std_logic;
SIGNAL \Shifter|stage_in[13]~114_combout\ : std_logic;
SIGNAL \Shifter|stage_in[15]~113_combout\ : std_logic;
SIGNAL \Shifter|stage[2][13]~106_combout\ : std_logic;
SIGNAL \Shifter|stage[2][12]~108_combout\ : std_logic;
SIGNAL \Shifter|stage_in[10]~119_combout\ : std_logic;
SIGNAL \Shifter|stage_in[8]~120_combout\ : std_logic;
SIGNAL \Shifter|stage[2][8]~110_combout\ : std_logic;
SIGNAL \Shifter|stage_in[9]~118_combout\ : std_logic;
SIGNAL \Shifter|stage_in[11]~117_combout\ : std_logic;
SIGNAL \Shifter|stage[2][9]~109_combout\ : std_logic;
SIGNAL \Shifter|stage[2][8]~111_combout\ : std_logic;
SIGNAL \Shifter|stage[3][8]~112_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~113_combout\ : std_logic;
SIGNAL \Shifter|stage_in[62]~72_combout\ : std_logic;
SIGNAL \Shifter|stage_in[62]~133_combout\ : std_logic;
SIGNAL \Shifter|stage_in[63]~132_combout\ : std_logic;
SIGNAL \Shifter|stage[1][62]~58_combout\ : std_logic;
SIGNAL \Shifter|stage_in[60]~71_combout\ : std_logic;
SIGNAL \Shifter|stage_in[60]~131_combout\ : std_logic;
SIGNAL \Shifter|stage_in[61]~70_combout\ : std_logic;
SIGNAL \Shifter|stage_in[61]~130_combout\ : std_logic;
SIGNAL \Shifter|stage[2][60]~57_combout\ : std_logic;
SIGNAL \Shifter|stage[2][60]~59_combout\ : std_logic;
SIGNAL \Shifter|stage_in[58]~75_combout\ : std_logic;
SIGNAL \Shifter|stage_in[58]~136_combout\ : std_logic;
SIGNAL \Shifter|stage_in[56]~76_combout\ : std_logic;
SIGNAL \Shifter|stage_in[56]~137_combout\ : std_logic;
SIGNAL \Shifter|stage[2][56]~61_combout\ : std_logic;
SIGNAL \Shifter|stage_in[59]~73_combout\ : std_logic;
SIGNAL \Shifter|stage_in[59]~134_combout\ : std_logic;
SIGNAL \Shifter|stage_in[57]~74_combout\ : std_logic;
SIGNAL \Shifter|stage_in[57]~135_combout\ : std_logic;
SIGNAL \Shifter|stage[2][57]~60_combout\ : std_logic;
SIGNAL \Shifter|stage[2][56]~62_combout\ : std_logic;
SIGNAL \Shifter|stage[3][56]~63_combout\ : std_logic;
SIGNAL \Shifter|stage_in[53]~63_combout\ : std_logic;
SIGNAL \Shifter|stage_in[53]~123_combout\ : std_logic;
SIGNAL \Shifter|stage_in[55]~62_combout\ : std_logic;
SIGNAL \Shifter|stage_in[55]~122_combout\ : std_logic;
SIGNAL \Shifter|stage[2][53]~50_combout\ : std_logic;
SIGNAL \Shifter|stage_in[54]~64_combout\ : std_logic;
SIGNAL \Shifter|stage_in[54]~124_combout\ : std_logic;
SIGNAL \Shifter|stage_in[52]~65_combout\ : std_logic;
SIGNAL \Shifter|stage_in[52]~125_combout\ : std_logic;
SIGNAL \Shifter|stage[2][52]~51_combout\ : std_logic;
SIGNAL \Shifter|stage[2][52]~52_combout\ : std_logic;
SIGNAL \Shifter|stage_in[51]~66_combout\ : std_logic;
SIGNAL \Shifter|stage_in[51]~126_combout\ : std_logic;
SIGNAL \Shifter|stage_in[49]~67_combout\ : std_logic;
SIGNAL \Shifter|stage_in[49]~127_combout\ : std_logic;
SIGNAL \Shifter|stage[2][49]~53_combout\ : std_logic;
SIGNAL \Shifter|stage_in[48]~69_combout\ : std_logic;
SIGNAL \Shifter|stage_in[48]~129_combout\ : std_logic;
SIGNAL \Shifter|stage_in[50]~68_combout\ : std_logic;
SIGNAL \Shifter|stage_in[50]~128_combout\ : std_logic;
SIGNAL \Shifter|stage[2][48]~54_combout\ : std_logic;
SIGNAL \Shifter|stage[2][48]~55_combout\ : std_logic;
SIGNAL \Shifter|stage[4][48]~56_combout\ : std_logic;
SIGNAL \Shifter|stage[4][48]~64_combout\ : std_logic;
SIGNAL \Shifter|stage_in[17]~89_combout\ : std_logic;
SIGNAL \Shifter|stage_in[19]~88_combout\ : std_logic;
SIGNAL \Shifter|stage[2][17]~76_combout\ : std_logic;
SIGNAL \Shifter|stage_in[16]~91_combout\ : std_logic;
SIGNAL \Shifter|stage_in[18]~90_combout\ : std_logic;
SIGNAL \Shifter|stage[2][16]~77_combout\ : std_logic;
SIGNAL \Shifter|stage[2][16]~78_combout\ : std_logic;
SIGNAL \Shifter|stage_in[23]~84_combout\ : std_logic;
SIGNAL \Shifter|stage_in[21]~85_combout\ : std_logic;
SIGNAL \Shifter|stage[2][21]~73_combout\ : std_logic;
SIGNAL \Shifter|stage_in[20]~87_combout\ : std_logic;
SIGNAL \Shifter|stage_in[22]~86_combout\ : std_logic;
SIGNAL \Shifter|stage[2][20]~74_combout\ : std_logic;
SIGNAL \Shifter|stage[2][20]~75_combout\ : std_logic;
SIGNAL \Shifter|stage[3][16]~79_combout\ : std_logic;
SIGNAL \Shifter|stage_in[26]~82_combout\ : std_logic;
SIGNAL \Shifter|stage_in[24]~83_combout\ : std_logic;
SIGNAL \Shifter|stage[2][24]~70_combout\ : std_logic;
SIGNAL \Shifter|stage_in[27]~80_combout\ : std_logic;
SIGNAL \Shifter|stage_in[25]~81_combout\ : std_logic;
SIGNAL \Shifter|stage[2][25]~69_combout\ : std_logic;
SIGNAL \Shifter|stage[2][24]~71_combout\ : std_logic;
SIGNAL \Shifter|stage_in[28]~78_combout\ : std_logic;
SIGNAL \Shifter|stage_in[29]~77_combout\ : std_logic;
SIGNAL \Shifter|stage[2][28]~65_combout\ : std_logic;
SIGNAL \Shifter|stage_in[30]~79_combout\ : std_logic;
SIGNAL \Shifter|stage[1][30]~66_combout\ : std_logic;
SIGNAL \Shifter|stage[1][30]~67_combout\ : std_logic;
SIGNAL \Shifter|stage[2][28]~68_combout\ : std_logic;
SIGNAL \Shifter|stage[4][16]~72_combout\ : std_logic;
SIGNAL \Shifter|stage[4][16]~80_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~81_combout\ : std_logic;
SIGNAL \Shifter|stage[6][0]~114_combout\ : std_logic;
SIGNAL \Shifter|stage[4][63]~116_combout\ : std_logic;
SIGNAL \Shifter|sign_bit~0_combout\ : std_logic;
SIGNAL \Shifter|stage[6][63]~115_combout\ : std_logic;
SIGNAL \Shifter|stage[6][63]~117_combout\ : std_logic;
SIGNAL \Shifter|Output[0]~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Shifter|Output[0]~1_combout\ : std_logic;
SIGNAL \Y_internal~0_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:bits[7]~combout\ : std_logic;
SIGNAL \Y_internal~1_combout\ : std_logic;
SIGNAL \Shifter|stage[2][34]~150_combout\ : std_logic;
SIGNAL \Shifter|stage[2][33]~149_combout\ : std_logic;
SIGNAL \Shifter|stage[2][33]~151_combout\ : std_logic;
SIGNAL \Shifter|stage[2][42]~147_combout\ : std_logic;
SIGNAL \Shifter|stage[2][41]~148_combout\ : std_logic;
SIGNAL \Shifter|stage[4][33]~152_combout\ : std_logic;
SIGNAL \Shifter|stage[2][46]~142_combout\ : std_logic;
SIGNAL \Shifter|stage[2][45]~143_combout\ : std_logic;
SIGNAL \Shifter|stage[2][38]~144_combout\ : std_logic;
SIGNAL \Shifter|stage[2][37]~145_combout\ : std_logic;
SIGNAL \Shifter|stage[4][37]~146_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~153_combout\ : std_logic;
SIGNAL \Shifter|stage[2][14]~161_combout\ : std_logic;
SIGNAL \Shifter|stage[2][13]~162_combout\ : std_logic;
SIGNAL \Shifter|stage[2][10]~163_combout\ : std_logic;
SIGNAL \Shifter|stage[2][9]~164_combout\ : std_logic;
SIGNAL \Shifter|stage[3][9]~165_combout\ : std_logic;
SIGNAL \Shifter|stage[2][5]~157_combout\ : std_logic;
SIGNAL \Shifter|stage[1][5]~158_combout\ : std_logic;
SIGNAL \Shifter|stage[2][5]~159_combout\ : std_logic;
SIGNAL \Shifter|stage_in[1]~121_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~154_combout\ : std_logic;
SIGNAL \Shifter|stage[1][3]~155_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~156_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~160_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~166_combout\ : std_logic;
SIGNAL \Shifter|stage[2][18]~137_combout\ : std_logic;
SIGNAL \Shifter|stage[2][17]~138_combout\ : std_logic;
SIGNAL \Shifter|stage[2][22]~135_combout\ : std_logic;
SIGNAL \Shifter|stage[2][21]~136_combout\ : std_logic;
SIGNAL \Shifter|stage[3][17]~139_combout\ : std_logic;
SIGNAL \Shifter|stage[2][29]~129_combout\ : std_logic;
SIGNAL \Shifter|stage[2][31]~130_combout\ : std_logic;
SIGNAL \Shifter|stage[2][29]~131_combout\ : std_logic;
SIGNAL \Shifter|stage[2][26]~132_combout\ : std_logic;
SIGNAL \Shifter|stage[2][25]~133_combout\ : std_logic;
SIGNAL \Shifter|stage[4][17]~134_combout\ : std_logic;
SIGNAL \Shifter|stage[4][17]~140_combout\ : std_logic;
SIGNAL \Shifter|stage[2][61]~123_combout\ : std_logic;
SIGNAL \Shifter|stage[2][58]~126_combout\ : std_logic;
SIGNAL \Shifter|stage[2][57]~127_combout\ : std_logic;
SIGNAL \Shifter|stage[2][61]~124_combout\ : std_logic;
SIGNAL \Shifter|stage[3][57]~419_combout\ : std_logic;
SIGNAL \Shifter|stage[2][50]~120_combout\ : std_logic;
SIGNAL \Shifter|stage[2][49]~121_combout\ : std_logic;
SIGNAL \Shifter|stage[2][54]~118_combout\ : std_logic;
SIGNAL \Shifter|stage[2][53]~119_combout\ : std_logic;
SIGNAL \Shifter|stage[4][49]~122_combout\ : std_logic;
SIGNAL \Shifter|stage[4][49]~128_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~141_combout\ : std_logic;
SIGNAL \Shifter|stage[6][1]~167_combout\ : std_logic;
SIGNAL \Y_internal~3_combout\ : std_logic;
SIGNAL \Y_internal~4_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Y_internal~5_combout\ : std_logic;
SIGNAL \LogicUnit|Y~30_combout\ : std_logic;
SIGNAL \Y_internal~6_combout\ : std_logic;
SIGNAL \Shifter|stage[5][62]~168_combout\ : std_logic;
SIGNAL \Shifter|stage[6][62]~169_combout\ : std_logic;
SIGNAL \Y_internal~7_combout\ : std_logic;
SIGNAL \Y_internal~2_combout\ : std_logic;
SIGNAL \Y_internal~8_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~205_combout\ : std_logic;
SIGNAL \Shifter|stage[2][61]~125_combout\ : std_logic;
SIGNAL \Shifter|stage[6][61]~215_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~10_combout\ : std_logic;
SIGNAL \Shifter|stage[2][43]~190_combout\ : std_logic;
SIGNAL \Shifter|stage[2][42]~191_combout\ : std_logic;
SIGNAL \Shifter|stage[2][35]~192_combout\ : std_logic;
SIGNAL \Shifter|stage[2][34]~193_combout\ : std_logic;
SIGNAL \Shifter|stage[4][34]~194_combout\ : std_logic;
SIGNAL \Shifter|stage[2][39]~197_combout\ : std_logic;
SIGNAL \Shifter|stage[2][38]~198_combout\ : std_logic;
SIGNAL \Shifter|stage[2][47]~195_combout\ : std_logic;
SIGNAL \Shifter|stage[2][46]~196_combout\ : std_logic;
SIGNAL \Shifter|stage[4][38]~199_combout\ : std_logic;
SIGNAL \Shifter|stage[4][34]~200_combout\ : std_logic;
SIGNAL \Shifter|stage[2][11]~209_combout\ : std_logic;
SIGNAL \Shifter|stage[2][10]~210_combout\ : std_logic;
SIGNAL \Shifter|stage[2][15]~207_combout\ : std_logic;
SIGNAL \Shifter|stage[2][14]~208_combout\ : std_logic;
SIGNAL \Shifter|stage[3][10]~211_combout\ : std_logic;
SIGNAL \Shifter|stage[2][7]~203_combout\ : std_logic;
SIGNAL \Shifter|stage[2][6]~202_combout\ : std_logic;
SIGNAL \Shifter|stage[2][6]~204_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~201_combout\ : std_logic;
SIGNAL \Shifter|stage[6][2]~206_combout\ : std_logic;
SIGNAL \Shifter|stage[6][2]~212_combout\ : std_logic;
SIGNAL \Shifter|stage[6][2]~213_combout\ : std_logic;
SIGNAL \Shifter|stage[2][59]~176_combout\ : std_logic;
SIGNAL \Shifter|stage[2][58]~177_combout\ : std_logic;
SIGNAL \Shifter|stage[3][58]~175_combout\ : std_logic;
SIGNAL \Shifter|stage[3][58]~178_combout\ : std_logic;
SIGNAL \Shifter|stage[2][55]~170_combout\ : std_logic;
SIGNAL \Shifter|stage[2][54]~171_combout\ : std_logic;
SIGNAL \Shifter|stage[2][51]~172_combout\ : std_logic;
SIGNAL \Shifter|stage[2][50]~173_combout\ : std_logic;
SIGNAL \Shifter|stage[4][50]~174_combout\ : std_logic;
SIGNAL \Shifter|stage[4][50]~179_combout\ : std_logic;
SIGNAL \Shifter|stage[2][27]~181_combout\ : std_logic;
SIGNAL \Shifter|stage[2][26]~182_combout\ : std_logic;
SIGNAL \Shifter|stage[3][30]~180_combout\ : std_logic;
SIGNAL \Shifter|stage[3][26]~183_combout\ : std_logic;
SIGNAL \Shifter|stage[2][19]~186_combout\ : std_logic;
SIGNAL \Shifter|stage[2][18]~187_combout\ : std_logic;
SIGNAL \Shifter|stage[2][23]~184_combout\ : std_logic;
SIGNAL \Shifter|stage[2][22]~185_combout\ : std_logic;
SIGNAL \Shifter|stage[3][18]~188_combout\ : std_logic;
SIGNAL \Shifter|stage[4][18]~189_combout\ : std_logic;
SIGNAL \Shifter|stage[6][2]~214_combout\ : std_logic;
SIGNAL \Y_internal~11_combout\ : std_logic;
SIGNAL \Y_internal~9_combout\ : std_logic;
SIGNAL \Y_internal~12_combout\ : std_logic;
SIGNAL \Shifter|stage[2][11]~243_combout\ : std_logic;
SIGNAL \Shifter|stage[2][15]~242_combout\ : std_logic;
SIGNAL \Shifter|stage[3][11]~244_combout\ : std_logic;
SIGNAL \Shifter|stage[2][7]~240_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~241_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~245_combout\ : std_logic;
SIGNAL \Shifter|stage[2][47]~233_combout\ : std_logic;
SIGNAL \Shifter|stage[2][39]~234_combout\ : std_logic;
SIGNAL \Shifter|stage[4][39]~235_combout\ : std_logic;
SIGNAL \Shifter|stage[2][43]~236_combout\ : std_logic;
SIGNAL \Shifter|stage[2][35]~237_combout\ : std_logic;
SIGNAL \Shifter|stage[4][35]~238_combout\ : std_logic;
SIGNAL \Shifter|stage[4][35]~239_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~246_combout\ : std_logic;
SIGNAL \Shifter|stage[2][27]~226_combout\ : std_logic;
SIGNAL \Shifter|stage[2][27]~227_combout\ : std_logic;
SIGNAL \Shifter|stage[2][31]~224_combout\ : std_logic;
SIGNAL \Shifter|stage[2][31]~225_combout\ : std_logic;
SIGNAL \Shifter|stage[4][19]~228_combout\ : std_logic;
SIGNAL \Shifter|stage[2][19]~230_combout\ : std_logic;
SIGNAL \Shifter|stage[2][23]~229_combout\ : std_logic;
SIGNAL \Shifter|stage[3][19]~231_combout\ : std_logic;
SIGNAL \Shifter|stage[4][19]~232_combout\ : std_logic;
SIGNAL \Shifter|stage[2][59]~220_combout\ : std_logic;
SIGNAL \Shifter|stage[2][59]~221_combout\ : std_logic;
SIGNAL \Shifter|stage[3][59]~219_combout\ : std_logic;
SIGNAL \Shifter|stage[3][59]~222_combout\ : std_logic;
SIGNAL \Shifter|stage[2][55]~216_combout\ : std_logic;
SIGNAL \Shifter|stage[2][51]~217_combout\ : std_logic;
SIGNAL \Shifter|stage[4][51]~218_combout\ : std_logic;
SIGNAL \Shifter|stage[4][51]~223_combout\ : std_logic;
SIGNAL \Shifter|stage[6][3]~247_combout\ : std_logic;
SIGNAL \Shifter|stage[6][60]~248_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~14_combout\ : std_logic;
SIGNAL \Y_internal~15_combout\ : std_logic;
SIGNAL \Y_internal~13_combout\ : std_logic;
SIGNAL \Y_internal~16_combout\ : std_logic;
SIGNAL \Y_internal~17_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~18_combout\ : std_logic;
SIGNAL \Shifter|stage[6][7]~256_combout\ : std_logic;
SIGNAL \Shifter|stage[6][59]~262_combout\ : std_logic;
SIGNAL \Shifter|stage[4][40]~249_combout\ : std_logic;
SIGNAL \Shifter|stage[4][36]~250_combout\ : std_logic;
SIGNAL \Shifter|stage[4][52]~252_combout\ : std_logic;
SIGNAL \Shifter|stage[4][52]~251_combout\ : std_logic;
SIGNAL \Shifter|stage[6][36]~253_combout\ : std_logic;
SIGNAL \Shifter|stage[3][12]~255_combout\ : std_logic;
SIGNAL \Shifter|stage[6][7]~254_combout\ : std_logic;
SIGNAL \Shifter|stage[6][4]~257_combout\ : std_logic;
SIGNAL \Shifter|stage[3][20]~259_combout\ : std_logic;
SIGNAL \Shifter|stage[4][20]~258_combout\ : std_logic;
SIGNAL \Shifter|stage[4][20]~260_combout\ : std_logic;
SIGNAL \Shifter|stage[6][4]~261_combout\ : std_logic;
SIGNAL \Shifter|stage[6][4]~420_combout\ : std_logic;
SIGNAL \Y_internal~19_combout\ : std_logic;
SIGNAL \Y_internal~20_combout\ : std_logic;
SIGNAL \Shifter|stage[6][58]~274_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \LogicUnit|Y~31_combout\ : std_logic;
SIGNAL \Y_internal~22_combout\ : std_logic;
SIGNAL \Shifter|stage[4][41]~266_combout\ : std_logic;
SIGNAL \Shifter|stage[4][37]~267_combout\ : std_logic;
SIGNAL \Shifter|stage[4][53]~263_combout\ : std_logic;
SIGNAL \Shifter|stage[4][53]~264_combout\ : std_logic;
SIGNAL \Shifter|stage[6][37]~421_combout\ : std_logic;
SIGNAL \Shifter|stage[3][21]~271_combout\ : std_logic;
SIGNAL \Shifter|stage[4][21]~270_combout\ : std_logic;
SIGNAL \Shifter|stage[4][21]~272_combout\ : std_logic;
SIGNAL \Shifter|stage[3][13]~268_combout\ : std_logic;
SIGNAL \Shifter|stage[6][5]~269_combout\ : std_logic;
SIGNAL \Shifter|stage[6][5]~273_combout\ : std_logic;
SIGNAL \Shifter|stage[6][5]~422_combout\ : std_logic;
SIGNAL \Y_internal~23_combout\ : std_logic;
SIGNAL \Y_internal~21_combout\ : std_logic;
SIGNAL \Y_internal~24_combout\ : std_logic;
SIGNAL \Shifter|stage[6][57]~287_combout\ : std_logic;
SIGNAL \Shifter|stage[3][30]~283_combout\ : std_logic;
SIGNAL \Shifter|stage[3][22]~284_combout\ : std_logic;
SIGNAL \Shifter|stage[4][22]~285_combout\ : std_logic;
SIGNAL \Shifter|stage[3][14]~281_combout\ : std_logic;
SIGNAL \Shifter|stage[6][6]~282_combout\ : std_logic;
SIGNAL \Shifter|stage[6][6]~286_combout\ : std_logic;
SIGNAL \Shifter|stage[4][42]~275_combout\ : std_logic;
SIGNAL \Shifter|stage[4][38]~276_combout\ : std_logic;
SIGNAL \Shifter|stage[4][54]~279_combout\ : std_logic;
SIGNAL \Shifter|stage[4][54]~277_combout\ : std_logic;
SIGNAL \Shifter|stage[4][54]~278_combout\ : std_logic;
SIGNAL \Shifter|stage[6][38]~280_combout\ : std_logic;
SIGNAL \Shifter|stage[6][6]~423_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~26_combout\ : std_logic;
SIGNAL \Y_internal~27_combout\ : std_logic;
SIGNAL \Y_internal~25_combout\ : std_logic;
SIGNAL \Y_internal~28_combout\ : std_logic;
SIGNAL \Shifter|stage[3][23]~297_combout\ : std_logic;
SIGNAL \Shifter|stage[4][23]~296_combout\ : std_logic;
SIGNAL \Shifter|stage[4][23]~298_combout\ : std_logic;
SIGNAL \Shifter|stage[3][15]~294_combout\ : std_logic;
SIGNAL \Shifter|stage[6][7]~295_combout\ : std_logic;
SIGNAL \Shifter|stage[6][7]~299_combout\ : std_logic;
SIGNAL \Shifter|stage[4][43]~291_combout\ : std_logic;
SIGNAL \Shifter|stage[4][39]~292_combout\ : std_logic;
SIGNAL \Shifter|stage[4][55]~289_combout\ : std_logic;
SIGNAL \Shifter|stage[4][55]~288_combout\ : std_logic;
SIGNAL \Shifter|stage[4][55]~290_combout\ : std_logic;
SIGNAL \Shifter|stage[6][39]~293_combout\ : std_logic;
SIGNAL \Shifter|stage[6][7]~424_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~30_combout\ : std_logic;
SIGNAL \Shifter|stage[6][56]~300_combout\ : std_logic;
SIGNAL \Y_internal~31_combout\ : std_logic;
SIGNAL \Y_internal~29_combout\ : std_logic;
SIGNAL \Y_internal~32_combout\ : std_logic;
SIGNAL \Shifter|stage[6][55]~311_combout\ : std_logic;
SIGNAL \Shifter|stage[4][24]~302_combout\ : std_logic;
SIGNAL \Shifter|stage[4][28]~303_combout\ : std_logic;
SIGNAL \Shifter|stage[4][24]~304_combout\ : std_logic;
SIGNAL \Shifter|stage[6][14]~301_combout\ : std_logic;
SIGNAL \Shifter|stage[6][8]~305_combout\ : std_logic;
SIGNAL \Shifter|stage[4][44]~307_combout\ : std_logic;
SIGNAL \Shifter|stage[4][40]~308_combout\ : std_logic;
SIGNAL \Shifter|stage[5][40]~306_combout\ : std_logic;
SIGNAL \Shifter|stage[5][40]~309_combout\ : std_logic;
SIGNAL \Shifter|stage[6][8]~310_combout\ : std_logic;
SIGNAL \LogicUnit|Y~32_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~34_combout\ : std_logic;
SIGNAL \Y_internal~35_combout\ : std_logic;
SIGNAL \Y_internal~33_combout\ : std_logic;
SIGNAL \Y_internal~36_combout\ : std_logic;
SIGNAL \Shifter|stage[4][45]~317_combout\ : std_logic;
SIGNAL \Shifter|stage[4][41]~318_combout\ : std_logic;
SIGNAL \Shifter|stage[5][41]~316_combout\ : std_logic;
SIGNAL \Shifter|stage[5][41]~319_combout\ : std_logic;
SIGNAL \Shifter|stage[4][29]~313_combout\ : std_logic;
SIGNAL \Shifter|stage[4][25]~312_combout\ : std_logic;
SIGNAL \Shifter|stage[4][25]~314_combout\ : std_logic;
SIGNAL \Shifter|stage[6][9]~315_combout\ : std_logic;
SIGNAL \Shifter|stage[6][9]~320_combout\ : std_logic;
SIGNAL \Shifter|stage[6][54]~321_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~38_combout\ : std_logic;
SIGNAL \Y_internal~39_combout\ : std_logic;
SIGNAL \Y_internal~37_combout\ : std_logic;
SIGNAL \Y_internal~40_combout\ : std_logic;
SIGNAL \Shifter|stage[5][42]~325_combout\ : std_logic;
SIGNAL \Shifter|stage[4][46]~326_combout\ : std_logic;
SIGNAL \Shifter|stage[4][42]~327_combout\ : std_logic;
SIGNAL \Shifter|stage[5][42]~328_combout\ : std_logic;
SIGNAL \Shifter|stage[4][26]~322_combout\ : std_logic;
SIGNAL \Shifter|stage[4][26]~323_combout\ : std_logic;
SIGNAL \Shifter|stage[6][10]~324_combout\ : std_logic;
SIGNAL \Shifter|stage[6][10]~329_combout\ : std_logic;
SIGNAL \Shifter|stage[6][53]~330_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~42_combout\ : std_logic;
SIGNAL \Y_internal~43_combout\ : std_logic;
SIGNAL \Y_internal~41_combout\ : std_logic;
SIGNAL \Y_internal~44_combout\ : std_logic;
SIGNAL \Shifter|stage[5][43]~335_combout\ : std_logic;
SIGNAL \Shifter|stage[4][47]~336_combout\ : std_logic;
SIGNAL \Shifter|stage[4][43]~337_combout\ : std_logic;
SIGNAL \Shifter|stage[5][43]~338_combout\ : std_logic;
SIGNAL \Shifter|stage[4][31]~332_combout\ : std_logic;
SIGNAL \Shifter|stage[4][27]~331_combout\ : std_logic;
SIGNAL \Shifter|stage[4][27]~333_combout\ : std_logic;
SIGNAL \Shifter|stage[6][11]~334_combout\ : std_logic;
SIGNAL \Shifter|stage[6][11]~339_combout\ : std_logic;
SIGNAL \Shifter|stage[6][52]~340_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~46_combout\ : std_logic;
SIGNAL \Y_internal~47_combout\ : std_logic;
SIGNAL \Y_internal~45_combout\ : std_logic;
SIGNAL \Y_internal~48_combout\ : std_logic;
SIGNAL \Shifter|stage[4][44]~344_combout\ : std_logic;
SIGNAL \Shifter|stage[4][44]~345_combout\ : std_logic;
SIGNAL \Shifter|stage[5][44]~343_combout\ : std_logic;
SIGNAL \Shifter|stage[5][44]~346_combout\ : std_logic;
SIGNAL \Shifter|stage[4][28]~341_combout\ : std_logic;
SIGNAL \Shifter|stage[6][12]~342_combout\ : std_logic;
SIGNAL \Shifter|stage[6][12]~347_combout\ : std_logic;
SIGNAL \Shifter|stage[6][51]~348_combout\ : std_logic;
SIGNAL \Y_internal~51_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~49_combout\ : std_logic;
SIGNAL \Y_internal~50_combout\ : std_logic;
SIGNAL \Y_internal~52_combout\ : std_logic;
SIGNAL \Y_internal~53_combout\ : std_logic;
SIGNAL \Shifter|stage[5][45]~351_combout\ : std_logic;
SIGNAL \Shifter|stage[4][45]~352_combout\ : std_logic;
SIGNAL \Shifter|stage[4][45]~353_combout\ : std_logic;
SIGNAL \Shifter|stage[5][45]~354_combout\ : std_logic;
SIGNAL \Shifter|stage[4][29]~349_combout\ : std_logic;
SIGNAL \Shifter|stage[6][13]~350_combout\ : std_logic;
SIGNAL \Shifter|stage[6][13]~355_combout\ : std_logic;
SIGNAL \Shifter|stage[6][50]~356_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~287_combout\ : std_logic;
SIGNAL \Y_internal~288_combout\ : std_logic;
SIGNAL \Y_internal~54_combout\ : std_logic;
SIGNAL \Y_internal~55_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~56_combout\ : std_logic;
SIGNAL \Y_internal~57_combout\ : std_logic;
SIGNAL \Y_internal~58_combout\ : std_logic;
SIGNAL \Shifter|stage[5][46]~360_combout\ : std_logic;
SIGNAL \Shifter|stage[4][46]~361_combout\ : std_logic;
SIGNAL \Shifter|stage[4][46]~362_combout\ : std_logic;
SIGNAL \Shifter|stage[5][46]~363_combout\ : std_logic;
SIGNAL \Shifter|stage[4][30]~357_combout\ : std_logic;
SIGNAL \Shifter|stage[4][30]~358_combout\ : std_logic;
SIGNAL \Shifter|stage[6][14]~359_combout\ : std_logic;
SIGNAL \Shifter|stage[6][14]~364_combout\ : std_logic;
SIGNAL \Shifter|stage[6][49]~365_combout\ : std_logic;
SIGNAL \Y_internal~59_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~285_combout\ : std_logic;
SIGNAL \Y_internal~286_combout\ : std_logic;
SIGNAL \Y_internal~60_combout\ : std_logic;
SIGNAL \Shifter|stage[4][31]~366_combout\ : std_logic;
SIGNAL \Shifter|stage[6][15]~367_combout\ : std_logic;
SIGNAL \Shifter|stage[5][47]~368_combout\ : std_logic;
SIGNAL \Shifter|stage[4][47]~369_combout\ : std_logic;
SIGNAL \Shifter|stage[4][47]~370_combout\ : std_logic;
SIGNAL \Shifter|stage[5][47]~371_combout\ : std_logic;
SIGNAL \Shifter|stage[6][15]~372_combout\ : std_logic;
SIGNAL \Shifter|stage[6][48]~373_combout\ : std_logic;
SIGNAL \Y_internal~61_combout\ : std_logic;
SIGNAL \Y_internal~283_combout\ : std_logic;
SIGNAL \Y_internal~284_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~62_combout\ : std_logic;
SIGNAL \Shifter|stage[4][32]~374_combout\ : std_logic;
SIGNAL \Shifter|stage[6][16]~375_combout\ : std_logic;
SIGNAL \Shifter|stage[6][16]~376_combout\ : std_logic;
SIGNAL \Shifter|stage[6][47]~425_combout\ : std_logic;
SIGNAL \Y_internal~63_combout\ : std_logic;
SIGNAL \Y_internal~64_combout\ : std_logic;
SIGNAL \Y_internal~65_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~66_combout\ : std_logic;
SIGNAL \Shifter|stage[4][33]~377_combout\ : std_logic;
SIGNAL \Shifter|stage[6][17]~378_combout\ : std_logic;
SIGNAL \Shifter|stage[6][17]~379_combout\ : std_logic;
SIGNAL \Shifter|stage[6][46]~426_combout\ : std_logic;
SIGNAL \Y_internal~67_combout\ : std_logic;
SIGNAL \Shifter|stage[6][18]~380_combout\ : std_logic;
SIGNAL \Shifter|stage[6][18]~381_combout\ : std_logic;
SIGNAL \Shifter|stage[6][45]~427_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \Y_internal~281_combout\ : std_logic;
SIGNAL \Y_internal~282_combout\ : std_logic;
SIGNAL \Y_internal~68_combout\ : std_logic;
SIGNAL \Y_internal~69_combout\ : std_logic;
SIGNAL \Shifter|stage[6][19]~382_combout\ : std_logic;
SIGNAL \Shifter|stage[6][19]~383_combout\ : std_logic;
SIGNAL \Shifter|stage[6][44]~428_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~70_combout\ : std_logic;
SIGNAL \Y_internal~71_combout\ : std_logic;
SIGNAL \Y_internal~72_combout\ : std_logic;
SIGNAL \Y_internal~73_combout\ : std_logic;
SIGNAL \Shifter|stage[6][43]~429_combout\ : std_logic;
SIGNAL \Shifter|stage[6][20]~385_combout\ : std_logic;
SIGNAL \Shifter|stage[4][52]~384_combout\ : std_logic;
SIGNAL \Shifter|stage[6][20]~386_combout\ : std_logic;
SIGNAL \Y_internal~74_combout\ : std_logic;
SIGNAL \Y_internal~75_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~76_combout\ : std_logic;
SIGNAL \Y_internal~77_combout\ : std_logic;
SIGNAL \Shifter|stage[4][53]~265_combout\ : std_logic;
SIGNAL \Shifter|stage[6][21]~387_combout\ : std_logic;
SIGNAL \Shifter|stage[6][21]~388_combout\ : std_logic;
SIGNAL \Shifter|stage[6][42]~430_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~279_combout\ : std_logic;
SIGNAL \Y_internal~280_combout\ : std_logic;
SIGNAL \Y_internal~78_combout\ : std_logic;
SIGNAL \Y_internal~79_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~80_combout\ : std_logic;
SIGNAL \Y_internal~81_combout\ : std_logic;
SIGNAL \Y_internal~82_combout\ : std_logic;
SIGNAL \Shifter|stage[4][54]~389_combout\ : std_logic;
SIGNAL \Shifter|stage[6][22]~390_combout\ : std_logic;
SIGNAL \Shifter|stage[6][22]~391_combout\ : std_logic;
SIGNAL \Shifter|stage[6][41]~431_combout\ : std_logic;
SIGNAL \Y_internal~83_combout\ : std_logic;
SIGNAL \Shifter|stage[6][23]~392_combout\ : std_logic;
SIGNAL \Shifter|stage[6][23]~393_combout\ : std_logic;
SIGNAL \Shifter|stage[6][40]~432_combout\ : std_logic;
SIGNAL \Y_internal~84_combout\ : std_logic;
SIGNAL \Y_internal~85_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~86_combout\ : std_logic;
SIGNAL \Y_internal~87_combout\ : std_logic;
SIGNAL \Shifter|stage[6][24]~395_combout\ : std_logic;
SIGNAL \Shifter|stage[6][24]~394_combout\ : std_logic;
SIGNAL \Shifter|stage[6][24]~396_combout\ : std_logic;
SIGNAL \Shifter|stage[6][39]~433_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~277_combout\ : std_logic;
SIGNAL \Y_internal~278_combout\ : std_logic;
SIGNAL \Y_internal~88_combout\ : std_logic;
SIGNAL \Y_internal~89_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~275_combout\ : std_logic;
SIGNAL \Y_internal~276_combout\ : std_logic;
SIGNAL \Y_internal~90_combout\ : std_logic;
SIGNAL \Shifter|stage[6][25]~398_combout\ : std_logic;
SIGNAL \Shifter|stage[6][25]~397_combout\ : std_logic;
SIGNAL \Shifter|stage[6][25]~399_combout\ : std_logic;
SIGNAL \Shifter|stage[6][38]~434_combout\ : std_logic;
SIGNAL \Y_internal~91_combout\ : std_logic;
SIGNAL \Shifter|stage[6][37]~435_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~273_combout\ : std_logic;
SIGNAL \Y_internal~274_combout\ : std_logic;
SIGNAL \Y_internal~92_combout\ : std_logic;
SIGNAL \Shifter|stage[6][26]~401_combout\ : std_logic;
SIGNAL \Shifter|stage[6][26]~400_combout\ : std_logic;
SIGNAL \Shifter|stage[6][26]~402_combout\ : std_logic;
SIGNAL \Y_internal~93_combout\ : std_logic;
SIGNAL \Shifter|stage[6][36]~436_combout\ : std_logic;
SIGNAL \Shifter|stage[6][27]~404_combout\ : std_logic;
SIGNAL \Shifter|stage[6][27]~403_combout\ : std_logic;
SIGNAL \Shifter|stage[6][27]~405_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~94_combout\ : std_logic;
SIGNAL \Y_internal~95_combout\ : std_logic;
SIGNAL \Y_internal~96_combout\ : std_logic;
SIGNAL \Y_internal~97_combout\ : std_logic;
SIGNAL \Shifter|stage[6][28]~406_combout\ : std_logic;
SIGNAL \Shifter|stage[6][28]~407_combout\ : std_logic;
SIGNAL \Shifter|stage[6][28]~437_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~271_combout\ : std_logic;
SIGNAL \Y_internal~272_combout\ : std_logic;
SIGNAL \Y_internal~98_combout\ : std_logic;
SIGNAL \Shifter|stage[6][35]~408_combout\ : std_logic;
SIGNAL \Shifter|stage[6][35]~438_combout\ : std_logic;
SIGNAL \Y_internal~99_combout\ : std_logic;
SIGNAL \Shifter|stage[6][29]~409_combout\ : std_logic;
SIGNAL \Shifter|stage[6][29]~410_combout\ : std_logic;
SIGNAL \Shifter|stage[6][29]~439_combout\ : std_logic;
SIGNAL \Shifter|stage[6][34]~411_combout\ : std_logic;
SIGNAL \Shifter|stage[6][34]~440_combout\ : std_logic;
SIGNAL \Y_internal~100_combout\ : std_logic;
SIGNAL \Y_internal~101_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~102_combout\ : std_logic;
SIGNAL \Y_internal~103_combout\ : std_logic;
SIGNAL \Y_internal~269_combout\ : std_logic;
SIGNAL \Y_internal~270_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~104_combout\ : std_logic;
SIGNAL \Shifter|stage[6][33]~415_combout\ : std_logic;
SIGNAL \Shifter|stage[6][33]~441_combout\ : std_logic;
SIGNAL \Shifter|stage[6][30]~412_combout\ : std_logic;
SIGNAL \Shifter|stage[6][30]~413_combout\ : std_logic;
SIGNAL \Shifter|stage[6][30]~414_combout\ : std_logic;
SIGNAL \Y_internal~105_combout\ : std_logic;
SIGNAL \Shifter|stage[6][31]~416_combout\ : std_logic;
SIGNAL \Shifter|stage[6][31]~417_combout\ : std_logic;
SIGNAL \Shifter|stage[6][31]~442_combout\ : std_logic;
SIGNAL \Shifter|stage[6][32]~418_combout\ : std_logic;
SIGNAL \Shifter|stage[6][32]~443_combout\ : std_logic;
SIGNAL \Shifter|Output[31]~2_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Shifter|Output[31]~3_combout\ : std_logic;
SIGNAL \LogicUnit|Mux32~0_combout\ : std_logic;
SIGNAL \LogicUnit|Mux32~1_combout\ : std_logic;
SIGNAL \Y_internal~106_combout\ : std_logic;
SIGNAL \Y_internal~107_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~108_combout\ : std_logic;
SIGNAL \Y_internal~109_combout\ : std_logic;
SIGNAL \Y_internal~110_combout\ : std_logic;
SIGNAL \Y_internal~267_combout\ : std_logic;
SIGNAL \Y_internal~268_combout\ : std_logic;
SIGNAL \Y_internal~111_combout\ : std_logic;
SIGNAL \Y_internal~112_combout\ : std_logic;
SIGNAL \Y_internal~113_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~114_combout\ : std_logic;
SIGNAL \Y_internal~115_combout\ : std_logic;
SIGNAL \Y_internal~116_combout\ : std_logic;
SIGNAL \Y_internal~265_combout\ : std_logic;
SIGNAL \Y_internal~266_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~117_combout\ : std_logic;
SIGNAL \Y_internal~118_combout\ : std_logic;
SIGNAL \Y_internal~119_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~120_combout\ : std_logic;
SIGNAL \Y_internal~121_combout\ : std_logic;
SIGNAL \Y_internal~263_combout\ : std_logic;
SIGNAL \Y_internal~264_combout\ : std_logic;
SIGNAL \Y_internal~122_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~123_combout\ : std_logic;
SIGNAL \Y_internal~124_combout\ : std_logic;
SIGNAL \Y_internal~261_combout\ : std_logic;
SIGNAL \Y_internal~262_combout\ : std_logic;
SIGNAL \Y_internal~125_combout\ : std_logic;
SIGNAL \Y_internal~126_combout\ : std_logic;
SIGNAL \Y_internal~127_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~128_combout\ : std_logic;
SIGNAL \Y_internal~129_combout\ : std_logic;
SIGNAL \Y_internal~130_combout\ : std_logic;
SIGNAL \Y_internal~259_combout\ : std_logic;
SIGNAL \Y_internal~260_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~131_combout\ : std_logic;
SIGNAL \Y_internal~132_combout\ : std_logic;
SIGNAL \Y_internal~133_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~136_combout\ : std_logic;
SIGNAL \Y_internal~137_combout\ : std_logic;
SIGNAL \Y_internal~134_combout\ : std_logic;
SIGNAL \Y_internal~135_combout\ : std_logic;
SIGNAL \Y_internal~138_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~139_combout\ : std_logic;
SIGNAL \Y_internal~140_combout\ : std_logic;
SIGNAL \Y_internal~257_combout\ : std_logic;
SIGNAL \Y_internal~258_combout\ : std_logic;
SIGNAL \Y_internal~141_combout\ : std_logic;
SIGNAL \Y_internal~142_combout\ : std_logic;
SIGNAL \Y_internal~143_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~144_combout\ : std_logic;
SIGNAL \Y_internal~145_combout\ : std_logic;
SIGNAL \Y_internal~146_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~147_combout\ : std_logic;
SIGNAL \Y_internal~148_combout\ : std_logic;
SIGNAL \Y_internal~255_combout\ : std_logic;
SIGNAL \Y_internal~256_combout\ : std_logic;
SIGNAL \Y_internal~149_combout\ : std_logic;
SIGNAL \Y_internal~253_combout\ : std_logic;
SIGNAL \Y_internal~254_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~150_combout\ : std_logic;
SIGNAL \Y_internal~151_combout\ : std_logic;
SIGNAL \Y_internal~152_combout\ : std_logic;
SIGNAL \Y_internal~251_combout\ : std_logic;
SIGNAL \Y_internal~252_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~153_combout\ : std_logic;
SIGNAL \Y_internal~154_combout\ : std_logic;
SIGNAL \Y_internal~155_combout\ : std_logic;
SIGNAL \Y_internal~156_combout\ : std_logic;
SIGNAL \Y_internal~157_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~158_combout\ : std_logic;
SIGNAL \Y_internal~159_combout\ : std_logic;
SIGNAL \Y_internal~160_combout\ : std_logic;
SIGNAL \Y_internal~249_combout\ : std_logic;
SIGNAL \Y_internal~250_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~161_combout\ : std_logic;
SIGNAL \Y_internal~162_combout\ : std_logic;
SIGNAL \Y_internal~163_combout\ : std_logic;
SIGNAL \Y_internal~164_combout\ : std_logic;
SIGNAL \Y_internal~165_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~166_combout\ : std_logic;
SIGNAL \Y_internal~167_combout\ : std_logic;
SIGNAL \Y_internal~168_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~169_combout\ : std_logic;
SIGNAL \Y_internal~170_combout\ : std_logic;
SIGNAL \Y_internal~247_combout\ : std_logic;
SIGNAL \Y_internal~248_combout\ : std_logic;
SIGNAL \Y_internal~171_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~174_combout\ : std_logic;
SIGNAL \Y_internal~175_combout\ : std_logic;
SIGNAL \Y_internal~172_combout\ : std_logic;
SIGNAL \Y_internal~173_combout\ : std_logic;
SIGNAL \Y_internal~176_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~177_combout\ : std_logic;
SIGNAL \Y_internal~178_combout\ : std_logic;
SIGNAL \Y_internal~245_combout\ : std_logic;
SIGNAL \Y_internal~246_combout\ : std_logic;
SIGNAL \Y_internal~179_combout\ : std_logic;
SIGNAL \Y_internal~180_combout\ : std_logic;
SIGNAL \Y_internal~181_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~182_combout\ : std_logic;
SIGNAL \Y_internal~183_combout\ : std_logic;
SIGNAL \Y_internal~184_combout\ : std_logic;
SIGNAL \Y_internal~243_combout\ : std_logic;
SIGNAL \Y_internal~244_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~185_combout\ : std_logic;
SIGNAL \Y_internal~186_combout\ : std_logic;
SIGNAL \Y_internal~187_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~190_combout\ : std_logic;
SIGNAL \Y_internal~191_combout\ : std_logic;
SIGNAL \Y_internal~188_combout\ : std_logic;
SIGNAL \Y_internal~189_combout\ : std_logic;
SIGNAL \Y_internal~192_combout\ : std_logic;
SIGNAL \Y_internal~241_combout\ : std_logic;
SIGNAL \Y_internal~242_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~193_combout\ : std_logic;
SIGNAL \Y_internal~194_combout\ : std_logic;
SIGNAL \Y_internal~195_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~196_combout\ : std_logic;
SIGNAL \Y_internal~197_combout\ : std_logic;
SIGNAL \Y_internal~239_combout\ : std_logic;
SIGNAL \Y_internal~240_combout\ : std_logic;
SIGNAL \Y_internal~198_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~199_combout\ : std_logic;
SIGNAL \Y_internal~200_combout\ : std_logic;
SIGNAL \Y_internal~237_combout\ : std_logic;
SIGNAL \Y_internal~238_combout\ : std_logic;
SIGNAL \Y_internal~201_combout\ : std_logic;
SIGNAL \Y_internal~235_combout\ : std_logic;
SIGNAL \Y_internal~236_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~202_combout\ : std_logic;
SIGNAL \Y_internal~203_combout\ : std_logic;
SIGNAL \Y_internal~204_combout\ : std_logic;
SIGNAL \Y_internal~233_combout\ : std_logic;
SIGNAL \Y_internal~234_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~205_combout\ : std_logic;
SIGNAL \Y_internal~206_combout\ : std_logic;
SIGNAL \Y_internal~207_combout\ : std_logic;
SIGNAL \Y_internal~208_combout\ : std_logic;
SIGNAL \Y_internal~209_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~210_combout\ : std_logic;
SIGNAL \Y_internal~211_combout\ : std_logic;
SIGNAL \Y_internal~212_combout\ : std_logic;
SIGNAL \Y_internal~231_combout\ : std_logic;
SIGNAL \Y_internal~232_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~213_combout\ : std_logic;
SIGNAL \Y_internal~214_combout\ : std_logic;
SIGNAL \Y_internal~215_combout\ : std_logic;
SIGNAL \Y_internal~216_combout\ : std_logic;
SIGNAL \Y_internal~217_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~218_combout\ : std_logic;
SIGNAL \Y_internal~219_combout\ : std_logic;
SIGNAL \Y_internal~220_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~221_combout\ : std_logic;
SIGNAL \Y_internal~222_combout\ : std_logic;
SIGNAL \Y_internal~229_combout\ : std_logic;
SIGNAL \Y_internal~230_combout\ : std_logic;
SIGNAL \Y_internal~223_combout\ : std_logic;
SIGNAL \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \Y_internal~226_combout\ : std_logic;
SIGNAL \Y_internal~227_combout\ : std_logic;
SIGNAL \Y_internal~224_combout\ : std_logic;
SIGNAL \Y_internal~225_combout\ : std_logic;
SIGNAL \Y_internal~228_combout\ : std_logic;
SIGNAL \Equal3~16_combout\ : std_logic;
SIGNAL \Equal3~15_combout\ : std_logic;
SIGNAL \Equal3~17_combout\ : std_logic;
SIGNAL \Equal3~18_combout\ : std_logic;
SIGNAL \Equal3~19_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~11_combout\ : std_logic;
SIGNAL \Equal3~13_combout\ : std_logic;
SIGNAL \Equal3~12_combout\ : std_logic;
SIGNAL \Equal3~14_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal3~20_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~21_combout\ : std_logic;
SIGNAL \Equal3~22_combout\ : std_logic;
SIGNAL \AltB_sig~2_combout\ : std_logic;
SIGNAL \Adder|ALT_INV_Cout~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
\Adder|ALT_INV_Cout~combout\ <= NOT \Adder|Cout~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X85_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~8_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~12_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~16_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~20_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~24_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~28_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~32_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~36_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~40_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~44_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~48_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~53_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~55_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~59_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~61_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~63_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~67_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~69_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~73_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~77_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~79_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~83_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~87_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~89_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~91_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~93_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~97_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~99_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~103_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~105_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~106_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~111_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~116_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~119_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~122_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~125_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~130_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~133_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~138_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~141_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~146_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~149_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~152_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~155_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~160_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~163_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~168_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~171_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~176_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~179_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~184_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~187_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~192_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~195_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~198_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~201_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~204_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~207_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~212_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~215_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~220_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~223_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y_internal~228_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~22_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB_sig~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder|ALT_INV_Cout~combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X115_Y44_N8
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X67_Y45_N30
\LogicUnit|Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~18_combout\ = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => \LogicUnit|Y~18_combout\);

-- Location: IOIBUF_X115_Y45_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X67_Y45_N0
\Adder|blk_c~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~15_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~18_combout\ & (\B[35]~input_o\ $ (!\A[35]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~18_combout\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[35]~input_o\,
	datac => \LogicUnit|Y~18_combout\,
	datad => \A[35]~input_o\,
	combout => \Adder|blk_c~15_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X67_Y46_N12
\LogicUnit|Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~20_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	combout => \LogicUnit|Y~20_combout\);

-- Location: IOIBUF_X0_Y44_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X68_Y46_N22
\LogicUnit|Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~19_combout\ = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	combout => \LogicUnit|Y~19_combout\);

-- Location: LCCOMB_X67_Y46_N30
\Adder|blk_c~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~16_combout\ = (\Adder|blk_c~15_combout\ & ((\AddnSub~input_o\ & (!\LogicUnit|Y~20_combout\ & !\LogicUnit|Y~19_combout\)) # (!\AddnSub~input_o\ & (\LogicUnit|Y~20_combout\ & \LogicUnit|Y~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|blk_c~15_combout\,
	datac => \LogicUnit|Y~20_combout\,
	datad => \LogicUnit|Y~19_combout\,
	combout => \Adder|blk_c~16_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X67_Y46_N24
\Adder|gen_blk_cs:4:bits[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:bits[0]~0_combout\ = \AddnSub~input_o\ $ (\B[32]~input_o\ $ (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Adder|gen_blk_cs:4:bits[0]~0_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X68_Y46_N18
\Adder|gen_blk_cs:4:bits[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:bits[6]~0_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\ $ (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \Adder|gen_blk_cs:4:bits[6]~0_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X67_Y46_N26
\Adder|gen_blk_cs:4:bits[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:bits[2]~0_combout\ = \A[34]~input_o\ $ (\B[34]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:4:bits[2]~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X68_Y46_N24
\Adder|gen_blk_cs:4:bits[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:bits[4]~0_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\ $ (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Adder|gen_blk_cs:4:bits[4]~0_combout\);

-- Location: LCCOMB_X67_Y46_N28
\Adder|blk_c~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~17_combout\ = (\Adder|gen_blk_cs:4:bits[0]~0_combout\ & (\Adder|gen_blk_cs:4:bits[6]~0_combout\ & (\Adder|gen_blk_cs:4:bits[2]~0_combout\ & \Adder|gen_blk_cs:4:bits[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:bits[0]~0_combout\,
	datab => \Adder|gen_blk_cs:4:bits[6]~0_combout\,
	datac => \Adder|gen_blk_cs:4:bits[2]~0_combout\,
	datad => \Adder|gen_blk_cs:4:bits[4]~0_combout\,
	combout => \Adder|blk_c~17_combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X72_Y39_N6
\LogicUnit|Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~9_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \LogicUnit|Y~9_combout\);

-- Location: IOIBUF_X0_Y35_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X69_Y43_N4
\LogicUnit|Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~7_combout\ = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \LogicUnit|Y~7_combout\);

-- Location: IOIBUF_X100_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X69_Y43_N14
\Adder|blk_c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~6_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~7_combout\ & (\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~7_combout\ & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[8]~input_o\,
	datac => \LogicUnit|Y~7_combout\,
	datad => \B[8]~input_o\,
	combout => \Adder|blk_c~6_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X72_Y39_N12
\LogicUnit|Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~8_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \LogicUnit|Y~8_combout\);

-- Location: LCCOMB_X72_Y39_N0
\Adder|blk_c~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~7_combout\ = (\Adder|blk_c~6_combout\ & ((\LogicUnit|Y~9_combout\ & (!\AddnSub~input_o\ & \LogicUnit|Y~8_combout\)) # (!\LogicUnit|Y~9_combout\ & (\AddnSub~input_o\ & !\LogicUnit|Y~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~9_combout\,
	datab => \AddnSub~input_o\,
	datac => \Adder|blk_c~6_combout\,
	datad => \LogicUnit|Y~8_combout\,
	combout => \Adder|blk_c~7_combout\);

-- Location: IOIBUF_X94_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X73_Y43_N6
\LogicUnit|Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~6_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \LogicUnit|Y~6_combout\);

-- Location: IOIBUF_X91_Y73_N15
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X73_Y43_N4
\Adder|gen_blk_cs:1:bits[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:bits[5]~0_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:bits[5]~0_combout\);

-- Location: IOIBUF_X115_Y48_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X70_Y43_N4
\LogicUnit|Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~5_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \LogicUnit|Y~5_combout\);

-- Location: LCCOMB_X70_Y43_N30
\Adder|blk_c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~4_combout\ = (\LogicUnit|Y~5_combout\ & (!\AddnSub~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\LogicUnit|Y~5_combout\ & (\AddnSub~input_o\ & (\B[15]~input_o\ $ (!\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \LogicUnit|Y~5_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|blk_c~4_combout\);

-- Location: LCCOMB_X70_Y43_N16
\Adder|blk_c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~5_combout\ = (\Adder|gen_blk_cs:1:bits[5]~0_combout\ & (\Adder|blk_c~4_combout\ & (\LogicUnit|Y~6_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~6_combout\,
	datab => \Adder|gen_blk_cs:1:bits[5]~0_combout\,
	datac => \Adder|blk_c~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|blk_c~5_combout\);

-- Location: IOIBUF_X115_Y41_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X68_Y43_N10
\LogicUnit|Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~1_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \LogicUnit|Y~1_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X68_Y43_N12
\LogicUnit|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~2_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \LogicUnit|Y~2_combout\);

-- Location: IOIBUF_X115_Y47_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X68_Y43_N30
\LogicUnit|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \LogicUnit|Y~0_combout\);

-- Location: IOIBUF_X56_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X68_Y43_N24
\Adder|blk_c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~0_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~0_combout\ & (\B[1]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \LogicUnit|Y~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Adder|blk_c~0_combout\);

-- Location: LCCOMB_X68_Y43_N14
\Adder|blk_c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~1_combout\ = (\Adder|blk_c~0_combout\ & ((\LogicUnit|Y~1_combout\ & (!\AddnSub~input_o\ & \LogicUnit|Y~2_combout\)) # (!\LogicUnit|Y~1_combout\ & (\AddnSub~input_o\ & !\LogicUnit|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~1_combout\,
	datab => \AddnSub~input_o\,
	datac => \LogicUnit|Y~2_combout\,
	datad => \Adder|blk_c~0_combout\,
	combout => \Adder|blk_c~1_combout\);

-- Location: IOIBUF_X56_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X69_Y44_N2
\LogicUnit|Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~4_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \LogicUnit|Y~4_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X67_Y44_N12
\Adder|blk_c~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~3_combout\ = (\LogicUnit|Y~4_combout\ & (!\AddnSub~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\)))) # (!\LogicUnit|Y~4_combout\ & (\AddnSub~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~4_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Adder|blk_c~3_combout\);

-- Location: IOIBUF_X79_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X69_Y44_N22
\LogicUnit|Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~3_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \LogicUnit|Y~3_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X69_Y44_N8
\Adder|blk_c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~2_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~3_combout\ & (\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~3_combout\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[5]~input_o\,
	datac => \LogicUnit|Y~3_combout\,
	datad => \A[5]~input_o\,
	combout => \Adder|blk_c~2_combout\);

-- Location: LCCOMB_X67_Y44_N16
\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y44_N26
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[1]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y43_N16
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ 
-- & (\A[2]~input_o\ & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y43_N18
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[3]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[3]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y43_N20
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\A[4]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y44_N16
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\A[5]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y44_N26
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\A[6]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[6]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y44_N12
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[7]~input_o\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & 
-- (\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y44_N28
\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|blk_c~1_combout\ & (\Adder|blk_c~3_combout\ & \Adder|blk_c~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|blk_c~1_combout\,
	datab => \Adder|blk_c~3_combout\,
	datac => \Adder|blk_c~2_combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\);

-- Location: LCCOMB_X69_Y43_N24
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & ((\A[8]~input_o\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ & 
-- (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	datab => \A[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y43_N2
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[9]~input_o\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X72_Y39_N16
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\AddnSub~input_o\)))) # 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \A[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X72_Y39_N2
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[11]~input_o\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\B[11]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[11]~input_o\ & 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\B[11]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[11]~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y43_N16
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[12]~input_o\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y43_N18
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X70_Y43_N0
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\ $ (\AddnSub~input_o\)))) # 
-- (!\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\A[14]~input_o\ & (\B[14]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X70_Y43_N10
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[15]~input_o\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\B[15]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[15]~input_o\ & 
-- (\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\B[15]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\,
	datac => \B[15]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X70_Y43_N2
\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|blk_c~7_combout\ & (\Adder|blk_c~5_combout\ & \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|blk_c~7_combout\,
	datab => \Adder|blk_c~5_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X74_Y38_N4
\Adder|gen_blk_cs:2:bits[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:bits[2]~0_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:2:bits[2]~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X74_Y38_N22
\LogicUnit|Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~11_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	combout => \LogicUnit|Y~11_combout\);

-- Location: IOIBUF_X0_Y28_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X74_Y39_N18
\LogicUnit|Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~10_combout\ = \A[17]~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	combout => \LogicUnit|Y~10_combout\);

-- Location: LCCOMB_X74_Y42_N20
\Adder|blk_c~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~8_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~10_combout\ & (\A[16]~input_o\ $ (!\B[16]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~10_combout\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \LogicUnit|Y~10_combout\,
	combout => \Adder|blk_c~8_combout\);

-- Location: LCCOMB_X74_Y42_N6
\Adder|blk_c~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~9_combout\ = (\Adder|gen_blk_cs:2:bits[2]~0_combout\ & (\Adder|blk_c~8_combout\ & (\LogicUnit|Y~11_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:bits[2]~0_combout\,
	datab => \LogicUnit|Y~11_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder|blk_c~8_combout\,
	combout => \Adder|blk_c~9_combout\);

-- Location: IOIBUF_X79_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X70_Y38_N28
\LogicUnit|Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~12_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	combout => \LogicUnit|Y~12_combout\);

-- Location: LCCOMB_X70_Y38_N30
\Adder|blk_c~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~10_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~12_combout\ & (\B[21]~input_o\ $ (!\A[21]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~12_combout\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \LogicUnit|Y~12_combout\,
	combout => \Adder|blk_c~10_combout\);

-- Location: IOIBUF_X45_Y73_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X69_Y38_N18
\LogicUnit|Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~13_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	combout => \LogicUnit|Y~13_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X74_Y42_N24
\LogicUnit|Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~14_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \LogicUnit|Y~14_combout\);

-- Location: LCCOMB_X74_Y42_N26
\Adder|blk_c~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~11_combout\ = (\Adder|blk_c~10_combout\ & ((\LogicUnit|Y~13_combout\ & (!\AddnSub~input_o\ & \LogicUnit|Y~14_combout\)) # (!\LogicUnit|Y~13_combout\ & (\AddnSub~input_o\ & !\LogicUnit|Y~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|blk_c~10_combout\,
	datab => \LogicUnit|Y~13_combout\,
	datac => \AddnSub~input_o\,
	datad => \LogicUnit|Y~14_combout\,
	combout => \Adder|blk_c~11_combout\);

-- Location: LCCOMB_X74_Y42_N16
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & 
-- (\A[16]~input_o\ & (\B[16]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	datab => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[16]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y39_N24
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[17]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\B[17]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[17]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\B[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y38_N16
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\A[18]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\B[18]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[18]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\B[18]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y38_N10
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[19]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\B[19]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[19]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\B[19]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[19]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X70_Y38_N8
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\A[20]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[20]~input_o\)))) # (!\A[20]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[20]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X70_Y38_N18
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\A[21]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[21]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y38_N8
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\A[22]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[22]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y42_N10
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[23]~input_o\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[23]~input_o\)))) # (!\A[23]~input_o\ & 
-- (\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[23]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y42_N4
\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ & (\Adder|blk_c~9_combout\ & \Adder|blk_c~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	datab => \Adder|blk_c~9_combout\,
	datac => \Adder|blk_c~11_combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\);

-- Location: LCCOMB_X73_Y46_N16
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\A[24]~input_o\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[24]~input_o\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X73_Y46_N10
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[25]~input_o\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X70_Y46_N24
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\A[26]~input_o\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\B[26]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[26]~input_o\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\B[26]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X70_Y46_N26
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\ $ (\AddnSub~input_o\)))) # 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\A[27]~input_o\ & (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\,
	datac => \A[27]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y58_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X72_Y46_N0
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[28]~input_o\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X72_Y46_N2
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ & ((\A[29]~input_o\) # (\AddnSub~input_o\ $ (\B[29]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\A[29]~input_o\ & (\AddnSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X72_Y46_N12
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & ((\A[30]~input_o\) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\A[30]~input_o\ & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y46_N12
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[31]~input_o\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\B[31]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[31]~input_o\ & 
-- (\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\B[31]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X72_Y46_N14
\LogicUnit|Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~16_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \LogicUnit|Y~16_combout\);

-- Location: LCCOMB_X70_Y46_N28
\LogicUnit|Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~15_combout\ = \B[27]~input_o\ $ (\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	combout => \LogicUnit|Y~15_combout\);

-- Location: LCCOMB_X73_Y46_N22
\Adder|blk_c~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~12_combout\ = (\LogicUnit|Y~15_combout\ & (!\AddnSub~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\)))) # (!\LogicUnit|Y~15_combout\ & (\AddnSub~input_o\ & (\A[25]~input_o\ $ (!\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \LogicUnit|Y~15_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Adder|blk_c~12_combout\);

-- Location: LCCOMB_X73_Y46_N24
\LogicUnit|Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~17_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => \LogicUnit|Y~17_combout\);

-- Location: LCCOMB_X73_Y46_N2
\Adder|blk_c~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~13_combout\ = (\Adder|blk_c~12_combout\ & ((\LogicUnit|Y~16_combout\ & (!\AddnSub~input_o\ & \LogicUnit|Y~17_combout\)) # (!\LogicUnit|Y~16_combout\ & (\AddnSub~input_o\ & !\LogicUnit|Y~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~16_combout\,
	datab => \AddnSub~input_o\,
	datac => \Adder|blk_c~12_combout\,
	datad => \LogicUnit|Y~17_combout\,
	combout => \Adder|blk_c~13_combout\);

-- Location: LCCOMB_X72_Y46_N8
\Adder|gen_blk_cs:3:bits[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:bits[6]~0_combout\ = \AddnSub~input_o\ $ (\A[30]~input_o\ $ (\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Adder|gen_blk_cs:3:bits[6]~0_combout\);

-- Location: LCCOMB_X73_Y46_N28
\Adder|gen_blk_cs:3:bits[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:bits[0]~0_combout\ = \A[24]~input_o\ $ (\AddnSub~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \Adder|gen_blk_cs:3:bits[0]~0_combout\);

-- Location: LCCOMB_X70_Y46_N14
\Adder|gen_blk_cs:3:bits[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:bits[2]~0_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:bits[2]~0_combout\);

-- Location: LCCOMB_X74_Y42_N22
\Adder|gen_blk_cs:3:bits[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:bits[4]~0_combout\ = \A[28]~input_o\ $ (\AddnSub~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \Adder|gen_blk_cs:3:bits[4]~0_combout\);

-- Location: LCCOMB_X73_Y46_N30
\Adder|blk_c~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~14_combout\ = (\Adder|gen_blk_cs:3:bits[6]~0_combout\ & (\Adder|gen_blk_cs:3:bits[0]~0_combout\ & (\Adder|gen_blk_cs:3:bits[2]~0_combout\ & \Adder|gen_blk_cs:3:bits[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:bits[6]~0_combout\,
	datab => \Adder|gen_blk_cs:3:bits[0]~0_combout\,
	datac => \Adder|gen_blk_cs:3:bits[2]~0_combout\,
	datad => \Adder|gen_blk_cs:3:bits[4]~0_combout\,
	combout => \Adder|blk_c~14_combout\);

-- Location: LCCOMB_X73_Y46_N0
\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|blk_c~13_combout\ & (\Adder|blk_c~14_combout\ & \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|cout~0_combout\,
	datab => \Adder|blk_c~13_combout\,
	datac => \Adder|blk_c~14_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\);

-- Location: LCCOMB_X67_Y46_N8
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & ((\A[32]~input_o\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ & 
-- (\A[32]~input_o\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y45_N16
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[33]~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[33]~input_o\)))) # (!\A[33]~input_o\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y45_N10
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ & ((\A[34]~input_o\) # (\AddnSub~input_o\ $ (\B[34]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\A[34]~input_o\ & (\AddnSub~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y45_N20
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[35]~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[35]~input_o\)))) # (!\A[35]~input_o\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y46_N0
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[36]~input_o\) # (\AddnSub~input_o\ $ (\B[36]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[36]~input_o\ & (\AddnSub~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y46_N26
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\A[37]~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[37]~input_o\)))) # (!\A[37]~input_o\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y46_N4
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\A[38]~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\B[38]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[38]~input_o\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\B[38]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y46_N10
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[39]~input_o\ & ((\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[39]~input_o\)))) # (!\A[39]~input_o\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X67_Y46_N22
\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|blk_c~16_combout\ & (\Adder|blk_c~17_combout\ & \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|blk_c~16_combout\,
	datab => \Adder|blk_c~17_combout\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X60_Y0_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X69_Y36_N8
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\A[40]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\A[40]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[40]~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	datad => \B[40]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X65_Y36_N24
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[41]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[41]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X65_Y36_N18
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\A[42]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\B[42]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[42]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\B[42]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X65_Y36_N20
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[43]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\B[43]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[43]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\B[43]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[43]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X69_Y36_N18
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[44]~input_o\) # (\AddnSub~input_o\ $ (\B[44]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[44]~input_o\ & (\AddnSub~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y36_N8
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\A[45]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\A[45]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X68_Y36_N10
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\A[46]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[46]~input_o\)))) # (!\A[46]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[46]~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \B[46]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y36_N20
\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[47]~input_o\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[47]~input_o\)))) # (!\A[47]~input_o\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X65_Y36_N22
\LogicUnit|Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~21_combout\ = \B[41]~input_o\ $ (\A[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[41]~input_o\,
	datad => \A[41]~input_o\,
	combout => \LogicUnit|Y~21_combout\);

-- Location: LCCOMB_X65_Y36_N16
\Adder|blk_c~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~18_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~21_combout\ & (\B[43]~input_o\ $ (!\A[43]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~21_combout\ & (\B[43]~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \LogicUnit|Y~21_combout\,
	datad => \A[43]~input_o\,
	combout => \Adder|blk_c~18_combout\);

-- Location: LCCOMB_X68_Y36_N0
\LogicUnit|Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~23_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \LogicUnit|Y~23_combout\);

-- Location: LCCOMB_X68_Y36_N6
\LogicUnit|Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~22_combout\ = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \LogicUnit|Y~22_combout\);

-- Location: LCCOMB_X68_Y36_N26
\Adder|blk_c~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~19_combout\ = (\Adder|blk_c~18_combout\ & ((\LogicUnit|Y~23_combout\ & (!\AddnSub~input_o\ & \LogicUnit|Y~22_combout\)) # (!\LogicUnit|Y~23_combout\ & (\AddnSub~input_o\ & !\LogicUnit|Y~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|blk_c~18_combout\,
	datab => \LogicUnit|Y~23_combout\,
	datac => \AddnSub~input_o\,
	datad => \LogicUnit|Y~22_combout\,
	combout => \Adder|blk_c~19_combout\);

-- Location: LCCOMB_X68_Y36_N12
\Adder|gen_blk_cs:5:bits[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:bits[6]~0_combout\ = \B[46]~input_o\ $ (\A[46]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[46]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:5:bits[6]~0_combout\);

-- Location: LCCOMB_X65_Y36_N26
\Adder|gen_blk_cs:5:bits[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:bits[2]~0_combout\ = \A[42]~input_o\ $ (\AddnSub~input_o\ $ (\B[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \Adder|gen_blk_cs:5:bits[2]~0_combout\);

-- Location: LCCOMB_X69_Y36_N4
\Adder|gen_blk_cs:5:bits[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:bits[0]~0_combout\ = \AddnSub~input_o\ $ (\A[40]~input_o\ $ (\B[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Adder|gen_blk_cs:5:bits[0]~0_combout\);

-- Location: LCCOMB_X69_Y36_N6
\Adder|gen_blk_cs:5:bits[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:bits[4]~0_combout\ = \AddnSub~input_o\ $ (\A[44]~input_o\ $ (\B[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Adder|gen_blk_cs:5:bits[4]~0_combout\);

-- Location: LCCOMB_X69_Y36_N24
\Adder|blk_c~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~20_combout\ = (\Adder|gen_blk_cs:5:bits[6]~0_combout\ & (\Adder|gen_blk_cs:5:bits[2]~0_combout\ & (\Adder|gen_blk_cs:5:bits[0]~0_combout\ & \Adder|gen_blk_cs:5:bits[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:bits[6]~0_combout\,
	datab => \Adder|gen_blk_cs:5:bits[2]~0_combout\,
	datac => \Adder|gen_blk_cs:5:bits[0]~0_combout\,
	datad => \Adder|gen_blk_cs:5:bits[4]~0_combout\,
	combout => \Adder|blk_c~20_combout\);

-- Location: LCCOMB_X68_Y36_N14
\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ & (\Adder|blk_c~19_combout\ & \Adder|blk_c~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|cout~0_combout\,
	datac => \Adder|blk_c~19_combout\,
	datad => \Adder|blk_c~20_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X115_Y30_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X73_Y40_N26
\Adder|gen_blk_cs:6:bits[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[2]~0_combout\ = \A[50]~input_o\ $ (\AddnSub~input_o\ $ (\B[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[2]~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X115_Y33_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X74_Y40_N18
\Adder|gen_blk_cs:6:bits[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[6]~0_combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\ $ (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[6]~0_combout\);

-- Location: IOIBUF_X79_Y0_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X73_Y40_N8
\Adder|gen_blk_cs:6:bits[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[0]~0_combout\ = \A[48]~input_o\ $ (\AddnSub~input_o\ $ (\B[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[48]~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[0]~0_combout\);

-- Location: IOIBUF_X83_Y0_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X74_Y40_N24
\Adder|gen_blk_cs:6:bits[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:bits[4]~0_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:bits[4]~0_combout\);

-- Location: LCCOMB_X73_Y40_N28
\Adder|blk_c~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~23_combout\ = (\Adder|gen_blk_cs:6:bits[2]~0_combout\ & (\Adder|gen_blk_cs:6:bits[6]~0_combout\ & (\Adder|gen_blk_cs:6:bits[0]~0_combout\ & \Adder|gen_blk_cs:6:bits[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:bits[2]~0_combout\,
	datab => \Adder|gen_blk_cs:6:bits[6]~0_combout\,
	datac => \Adder|gen_blk_cs:6:bits[0]~0_combout\,
	datad => \Adder|gen_blk_cs:6:bits[4]~0_combout\,
	combout => \Adder|blk_c~23_combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X69_Y36_N12
\LogicUnit|Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~25_combout\ = \B[49]~input_o\ $ (\A[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \LogicUnit|Y~25_combout\);

-- Location: IOIBUF_X74_Y0_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X74_Y39_N14
\LogicUnit|Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~26_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \LogicUnit|Y~26_combout\);

-- Location: IOIBUF_X115_Y31_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X74_Y40_N22
\LogicUnit|Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~24_combout\ = \A[53]~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \LogicUnit|Y~24_combout\);

-- Location: LCCOMB_X73_Y40_N12
\Adder|blk_c~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~21_combout\ = (\AddnSub~input_o\ & (!\LogicUnit|Y~24_combout\ & (\A[55]~input_o\ $ (!\B[55]~input_o\)))) # (!\AddnSub~input_o\ & (\LogicUnit|Y~24_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	datad => \LogicUnit|Y~24_combout\,
	combout => \Adder|blk_c~21_combout\);

-- Location: LCCOMB_X73_Y40_N30
\Adder|blk_c~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~22_combout\ = (\Adder|blk_c~21_combout\ & ((\LogicUnit|Y~25_combout\ & (\LogicUnit|Y~26_combout\ & !\AddnSub~input_o\)) # (!\LogicUnit|Y~25_combout\ & (!\LogicUnit|Y~26_combout\ & \AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~25_combout\,
	datab => \LogicUnit|Y~26_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder|blk_c~21_combout\,
	combout => \Adder|blk_c~22_combout\);

-- Location: LCCOMB_X73_Y40_N24
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ & ((\A[48]~input_o\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ & 
-- (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	datab => \AddnSub~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X69_Y36_N26
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ & ((\A[49]~input_o\) # (\AddnSub~input_o\ $ (\B[49]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\A[49]~input_o\ & (\AddnSub~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X75_Y40_N0
\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\A[50]~input_o\ & ((\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\A[50]~input_o\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y39_N4
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[51]~input_o\ & ((\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\B[51]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[51]~input_o\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\B[51]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y40_N16
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[52]~input_o\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[52]~input_o\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y40_N26
\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ & ((\A[53]~input_o\) # (\AddnSub~input_o\ $ (\B[53]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\A[53]~input_o\ & (\AddnSub~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X74_Y40_N4
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ & ((\A[54]~input_o\) # (\AddnSub~input_o\ $ (\B[54]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\A[54]~input_o\ & (\AddnSub~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[54]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \A[54]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y40_N10
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[55]~input_o\ & ((\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\A[55]~input_o\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y40_N6
\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ = (\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ & (\Adder|blk_c~23_combout\ & \Adder|blk_c~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	datab => \Adder|blk_c~23_combout\,
	datac => \Adder|blk_c~22_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\);

-- Location: IOIBUF_X115_Y44_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X72_Y44_N0
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & ((\A[56]~input_o\) # (\B[56]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & 
-- (\A[56]~input_o\ & (\B[56]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	datac => \AddnSub~input_o\,
	datad => \A[56]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X72_Y44_N18
\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ = (\A[57]~input_o\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\A[57]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[57]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X72_Y44_N4
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ = (\A[58]~input_o\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\) # (\B[58]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[58]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\ & (\B[58]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X66_Y44_N0
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ = (\A[59]~input_o\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\A[59]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[59]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X66_Y44_N10
\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ & ((\A[60]~input_o\) # (\AddnSub~input_o\ $ (\B[60]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ & (\A[60]~input_o\ & (\AddnSub~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X66_Y44_N28
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ = (\A[61]~input_o\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\) # (\B[61]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[61]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\ & (\B[61]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[61]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X73_Y44_N2
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ = (\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ & ((\A[62]~input_o\) # (\AddnSub~input_o\ $ (\B[62]~input_o\)))) # 
-- (!\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ & (\A[62]~input_o\ & (\AddnSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X73_Y44_N12
\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\ = (\A[63]~input_o\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\) # (\AddnSub~input_o\ $ (\B[63]~input_o\)))) # (!\A[63]~input_o\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\ & (\AddnSub~input_o\ $ (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X66_Y44_N2
\Adder|blk_c~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~26_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Adder|blk_c~26_combout\);

-- Location: LCCOMB_X72_Y44_N30
\Adder|blk_c~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~27_combout\ = (\AddnSub~input_o\ & ((\Adder|blk_c~26_combout\) # (\B[58]~input_o\ $ (\A[58]~input_o\)))) # (!\AddnSub~input_o\ & (\Adder|blk_c~26_combout\ & (\B[58]~input_o\ $ (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \Adder|blk_c~26_combout\,
	combout => \Adder|blk_c~27_combout\);

-- Location: LCCOMB_X72_Y44_N8
\Adder|blk_c~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~28_combout\ = (\AddnSub~input_o\ & ((\Adder|blk_c~27_combout\) # (\B[56]~input_o\ $ (\A[56]~input_o\)))) # (!\AddnSub~input_o\ & (\Adder|blk_c~27_combout\ & (\B[56]~input_o\ $ (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder|blk_c~27_combout\,
	datad => \A[56]~input_o\,
	combout => \Adder|blk_c~28_combout\);

-- Location: LCCOMB_X73_Y44_N28
\Adder|blk_c~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~29_combout\ = (\AddnSub~input_o\ & (!\Adder|blk_c~28_combout\ & (\A[62]~input_o\ $ (!\B[62]~input_o\)))) # (!\AddnSub~input_o\ & (\Adder|blk_c~28_combout\ & (\A[62]~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \Adder|blk_c~28_combout\,
	combout => \Adder|blk_c~29_combout\);

-- Location: LCCOMB_X66_Y44_N24
\LogicUnit|Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~29_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \LogicUnit|Y~29_combout\);

-- Location: LCCOMB_X66_Y44_N30
\LogicUnit|Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~28_combout\ = \B[59]~input_o\ $ (\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \LogicUnit|Y~28_combout\);

-- Location: LCCOMB_X73_Y44_N6
\LogicUnit|Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~27_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	combout => \LogicUnit|Y~27_combout\);

-- Location: LCCOMB_X73_Y44_N0
\Adder|blk_c~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~24_combout\ = (\LogicUnit|Y~27_combout\ & (!\AddnSub~input_o\ & (\A[57]~input_o\ $ (\B[57]~input_o\)))) # (!\LogicUnit|Y~27_combout\ & (\AddnSub~input_o\ & (\A[57]~input_o\ $ (!\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~27_combout\,
	datab => \A[57]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder|blk_c~24_combout\);

-- Location: LCCOMB_X73_Y44_N18
\Adder|blk_c~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|blk_c~25_combout\ = (\Adder|blk_c~24_combout\ & ((\LogicUnit|Y~29_combout\ & (\LogicUnit|Y~28_combout\ & !\AddnSub~input_o\)) # (!\LogicUnit|Y~29_combout\ & (!\LogicUnit|Y~28_combout\ & \AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~29_combout\,
	datab => \LogicUnit|Y~28_combout\,
	datac => \AddnSub~input_o\,
	datad => \Adder|blk_c~24_combout\,
	combout => \Adder|blk_c~25_combout\);

-- Location: LCCOMB_X73_Y44_N30
\Adder|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|Cout~combout\ = (\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\) # ((\Adder|blk_c~29_combout\ & (\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ & \Adder|blk_c~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|cout~0_combout\,
	datab => \Adder|blk_c~29_combout\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	datad => \Adder|blk_c~25_combout\,
	combout => \Adder|Cout~combout\);

-- Location: IOIBUF_X115_Y47_N22
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: LCCOMB_X67_Y44_N22
\LogicUnit|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Mux63~0_combout\ = (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\B[0]~input_o\))))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \LogicUnit|Mux63~0_combout\);

-- Location: IOIBUF_X115_Y48_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X69_Y40_N0
\ShiftCount[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftCount[5]~0_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	combout => \ShiftCount[5]~0_combout\);

-- Location: IOIBUF_X115_Y46_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X69_Y42_N16
\Shifter|InputExtended[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[32]~0_combout\ = (!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Shifter|InputExtended[32]~0_combout\);

-- Location: LCCOMB_X70_Y45_N20
\Shifter|stage_in[34]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[34]~105_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[34]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[34]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[34]~105_combout\);

-- Location: LCCOMB_X70_Y45_N14
\Shifter|stage_in[34]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[34]~151_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[34]~105_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[29]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[34]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Shifter|stage_in[34]~105_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[34]~151_combout\);

-- Location: LCCOMB_X70_Y45_N10
\Shifter|stage_in[35]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[35]~104_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[35]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|InputExtended[32]~0_combout\,
	datad => \A[35]~input_o\,
	combout => \Shifter|stage_in[35]~104_combout\);

-- Location: LCCOMB_X70_Y45_N28
\Shifter|stage_in[35]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[35]~150_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[35]~104_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[28]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[35]~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[28]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[35]~104_combout\,
	combout => \Shifter|stage_in[35]~150_combout\);

-- Location: LCCOMB_X65_Y45_N24
\Shifter|stage[2][32]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][32]~92_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Shifter|stage_in[35]~150_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[34]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[34]~151_combout\,
	datab => \Shifter|stage_in[35]~150_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][32]~92_combout\);

-- Location: LCCOMB_X65_Y45_N16
\Shifter|InputExtended[32]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[32]~2_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[32]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shifter|InputExtended[32]~2_combout\);

-- Location: LCCOMB_X67_Y44_N0
\Shifter|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|Equal2~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|Equal2~0_combout\);

-- Location: LCCOMB_X65_Y45_N26
\Shifter|stage[1][32]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][32]~93_combout\ = (!\B[0]~input_o\ & ((\Shifter|Equal2~0_combout\ & ((\A[31]~input_o\))) # (!\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[32]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Shifter|Equal2~0_combout\,
	combout => \Shifter|stage[1][32]~93_combout\);

-- Location: LCCOMB_X65_Y45_N12
\Shifter|stage_in[33]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[33]~106_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[33]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shifter|stage_in[33]~106_combout\);

-- Location: LCCOMB_X65_Y45_N4
\Shifter|stage_in[33]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[33]~152_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[33]~106_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[30]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[33]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[33]~106_combout\,
	combout => \Shifter|stage_in[33]~152_combout\);

-- Location: LCCOMB_X65_Y45_N6
\Shifter|stage[1][32]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][32]~94_combout\ = (\Shifter|stage[1][32]~93_combout\) # ((\Shifter|stage_in[33]~152_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][32]~93_combout\,
	datab => \Shifter|stage_in[33]~152_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[1][32]~94_combout\);

-- Location: LCCOMB_X65_Y45_N0
\Shifter|stage[2][32]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][32]~95_combout\ = (\Shifter|stage[2][32]~92_combout\) # ((!\B[1]~input_o\ & \Shifter|stage[1][32]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage[2][32]~92_combout\,
	datad => \Shifter|stage[1][32]~94_combout\,
	combout => \Shifter|stage[2][32]~95_combout\);

-- Location: LCCOMB_X68_Y37_N6
\Shifter|stage_in[41]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[41]~101_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[41]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|InputExtended[32]~0_combout\,
	datad => \A[41]~input_o\,
	combout => \Shifter|stage_in[41]~101_combout\);

-- Location: LCCOMB_X68_Y37_N14
\Shifter|stage_in[41]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[41]~147_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[41]~101_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[22]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[41]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage_in[41]~101_combout\,
	combout => \Shifter|stage_in[41]~147_combout\);

-- Location: LCCOMB_X68_Y37_N4
\Shifter|stage_in[43]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[43]~100_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[43]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|InputExtended[32]~0_combout\,
	datad => \A[43]~input_o\,
	combout => \Shifter|stage_in[43]~100_combout\);

-- Location: LCCOMB_X68_Y37_N12
\Shifter|stage_in[43]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[43]~146_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shifter|stage_in[43]~100_combout\)) # (!\ShiftFN[1]~input_o\ & ((\A[20]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[43]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[43]~100_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Shifter|stage_in[43]~146_combout\);

-- Location: LCCOMB_X68_Y37_N0
\Shifter|stage[2][41]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][41]~89_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[43]~146_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[41]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[41]~147_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[43]~146_combout\,
	combout => \Shifter|stage[2][41]~89_combout\);

-- Location: LCCOMB_X68_Y38_N16
\Shifter|stage_in[42]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[42]~102_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[42]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[42]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[42]~102_combout\);

-- Location: LCCOMB_X68_Y38_N26
\Shifter|stage_in[42]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[42]~148_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[42]~102_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[21]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[42]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|stage_in[42]~102_combout\,
	datad => \A[21]~input_o\,
	combout => \Shifter|stage_in[42]~148_combout\);

-- Location: LCCOMB_X68_Y38_N10
\Shifter|stage_in[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[40]~103_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[40]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[40]~103_combout\);

-- Location: LCCOMB_X68_Y38_N12
\Shifter|stage_in[40]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[40]~149_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[40]~103_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[23]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[40]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|stage_in[40]~103_combout\,
	datad => \A[23]~input_o\,
	combout => \Shifter|stage_in[40]~149_combout\);

-- Location: LCCOMB_X68_Y38_N20
\Shifter|stage[2][40]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][40]~90_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[42]~148_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[40]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[42]~148_combout\,
	datad => \Shifter|stage_in[40]~149_combout\,
	combout => \Shifter|stage[2][40]~90_combout\);

-- Location: LCCOMB_X68_Y38_N30
\Shifter|stage[2][40]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][40]~91_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][41]~89_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][40]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][41]~89_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][40]~90_combout\,
	combout => \Shifter|stage[2][40]~91_combout\);

-- Location: LCCOMB_X65_Y38_N24
\Shifter|stage[4][32]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][32]~96_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][40]~91_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][32]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][32]~95_combout\,
	datab => \B[3]~input_o\,
	datad => \Shifter|stage[2][40]~91_combout\,
	combout => \Shifter|stage[4][32]~96_combout\);

-- Location: LCCOMB_X69_Y37_N0
\Shifter|stage_in[47]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[47]~92_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[47]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[47]~92_combout\);

-- Location: LCCOMB_X69_Y37_N12
\Shifter|stage_in[47]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[47]~138_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[47]~92_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[16]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[47]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[47]~92_combout\,
	combout => \Shifter|stage_in[47]~138_combout\);

-- Location: LCCOMB_X69_Y37_N26
\Shifter|stage_in[45]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[45]~93_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[45]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[45]~93_combout\);

-- Location: LCCOMB_X69_Y37_N6
\Shifter|stage_in[45]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[45]~139_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shifter|stage_in[45]~93_combout\)) # (!\ShiftFN[1]~input_o\ & ((\A[18]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[45]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[45]~93_combout\,
	datab => \A[18]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[45]~139_combout\);

-- Location: LCCOMB_X69_Y37_N4
\Shifter|stage[2][45]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][45]~82_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[47]~138_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[45]~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[47]~138_combout\,
	datab => \B[1]~input_o\,
	datad => \Shifter|stage_in[45]~139_combout\,
	combout => \Shifter|stage[2][45]~82_combout\);

-- Location: LCCOMB_X70_Y45_N12
\Shifter|stage_in[46]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[46]~94_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[46]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[46]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shifter|stage_in[46]~94_combout\);

-- Location: LCCOMB_X70_Y45_N22
\Shifter|stage_in[46]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[46]~140_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[46]~94_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[17]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[46]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[46]~94_combout\,
	combout => \Shifter|stage_in[46]~140_combout\);

-- Location: LCCOMB_X68_Y38_N28
\Shifter|stage_in[44]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[44]~95_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[44]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\A[31]~input_o\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[44]~95_combout\);

-- Location: LCCOMB_X68_Y38_N0
\Shifter|stage_in[44]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[44]~141_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[44]~95_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[19]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[44]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[19]~input_o\,
	datad => \Shifter|stage_in[44]~95_combout\,
	combout => \Shifter|stage_in[44]~141_combout\);

-- Location: LCCOMB_X68_Y38_N14
\Shifter|stage[2][44]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][44]~83_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[46]~140_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[44]~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[46]~140_combout\,
	datab => \B[1]~input_o\,
	datad => \Shifter|stage_in[44]~141_combout\,
	combout => \Shifter|stage[2][44]~83_combout\);

-- Location: LCCOMB_X69_Y38_N22
\Shifter|stage[2][44]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][44]~84_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][45]~82_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][44]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][45]~82_combout\,
	datad => \Shifter|stage[2][44]~83_combout\,
	combout => \Shifter|stage[2][44]~84_combout\);

-- Location: LCCOMB_X68_Y37_N24
\Shifter|stage_in[37]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[37]~97_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[37]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[37]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shifter|stage_in[37]~97_combout\);

-- Location: LCCOMB_X68_Y37_N10
\Shifter|stage_in[37]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[37]~143_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[37]~97_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[26]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[37]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage_in[37]~97_combout\,
	combout => \Shifter|stage_in[37]~143_combout\);

-- Location: LCCOMB_X68_Y37_N30
\Shifter|stage_in[39]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[39]~96_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[39]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[39]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shifter|stage_in[39]~96_combout\);

-- Location: LCCOMB_X68_Y37_N8
\Shifter|stage_in[39]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[39]~142_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shifter|stage_in[39]~96_combout\)) # (!\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[39]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[39]~96_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shifter|stage_in[39]~142_combout\);

-- Location: LCCOMB_X68_Y37_N2
\Shifter|stage[2][37]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][37]~85_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[39]~142_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[37]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[37]~143_combout\,
	datab => \Shifter|stage_in[39]~142_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][37]~85_combout\);

-- Location: LCCOMB_X70_Y45_N24
\Shifter|stage_in[36]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[36]~99_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[36]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|InputExtended[32]~0_combout\,
	datad => \A[36]~input_o\,
	combout => \Shifter|stage_in[36]~99_combout\);

-- Location: LCCOMB_X70_Y45_N2
\Shifter|stage_in[36]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[36]~145_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[36]~99_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[27]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[36]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Shifter|stage_in[36]~99_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[36]~145_combout\);

-- Location: LCCOMB_X70_Y45_N6
\Shifter|stage_in[38]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[38]~98_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[38]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[38]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[38]~98_combout\);

-- Location: LCCOMB_X70_Y45_N16
\Shifter|stage_in[38]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[38]~144_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shifter|stage_in[38]~98_combout\)) # (!\ShiftFN[1]~input_o\ & ((\A[25]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[38]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[38]~98_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[25]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[38]~144_combout\);

-- Location: LCCOMB_X66_Y41_N26
\Shifter|stage[2][36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][36]~86_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[38]~144_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[36]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[36]~145_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[38]~144_combout\,
	combout => \Shifter|stage[2][36]~86_combout\);

-- Location: LCCOMB_X65_Y40_N16
\Shifter|stage[2][36]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][36]~87_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][37]~85_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][36]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][37]~85_combout\,
	datac => \Shifter|stage[2][36]~86_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][36]~87_combout\);

-- Location: LCCOMB_X65_Y38_N6
\Shifter|stage[4][36]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][36]~88_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][44]~84_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][36]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][44]~84_combout\,
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[2][36]~87_combout\,
	combout => \Shifter|stage[4][36]~88_combout\);

-- Location: LCCOMB_X65_Y38_N2
\Shifter|stage[6][0]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~97_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\Shifter|stage[4][36]~88_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][32]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][32]~96_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][36]~88_combout\,
	combout => \Shifter|stage[6][0]~97_combout\);

-- Location: LCCOMB_X66_Y43_N2
\Shifter|stage_in[4]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[4]~110_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[59]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \A[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[4]~110_combout\);

-- Location: LCCOMB_X70_Y46_N0
\Shifter|stage_in[5]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[5]~109_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[5]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[58]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shifter|stage_in[5]~109_combout\);

-- Location: LCCOMB_X67_Y43_N26
\Shifter|stage[1][4]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][4]~99_combout\ = (\B[0]~input_o\ & ((\Shifter|stage_in[5]~109_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[4]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[4]~110_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage_in[5]~109_combout\,
	combout => \Shifter|stage[1][4]~99_combout\);

-- Location: LCCOMB_X69_Y39_N2
\Shifter|stage_in[6]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[6]~108_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[6]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[57]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shifter|stage_in[6]~108_combout\);

-- Location: LCCOMB_X72_Y44_N6
\Shifter|stage_in[7]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[7]~107_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[7]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[56]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Shifter|stage_in[7]~107_combout\);

-- Location: LCCOMB_X67_Y43_N0
\Shifter|stage[2][4]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][4]~98_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Shifter|stage_in[7]~107_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[6]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[6]~108_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[7]~107_combout\,
	combout => \Shifter|stage[2][4]~98_combout\);

-- Location: LCCOMB_X67_Y43_N4
\Shifter|stage[2][4]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][4]~100_combout\ = (\Shifter|stage[2][4]~98_combout\) # ((\Shifter|stage[1][4]~99_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][4]~99_combout\,
	datab => \Shifter|stage[2][4]~98_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][4]~100_combout\);

-- Location: LCCOMB_X66_Y43_N22
\Shifter|stage_in[2]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[2]~112_combout\ = (\ShiftFN[1]~input_o\ & (((\A[2]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[61]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shifter|stage_in[2]~112_combout\);

-- Location: LCCOMB_X66_Y43_N12
\Shifter|stage_in[3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[3]~111_combout\ = (\ShiftFN[1]~input_o\ & (((\A[3]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[60]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shifter|stage_in[3]~111_combout\);

-- Location: LCCOMB_X66_Y43_N0
\Shifter|stage[1][2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][2]~101_combout\ = (\B[0]~input_o\ & ((\Shifter|stage_in[3]~111_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[2]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage_in[2]~112_combout\,
	datad => \Shifter|stage_in[3]~111_combout\,
	combout => \Shifter|stage[1][2]~101_combout\);

-- Location: LCCOMB_X67_Y44_N2
\Shifter|stage[6][0]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~102_combout\ = (\B[0]~input_o\ & ((\Shifter|Equal2~0_combout\ & ((\A[62]~input_o\))) # (!\Shifter|Equal2~0_combout\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \Shifter|Equal2~0_combout\,
	combout => \Shifter|stage[6][0]~102_combout\);

-- Location: LCCOMB_X70_Y45_N8
\Shifter|InputExtended[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|InputExtended[63]~1_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[63]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|InputExtended[63]~1_combout\);

-- Location: LCCOMB_X67_Y44_N20
\Shifter|stage[6][0]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~103_combout\ = (!\B[0]~input_o\ & ((\Shifter|Equal2~0_combout\ & ((\Shifter|InputExtended[63]~1_combout\))) # (!\Shifter|Equal2~0_combout\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Equal2~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shifter|InputExtended[63]~1_combout\,
	combout => \Shifter|stage[6][0]~103_combout\);

-- Location: LCCOMB_X67_Y44_N14
\Shifter|stage[6][0]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~104_combout\ = (\B[1]~input_o\ & (\Shifter|stage[1][2]~101_combout\)) # (!\B[1]~input_o\ & (((\Shifter|stage[6][0]~102_combout\) # (\Shifter|stage[6][0]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][2]~101_combout\,
	datab => \Shifter|stage[6][0]~102_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage[6][0]~103_combout\,
	combout => \Shifter|stage[6][0]~104_combout\);

-- Location: LCCOMB_X67_Y42_N0
\Shifter|stage[6][0]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~105_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][4]~100_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[6][0]~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][4]~100_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[6][0]~104_combout\,
	combout => \Shifter|stage[6][0]~105_combout\);

-- Location: LCCOMB_X69_Y37_N16
\Shifter|stage_in[12]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[12]~116_combout\ = (\ShiftFN[1]~input_o\ & (\A[12]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[51]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shifter|stage_in[12]~116_combout\);

-- Location: LCCOMB_X69_Y37_N22
\Shifter|stage_in[14]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[14]~115_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[14]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[49]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[14]~115_combout\);

-- Location: LCCOMB_X69_Y37_N18
\Shifter|stage[2][12]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][12]~107_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[14]~115_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[12]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[12]~116_combout\,
	datac => \Shifter|stage_in[14]~115_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][12]~107_combout\);

-- Location: LCCOMB_X72_Y38_N2
\Shifter|stage_in[13]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[13]~114_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[50]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[50]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shifter|stage_in[13]~114_combout\);

-- Location: LCCOMB_X72_Y38_N8
\Shifter|stage_in[15]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[15]~113_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[15]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[48]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[48]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shifter|stage_in[15]~113_combout\);

-- Location: LCCOMB_X72_Y38_N4
\Shifter|stage[2][13]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][13]~106_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[15]~113_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[13]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage_in[13]~114_combout\,
	datac => \Shifter|stage_in[15]~113_combout\,
	combout => \Shifter|stage[2][13]~106_combout\);

-- Location: LCCOMB_X65_Y40_N2
\Shifter|stage[2][12]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][12]~108_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][13]~106_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][12]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][12]~107_combout\,
	datac => \Shifter|stage[2][13]~106_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][12]~108_combout\);

-- Location: LCCOMB_X69_Y39_N14
\Shifter|stage_in[10]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[10]~119_combout\ = (\ShiftFN[1]~input_o\ & (((\A[10]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[53]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shifter|stage_in[10]~119_combout\);

-- Location: LCCOMB_X69_Y39_N8
\Shifter|stage_in[8]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[8]~120_combout\ = (\ShiftFN[1]~input_o\ & (\A[8]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[55]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shifter|stage_in[8]~120_combout\);

-- Location: LCCOMB_X67_Y43_N30
\Shifter|stage[2][8]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][8]~110_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[10]~119_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[8]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[10]~119_combout\,
	datab => \Shifter|stage_in[8]~120_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][8]~110_combout\);

-- Location: LCCOMB_X69_Y39_N12
\Shifter|stage_in[9]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[9]~118_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[9]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[54]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shifter|stage_in[9]~118_combout\);

-- Location: LCCOMB_X72_Y38_N6
\Shifter|stage_in[11]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[11]~117_combout\ = (\ShiftFN[1]~input_o\ & (\A[11]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[52]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Shifter|stage_in[11]~117_combout\);

-- Location: LCCOMB_X65_Y41_N2
\Shifter|stage[2][9]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][9]~109_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[11]~117_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[9]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[9]~118_combout\,
	datab => \Shifter|stage_in[11]~117_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][9]~109_combout\);

-- Location: LCCOMB_X67_Y42_N2
\Shifter|stage[2][8]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][8]~111_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][9]~109_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][8]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][8]~110_combout\,
	datad => \Shifter|stage[2][9]~109_combout\,
	combout => \Shifter|stage[2][8]~111_combout\);

-- Location: LCCOMB_X67_Y42_N28
\Shifter|stage[3][8]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][8]~112_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][12]~108_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][8]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][12]~108_combout\,
	datad => \Shifter|stage[2][8]~111_combout\,
	combout => \Shifter|stage[3][8]~112_combout\);

-- Location: LCCOMB_X66_Y42_N28
\Shifter|stage[6][0]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~113_combout\ = (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][0]~105_combout\) # ((\B[3]~input_o\ & \Shifter|stage[3][8]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[6][0]~105_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[3][8]~112_combout\,
	combout => \Shifter|stage[6][0]~113_combout\);

-- Location: LCCOMB_X66_Y43_N28
\Shifter|stage_in[62]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[62]~72_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[62]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[62]~72_combout\);

-- Location: LCCOMB_X66_Y43_N18
\Shifter|stage_in[62]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[62]~133_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[62]~72_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[1]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[62]~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Shifter|stage_in[62]~72_combout\,
	combout => \Shifter|stage_in[62]~133_combout\);

-- Location: LCCOMB_X67_Y44_N30
\Shifter|stage_in[63]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[63]~132_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|InputExtended[63]~1_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|InputExtended[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Shifter|InputExtended[63]~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[63]~132_combout\);

-- Location: LCCOMB_X67_Y41_N8
\Shifter|stage[1][62]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][62]~58_combout\ = (\B[0]~input_o\ & ((\Shifter|stage_in[63]~132_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[62]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[62]~133_combout\,
	datac => \Shifter|stage_in[63]~132_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[1][62]~58_combout\);

-- Location: LCCOMB_X66_Y43_N26
\Shifter|stage_in[60]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[60]~71_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[60]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shifter|stage_in[60]~71_combout\);

-- Location: LCCOMB_X66_Y43_N8
\Shifter|stage_in[60]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[60]~131_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[60]~71_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[3]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[60]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|stage_in[60]~71_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[60]~131_combout\);

-- Location: LCCOMB_X66_Y43_N24
\Shifter|stage_in[61]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[61]~70_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[61]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shifter|stage_in[61]~70_combout\);

-- Location: LCCOMB_X66_Y43_N14
\Shifter|stage_in[61]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[61]~130_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[61]~70_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[2]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[61]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Shifter|stage_in[61]~70_combout\,
	combout => \Shifter|stage_in[61]~130_combout\);

-- Location: LCCOMB_X66_Y41_N24
\Shifter|stage[2][60]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][60]~57_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Shifter|stage_in[61]~130_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[60]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage_in[60]~131_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[61]~130_combout\,
	combout => \Shifter|stage[2][60]~57_combout\);

-- Location: LCCOMB_X66_Y41_N2
\Shifter|stage[2][60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][60]~59_combout\ = (\Shifter|stage[2][60]~57_combout\) # ((\Shifter|stage[1][62]~58_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][62]~58_combout\,
	datab => \Shifter|stage[2][60]~57_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][60]~59_combout\);

-- Location: LCCOMB_X72_Y44_N2
\Shifter|stage_in[58]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[58]~75_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[58]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shifter|stage_in[58]~75_combout\);

-- Location: LCCOMB_X66_Y41_N12
\Shifter|stage_in[58]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[58]~136_combout\ = (\ShiftFN[1]~input_o\ & (\Shifter|stage_in[58]~75_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[5]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[58]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[58]~75_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[58]~136_combout\);

-- Location: LCCOMB_X72_Y44_N20
\Shifter|stage_in[56]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[56]~76_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[56]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & ((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[56]~input_o\,
	datac => \Shifter|InputExtended[32]~0_combout\,
	datad => \A[31]~input_o\,
	combout => \Shifter|stage_in[56]~76_combout\);

-- Location: LCCOMB_X72_Y44_N22
\Shifter|stage_in[56]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[56]~137_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[56]~76_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[7]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[56]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Shifter|stage_in[56]~76_combout\,
	combout => \Shifter|stage_in[56]~137_combout\);

-- Location: LCCOMB_X66_Y41_N30
\Shifter|stage[2][56]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][56]~61_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[58]~136_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[56]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[58]~136_combout\,
	datab => \Shifter|stage_in[56]~137_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][56]~61_combout\);

-- Location: LCCOMB_X66_Y43_N30
\Shifter|stage_in[59]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[59]~73_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[59]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Shifter|stage_in[59]~73_combout\);

-- Location: LCCOMB_X66_Y43_N20
\Shifter|stage_in[59]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[59]~134_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[59]~73_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[59]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shifter|stage_in[59]~73_combout\,
	datad => \A[4]~input_o\,
	combout => \Shifter|stage_in[59]~134_combout\);

-- Location: LCCOMB_X69_Y39_N16
\Shifter|stage_in[57]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[57]~74_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[57]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shifter|stage_in[57]~74_combout\);

-- Location: LCCOMB_X69_Y39_N30
\Shifter|stage_in[57]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[57]~135_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[57]~74_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[6]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[57]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Shifter|stage_in[57]~74_combout\,
	combout => \Shifter|stage_in[57]~135_combout\);

-- Location: LCCOMB_X66_Y41_N20
\Shifter|stage[2][57]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][57]~60_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[59]~134_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[57]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[59]~134_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[57]~135_combout\,
	combout => \Shifter|stage[2][57]~60_combout\);

-- Location: LCCOMB_X66_Y41_N8
\Shifter|stage[2][56]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][56]~62_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][57]~60_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][56]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][56]~61_combout\,
	datab => \Shifter|stage[2][57]~60_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[2][56]~62_combout\);

-- Location: LCCOMB_X66_Y38_N26
\Shifter|stage[3][56]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][56]~63_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][60]~59_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][56]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][60]~59_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][56]~62_combout\,
	combout => \Shifter|stage[3][56]~63_combout\);

-- Location: LCCOMB_X69_Y39_N26
\Shifter|stage_in[53]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[53]~63_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[53]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Shifter|stage_in[53]~63_combout\);

-- Location: LCCOMB_X69_Y39_N10
\Shifter|stage_in[53]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[53]~123_combout\ = (\ShiftFN[1]~input_o\ & (\Shifter|stage_in[53]~63_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[10]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[53]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[53]~63_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shifter|stage_in[53]~123_combout\);

-- Location: LCCOMB_X69_Y39_N0
\Shifter|stage_in[55]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[55]~62_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[55]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shifter|stage_in[55]~62_combout\);

-- Location: LCCOMB_X69_Y39_N24
\Shifter|stage_in[55]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[55]~122_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[55]~62_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[8]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[55]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \Shifter|stage_in[55]~62_combout\,
	combout => \Shifter|stage_in[55]~122_combout\);

-- Location: LCCOMB_X69_Y39_N20
\Shifter|stage[2][53]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][53]~50_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[55]~122_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[53]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[53]~123_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[55]~122_combout\,
	combout => \Shifter|stage[2][53]~50_combout\);

-- Location: LCCOMB_X69_Y39_N6
\Shifter|stage_in[54]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[54]~64_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[54]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|InputExtended[32]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shifter|stage_in[54]~64_combout\);

-- Location: LCCOMB_X69_Y39_N4
\Shifter|stage_in[54]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[54]~124_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[54]~64_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[9]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[54]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage_in[54]~64_combout\,
	combout => \Shifter|stage_in[54]~124_combout\);

-- Location: LCCOMB_X72_Y38_N16
\Shifter|stage_in[52]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[52]~65_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[52]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Shifter|stage_in[52]~65_combout\);

-- Location: LCCOMB_X72_Y38_N0
\Shifter|stage_in[52]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[52]~125_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[52]~65_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[11]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[52]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage_in[52]~65_combout\,
	combout => \Shifter|stage_in[52]~125_combout\);

-- Location: LCCOMB_X68_Y39_N24
\Shifter|stage[2][52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][52]~51_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[54]~124_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[52]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[54]~124_combout\,
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[52]~125_combout\,
	combout => \Shifter|stage[2][52]~51_combout\);

-- Location: LCCOMB_X68_Y39_N10
\Shifter|stage[2][52]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][52]~52_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][53]~50_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][52]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][53]~50_combout\,
	datab => \Shifter|stage[2][52]~51_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[2][52]~52_combout\);

-- Location: LCCOMB_X69_Y37_N24
\Shifter|stage_in[51]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[51]~66_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[51]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[51]~66_combout\);

-- Location: LCCOMB_X69_Y37_N8
\Shifter|stage_in[51]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[51]~126_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[51]~66_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[12]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[51]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[51]~66_combout\,
	combout => \Shifter|stage_in[51]~126_combout\);

-- Location: LCCOMB_X69_Y37_N2
\Shifter|stage_in[49]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[49]~67_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (\A[49]~input_o\)) # (!\Shifter|InputExtended[32]~0_combout\ & (((\ShiftFN[0]~input_o\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[49]~67_combout\);

-- Location: LCCOMB_X69_Y37_N10
\Shifter|stage_in[49]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[49]~127_combout\ = (\ShiftFN[1]~input_o\ & (\Shifter|stage_in[49]~67_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[14]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\Shifter|stage_in[49]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[49]~67_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shifter|stage_in[49]~127_combout\);

-- Location: LCCOMB_X69_Y37_N20
\Shifter|stage[2][49]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][49]~53_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[51]~126_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[49]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[51]~126_combout\,
	datad => \Shifter|stage_in[49]~127_combout\,
	combout => \Shifter|stage[2][49]~53_combout\);

-- Location: LCCOMB_X72_Y38_N20
\Shifter|stage_in[48]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[48]~69_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[48]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\ShiftFN[0]~input_o\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[31]~input_o\,
	datac => \A[48]~input_o\,
	datad => \Shifter|InputExtended[32]~0_combout\,
	combout => \Shifter|stage_in[48]~69_combout\);

-- Location: LCCOMB_X72_Y38_N12
\Shifter|stage_in[48]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[48]~129_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage_in[48]~69_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[15]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\Shifter|stage_in[48]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shifter|stage_in[48]~69_combout\,
	combout => \Shifter|stage_in[48]~129_combout\);

-- Location: LCCOMB_X72_Y38_N18
\Shifter|stage_in[50]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[50]~68_combout\ = (\Shifter|InputExtended[32]~0_combout\ & (((\A[50]~input_o\)))) # (!\Shifter|InputExtended[32]~0_combout\ & (\A[31]~input_o\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~0_combout\,
	datab => \A[31]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Shifter|stage_in[50]~68_combout\);

-- Location: LCCOMB_X72_Y38_N10
\Shifter|stage_in[50]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[50]~128_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Shifter|stage_in[50]~68_combout\))) # (!\ShiftFN[1]~input_o\ & (\A[13]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Shifter|stage_in[50]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[13]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage_in[50]~68_combout\,
	combout => \Shifter|stage_in[50]~128_combout\);

-- Location: LCCOMB_X72_Y38_N14
\Shifter|stage[2][48]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][48]~54_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[50]~128_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[48]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[48]~129_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[50]~128_combout\,
	combout => \Shifter|stage[2][48]~54_combout\);

-- Location: LCCOMB_X69_Y38_N20
\Shifter|stage[2][48]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][48]~55_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][49]~53_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][48]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][49]~53_combout\,
	datac => \Shifter|stage[2][48]~54_combout\,
	combout => \Shifter|stage[2][48]~55_combout\);

-- Location: LCCOMB_X66_Y38_N8
\Shifter|stage[4][48]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][48]~56_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][52]~52_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][48]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][52]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][48]~55_combout\,
	combout => \Shifter|stage[4][48]~56_combout\);

-- Location: LCCOMB_X66_Y42_N8
\Shifter|stage[4][48]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][48]~64_combout\ = (\Shifter|stage[4][48]~56_combout\) # ((\Shifter|stage[3][56]~63_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[3][56]~63_combout\,
	datac => \Shifter|stage[4][48]~56_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][48]~64_combout\);

-- Location: LCCOMB_X70_Y45_N18
\Shifter|stage_in[17]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[17]~89_combout\ = (\ShiftFN[1]~input_o\ & (\A[17]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[46]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Shifter|stage_in[17]~89_combout\);

-- Location: LCCOMB_X68_Y38_N18
\Shifter|stage_in[19]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[19]~88_combout\ = (\ShiftFN[1]~input_o\ & (((\A[19]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[44]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[44]~input_o\,
	combout => \Shifter|stage_in[19]~88_combout\);

-- Location: LCCOMB_X67_Y38_N14
\Shifter|stage[2][17]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][17]~76_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[19]~88_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[17]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[17]~89_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[19]~88_combout\,
	combout => \Shifter|stage[2][17]~76_combout\);

-- Location: LCCOMB_X69_Y37_N30
\Shifter|stage_in[16]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[16]~91_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[16]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[47]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[16]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[16]~91_combout\);

-- Location: LCCOMB_X66_Y43_N16
\Shifter|stage_in[18]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[18]~90_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[18]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[45]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[45]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[18]~90_combout\);

-- Location: LCCOMB_X67_Y38_N0
\Shifter|stage[2][16]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][16]~77_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[18]~90_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[16]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[16]~91_combout\,
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[18]~90_combout\,
	combout => \Shifter|stage[2][16]~77_combout\);

-- Location: LCCOMB_X67_Y38_N26
\Shifter|stage[2][16]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][16]~78_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][17]~76_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][16]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][17]~76_combout\,
	datad => \Shifter|stage[2][16]~77_combout\,
	combout => \Shifter|stage[2][16]~78_combout\);

-- Location: LCCOMB_X69_Y42_N2
\Shifter|stage_in[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[23]~84_combout\ = (\ShiftFN[1]~input_o\ & (\A[23]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[40]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[40]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[23]~84_combout\);

-- Location: LCCOMB_X68_Y38_N24
\Shifter|stage_in[21]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[21]~85_combout\ = (\ShiftFN[1]~input_o\ & (((\A[21]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[42]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\A[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[21]~85_combout\);

-- Location: LCCOMB_X67_Y38_N24
\Shifter|stage[2][21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][21]~73_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[23]~84_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[21]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[23]~84_combout\,
	datad => \Shifter|stage_in[21]~85_combout\,
	combout => \Shifter|stage[2][21]~73_combout\);

-- Location: LCCOMB_X68_Y37_N20
\Shifter|stage_in[20]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[20]~87_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[20]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[43]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Shifter|stage_in[20]~87_combout\);

-- Location: LCCOMB_X68_Y37_N26
\Shifter|stage_in[22]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[22]~86_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[22]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[41]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shifter|stage_in[22]~86_combout\);

-- Location: LCCOMB_X67_Y38_N18
\Shifter|stage[2][20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][20]~74_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[22]~86_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[20]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[20]~87_combout\,
	datab => \Shifter|stage_in[22]~86_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][20]~74_combout\);

-- Location: LCCOMB_X67_Y38_N4
\Shifter|stage[2][20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][20]~75_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][21]~73_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][20]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][21]~73_combout\,
	datad => \Shifter|stage[2][20]~74_combout\,
	combout => \Shifter|stage[2][20]~75_combout\);

-- Location: LCCOMB_X65_Y38_N10
\Shifter|stage[3][16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][16]~79_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][20]~75_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][16]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][16]~78_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][20]~75_combout\,
	combout => \Shifter|stage[3][16]~79_combout\);

-- Location: LCCOMB_X68_Y37_N16
\Shifter|stage_in[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[26]~82_combout\ = (\ShiftFN[1]~input_o\ & (\A[26]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[37]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Shifter|stage_in[26]~82_combout\);

-- Location: LCCOMB_X67_Y46_N0
\Shifter|stage_in[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[24]~83_combout\ = (\ShiftFN[1]~input_o\ & (\A[24]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[39]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \A[39]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|stage_in[24]~83_combout\);

-- Location: LCCOMB_X65_Y41_N30
\Shifter|stage[2][24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][24]~70_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[26]~82_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[24]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[26]~82_combout\,
	datab => \Shifter|stage_in[24]~83_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][24]~70_combout\);

-- Location: LCCOMB_X70_Y45_N30
\Shifter|stage_in[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[27]~80_combout\ = (\ShiftFN[1]~input_o\ & (\A[27]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[36]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Shifter|stage_in[27]~80_combout\);

-- Location: LCCOMB_X70_Y45_N0
\Shifter|stage_in[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[25]~81_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[25]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[38]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[38]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[25]~81_combout\);

-- Location: LCCOMB_X65_Y41_N4
\Shifter|stage[2][25]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][25]~69_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[27]~80_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[25]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[27]~80_combout\,
	datac => \Shifter|stage_in[25]~81_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][25]~69_combout\);

-- Location: LCCOMB_X65_Y41_N24
\Shifter|stage[2][24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][24]~71_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][25]~69_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][24]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][24]~70_combout\,
	datab => \Shifter|stage[2][25]~69_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[2][24]~71_combout\);

-- Location: LCCOMB_X70_Y45_N4
\Shifter|stage_in[28]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[28]~78_combout\ = (\ShiftFN[1]~input_o\ & (\A[28]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[35]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[28]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Shifter|stage_in[28]~78_combout\);

-- Location: LCCOMB_X70_Y45_N26
\Shifter|stage_in[29]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[29]~77_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[29]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[34]~input_o\))))) # (!\ShiftFN[0]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \A[34]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Shifter|stage_in[29]~77_combout\);

-- Location: LCCOMB_X65_Y41_N0
\Shifter|stage[2][28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][28]~65_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Shifter|stage_in[29]~77_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[28]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[28]~78_combout\,
	datab => \Shifter|stage_in[29]~77_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][28]~65_combout\);

-- Location: LCCOMB_X65_Y45_N28
\Shifter|stage_in[30]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[30]~79_combout\ = (\ShiftFN[1]~input_o\ & (\A[30]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A[33]~input_o\))) # (!\ShiftFN[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shifter|stage_in[30]~79_combout\);

-- Location: LCCOMB_X65_Y45_N10
\Shifter|stage[1][30]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][30]~66_combout\ = (\B[0]~input_o\ & ((\Shifter|Equal2~0_combout\ & (\Shifter|InputExtended[32]~2_combout\)) # (!\Shifter|Equal2~0_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Shifter|Equal2~0_combout\,
	combout => \Shifter|stage[1][30]~66_combout\);

-- Location: LCCOMB_X65_Y45_N14
\Shifter|stage[1][30]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][30]~67_combout\ = (\Shifter|stage[1][30]~66_combout\) # ((\Shifter|stage_in[30]~79_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[30]~79_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[1][30]~66_combout\,
	combout => \Shifter|stage[1][30]~67_combout\);

-- Location: LCCOMB_X65_Y41_N26
\Shifter|stage[2][28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][28]~68_combout\ = (\Shifter|stage[2][28]~65_combout\) # ((\Shifter|stage[1][30]~67_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][28]~65_combout\,
	datac => \Shifter|stage[1][30]~67_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][28]~68_combout\);

-- Location: LCCOMB_X65_Y38_N16
\Shifter|stage[4][16]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][16]~72_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shifter|stage[2][28]~68_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][24]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][24]~71_combout\,
	datab => \Shifter|stage[2][28]~68_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][16]~72_combout\);

-- Location: LCCOMB_X65_Y38_N4
\Shifter|stage[4][16]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][16]~80_combout\ = (\Shifter|stage[4][16]~72_combout\) # ((\Shifter|stage[3][16]~79_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][16]~79_combout\,
	datab => \B[3]~input_o\,
	datad => \Shifter|stage[4][16]~72_combout\,
	combout => \Shifter|stage[4][16]~80_combout\);

-- Location: LCCOMB_X66_Y42_N2
\Shifter|stage[6][0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~81_combout\ = (\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\Shifter|stage[4][48]~64_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][16]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][48]~64_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][16]~80_combout\,
	combout => \Shifter|stage[6][0]~81_combout\);

-- Location: LCCOMB_X66_Y42_N22
\Shifter|stage[6][0]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][0]~114_combout\ = (\Shifter|stage[6][0]~81_combout\) # ((!\B[4]~input_o\ & ((\Shifter|stage[6][0]~97_combout\) # (\Shifter|stage[6][0]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][0]~97_combout\,
	datab => \Shifter|stage[6][0]~113_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[6][0]~81_combout\,
	combout => \Shifter|stage[6][0]~114_combout\);

-- Location: LCCOMB_X67_Y41_N26
\Shifter|stage[4][63]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][63]~116_combout\ = (\B[0]~input_o\) # ((\B[3]~input_o\) # ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[4][63]~116_combout\);

-- Location: LCCOMB_X67_Y44_N8
\Shifter|sign_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|sign_bit~0_combout\ = (\Shifter|InputExtended[63]~1_combout\ & (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|InputExtended[63]~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|sign_bit~0_combout\);

-- Location: LCCOMB_X67_Y40_N0
\Shifter|stage[6][63]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][63]~115_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Shifter|stage[6][63]~115_combout\);

-- Location: LCCOMB_X67_Y44_N10
\Shifter|stage[6][63]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][63]~117_combout\ = (\Shifter|stage[4][63]~116_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[4][63]~116_combout\ & ((\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage_in[63]~132_combout\))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][63]~116_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \Shifter|stage_in[63]~132_combout\,
	datad => \Shifter|stage[6][63]~115_combout\,
	combout => \Shifter|stage[6][63]~117_combout\);

-- Location: LCCOMB_X67_Y44_N28
\Shifter|Output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|Output[0]~0_combout\ = (\ShiftFN[1]~input_o\ & (((\Shifter|stage[6][0]~114_combout\)))) # (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\Shifter|stage[6][63]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|stage[6][0]~114_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shifter|stage[6][63]~117_combout\,
	combout => \Shifter|Output[0]~0_combout\);

-- Location: LCCOMB_X67_Y44_N6
\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X67_Y44_N24
\Shifter|Output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|Output[0]~1_combout\ = (\Shifter|Output[0]~0_combout\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shifter|Output[0]~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\,
	combout => \Shifter|Output[0]~1_combout\);

-- Location: LCCOMB_X73_Y44_N8
\Y_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~0_combout\ = (\FuncClass[0]~input_o\ & ((\LogicUnit|Mux63~0_combout\) # ((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & (((!\FuncClass[1]~input_o\ & \Shifter|Output[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \LogicUnit|Mux63~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Shifter|Output[0]~1_combout\,
	combout => \Y_internal~0_combout\);

-- Location: LCCOMB_X73_Y44_N16
\Adder|gen_blk_cs:7:bits[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:bits[7]~combout\ = \AddnSub~input_o\ $ (\A[63]~input_o\ $ (\B[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	combout => \Adder|gen_blk_cs:7:bits[7]~combout\);

-- Location: LCCOMB_X73_Y44_N26
\Y_internal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~1_combout\ = (\FuncClass[1]~input_o\ & (\Adder|Cout~combout\ $ (((\Y_internal~0_combout\) # (\Adder|gen_blk_cs:7:bits[7]~combout\))))) # (!\FuncClass[1]~input_o\ & (((\Y_internal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|Cout~combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_internal~0_combout\,
	datad => \Adder|gen_blk_cs:7:bits[7]~combout\,
	combout => \Y_internal~1_combout\);

-- Location: LCCOMB_X65_Y40_N4
\Shifter|stage[2][34]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][34]~150_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[36]~145_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[34]~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage_in[34]~151_combout\,
	datac => \Shifter|stage_in[36]~145_combout\,
	combout => \Shifter|stage[2][34]~150_combout\);

-- Location: LCCOMB_X65_Y45_N20
\Shifter|stage[2][33]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][33]~149_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Shifter|stage_in[35]~150_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[33]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Shifter|stage_in[33]~152_combout\,
	datad => \Shifter|stage_in[35]~150_combout\,
	combout => \Shifter|stage[2][33]~149_combout\);

-- Location: LCCOMB_X65_Y41_N28
\Shifter|stage[2][33]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][33]~151_combout\ = (\Shifter|stage[2][33]~149_combout\) # ((\Shifter|stage[2][34]~150_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][34]~150_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][33]~149_combout\,
	combout => \Shifter|stage[2][33]~151_combout\);

-- Location: LCCOMB_X68_Y38_N8
\Shifter|stage[2][42]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][42]~147_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[44]~141_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[42]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[42]~148_combout\,
	datad => \Shifter|stage_in[44]~141_combout\,
	combout => \Shifter|stage[2][42]~147_combout\);

-- Location: LCCOMB_X68_Y38_N2
\Shifter|stage[2][41]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][41]~148_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][42]~147_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][41]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][41]~89_combout\,
	datac => \Shifter|stage[2][42]~147_combout\,
	combout => \Shifter|stage[2][41]~148_combout\);

-- Location: LCCOMB_X69_Y41_N20
\Shifter|stage[4][33]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][33]~152_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][41]~148_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][33]~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][33]~151_combout\,
	datac => \Shifter|stage[2][41]~148_combout\,
	combout => \Shifter|stage[4][33]~152_combout\);

-- Location: LCCOMB_X72_Y38_N26
\Shifter|stage[2][46]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][46]~142_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[48]~129_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[46]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[46]~140_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[48]~129_combout\,
	combout => \Shifter|stage[2][46]~142_combout\);

-- Location: LCCOMB_X69_Y38_N26
\Shifter|stage[2][45]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][45]~143_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][46]~142_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][45]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][45]~82_combout\,
	datad => \Shifter|stage[2][46]~142_combout\,
	combout => \Shifter|stage[2][45]~143_combout\);

-- Location: LCCOMB_X69_Y38_N28
\Shifter|stage[2][38]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][38]~144_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[40]~149_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[38]~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[38]~144_combout\,
	datad => \Shifter|stage_in[40]~149_combout\,
	combout => \Shifter|stage[2][38]~144_combout\);

-- Location: LCCOMB_X69_Y38_N30
\Shifter|stage[2][37]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][37]~145_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][38]~144_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][37]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][37]~85_combout\,
	datab => \Shifter|stage[2][38]~144_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][37]~145_combout\);

-- Location: LCCOMB_X69_Y41_N18
\Shifter|stage[4][37]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][37]~146_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][45]~143_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][37]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][45]~143_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][37]~145_combout\,
	combout => \Shifter|stage[4][37]~146_combout\);

-- Location: LCCOMB_X69_Y41_N22
\Shifter|stage[6][1]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~153_combout\ = (\ShiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\Shifter|stage[4][37]~146_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][33]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][33]~152_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][37]~146_combout\,
	combout => \Shifter|stage[6][1]~153_combout\);

-- Location: LCCOMB_X69_Y37_N28
\Shifter|stage[2][14]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][14]~161_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[16]~91_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[14]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[14]~115_combout\,
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[16]~91_combout\,
	combout => \Shifter|stage[2][14]~161_combout\);

-- Location: LCCOMB_X65_Y40_N22
\Shifter|stage[2][13]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][13]~162_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][14]~161_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][13]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][14]~161_combout\,
	datac => \Shifter|stage[2][13]~106_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][13]~162_combout\);

-- Location: LCCOMB_X66_Y41_N0
\Shifter|stage[2][10]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][10]~163_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[12]~116_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[10]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[12]~116_combout\,
	datab => \Shifter|stage_in[10]~119_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][10]~163_combout\);

-- Location: LCCOMB_X67_Y42_N30
\Shifter|stage[2][9]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][9]~164_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][10]~163_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][9]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][9]~109_combout\,
	datac => \Shifter|stage[2][10]~163_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][9]~164_combout\);

-- Location: LCCOMB_X67_Y42_N8
\Shifter|stage[3][9]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][9]~165_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][13]~162_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][9]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][13]~162_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][9]~164_combout\,
	combout => \Shifter|stage[3][9]~165_combout\);

-- Location: LCCOMB_X67_Y43_N2
\Shifter|stage[2][5]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][5]~157_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\Shifter|stage_in[8]~120_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[7]~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[8]~120_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[7]~107_combout\,
	combout => \Shifter|stage[2][5]~157_combout\);

-- Location: LCCOMB_X67_Y43_N20
\Shifter|stage[1][5]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][5]~158_combout\ = (\B[0]~input_o\ & (\Shifter|stage_in[6]~108_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[5]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[6]~108_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage_in[5]~109_combout\,
	combout => \Shifter|stage[1][5]~158_combout\);

-- Location: LCCOMB_X67_Y43_N6
\Shifter|stage[2][5]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][5]~159_combout\ = (\Shifter|stage[2][5]~157_combout\) # ((!\B[1]~input_o\ & \Shifter|stage[1][5]~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][5]~157_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage[1][5]~158_combout\,
	combout => \Shifter|stage[2][5]~159_combout\);

-- Location: LCCOMB_X66_Y43_N10
\Shifter|stage_in[1]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage_in[1]~121_combout\ = (\ShiftFN[1]~input_o\ & (((\A[1]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\A[62]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shifter|stage_in[1]~121_combout\);

-- Location: LCCOMB_X66_Y43_N4
\Shifter|stage[6][1]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~154_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\Shifter|stage_in[2]~112_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[1]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Shifter|stage_in[2]~112_combout\,
	datad => \Shifter|stage_in[1]~121_combout\,
	combout => \Shifter|stage[6][1]~154_combout\);

-- Location: LCCOMB_X67_Y43_N8
\Shifter|stage[1][3]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[1][3]~155_combout\ = (\B[0]~input_o\ & (\Shifter|stage_in[4]~110_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[3]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[4]~110_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage_in[3]~111_combout\,
	combout => \Shifter|stage[1][3]~155_combout\);

-- Location: LCCOMB_X67_Y41_N16
\Shifter|stage[6][1]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~156_combout\ = (!\B[2]~input_o\ & ((\Shifter|stage[6][1]~154_combout\) # ((\Shifter|stage[1][3]~155_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[6][1]~154_combout\,
	datac => \Shifter|stage[1][3]~155_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[6][1]~156_combout\);

-- Location: LCCOMB_X67_Y41_N2
\Shifter|stage[6][1]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~160_combout\ = (!\B[3]~input_o\ & ((\Shifter|stage[6][1]~156_combout\) # ((\Shifter|stage[2][5]~159_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][5]~159_combout\,
	datab => \Shifter|stage[6][1]~156_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[6][1]~160_combout\);

-- Location: LCCOMB_X70_Y41_N14
\Shifter|stage[6][1]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~166_combout\ = (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][1]~160_combout\) # ((\Shifter|stage[3][9]~165_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[3][9]~165_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[6][1]~160_combout\,
	combout => \Shifter|stage[6][1]~166_combout\);

-- Location: LCCOMB_X67_Y38_N16
\Shifter|stage[2][18]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][18]~137_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[20]~87_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[18]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[20]~87_combout\,
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[18]~90_combout\,
	combout => \Shifter|stage[2][18]~137_combout\);

-- Location: LCCOMB_X67_Y38_N10
\Shifter|stage[2][17]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][17]~138_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][18]~137_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][17]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][17]~76_combout\,
	datad => \Shifter|stage[2][18]~137_combout\,
	combout => \Shifter|stage[2][17]~138_combout\);

-- Location: LCCOMB_X67_Y38_N12
\Shifter|stage[2][22]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][22]~135_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[24]~83_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[22]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[22]~86_combout\,
	datad => \Shifter|stage_in[24]~83_combout\,
	combout => \Shifter|stage[2][22]~135_combout\);

-- Location: LCCOMB_X67_Y38_N30
\Shifter|stage[2][21]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][21]~136_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][22]~135_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][21]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][22]~135_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage[2][21]~73_combout\,
	combout => \Shifter|stage[2][21]~136_combout\);

-- Location: LCCOMB_X67_Y38_N28
\Shifter|stage[3][17]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][17]~139_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][21]~136_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][17]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shifter|stage[2][17]~138_combout\,
	datad => \Shifter|stage[2][21]~136_combout\,
	combout => \Shifter|stage[3][17]~139_combout\);

-- Location: LCCOMB_X65_Y41_N20
\Shifter|stage[2][29]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][29]~129_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\Shifter|stage_in[30]~79_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage_in[29]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage_in[29]~77_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage_in[30]~79_combout\,
	combout => \Shifter|stage[2][29]~129_combout\);

-- Location: LCCOMB_X65_Y45_N2
\Shifter|stage[2][31]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][31]~130_combout\ = (\Shifter|InputExtended[32]~2_combout\ & ((\A[31]~input_o\) # (\B[0]~input_o\ $ (\Shifter|Equal2~0_combout\)))) # (!\Shifter|InputExtended[32]~2_combout\ & (\A[31]~input_o\ & (\B[0]~input_o\ $ 
-- (!\Shifter|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|InputExtended[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Shifter|Equal2~0_combout\,
	combout => \Shifter|stage[2][31]~130_combout\);

-- Location: LCCOMB_X65_Y41_N14
\Shifter|stage[2][29]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][29]~131_combout\ = (\Shifter|stage[2][29]~129_combout\) # ((\Shifter|stage[2][31]~130_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][29]~129_combout\,
	datac => \Shifter|stage[2][31]~130_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][29]~131_combout\);

-- Location: LCCOMB_X65_Y41_N8
\Shifter|stage[2][26]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][26]~132_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[28]~78_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[26]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[28]~78_combout\,
	datac => \Shifter|stage_in[26]~82_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][26]~132_combout\);

-- Location: LCCOMB_X65_Y41_N10
\Shifter|stage[2][25]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][25]~133_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][26]~132_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][25]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][25]~69_combout\,
	datac => \Shifter|stage[2][26]~132_combout\,
	combout => \Shifter|stage[2][25]~133_combout\);

-- Location: LCCOMB_X69_Y41_N16
\Shifter|stage[4][17]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][17]~134_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][29]~131_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][25]~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][29]~131_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][25]~133_combout\,
	combout => \Shifter|stage[4][17]~134_combout\);

-- Location: LCCOMB_X70_Y41_N10
\Shifter|stage[4][17]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][17]~140_combout\ = (\Shifter|stage[4][17]~134_combout\) # ((!\B[3]~input_o\ & \Shifter|stage[3][17]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[3][17]~139_combout\,
	datac => \Shifter|stage[4][17]~134_combout\,
	combout => \Shifter|stage[4][17]~140_combout\);

-- Location: LCCOMB_X67_Y41_N12
\Shifter|stage[2][61]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][61]~123_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[62]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage_in[62]~133_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[2][61]~123_combout\);

-- Location: LCCOMB_X66_Y41_N28
\Shifter|stage[2][58]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][58]~126_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[60]~131_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[58]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[58]~136_combout\,
	datab => \B[1]~input_o\,
	datad => \Shifter|stage_in[60]~131_combout\,
	combout => \Shifter|stage[2][58]~126_combout\);

-- Location: LCCOMB_X66_Y41_N14
\Shifter|stage[2][57]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][57]~127_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][58]~126_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][57]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][58]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][57]~60_combout\,
	combout => \Shifter|stage[2][57]~127_combout\);

-- Location: LCCOMB_X67_Y41_N22
\Shifter|stage[2][61]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][61]~124_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\Shifter|stage_in[63]~132_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[61]~130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage_in[63]~132_combout\,
	datac => \Shifter|stage_in[61]~130_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][61]~124_combout\);

-- Location: LCCOMB_X68_Y41_N12
\Shifter|stage[3][57]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][57]~419_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][61]~123_combout\) # ((\Shifter|stage[2][61]~124_combout\)))) # (!\B[2]~input_o\ & (((\Shifter|stage[2][57]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][61]~123_combout\,
	datab => \Shifter|stage[2][57]~127_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][61]~124_combout\,
	combout => \Shifter|stage[3][57]~419_combout\);

-- Location: LCCOMB_X72_Y38_N24
\Shifter|stage[2][50]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][50]~120_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[52]~125_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[50]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[50]~128_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[52]~125_combout\,
	combout => \Shifter|stage[2][50]~120_combout\);

-- Location: LCCOMB_X69_Y38_N16
\Shifter|stage[2][49]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][49]~121_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][50]~120_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][49]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][49]~53_combout\,
	datad => \Shifter|stage[2][50]~120_combout\,
	combout => \Shifter|stage[2][49]~121_combout\);

-- Location: LCCOMB_X69_Y39_N18
\Shifter|stage[2][54]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][54]~118_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[56]~137_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[54]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[56]~137_combout\,
	datab => \Shifter|stage_in[54]~124_combout\,
	datac => \B[1]~input_o\,
	combout => \Shifter|stage[2][54]~118_combout\);

-- Location: LCCOMB_X68_Y39_N28
\Shifter|stage[2][53]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][53]~119_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][54]~118_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][53]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][53]~50_combout\,
	datab => \Shifter|stage[2][54]~118_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[2][53]~119_combout\);

-- Location: LCCOMB_X68_Y41_N24
\Shifter|stage[4][49]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][49]~122_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shifter|stage[2][53]~119_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][49]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][49]~121_combout\,
	datac => \Shifter|stage[2][53]~119_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][49]~122_combout\);

-- Location: LCCOMB_X70_Y41_N24
\Shifter|stage[4][49]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][49]~128_combout\ = (\Shifter|stage[4][49]~122_combout\) # ((\Shifter|stage[3][57]~419_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][57]~419_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[4][49]~122_combout\,
	combout => \Shifter|stage[4][49]~128_combout\);

-- Location: LCCOMB_X70_Y41_N28
\Shifter|stage[6][1]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~141_combout\ = (\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][49]~128_combout\))) # (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[4][17]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][17]~140_combout\,
	datab => \Shifter|stage[4][49]~128_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][1]~141_combout\);

-- Location: LCCOMB_X70_Y41_N8
\Shifter|stage[6][1]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][1]~167_combout\ = (\Shifter|stage[6][1]~141_combout\) # ((!\B[4]~input_o\ & ((\Shifter|stage[6][1]~153_combout\) # (\Shifter|stage[6][1]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[6][1]~153_combout\,
	datac => \Shifter|stage[6][1]~166_combout\,
	datad => \Shifter|stage[6][1]~141_combout\,
	combout => \Shifter|stage[6][1]~167_combout\);

-- Location: LCCOMB_X73_Y42_N0
\Y_internal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~3_combout\ = (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~3_combout\);

-- Location: LCCOMB_X73_Y42_N2
\Y_internal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~4_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~4_combout\);

-- Location: LCCOMB_X67_Y44_N18
\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\ = \A[1]~input_o\ $ (\AddnSub~input_o\ $ (\B[1]~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X65_Y42_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\FuncClass[1]~input_o\ & \FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X65_Y42_N18
\Y_internal~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~5_combout\ = (!\Y_internal~3_combout\ & ((\Y_internal~4_combout\) # ((\Equal1~0_combout\ & \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Y_internal~4_combout\,
	datac => \Equal1~0_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~5_combout\);

-- Location: LCCOMB_X68_Y44_N24
\LogicUnit|Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~30_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \LogicUnit|Y~30_combout\);

-- Location: LCCOMB_X68_Y44_N26
\Y_internal~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~6_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\) # ((!\Y_internal~5_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~5_combout\ & \LogicUnit|Y~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Y_internal~5_combout\,
	datad => \LogicUnit|Y~30_combout\,
	combout => \Y_internal~6_combout\);

-- Location: LCCOMB_X67_Y41_N28
\Shifter|stage[5][62]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][62]~168_combout\ = (\B[2]~input_o\) # ((\B[3]~input_o\) # ((\B[4]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[5][62]~168_combout\);

-- Location: LCCOMB_X67_Y41_N30
\Shifter|stage[6][62]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][62]~169_combout\ = (\Shifter|stage[5][62]~168_combout\ & (((\Shifter|sign_bit~0_combout\)))) # (!\Shifter|stage[5][62]~168_combout\ & ((\ShiftCount[5]~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[1][62]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][62]~58_combout\,
	datab => \Shifter|stage[5][62]~168_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][62]~169_combout\);

-- Location: LCCOMB_X68_Y44_N12
\Y_internal~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~7_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~6_combout\ & ((\Shifter|stage[6][62]~169_combout\))) # (!\Y_internal~6_combout\ & (\Shifter|stage[6][1]~167_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][1]~167_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Y_internal~6_combout\,
	datad => \Shifter|stage[6][62]~169_combout\,
	combout => \Y_internal~7_combout\);

-- Location: LCCOMB_X70_Y46_N10
\Y_internal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~2_combout\ = (\LogicFN[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y_internal~2_combout\);

-- Location: LCCOMB_X70_Y46_N12
\Y_internal~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~8_combout\ = (\LogicFN[1]~input_o\ & ((\Equal1~0_combout\ & ((\Y_internal~2_combout\))) # (!\Equal1~0_combout\ & (\Y_internal~7_combout\)))) # (!\LogicFN[1]~input_o\ & (\Y_internal~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~7_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Y_internal~2_combout\,
	combout => \Y_internal~8_combout\);

-- Location: LCCOMB_X65_Y40_N20
\Shifter|stage[6][3]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~205_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shifter|stage[6][3]~205_combout\);

-- Location: LCCOMB_X68_Y41_N10
\Shifter|stage[2][61]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][61]~125_combout\ = (\Shifter|stage[2][61]~124_combout\) # (\Shifter|stage[2][61]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][61]~124_combout\,
	datad => \Shifter|stage[2][61]~123_combout\,
	combout => \Shifter|stage[2][61]~125_combout\);

-- Location: LCCOMB_X68_Y41_N28
\Shifter|stage[6][61]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][61]~215_combout\ = (\Shifter|stage[6][3]~205_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][3]~205_combout\ & ((\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[2][61]~125_combout\))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[6][3]~205_combout\,
	datac => \Shifter|stage[6][63]~115_combout\,
	datad => \Shifter|stage[2][61]~125_combout\,
	combout => \Shifter|stage[6][61]~215_combout\);

-- Location: LCCOMB_X68_Y43_N26
\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ = \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y43_N8
\Y_internal~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~10_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\) # ((!\Y_internal~5_combout\)))) # (!\Y_internal~4_combout\ & (((\LogicUnit|Y~0_combout\ & \Y_internal~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \LogicUnit|Y~0_combout\,
	datad => \Y_internal~5_combout\,
	combout => \Y_internal~10_combout\);

-- Location: LCCOMB_X68_Y37_N18
\Shifter|stage[2][43]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][43]~190_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[45]~139_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[43]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[43]~146_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[45]~139_combout\,
	combout => \Shifter|stage[2][43]~190_combout\);

-- Location: LCCOMB_X68_Y38_N4
\Shifter|stage[2][42]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][42]~191_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][43]~190_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][42]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][43]~190_combout\,
	datac => \Shifter|stage[2][42]~147_combout\,
	combout => \Shifter|stage[2][42]~191_combout\);

-- Location: LCCOMB_X68_Y37_N28
\Shifter|stage[2][35]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][35]~192_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[37]~143_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[35]~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[35]~150_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[37]~143_combout\,
	combout => \Shifter|stage[2][35]~192_combout\);

-- Location: LCCOMB_X65_Y40_N10
\Shifter|stage[2][34]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][34]~193_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][35]~192_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][34]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][35]~192_combout\,
	datac => \Shifter|stage[2][34]~150_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][34]~193_combout\);

-- Location: LCCOMB_X68_Y40_N6
\Shifter|stage[4][34]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][34]~194_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][42]~191_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][34]~193_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][42]~191_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][34]~193_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][34]~194_combout\);

-- Location: LCCOMB_X68_Y37_N22
\Shifter|stage[2][39]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][39]~197_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[41]~147_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[39]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage_in[41]~147_combout\,
	datac => \Shifter|stage_in[39]~142_combout\,
	combout => \Shifter|stage[2][39]~197_combout\);

-- Location: LCCOMB_X69_Y38_N4
\Shifter|stage[2][38]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][38]~198_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][39]~197_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][38]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][39]~197_combout\,
	datad => \Shifter|stage[2][38]~144_combout\,
	combout => \Shifter|stage[2][38]~198_combout\);

-- Location: LCCOMB_X69_Y37_N14
\Shifter|stage[2][47]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][47]~195_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[49]~127_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[47]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[49]~127_combout\,
	datab => \B[1]~input_o\,
	datad => \Shifter|stage_in[47]~138_combout\,
	combout => \Shifter|stage[2][47]~195_combout\);

-- Location: LCCOMB_X69_Y38_N2
\Shifter|stage[2][46]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][46]~196_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][47]~195_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][46]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][47]~195_combout\,
	datad => \Shifter|stage[2][46]~142_combout\,
	combout => \Shifter|stage[2][46]~196_combout\);

-- Location: LCCOMB_X68_Y40_N24
\Shifter|stage[4][38]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][38]~199_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][46]~196_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][38]~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][38]~198_combout\,
	datad => \Shifter|stage[2][46]~196_combout\,
	combout => \Shifter|stage[4][38]~199_combout\);

-- Location: LCCOMB_X68_Y40_N2
\Shifter|stage[4][34]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][34]~200_combout\ = (\Shifter|stage[4][34]~194_combout\) # ((\B[2]~input_o\ & \Shifter|stage[4][38]~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][34]~194_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][38]~199_combout\,
	combout => \Shifter|stage[4][34]~200_combout\);

-- Location: LCCOMB_X72_Y38_N22
\Shifter|stage[2][11]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][11]~209_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[13]~114_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[11]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[11]~117_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[13]~114_combout\,
	combout => \Shifter|stage[2][11]~209_combout\);

-- Location: LCCOMB_X67_Y42_N26
\Shifter|stage[2][10]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][10]~210_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][11]~209_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][10]~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][10]~163_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage[2][11]~209_combout\,
	combout => \Shifter|stage[2][10]~210_combout\);

-- Location: LCCOMB_X72_Y38_N28
\Shifter|stage[2][15]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][15]~207_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[17]~89_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[15]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage_in[17]~89_combout\,
	datac => \Shifter|stage_in[15]~113_combout\,
	combout => \Shifter|stage[2][15]~207_combout\);

-- Location: LCCOMB_X65_Y40_N30
\Shifter|stage[2][14]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][14]~208_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][15]~207_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][14]~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][14]~161_combout\,
	datac => \Shifter|stage[2][15]~207_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][14]~208_combout\);

-- Location: LCCOMB_X68_Y40_N20
\Shifter|stage[3][10]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][10]~211_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][14]~208_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][10]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][10]~210_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][14]~208_combout\,
	combout => \Shifter|stage[3][10]~211_combout\);

-- Location: LCCOMB_X67_Y43_N10
\Shifter|stage[2][7]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][7]~203_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[9]~118_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[7]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[9]~118_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[7]~107_combout\,
	combout => \Shifter|stage[2][7]~203_combout\);

-- Location: LCCOMB_X67_Y43_N24
\Shifter|stage[2][6]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][6]~202_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Shifter|stage_in[8]~120_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[6]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[6]~108_combout\,
	datab => \Shifter|stage_in[8]~120_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][6]~202_combout\);

-- Location: LCCOMB_X67_Y43_N28
\Shifter|stage[2][6]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][6]~204_combout\ = (\Shifter|stage[2][6]~202_combout\) # ((\Shifter|stage[2][7]~203_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][7]~203_combout\,
	datab => \B[0]~input_o\,
	datad => \Shifter|stage[2][6]~202_combout\,
	combout => \Shifter|stage[2][6]~204_combout\);

-- Location: LCCOMB_X67_Y41_N24
\Shifter|stage[6][3]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~201_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[6][3]~201_combout\);

-- Location: LCCOMB_X67_Y43_N14
\Shifter|stage[6][2]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][2]~206_combout\ = (\Shifter|stage[6][3]~205_combout\ & ((\Shifter|stage[2][6]~204_combout\) # ((\Shifter|stage[6][3]~201_combout\)))) # (!\Shifter|stage[6][3]~205_combout\ & (((!\Shifter|stage[6][3]~201_combout\ & 
-- \Shifter|stage[1][2]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][6]~204_combout\,
	datab => \Shifter|stage[6][3]~205_combout\,
	datac => \Shifter|stage[6][3]~201_combout\,
	datad => \Shifter|stage[1][2]~101_combout\,
	combout => \Shifter|stage[6][2]~206_combout\);

-- Location: LCCOMB_X67_Y43_N16
\Shifter|stage[6][2]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][2]~212_combout\ = (\Shifter|stage[6][2]~206_combout\ & ((\Shifter|stage[3][10]~211_combout\) # ((!\Shifter|stage[6][3]~201_combout\)))) # (!\Shifter|stage[6][2]~206_combout\ & (((\Shifter|stage[1][4]~99_combout\ & 
-- \Shifter|stage[6][3]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][10]~211_combout\,
	datab => \Shifter|stage[6][2]~206_combout\,
	datac => \Shifter|stage[1][4]~99_combout\,
	datad => \Shifter|stage[6][3]~201_combout\,
	combout => \Shifter|stage[6][2]~212_combout\);

-- Location: LCCOMB_X69_Y40_N12
\Shifter|stage[6][2]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][2]~213_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][34]~200_combout\) # ((\B[4]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & (((\Shifter|stage[6][2]~212_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][34]~200_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[6][2]~212_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][2]~213_combout\);

-- Location: LCCOMB_X66_Y41_N10
\Shifter|stage[2][59]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][59]~176_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[61]~130_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[59]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[59]~134_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[61]~130_combout\,
	combout => \Shifter|stage[2][59]~176_combout\);

-- Location: LCCOMB_X66_Y41_N4
\Shifter|stage[2][58]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][58]~177_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][59]~176_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][58]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][58]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][59]~176_combout\,
	combout => \Shifter|stage[2][58]~177_combout\);

-- Location: LCCOMB_X70_Y40_N18
\Shifter|stage[3][58]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][58]~175_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage[1][62]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage[1][62]~58_combout\,
	combout => \Shifter|stage[3][58]~175_combout\);

-- Location: LCCOMB_X70_Y40_N4
\Shifter|stage[3][58]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][58]~178_combout\ = (\Shifter|stage[3][58]~175_combout\) # ((!\B[2]~input_o\ & \Shifter|stage[2][58]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][58]~177_combout\,
	datad => \Shifter|stage[3][58]~175_combout\,
	combout => \Shifter|stage[3][58]~178_combout\);

-- Location: LCCOMB_X69_Y39_N28
\Shifter|stage[2][55]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][55]~170_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[57]~135_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[55]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[57]~135_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[55]~122_combout\,
	combout => \Shifter|stage[2][55]~170_combout\);

-- Location: LCCOMB_X68_Y39_N22
\Shifter|stage[2][54]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][54]~171_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][55]~170_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][54]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][55]~170_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][54]~118_combout\,
	combout => \Shifter|stage[2][54]~171_combout\);

-- Location: LCCOMB_X69_Y39_N22
\Shifter|stage[2][51]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][51]~172_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[53]~123_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[51]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[51]~126_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[53]~123_combout\,
	combout => \Shifter|stage[2][51]~172_combout\);

-- Location: LCCOMB_X69_Y38_N24
\Shifter|stage[2][50]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][50]~173_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][51]~172_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][50]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shifter|stage[2][51]~172_combout\,
	datad => \Shifter|stage[2][50]~120_combout\,
	combout => \Shifter|stage[2][50]~173_combout\);

-- Location: LCCOMB_X70_Y40_N24
\Shifter|stage[4][50]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][50]~174_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][54]~171_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][50]~173_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][54]~171_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][50]~173_combout\,
	combout => \Shifter|stage[4][50]~174_combout\);

-- Location: LCCOMB_X69_Y40_N10
\Shifter|stage[4][50]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][50]~179_combout\ = (\Shifter|stage[4][50]~174_combout\) # ((\Shifter|stage[3][58]~178_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][58]~178_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[4][50]~174_combout\,
	combout => \Shifter|stage[4][50]~179_combout\);

-- Location: LCCOMB_X65_Y41_N22
\Shifter|stage[2][27]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][27]~181_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[29]~77_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[27]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Shifter|stage_in[27]~80_combout\,
	datad => \Shifter|stage_in[29]~77_combout\,
	combout => \Shifter|stage[2][27]~181_combout\);

-- Location: LCCOMB_X65_Y41_N16
\Shifter|stage[2][26]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][26]~182_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][27]~181_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][26]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][27]~181_combout\,
	datab => \Shifter|stage[2][26]~132_combout\,
	datac => \B[0]~input_o\,
	combout => \Shifter|stage[2][26]~182_combout\);

-- Location: LCCOMB_X65_Y45_N30
\Shifter|stage[3][30]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][30]~180_combout\ = (\B[1]~input_o\ & ((\Shifter|stage[1][32]~94_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage[1][30]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage[1][30]~67_combout\,
	datad => \Shifter|stage[1][32]~94_combout\,
	combout => \Shifter|stage[3][30]~180_combout\);

-- Location: LCCOMB_X68_Y40_N0
\Shifter|stage[3][26]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][26]~183_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[3][30]~180_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][26]~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][26]~182_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[3][30]~180_combout\,
	combout => \Shifter|stage[3][26]~183_combout\);

-- Location: LCCOMB_X67_Y38_N8
\Shifter|stage[2][19]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][19]~186_combout\ = (\B[1]~input_o\ & ((\Shifter|stage_in[21]~85_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[19]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage_in[19]~88_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|stage_in[21]~85_combout\,
	combout => \Shifter|stage[2][19]~186_combout\);

-- Location: LCCOMB_X67_Y38_N2
\Shifter|stage[2][18]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][18]~187_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][19]~186_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][18]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][19]~186_combout\,
	datad => \Shifter|stage[2][18]~137_combout\,
	combout => \Shifter|stage[2][18]~187_combout\);

-- Location: LCCOMB_X65_Y41_N18
\Shifter|stage[2][23]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][23]~184_combout\ = (\B[1]~input_o\ & (\Shifter|stage_in[25]~81_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[23]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[25]~81_combout\,
	datac => \Shifter|stage_in[23]~84_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][23]~184_combout\);

-- Location: LCCOMB_X67_Y38_N22
\Shifter|stage[2][22]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][22]~185_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][23]~184_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][22]~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][22]~135_combout\,
	datab => \Shifter|stage[2][23]~184_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][22]~185_combout\);

-- Location: LCCOMB_X68_Y40_N26
\Shifter|stage[3][18]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][18]~188_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][22]~185_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][18]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][18]~187_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][22]~185_combout\,
	combout => \Shifter|stage[3][18]~188_combout\);

-- Location: LCCOMB_X68_Y40_N12
\Shifter|stage[4][18]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][18]~189_combout\ = (\B[3]~input_o\ & (\Shifter|stage[3][26]~183_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[3][18]~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[3][26]~183_combout\,
	datac => \Shifter|stage[3][18]~188_combout\,
	combout => \Shifter|stage[4][18]~189_combout\);

-- Location: LCCOMB_X69_Y40_N22
\Shifter|stage[6][2]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][2]~214_combout\ = (\Shifter|stage[6][2]~213_combout\ & (((\Shifter|stage[4][50]~179_combout\)) # (!\B[4]~input_o\))) # (!\Shifter|stage[6][2]~213_combout\ & (\B[4]~input_o\ & ((\Shifter|stage[4][18]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][2]~213_combout\,
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[4][50]~179_combout\,
	datad => \Shifter|stage[4][18]~189_combout\,
	combout => \Shifter|stage[6][2]~214_combout\);

-- Location: LCCOMB_X67_Y36_N8
\Y_internal~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~11_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~10_combout\ & (\Shifter|stage[6][61]~215_combout\)) # (!\Y_internal~10_combout\ & ((\Shifter|stage[6][2]~214_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][61]~215_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Y_internal~10_combout\,
	datad => \Shifter|stage[6][2]~214_combout\,
	combout => \Y_internal~11_combout\);

-- Location: LCCOMB_X65_Y40_N0
\Y_internal~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~9_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\LogicFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~9_combout\);

-- Location: LCCOMB_X65_Y40_N8
\Y_internal~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~12_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~9_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~11_combout\)))) # (!\Equal1~0_combout\ & (\Y_internal~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~11_combout\,
	datab => \Equal1~0_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~9_combout\,
	combout => \Y_internal~12_combout\);

-- Location: LCCOMB_X67_Y39_N10
\Shifter|stage[2][11]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][11]~243_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][12]~107_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][11]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][11]~209_combout\,
	datac => \Shifter|stage[2][12]~107_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][11]~243_combout\);

-- Location: LCCOMB_X67_Y39_N16
\Shifter|stage[2][15]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][15]~242_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][16]~77_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][15]~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shifter|stage[2][15]~207_combout\,
	datad => \Shifter|stage[2][16]~77_combout\,
	combout => \Shifter|stage[2][15]~242_combout\);

-- Location: LCCOMB_X67_Y39_N4
\Shifter|stage[3][11]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][11]~244_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][15]~242_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][11]~243_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][11]~243_combout\,
	datab => \B[2]~input_o\,
	datad => \Shifter|stage[2][15]~242_combout\,
	combout => \Shifter|stage[3][11]~244_combout\);

-- Location: LCCOMB_X67_Y43_N18
\Shifter|stage[2][7]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][7]~240_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][8]~110_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][7]~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][7]~203_combout\,
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][8]~110_combout\,
	combout => \Shifter|stage[2][7]~240_combout\);

-- Location: LCCOMB_X67_Y43_N12
\Shifter|stage[6][3]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~241_combout\ = (\Shifter|stage[6][3]~201_combout\ & (\Shifter|stage[6][3]~205_combout\)) # (!\Shifter|stage[6][3]~201_combout\ & ((\Shifter|stage[6][3]~205_combout\ & ((\Shifter|stage[2][7]~240_combout\))) # 
-- (!\Shifter|stage[6][3]~205_combout\ & (\Shifter|stage[1][3]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][3]~201_combout\,
	datab => \Shifter|stage[6][3]~205_combout\,
	datac => \Shifter|stage[1][3]~155_combout\,
	datad => \Shifter|stage[2][7]~240_combout\,
	combout => \Shifter|stage[6][3]~241_combout\);

-- Location: LCCOMB_X67_Y43_N22
\Shifter|stage[6][3]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~245_combout\ = (\Shifter|stage[6][3]~201_combout\ & ((\Shifter|stage[6][3]~241_combout\ & (\Shifter|stage[3][11]~244_combout\)) # (!\Shifter|stage[6][3]~241_combout\ & ((\Shifter|stage[1][5]~158_combout\))))) # 
-- (!\Shifter|stage[6][3]~201_combout\ & (((\Shifter|stage[6][3]~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][11]~244_combout\,
	datab => \Shifter|stage[1][5]~158_combout\,
	datac => \Shifter|stage[6][3]~201_combout\,
	datad => \Shifter|stage[6][3]~241_combout\,
	combout => \Shifter|stage[6][3]~245_combout\);

-- Location: LCCOMB_X69_Y38_N6
\Shifter|stage[2][47]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][47]~233_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][48]~54_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][47]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][47]~195_combout\,
	datac => \Shifter|stage[2][48]~54_combout\,
	combout => \Shifter|stage[2][47]~233_combout\);

-- Location: LCCOMB_X69_Y38_N0
\Shifter|stage[2][39]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][39]~234_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][40]~90_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][39]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][39]~197_combout\,
	datad => \Shifter|stage[2][40]~90_combout\,
	combout => \Shifter|stage[2][39]~234_combout\);

-- Location: LCCOMB_X66_Y40_N30
\Shifter|stage[4][39]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][39]~235_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][47]~233_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][39]~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][47]~233_combout\,
	datab => \Shifter|stage[2][39]~234_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][39]~235_combout\);

-- Location: LCCOMB_X68_Y38_N22
\Shifter|stage[2][43]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][43]~236_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][44]~83_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][43]~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage[2][43]~190_combout\,
	datac => \Shifter|stage[2][44]~83_combout\,
	combout => \Shifter|stage[2][43]~236_combout\);

-- Location: LCCOMB_X65_Y40_N14
\Shifter|stage[2][35]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][35]~237_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][36]~86_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][35]~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][35]~192_combout\,
	datac => \Shifter|stage[2][36]~86_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][35]~237_combout\);

-- Location: LCCOMB_X66_Y40_N0
\Shifter|stage[4][35]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][35]~238_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][43]~236_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][35]~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shifter|stage[2][43]~236_combout\,
	datad => \Shifter|stage[2][35]~237_combout\,
	combout => \Shifter|stage[4][35]~238_combout\);

-- Location: LCCOMB_X66_Y40_N18
\Shifter|stage[4][35]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][35]~239_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][39]~235_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][35]~238_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][39]~235_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][35]~238_combout\,
	combout => \Shifter|stage[4][35]~239_combout\);

-- Location: LCCOMB_X66_Y40_N20
\Shifter|stage[6][3]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~246_combout\ = (\B[4]~input_o\ & (((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][35]~239_combout\))) # (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[6][3]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[6][3]~245_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][35]~239_combout\,
	combout => \Shifter|stage[6][3]~246_combout\);

-- Location: LCCOMB_X65_Y41_N12
\Shifter|stage[2][27]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][27]~226_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Shifter|stage_in[30]~79_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[28]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[28]~78_combout\,
	datab => \Shifter|stage_in[30]~79_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][27]~226_combout\);

-- Location: LCCOMB_X65_Y41_N6
\Shifter|stage[2][27]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][27]~227_combout\ = (\Shifter|stage[2][27]~226_combout\) # ((\Shifter|stage[2][27]~181_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][27]~181_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][27]~226_combout\,
	combout => \Shifter|stage[2][27]~227_combout\);

-- Location: LCCOMB_X65_Y45_N8
\Shifter|stage[2][31]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][31]~224_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\Shifter|stage_in[34]~151_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[33]~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage_in[34]~151_combout\,
	datab => \B[0]~input_o\,
	datac => \Shifter|stage_in[33]~152_combout\,
	datad => \B[1]~input_o\,
	combout => \Shifter|stage[2][31]~224_combout\);

-- Location: LCCOMB_X65_Y45_N18
\Shifter|stage[2][31]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][31]~225_combout\ = (\Shifter|stage[2][31]~224_combout\) # ((!\B[1]~input_o\ & \Shifter|stage[2][31]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shifter|stage[2][31]~130_combout\,
	datac => \Shifter|stage[2][31]~224_combout\,
	combout => \Shifter|stage[2][31]~225_combout\);

-- Location: LCCOMB_X66_Y40_N24
\Shifter|stage[4][19]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][19]~228_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shifter|stage[2][31]~225_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][27]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][27]~227_combout\,
	datab => \Shifter|stage[2][31]~225_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][19]~228_combout\);

-- Location: LCCOMB_X67_Y38_N20
\Shifter|stage[2][19]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][19]~230_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][20]~74_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][19]~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][19]~186_combout\,
	datad => \Shifter|stage[2][20]~74_combout\,
	combout => \Shifter|stage[2][19]~230_combout\);

-- Location: LCCOMB_X65_Y40_N28
\Shifter|stage[2][23]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][23]~229_combout\ = (\B[0]~input_o\ & ((\Shifter|stage[2][24]~70_combout\))) # (!\B[0]~input_o\ & (\Shifter|stage[2][23]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][23]~184_combout\,
	datac => \Shifter|stage[2][24]~70_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[2][23]~229_combout\);

-- Location: LCCOMB_X66_Y40_N2
\Shifter|stage[3][19]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][19]~231_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][23]~229_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][19]~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][19]~230_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][23]~229_combout\,
	combout => \Shifter|stage[3][19]~231_combout\);

-- Location: LCCOMB_X66_Y40_N4
\Shifter|stage[4][19]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][19]~232_combout\ = (\Shifter|stage[4][19]~228_combout\) # ((!\B[3]~input_o\ & \Shifter|stage[3][19]~231_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[4][19]~228_combout\,
	datad => \Shifter|stage[3][19]~231_combout\,
	combout => \Shifter|stage[4][19]~232_combout\);

-- Location: LCCOMB_X66_Y41_N22
\Shifter|stage[2][59]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][59]~220_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\Shifter|stage_in[62]~133_combout\)) # (!\B[1]~input_o\ & ((\Shifter|stage_in[60]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shifter|stage_in[62]~133_combout\,
	datad => \Shifter|stage_in[60]~131_combout\,
	combout => \Shifter|stage[2][59]~220_combout\);

-- Location: LCCOMB_X66_Y41_N16
\Shifter|stage[2][59]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][59]~221_combout\ = (\Shifter|stage[2][59]~220_combout\) # ((!\B[0]~input_o\ & \Shifter|stage[2][59]~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][59]~220_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][59]~176_combout\,
	combout => \Shifter|stage[2][59]~221_combout\);

-- Location: LCCOMB_X67_Y41_N18
\Shifter|stage[3][59]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][59]~219_combout\ = (\B[0]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[1]~input_o\ & (\Shifter|stage_in[63]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shifter|stage_in[63]~132_combout\,
	datac => \B[1]~input_o\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[3][59]~219_combout\);

-- Location: LCCOMB_X68_Y39_N30
\Shifter|stage[3][59]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][59]~222_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[3][59]~219_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][59]~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][59]~221_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[3][59]~219_combout\,
	combout => \Shifter|stage[3][59]~222_combout\);

-- Location: LCCOMB_X68_Y39_N16
\Shifter|stage[2][55]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][55]~216_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][56]~61_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][55]~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shifter|stage[2][56]~61_combout\,
	datad => \Shifter|stage[2][55]~170_combout\,
	combout => \Shifter|stage[2][55]~216_combout\);

-- Location: LCCOMB_X68_Y39_N2
\Shifter|stage[2][51]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[2][51]~217_combout\ = (\B[0]~input_o\ & (\Shifter|stage[2][52]~51_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage[2][51]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][52]~51_combout\,
	datac => \B[0]~input_o\,
	datad => \Shifter|stage[2][51]~172_combout\,
	combout => \Shifter|stage[2][51]~217_combout\);

-- Location: LCCOMB_X68_Y39_N20
\Shifter|stage[4][51]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][51]~218_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][55]~216_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][51]~217_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][55]~216_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][51]~217_combout\,
	combout => \Shifter|stage[4][51]~218_combout\);

-- Location: LCCOMB_X68_Y39_N0
\Shifter|stage[4][51]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][51]~223_combout\ = (\Shifter|stage[4][51]~218_combout\) # ((\Shifter|stage[3][59]~222_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][59]~222_combout\,
	datab => \Shifter|stage[4][51]~218_combout\,
	datac => \B[3]~input_o\,
	combout => \Shifter|stage[4][51]~223_combout\);

-- Location: LCCOMB_X66_Y40_N6
\Shifter|stage[6][3]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][3]~247_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[6][3]~246_combout\ & ((\Shifter|stage[4][51]~223_combout\))) # (!\Shifter|stage[6][3]~246_combout\ & (\Shifter|stage[4][19]~232_combout\)))) # (!\B[4]~input_o\ & 
-- (\Shifter|stage[6][3]~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[6][3]~246_combout\,
	datac => \Shifter|stage[4][19]~232_combout\,
	datad => \Shifter|stage[4][51]~223_combout\,
	combout => \Shifter|stage[6][3]~247_combout\);

-- Location: LCCOMB_X68_Y41_N30
\Shifter|stage[6][60]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][60]~248_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[6][3]~205_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[6][3]~205_combout\ & (\Shifter|stage[2][60]~59_combout\)))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (((\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~115_combout\,
	datab => \Shifter|stage[6][3]~205_combout\,
	datac => \Shifter|stage[2][60]~59_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][60]~248_combout\);

-- Location: LCCOMB_X68_Y43_N4
\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ = \A[3]~input_o\ $ (\AddnSub~input_o\ $ (\B[3]~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[3]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y43_N2
\Y_internal~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~14_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\LogicUnit|Y~1_combout\))))) # (!\Y_internal~5_combout\ & (\Y_internal~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~5_combout\,
	datab => \Y_internal~4_combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \LogicUnit|Y~1_combout\,
	combout => \Y_internal~14_combout\);

-- Location: LCCOMB_X66_Y41_N18
\Y_internal~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~15_combout\ = (\Y_internal~14_combout\ & (((\Shifter|stage[6][60]~248_combout\) # (!\Y_internal~3_combout\)))) # (!\Y_internal~14_combout\ & (\Shifter|stage[6][3]~247_combout\ & ((\Y_internal~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][3]~247_combout\,
	datab => \Shifter|stage[6][60]~248_combout\,
	datac => \Y_internal~14_combout\,
	datad => \Y_internal~3_combout\,
	combout => \Y_internal~15_combout\);

-- Location: LCCOMB_X65_Y40_N18
\Y_internal~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~13_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & !\LogicFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~13_combout\);

-- Location: LCCOMB_X65_Y40_N24
\Y_internal~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~16_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~13_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~15_combout\)))) # (!\Equal1~0_combout\ & (\Y_internal~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~15_combout\,
	datab => \Equal1~0_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~13_combout\,
	combout => \Y_internal~16_combout\);

-- Location: LCCOMB_X65_Y42_N20
\Y_internal~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~17_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\LogicFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~17_combout\);

-- Location: LCCOMB_X68_Y43_N6
\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\ $ (\A[4]~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y43_N28
\Y_internal~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~18_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\LogicUnit|Y~2_combout\))))) # (!\Y_internal~5_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\,
	datab => \Y_internal~5_combout\,
	datac => \Y_internal~4_combout\,
	datad => \LogicUnit|Y~2_combout\,
	combout => \Y_internal~18_combout\);

-- Location: LCCOMB_X66_Y39_N16
\Shifter|stage[6][7]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][7]~256_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][7]~256_combout\);

-- Location: LCCOMB_X66_Y39_N2
\Shifter|stage[6][59]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][59]~262_combout\ = (\Shifter|stage[6][7]~256_combout\ & (((\Shifter|sign_bit~0_combout\)))) # (!\Shifter|stage[6][7]~256_combout\ & ((\ShiftCount[5]~0_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[3][59]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][59]~222_combout\,
	datab => \Shifter|stage[6][7]~256_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][59]~262_combout\);

-- Location: LCCOMB_X65_Y38_N12
\Shifter|stage[4][40]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][40]~249_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][48]~55_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][40]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[2][48]~55_combout\,
	datad => \Shifter|stage[2][40]~91_combout\,
	combout => \Shifter|stage[4][40]~249_combout\);

-- Location: LCCOMB_X65_Y38_N14
\Shifter|stage[4][36]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][36]~250_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][40]~249_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][36]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][36]~88_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][40]~249_combout\,
	combout => \Shifter|stage[4][36]~250_combout\);

-- Location: LCCOMB_X66_Y38_N14
\Shifter|stage[4][52]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][52]~252_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][60]~59_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][52]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][60]~59_combout\,
	datad => \Shifter|stage[2][52]~52_combout\,
	combout => \Shifter|stage[4][52]~252_combout\);

-- Location: LCCOMB_X66_Y38_N12
\Shifter|stage[4][52]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][52]~251_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][56]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[2][56]~62_combout\,
	combout => \Shifter|stage[4][52]~251_combout\);

-- Location: LCCOMB_X66_Y38_N0
\Shifter|stage[6][36]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][36]~253_combout\ = (\B[4]~input_o\ & (((\Shifter|stage[4][52]~252_combout\) # (\Shifter|stage[4][52]~251_combout\)))) # (!\B[4]~input_o\ & (\Shifter|stage[4][36]~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][36]~250_combout\,
	datab => \Shifter|stage[4][52]~252_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][52]~251_combout\,
	combout => \Shifter|stage[6][36]~253_combout\);

-- Location: LCCOMB_X67_Y38_N6
\Shifter|stage[3][12]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][12]~255_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][16]~78_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][12]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shifter|stage[2][12]~108_combout\,
	datad => \Shifter|stage[2][16]~78_combout\,
	combout => \Shifter|stage[3][12]~255_combout\);

-- Location: LCCOMB_X67_Y42_N20
\Shifter|stage[6][7]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][7]~254_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Shifter|stage[6][7]~254_combout\);

-- Location: LCCOMB_X67_Y42_N6
\Shifter|stage[6][4]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][4]~257_combout\ = (\Shifter|stage[6][7]~254_combout\ & (((\Shifter|stage[6][7]~256_combout\)))) # (!\Shifter|stage[6][7]~254_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|stage[3][12]~255_combout\)) # 
-- (!\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[2][4]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][12]~255_combout\,
	datab => \Shifter|stage[6][7]~254_combout\,
	datac => \Shifter|stage[6][7]~256_combout\,
	datad => \Shifter|stage[2][4]~100_combout\,
	combout => \Shifter|stage[6][4]~257_combout\);

-- Location: LCCOMB_X65_Y38_N26
\Shifter|stage[3][20]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][20]~259_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][24]~71_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][20]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][24]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][20]~75_combout\,
	combout => \Shifter|stage[3][20]~259_combout\);

-- Location: LCCOMB_X65_Y38_N8
\Shifter|stage[4][20]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][20]~258_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][32]~95_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][28]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][32]~95_combout\,
	datab => \Shifter|stage[2][28]~68_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][20]~258_combout\);

-- Location: LCCOMB_X65_Y38_N28
\Shifter|stage[4][20]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][20]~260_combout\ = (\Shifter|stage[4][20]~258_combout\) # ((\Shifter|stage[3][20]~259_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][20]~259_combout\,
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[4][20]~258_combout\,
	combout => \Shifter|stage[4][20]~260_combout\);

-- Location: LCCOMB_X67_Y42_N24
\Shifter|stage[6][4]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][4]~261_combout\ = (\Shifter|stage[6][4]~257_combout\ & (((\Shifter|stage[4][20]~260_combout\)) # (!\Shifter|stage[6][7]~254_combout\))) # (!\Shifter|stage[6][4]~257_combout\ & (\Shifter|stage[6][7]~254_combout\ & 
-- ((\Shifter|stage[2][8]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][4]~257_combout\,
	datab => \Shifter|stage[6][7]~254_combout\,
	datac => \Shifter|stage[4][20]~260_combout\,
	datad => \Shifter|stage[2][8]~111_combout\,
	combout => \Shifter|stage[6][4]~261_combout\);

-- Location: LCCOMB_X68_Y42_N28
\Shifter|stage[6][4]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][4]~420_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[6][4]~261_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|stage[6][36]~253_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[6][4]~261_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][36]~253_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|stage[6][4]~261_combout\,
	combout => \Shifter|stage[6][4]~420_combout\);

-- Location: LCCOMB_X65_Y42_N6
\Y_internal~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~19_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~18_combout\ & (\Shifter|stage[6][59]~262_combout\)) # (!\Y_internal~18_combout\ & ((\Shifter|stage[6][4]~420_combout\))))) # (!\Y_internal~3_combout\ & (\Y_internal~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Y_internal~18_combout\,
	datac => \Shifter|stage[6][59]~262_combout\,
	datad => \Shifter|stage[6][4]~420_combout\,
	combout => \Y_internal~19_combout\);

-- Location: LCCOMB_X65_Y42_N0
\Y_internal~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~20_combout\ = (\LogicFN[1]~input_o\ & ((\Equal1~0_combout\ & (\Y_internal~17_combout\)) # (!\Equal1~0_combout\ & ((\Y_internal~19_combout\))))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Y_internal~17_combout\,
	datac => \Equal1~0_combout\,
	datad => \Y_internal~19_combout\,
	combout => \Y_internal~20_combout\);

-- Location: LCCOMB_X69_Y40_N16
\Shifter|stage[6][58]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][58]~274_combout\ = (\ShiftCount[5]~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & 
-- ((\Shifter|stage[3][58]~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[6][7]~256_combout\,
	datad => \Shifter|stage[3][58]~178_combout\,
	combout => \Shifter|stage[6][58]~274_combout\);

-- Location: LCCOMB_X69_Y44_N6
\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y44_N6
\LogicUnit|Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~31_combout\ = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \LogicUnit|Y~31_combout\);

-- Location: LCCOMB_X68_Y44_N8
\Y_internal~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~22_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\LogicUnit|Y~31_combout\))))) # (!\Y_internal~5_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Y_internal~5_combout\,
	datac => \Y_internal~4_combout\,
	datad => \LogicUnit|Y~31_combout\,
	combout => \Y_internal~22_combout\);

-- Location: LCCOMB_X69_Y41_N24
\Shifter|stage[4][41]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][41]~266_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][49]~121_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][41]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][49]~121_combout\,
	datac => \Shifter|stage[2][41]~148_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][41]~266_combout\);

-- Location: LCCOMB_X69_Y41_N26
\Shifter|stage[4][37]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][37]~267_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][41]~266_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][37]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][37]~146_combout\,
	datad => \Shifter|stage[4][41]~266_combout\,
	combout => \Shifter|stage[4][37]~267_combout\);

-- Location: LCCOMB_X68_Y41_N16
\Shifter|stage[4][53]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][53]~263_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][57]~127_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[2][57]~127_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][53]~263_combout\);

-- Location: LCCOMB_X68_Y41_N18
\Shifter|stage[4][53]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][53]~264_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shifter|stage[2][61]~125_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][53]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[2][53]~119_combout\,
	datad => \Shifter|stage[2][61]~125_combout\,
	combout => \Shifter|stage[4][53]~264_combout\);

-- Location: LCCOMB_X68_Y41_N22
\Shifter|stage[6][37]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][37]~421_combout\ = (\B[4]~input_o\ & (((\Shifter|stage[4][53]~263_combout\) # (\Shifter|stage[4][53]~264_combout\)))) # (!\B[4]~input_o\ & (\Shifter|stage[4][37]~267_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][37]~267_combout\,
	datab => \Shifter|stage[4][53]~263_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][53]~264_combout\,
	combout => \Shifter|stage[6][37]~421_combout\);

-- Location: LCCOMB_X69_Y41_N30
\Shifter|stage[3][21]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][21]~271_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][25]~133_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][21]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][21]~136_combout\,
	datac => \Shifter|stage[2][25]~133_combout\,
	combout => \Shifter|stage[3][21]~271_combout\);

-- Location: LCCOMB_X69_Y41_N12
\Shifter|stage[4][21]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][21]~270_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][33]~151_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][29]~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][33]~151_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][29]~131_combout\,
	combout => \Shifter|stage[4][21]~270_combout\);

-- Location: LCCOMB_X69_Y41_N0
\Shifter|stage[4][21]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][21]~272_combout\ = (\Shifter|stage[4][21]~270_combout\) # ((\Shifter|stage[3][21]~271_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][21]~271_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[4][21]~270_combout\,
	combout => \Shifter|stage[4][21]~272_combout\);

-- Location: LCCOMB_X67_Y42_N10
\Shifter|stage[3][13]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][13]~268_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[2][17]~138_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][13]~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][13]~162_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][17]~138_combout\,
	combout => \Shifter|stage[3][13]~268_combout\);

-- Location: LCCOMB_X67_Y42_N4
\Shifter|stage[6][5]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][5]~269_combout\ = (\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[6][7]~254_combout\) # ((\Shifter|stage[3][13]~268_combout\)))) # (!\Shifter|stage[6][7]~256_combout\ & (!\Shifter|stage[6][7]~254_combout\ & 
-- (\Shifter|stage[2][5]~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~256_combout\,
	datab => \Shifter|stage[6][7]~254_combout\,
	datac => \Shifter|stage[2][5]~159_combout\,
	datad => \Shifter|stage[3][13]~268_combout\,
	combout => \Shifter|stage[6][5]~269_combout\);

-- Location: LCCOMB_X67_Y42_N14
\Shifter|stage[6][5]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][5]~273_combout\ = (\Shifter|stage[6][5]~269_combout\ & (((\Shifter|stage[4][21]~272_combout\) # (!\Shifter|stage[6][7]~254_combout\)))) # (!\Shifter|stage[6][5]~269_combout\ & (\Shifter|stage[2][9]~164_combout\ & 
-- ((\Shifter|stage[6][7]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][9]~164_combout\,
	datab => \Shifter|stage[4][21]~272_combout\,
	datac => \Shifter|stage[6][5]~269_combout\,
	datad => \Shifter|stage[6][7]~254_combout\,
	combout => \Shifter|stage[6][5]~273_combout\);

-- Location: LCCOMB_X68_Y42_N14
\Shifter|stage[6][5]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][5]~422_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[6][5]~273_combout\))) # (!\ExtWord~input_o\ & (\Shifter|stage[6][37]~421_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[6][5]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|stage[6][37]~421_combout\,
	datad => \Shifter|stage[6][5]~273_combout\,
	combout => \Shifter|stage[6][5]~422_combout\);

-- Location: LCCOMB_X69_Y42_N20
\Y_internal~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~23_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~22_combout\ & (\Shifter|stage[6][58]~274_combout\)) # (!\Y_internal~22_combout\ & ((\Shifter|stage[6][5]~422_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Shifter|stage[6][58]~274_combout\,
	datac => \Y_internal~22_combout\,
	datad => \Shifter|stage[6][5]~422_combout\,
	combout => \Y_internal~23_combout\);

-- Location: LCCOMB_X70_Y46_N30
\Y_internal~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~21_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & !\LogicFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~21_combout\);

-- Location: LCCOMB_X70_Y46_N16
\Y_internal~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~24_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~21_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~23_combout\)))) # (!\Equal1~0_combout\ & (\Y_internal~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~23_combout\,
	datab => \Equal1~0_combout\,
	datac => \Y_internal~21_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~24_combout\);

-- Location: LCCOMB_X70_Y41_N2
\Shifter|stage[6][57]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][57]~287_combout\ = (\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & ((\ShiftCount[5]~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\ShiftCount[5]~0_combout\ & 
-- ((\Shifter|stage[3][57]~419_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~256_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[3][57]~419_combout\,
	combout => \Shifter|stage[6][57]~287_combout\);

-- Location: LCCOMB_X68_Y40_N8
\Shifter|stage[3][30]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][30]~283_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][34]~193_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[3][30]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][34]~193_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[3][30]~180_combout\,
	combout => \Shifter|stage[3][30]~283_combout\);

-- Location: LCCOMB_X68_Y40_N10
\Shifter|stage[3][22]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][22]~284_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][26]~182_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][22]~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][26]~182_combout\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][22]~185_combout\,
	combout => \Shifter|stage[3][22]~284_combout\);

-- Location: LCCOMB_X67_Y42_N18
\Shifter|stage[4][22]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][22]~285_combout\ = (\B[3]~input_o\ & (\Shifter|stage[3][30]~283_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[3][22]~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[3][30]~283_combout\,
	datad => \Shifter|stage[3][22]~284_combout\,
	combout => \Shifter|stage[4][22]~285_combout\);

-- Location: LCCOMB_X68_Y40_N14
\Shifter|stage[3][14]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][14]~281_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][18]~187_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][14]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][18]~187_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][14]~208_combout\,
	combout => \Shifter|stage[3][14]~281_combout\);

-- Location: LCCOMB_X67_Y42_N16
\Shifter|stage[6][6]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][6]~282_combout\ = (\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[6][7]~254_combout\) # ((\Shifter|stage[3][14]~281_combout\)))) # (!\Shifter|stage[6][7]~256_combout\ & (!\Shifter|stage[6][7]~254_combout\ & 
-- (\Shifter|stage[2][6]~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~256_combout\,
	datab => \Shifter|stage[6][7]~254_combout\,
	datac => \Shifter|stage[2][6]~204_combout\,
	datad => \Shifter|stage[3][14]~281_combout\,
	combout => \Shifter|stage[6][6]~282_combout\);

-- Location: LCCOMB_X67_Y42_N12
\Shifter|stage[6][6]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][6]~286_combout\ = (\Shifter|stage[6][7]~254_combout\ & ((\Shifter|stage[6][6]~282_combout\ & (\Shifter|stage[4][22]~285_combout\)) # (!\Shifter|stage[6][6]~282_combout\ & ((\Shifter|stage[2][10]~210_combout\))))) # 
-- (!\Shifter|stage[6][7]~254_combout\ & (((\Shifter|stage[6][6]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][22]~285_combout\,
	datab => \Shifter|stage[6][7]~254_combout\,
	datac => \Shifter|stage[2][10]~210_combout\,
	datad => \Shifter|stage[6][6]~282_combout\,
	combout => \Shifter|stage[6][6]~286_combout\);

-- Location: LCCOMB_X70_Y40_N22
\Shifter|stage[4][42]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][42]~275_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][50]~173_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][42]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][50]~173_combout\,
	datac => \Shifter|stage[2][42]~191_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][42]~275_combout\);

-- Location: LCCOMB_X70_Y40_N0
\Shifter|stage[4][38]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][38]~276_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][42]~275_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][38]~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][42]~275_combout\,
	datab => \Shifter|stage[4][38]~199_combout\,
	datac => \B[2]~input_o\,
	combout => \Shifter|stage[4][38]~276_combout\);

-- Location: LCCOMB_X70_Y40_N30
\Shifter|stage[4][54]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][54]~279_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][58]~177_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][54]~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][58]~177_combout\,
	datad => \Shifter|stage[2][54]~171_combout\,
	combout => \Shifter|stage[4][54]~279_combout\);

-- Location: LCCOMB_X70_Y40_N26
\Shifter|stage[4][54]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][54]~277_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Shifter|stage[4][54]~277_combout\);

-- Location: LCCOMB_X70_Y40_N12
\Shifter|stage[4][54]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][54]~278_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[4][54]~277_combout\ & ((\Shifter|stage[1][62]~58_combout\))) # (!\Shifter|stage[4][54]~277_combout\ & (\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[4][54]~277_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[1][62]~58_combout\,
	combout => \Shifter|stage[4][54]~278_combout\);

-- Location: LCCOMB_X70_Y40_N16
\Shifter|stage[6][38]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][38]~280_combout\ = (\B[4]~input_o\ & (((\Shifter|stage[4][54]~279_combout\) # (\Shifter|stage[4][54]~278_combout\)))) # (!\B[4]~input_o\ & (\Shifter|stage[4][38]~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[4][38]~276_combout\,
	datac => \Shifter|stage[4][54]~279_combout\,
	datad => \Shifter|stage[4][54]~278_combout\,
	combout => \Shifter|stage[6][38]~280_combout\);

-- Location: LCCOMB_X68_Y42_N0
\Shifter|stage[6][6]~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][6]~423_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\Shifter|stage[6][6]~286_combout\)) # (!\ExtWord~input_o\ & ((\Shifter|stage[6][38]~280_combout\))))) # (!\B[5]~input_o\ & (\Shifter|stage[6][6]~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shifter|stage[6][6]~286_combout\,
	datac => \ExtWord~input_o\,
	datad => \Shifter|stage[6][38]~280_combout\,
	combout => \Shifter|stage[6][6]~423_combout\);

-- Location: LCCOMB_X69_Y44_N18
\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y44_N2
\Y_internal~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~26_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\) # ((!\Y_internal~5_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~5_combout\ & \LogicUnit|Y~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\,
	datac => \Y_internal~5_combout\,
	datad => \LogicUnit|Y~3_combout\,
	combout => \Y_internal~26_combout\);

-- Location: LCCOMB_X69_Y44_N10
\Y_internal~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~27_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~26_combout\ & (\Shifter|stage[6][57]~287_combout\)) # (!\Y_internal~26_combout\ & ((\Shifter|stage[6][6]~423_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][57]~287_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][6]~423_combout\,
	datad => \Y_internal~26_combout\,
	combout => \Y_internal~27_combout\);

-- Location: LCCOMB_X69_Y44_N0
\Y_internal~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~25_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\LogicFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~25_combout\);

-- Location: LCCOMB_X69_Y44_N20
\Y_internal~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~28_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~25_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~27_combout\)))) # (!\Equal1~0_combout\ & (((\Y_internal~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~27_combout\,
	datad => \Y_internal~25_combout\,
	combout => \Y_internal~28_combout\);

-- Location: LCCOMB_X66_Y40_N26
\Shifter|stage[3][23]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][23]~297_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][27]~227_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][23]~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][27]~227_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][23]~229_combout\,
	combout => \Shifter|stage[3][23]~297_combout\);

-- Location: LCCOMB_X66_Y40_N8
\Shifter|stage[4][23]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][23]~296_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shifter|stage[2][35]~237_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][31]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][31]~225_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][35]~237_combout\,
	combout => \Shifter|stage[4][23]~296_combout\);

-- Location: LCCOMB_X67_Y39_N18
\Shifter|stage[4][23]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][23]~298_combout\ = (\Shifter|stage[4][23]~296_combout\) # ((\Shifter|stage[3][23]~297_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[3][23]~297_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[4][23]~296_combout\,
	combout => \Shifter|stage[4][23]~298_combout\);

-- Location: LCCOMB_X67_Y39_N14
\Shifter|stage[3][15]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[3][15]~294_combout\ = (\B[2]~input_o\ & (\Shifter|stage[2][19]~230_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][15]~242_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][19]~230_combout\,
	datab => \B[2]~input_o\,
	datad => \Shifter|stage[2][15]~242_combout\,
	combout => \Shifter|stage[3][15]~294_combout\);

-- Location: LCCOMB_X67_Y39_N0
\Shifter|stage[6][7]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][7]~295_combout\ = (\Shifter|stage[6][7]~254_combout\ & (((\Shifter|stage[6][7]~256_combout\)))) # (!\Shifter|stage[6][7]~254_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|stage[3][15]~294_combout\)) # 
-- (!\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[2][7]~240_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~254_combout\,
	datab => \Shifter|stage[3][15]~294_combout\,
	datac => \Shifter|stage[6][7]~256_combout\,
	datad => \Shifter|stage[2][7]~240_combout\,
	combout => \Shifter|stage[6][7]~295_combout\);

-- Location: LCCOMB_X67_Y39_N20
\Shifter|stage[6][7]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][7]~299_combout\ = (\Shifter|stage[6][7]~254_combout\ & ((\Shifter|stage[6][7]~295_combout\ & ((\Shifter|stage[4][23]~298_combout\))) # (!\Shifter|stage[6][7]~295_combout\ & (\Shifter|stage[2][11]~243_combout\)))) # 
-- (!\Shifter|stage[6][7]~254_combout\ & (((\Shifter|stage[6][7]~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][11]~243_combout\,
	datab => \Shifter|stage[4][23]~298_combout\,
	datac => \Shifter|stage[6][7]~254_combout\,
	datad => \Shifter|stage[6][7]~295_combout\,
	combout => \Shifter|stage[6][7]~299_combout\);

-- Location: LCCOMB_X68_Y39_N4
\Shifter|stage[4][43]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][43]~291_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][51]~217_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][43]~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][43]~236_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][51]~217_combout\,
	combout => \Shifter|stage[4][43]~291_combout\);

-- Location: LCCOMB_X67_Y39_N2
\Shifter|stage[4][39]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][39]~292_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][43]~291_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][39]~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][39]~235_combout\,
	datab => \B[2]~input_o\,
	datad => \Shifter|stage[4][43]~291_combout\,
	combout => \Shifter|stage[4][39]~292_combout\);

-- Location: LCCOMB_X67_Y39_N6
\Shifter|stage[4][55]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][55]~289_combout\ = (\Shifter|stage[4][54]~277_combout\ & ((\B[0]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[0]~input_o\ & ((\Shifter|stage_in[63]~132_combout\))))) # (!\Shifter|stage[4][54]~277_combout\ & 
-- (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[4][54]~277_combout\,
	datac => \Shifter|stage_in[63]~132_combout\,
	datad => \B[0]~input_o\,
	combout => \Shifter|stage[4][55]~289_combout\);

-- Location: LCCOMB_X68_Y39_N18
\Shifter|stage[4][55]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][55]~288_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][59]~221_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][55]~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][59]~221_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][55]~216_combout\,
	combout => \Shifter|stage[4][55]~288_combout\);

-- Location: LCCOMB_X67_Y39_N24
\Shifter|stage[4][55]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][55]~290_combout\ = (\Shifter|stage[4][55]~288_combout\) # ((\Shifter|stage[4][55]~289_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][55]~289_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[4][55]~288_combout\,
	combout => \Shifter|stage[4][55]~290_combout\);

-- Location: LCCOMB_X67_Y39_N12
\Shifter|stage[6][39]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][39]~293_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[4][55]~290_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][39]~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[4][39]~292_combout\,
	datad => \Shifter|stage[4][55]~290_combout\,
	combout => \Shifter|stage[6][39]~293_combout\);

-- Location: LCCOMB_X67_Y39_N28
\Shifter|stage[6][7]~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][7]~424_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\Shifter|stage[6][7]~299_combout\)) # (!\ExtWord~input_o\ & ((\Shifter|stage[6][39]~293_combout\))))) # (!\B[5]~input_o\ & (((\Shifter|stage[6][7]~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|stage[6][7]~299_combout\,
	datad => \Shifter|stage[6][39]~293_combout\,
	combout => \Shifter|stage[6][7]~424_combout\);

-- Location: LCCOMB_X69_Y44_N4
\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\B[7]~input_o\ $ (\A[7]~input_o\ $ (\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y44_N4
\Y_internal~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~30_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\LogicUnit|Y~4_combout\))))) # (!\Y_internal~5_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\,
	datab => \LogicUnit|Y~4_combout\,
	datac => \Y_internal~5_combout\,
	datad => \Y_internal~4_combout\,
	combout => \Y_internal~30_combout\);

-- Location: LCCOMB_X66_Y42_N0
\Shifter|stage[6][56]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][56]~300_combout\ = (\ShiftCount[5]~0_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & 
-- ((\Shifter|stage[3][56]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[3][56]~63_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[6][7]~256_combout\,
	combout => \Shifter|stage[6][56]~300_combout\);

-- Location: LCCOMB_X68_Y44_N14
\Y_internal~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~31_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~30_combout\ & ((\Shifter|stage[6][56]~300_combout\))) # (!\Y_internal~30_combout\ & (\Shifter|stage[6][7]~424_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~424_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Y_internal~30_combout\,
	datad => \Shifter|stage[6][56]~300_combout\,
	combout => \Y_internal~31_combout\);

-- Location: LCCOMB_X69_Y44_N14
\Y_internal~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~29_combout\ = (\LogicFN[0]~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[7]~input_o\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LogicFN[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Y_internal~29_combout\);

-- Location: LCCOMB_X69_Y44_N24
\Y_internal~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~32_combout\ = (\LogicFN[1]~input_o\ & ((\Equal1~0_combout\ & ((\Y_internal~29_combout\))) # (!\Equal1~0_combout\ & (\Y_internal~31_combout\)))) # (!\LogicFN[1]~input_o\ & (\Y_internal~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~31_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~29_combout\,
	datad => \Equal1~0_combout\,
	combout => \Y_internal~32_combout\);

-- Location: LCCOMB_X67_Y39_N30
\Shifter|stage[6][55]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][55]~311_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][55]~290_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datad => \Shifter|stage[4][55]~290_combout\,
	combout => \Shifter|stage[6][55]~311_combout\);

-- Location: LCCOMB_X65_Y38_N22
\Shifter|stage[4][24]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][24]~302_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shifter|stage[2][32]~95_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][24]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][24]~71_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][32]~95_combout\,
	combout => \Shifter|stage[4][24]~302_combout\);

-- Location: LCCOMB_X65_Y38_N0
\Shifter|stage[4][28]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][28]~303_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][36]~87_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][28]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[2][36]~87_combout\,
	datad => \Shifter|stage[2][28]~68_combout\,
	combout => \Shifter|stage[4][28]~303_combout\);

-- Location: LCCOMB_X65_Y38_N18
\Shifter|stage[4][24]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][24]~304_combout\ = (\Shifter|stage[4][24]~302_combout\) # ((\B[2]~input_o\ & \Shifter|stage[4][28]~303_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][24]~302_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][28]~303_combout\,
	combout => \Shifter|stage[4][24]~304_combout\);

-- Location: LCCOMB_X68_Y42_N24
\Shifter|stage[6][14]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][14]~301_combout\ = (\B[3]~input_o\ & (((!\ExtWord~input_o\ & \B[5]~input_o\)) # (!\B[4]~input_o\))) # (!\B[3]~input_o\ & (!\ExtWord~input_o\ & (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][14]~301_combout\);

-- Location: LCCOMB_X67_Y40_N26
\Shifter|stage[6][8]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][8]~305_combout\ = (\Shifter|stage[6][14]~301_combout\ & (((!\Shifter|stage[6][63]~115_combout\)))) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[3][8]~112_combout\)) # 
-- (!\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][24]~304_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][8]~112_combout\,
	datab => \Shifter|stage[4][24]~304_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[6][63]~115_combout\,
	combout => \Shifter|stage[6][8]~305_combout\);

-- Location: LCCOMB_X66_Y38_N18
\Shifter|stage[4][44]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][44]~307_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][52]~52_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][44]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][52]~52_combout\,
	datac => \Shifter|stage[2][44]~84_combout\,
	combout => \Shifter|stage[4][44]~307_combout\);

-- Location: LCCOMB_X66_Y38_N4
\Shifter|stage[4][40]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][40]~308_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][44]~307_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][40]~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][40]~249_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][44]~307_combout\,
	combout => \Shifter|stage[4][40]~308_combout\);

-- Location: LCCOMB_X66_Y42_N10
\Shifter|stage[5][40]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][40]~306_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[3][56]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[3][56]~63_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[5][40]~306_combout\);

-- Location: LCCOMB_X66_Y42_N20
\Shifter|stage[5][40]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][40]~309_combout\ = (\Shifter|stage[5][40]~306_combout\) # ((\Shifter|stage[4][40]~308_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][40]~308_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[5][40]~306_combout\,
	combout => \Shifter|stage[5][40]~309_combout\);

-- Location: LCCOMB_X68_Y42_N2
\Shifter|stage[6][8]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][8]~310_combout\ = (\Shifter|stage[6][8]~305_combout\ & ((\Shifter|stage[5][40]~309_combout\) # ((!\Shifter|stage[6][14]~301_combout\)))) # (!\Shifter|stage[6][8]~305_combout\ & (((\Shifter|stage[3][16]~79_combout\ & 
-- \Shifter|stage[6][14]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][8]~305_combout\,
	datab => \Shifter|stage[5][40]~309_combout\,
	datac => \Shifter|stage[3][16]~79_combout\,
	datad => \Shifter|stage[6][14]~301_combout\,
	combout => \Shifter|stage[6][8]~310_combout\);

-- Location: LCCOMB_X69_Y43_N26
\LogicUnit|Y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Y~32_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \LogicUnit|Y~32_combout\);

-- Location: LCCOMB_X69_Y43_N28
\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ = \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\ $ (\A[8]~input_o\ $ (\AddnSub~input_o\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:0:fa_cin~combout\,
	datab => \A[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y43_N22
\Y_internal~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~34_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\))) # (!\Y_internal~4_combout\ & (\LogicUnit|Y~32_combout\)))) # (!\Y_internal~5_combout\ & 
-- (\Y_internal~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~5_combout\,
	datab => \Y_internal~4_combout\,
	datac => \LogicUnit|Y~32_combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\,
	combout => \Y_internal~34_combout\);

-- Location: LCCOMB_X70_Y44_N16
\Y_internal~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~35_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~34_combout\ & (\Shifter|stage[6][55]~311_combout\)) # (!\Y_internal~34_combout\ & ((\Shifter|stage[6][8]~310_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][55]~311_combout\,
	datab => \Shifter|stage[6][8]~310_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Y_internal~34_combout\,
	combout => \Y_internal~35_combout\);

-- Location: LCCOMB_X69_Y43_N16
\Y_internal~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~33_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[8]~input_o\ & (!\LogicFN[0]~input_o\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Y_internal~33_combout\);

-- Location: LCCOMB_X69_Y43_N8
\Y_internal~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~36_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~33_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~35_combout\)))) # (!\Equal1~0_combout\ & (\Y_internal~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~35_combout\,
	datab => \Equal1~0_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~33_combout\,
	combout => \Y_internal~36_combout\);

-- Location: LCCOMB_X68_Y41_N6
\Shifter|stage[4][45]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][45]~317_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][53]~119_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][45]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][45]~143_combout\,
	datac => \Shifter|stage[2][53]~119_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][45]~317_combout\);

-- Location: LCCOMB_X69_Y41_N8
\Shifter|stage[4][41]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][41]~318_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][45]~317_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][41]~266_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shifter|stage[4][45]~317_combout\,
	datad => \Shifter|stage[4][41]~266_combout\,
	combout => \Shifter|stage[4][41]~318_combout\);

-- Location: LCCOMB_X70_Y41_N20
\Shifter|stage[5][41]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][41]~316_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[3][57]~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][57]~419_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[5][41]~316_combout\);

-- Location: LCCOMB_X70_Y41_N30
\Shifter|stage[5][41]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][41]~319_combout\ = (\Shifter|stage[5][41]~316_combout\) # ((\Shifter|stage[4][41]~318_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][41]~318_combout\,
	datab => \Shifter|stage[5][41]~316_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[5][41]~319_combout\);

-- Location: LCCOMB_X69_Y41_N28
\Shifter|stage[4][29]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][29]~313_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][37]~145_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][29]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][37]~145_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][29]~131_combout\,
	combout => \Shifter|stage[4][29]~313_combout\);

-- Location: LCCOMB_X69_Y41_N2
\Shifter|stage[4][25]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][25]~312_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][33]~151_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][25]~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][33]~151_combout\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][25]~133_combout\,
	combout => \Shifter|stage[4][25]~312_combout\);

-- Location: LCCOMB_X69_Y41_N6
\Shifter|stage[4][25]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][25]~314_combout\ = (\Shifter|stage[4][25]~312_combout\) # ((\B[2]~input_o\ & \Shifter|stage[4][29]~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][29]~313_combout\,
	datad => \Shifter|stage[4][25]~312_combout\,
	combout => \Shifter|stage[4][25]~314_combout\);

-- Location: LCCOMB_X67_Y40_N12
\Shifter|stage[6][9]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][9]~315_combout\ = (\Shifter|stage[6][14]~301_combout\ & (!\Shifter|stage[6][63]~115_combout\)) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[3][9]~165_combout\))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[4][25]~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[4][25]~314_combout\,
	datad => \Shifter|stage[3][9]~165_combout\,
	combout => \Shifter|stage[6][9]~315_combout\);

-- Location: LCCOMB_X67_Y40_N22
\Shifter|stage[6][9]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][9]~320_combout\ = (\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][9]~315_combout\ & (\Shifter|stage[5][41]~319_combout\)) # (!\Shifter|stage[6][9]~315_combout\ & ((\Shifter|stage[3][17]~139_combout\))))) # 
-- (!\Shifter|stage[6][14]~301_combout\ & (((\Shifter|stage[6][9]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[5][41]~319_combout\,
	datac => \Shifter|stage[3][17]~139_combout\,
	datad => \Shifter|stage[6][9]~315_combout\,
	combout => \Shifter|stage[6][9]~320_combout\);

-- Location: LCCOMB_X70_Y40_N2
\Shifter|stage[6][54]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][54]~321_combout\ = (\Shifter|stage[6][63]~115_combout\ & (((\Shifter|stage[4][54]~279_combout\) # (\Shifter|stage[4][54]~278_combout\)))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~115_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \Shifter|stage[4][54]~279_combout\,
	datad => \Shifter|stage[4][54]~278_combout\,
	combout => \Shifter|stage[6][54]~321_combout\);

-- Location: LCCOMB_X69_Y43_N30
\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y43_N12
\Y_internal~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~38_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\) # ((!\Y_internal~5_combout\)))) # (!\Y_internal~4_combout\ & (((\LogicUnit|Y~7_combout\ & \Y_internal~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \LogicUnit|Y~7_combout\,
	datad => \Y_internal~5_combout\,
	combout => \Y_internal~38_combout\);

-- Location: LCCOMB_X69_Y43_N6
\Y_internal~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~39_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~38_combout\ & ((\Shifter|stage[6][54]~321_combout\))) # (!\Y_internal~38_combout\ & (\Shifter|stage[6][9]~320_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Shifter|stage[6][9]~320_combout\,
	datac => \Shifter|stage[6][54]~321_combout\,
	datad => \Y_internal~38_combout\,
	combout => \Y_internal~39_combout\);

-- Location: LCCOMB_X69_Y43_N18
\Y_internal~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~37_combout\ = (\LogicFN[0]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LogicFN[0]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Y_internal~37_combout\);

-- Location: LCCOMB_X69_Y43_N0
\Y_internal~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~40_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~37_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~39_combout\)))) # (!\Equal1~0_combout\ & (\Y_internal~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~39_combout\,
	datab => \Equal1~0_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~37_combout\,
	combout => \Y_internal~40_combout\);

-- Location: LCCOMB_X69_Y40_N26
\Shifter|stage[5][42]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][42]~325_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[3][58]~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[3][58]~178_combout\,
	combout => \Shifter|stage[5][42]~325_combout\);

-- Location: LCCOMB_X68_Y40_N16
\Shifter|stage[4][46]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][46]~326_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][54]~171_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][46]~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][54]~171_combout\,
	datad => \Shifter|stage[2][46]~196_combout\,
	combout => \Shifter|stage[4][46]~326_combout\);

-- Location: LCCOMB_X68_Y40_N18
\Shifter|stage[4][42]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][42]~327_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][46]~326_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][42]~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][46]~326_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][42]~275_combout\,
	combout => \Shifter|stage[4][42]~327_combout\);

-- Location: LCCOMB_X69_Y40_N4
\Shifter|stage[5][42]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][42]~328_combout\ = (\Shifter|stage[5][42]~325_combout\) # ((!\B[4]~input_o\ & \Shifter|stage[4][42]~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[5][42]~325_combout\,
	datad => \Shifter|stage[4][42]~327_combout\,
	combout => \Shifter|stage[5][42]~328_combout\);

-- Location: LCCOMB_X68_Y40_N4
\Shifter|stage[4][26]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][26]~322_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shifter|stage[2][38]~198_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[2][34]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][34]~193_combout\,
	datad => \Shifter|stage[2][38]~198_combout\,
	combout => \Shifter|stage[4][26]~322_combout\);

-- Location: LCCOMB_X68_Y40_N22
\Shifter|stage[4][26]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][26]~323_combout\ = (\Shifter|stage[4][26]~322_combout\) # ((!\B[3]~input_o\ & \Shifter|stage[3][26]~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[3][26]~183_combout\,
	datac => \Shifter|stage[4][26]~322_combout\,
	combout => \Shifter|stage[4][26]~323_combout\);

-- Location: LCCOMB_X67_Y40_N24
\Shifter|stage[6][10]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][10]~324_combout\ = (\Shifter|stage[6][14]~301_combout\ & (!\Shifter|stage[6][63]~115_combout\)) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[3][10]~211_combout\)) # 
-- (!\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][26]~323_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[3][10]~211_combout\,
	datad => \Shifter|stage[4][26]~323_combout\,
	combout => \Shifter|stage[6][10]~324_combout\);

-- Location: LCCOMB_X67_Y40_N2
\Shifter|stage[6][10]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][10]~329_combout\ = (\Shifter|stage[6][10]~324_combout\ & ((\Shifter|stage[5][42]~328_combout\) # ((!\Shifter|stage[6][14]~301_combout\)))) # (!\Shifter|stage[6][10]~324_combout\ & (((\Shifter|stage[6][14]~301_combout\ & 
-- \Shifter|stage[3][18]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[5][42]~328_combout\,
	datab => \Shifter|stage[6][10]~324_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[3][18]~188_combout\,
	combout => \Shifter|stage[6][10]~329_combout\);

-- Location: LCCOMB_X68_Y41_N8
\Shifter|stage[6][53]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][53]~330_combout\ = (\Shifter|stage[6][63]~115_combout\ & (((\Shifter|stage[4][53]~264_combout\) # (\Shifter|stage[4][53]~263_combout\)))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[4][53]~264_combout\,
	datac => \Shifter|stage[6][63]~115_combout\,
	datad => \Shifter|stage[4][53]~263_combout\,
	combout => \Shifter|stage[6][53]~330_combout\);

-- Location: LCCOMB_X72_Y39_N4
\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ = \B[10]~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (\A[10]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \A[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X72_Y39_N20
\Y_internal~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~42_combout\ = (\Y_internal~5_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\LogicUnit|Y~8_combout\))))) # (!\Y_internal~5_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~5_combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\,
	datac => \Y_internal~4_combout\,
	datad => \LogicUnit|Y~8_combout\,
	combout => \Y_internal~42_combout\);

-- Location: LCCOMB_X72_Y39_N14
\Y_internal~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~43_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~42_combout\ & ((\Shifter|stage[6][53]~330_combout\))) # (!\Y_internal~42_combout\ & (\Shifter|stage[6][10]~329_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][10]~329_combout\,
	datab => \Shifter|stage[6][53]~330_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Y_internal~42_combout\,
	combout => \Y_internal~43_combout\);

-- Location: LCCOMB_X72_Y39_N10
\Y_internal~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~41_combout\ = (\LogicFN[0]~input_o\ & (\A[10]~input_o\ & \B[10]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[10]~input_o\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Y_internal~41_combout\);

-- Location: LCCOMB_X72_Y39_N8
\Y_internal~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~44_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~41_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~43_combout\)))) # (!\Equal1~0_combout\ & (((\Y_internal~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~43_combout\,
	datad => \Y_internal~41_combout\,
	combout => \Y_internal~44_combout\);

-- Location: LCCOMB_X66_Y39_N4
\Shifter|stage[5][43]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][43]~335_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[3][59]~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Shifter|stage[3][59]~222_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[5][43]~335_combout\);

-- Location: LCCOMB_X68_Y39_N14
\Shifter|stage[4][47]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][47]~336_combout\ = (\B[3]~input_o\ & ((\Shifter|stage[2][55]~216_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][47]~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shifter|stage[2][47]~233_combout\,
	datad => \Shifter|stage[2][55]~216_combout\,
	combout => \Shifter|stage[4][47]~336_combout\);

-- Location: LCCOMB_X68_Y39_N8
\Shifter|stage[4][43]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][43]~337_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][47]~336_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][43]~291_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][47]~336_combout\,
	datac => \Shifter|stage[4][43]~291_combout\,
	combout => \Shifter|stage[4][43]~337_combout\);

-- Location: LCCOMB_X66_Y39_N22
\Shifter|stage[5][43]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][43]~338_combout\ = (\Shifter|stage[5][43]~335_combout\) # ((!\B[4]~input_o\ & \Shifter|stage[4][43]~337_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[5][43]~335_combout\,
	datad => \Shifter|stage[4][43]~337_combout\,
	combout => \Shifter|stage[5][43]~338_combout\);

-- Location: LCCOMB_X66_Y40_N14
\Shifter|stage[4][31]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][31]~332_combout\ = (\B[3]~input_o\ & (\Shifter|stage[2][39]~234_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][31]~225_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[2][39]~234_combout\,
	datac => \Shifter|stage[2][31]~225_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][31]~332_combout\);

-- Location: LCCOMB_X66_Y40_N28
\Shifter|stage[4][27]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][27]~331_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shifter|stage[2][35]~237_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][27]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][27]~227_combout\,
	datad => \Shifter|stage[2][35]~237_combout\,
	combout => \Shifter|stage[4][27]~331_combout\);

-- Location: LCCOMB_X66_Y40_N16
\Shifter|stage[4][27]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][27]~333_combout\ = (\Shifter|stage[4][27]~331_combout\) # ((\Shifter|stage[4][31]~332_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][31]~332_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][27]~331_combout\,
	combout => \Shifter|stage[4][27]~333_combout\);

-- Location: LCCOMB_X67_Y40_N20
\Shifter|stage[6][11]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][11]~334_combout\ = (\Shifter|stage[6][14]~301_combout\ & (!\Shifter|stage[6][63]~115_combout\)) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[3][11]~244_combout\))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[4][27]~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[4][27]~333_combout\,
	datad => \Shifter|stage[3][11]~244_combout\,
	combout => \Shifter|stage[6][11]~334_combout\);

-- Location: LCCOMB_X67_Y40_N30
\Shifter|stage[6][11]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][11]~339_combout\ = (\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][11]~334_combout\ & ((\Shifter|stage[5][43]~338_combout\))) # (!\Shifter|stage[6][11]~334_combout\ & (\Shifter|stage[3][19]~231_combout\)))) # 
-- (!\Shifter|stage[6][14]~301_combout\ & (((\Shifter|stage[6][11]~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][19]~231_combout\,
	datab => \Shifter|stage[5][43]~338_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[6][11]~334_combout\,
	combout => \Shifter|stage[6][11]~339_combout\);

-- Location: LCCOMB_X66_Y38_N22
\Shifter|stage[6][52]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][52]~340_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][52]~252_combout\) # ((\Shifter|stage[4][52]~251_combout\)))) # (!\Shifter|stage[6][63]~115_combout\ & (((\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~115_combout\,
	datab => \Shifter|stage[4][52]~252_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[4][52]~251_combout\,
	combout => \Shifter|stage[6][52]~340_combout\);

-- Location: LCCOMB_X72_Y39_N22
\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\ = \B[11]~input_o\ $ (\AddnSub~input_o\ $ (\A[11]~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[11]~input_o\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X72_Y39_N28
\Y_internal~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~46_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\) # ((!\Y_internal~5_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~5_combout\ & \LogicUnit|Y~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \Y_internal~5_combout\,
	datad => \LogicUnit|Y~9_combout\,
	combout => \Y_internal~46_combout\);

-- Location: LCCOMB_X72_Y39_N30
\Y_internal~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~47_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~46_combout\ & ((\Shifter|stage[6][52]~340_combout\))) # (!\Y_internal~46_combout\ & (\Shifter|stage[6][11]~339_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][11]~339_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][52]~340_combout\,
	datad => \Y_internal~46_combout\,
	combout => \Y_internal~47_combout\);

-- Location: LCCOMB_X72_Y39_N18
\Y_internal~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~45_combout\ = (\LogicFN[0]~input_o\ & (\B[11]~input_o\ & \A[11]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[11]~input_o\) # (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Y_internal~45_combout\);

-- Location: LCCOMB_X72_Y39_N24
\Y_internal~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~48_combout\ = (\Equal1~0_combout\ & ((\LogicFN[1]~input_o\ & ((\Y_internal~45_combout\))) # (!\LogicFN[1]~input_o\ & (\Y_internal~47_combout\)))) # (!\Equal1~0_combout\ & (((\Y_internal~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~47_combout\,
	datad => \Y_internal~45_combout\,
	combout => \Y_internal~48_combout\);

-- Location: LCCOMB_X66_Y38_N16
\Shifter|stage[4][44]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][44]~344_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][56]~62_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][48]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][56]~62_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shifter|stage[2][48]~55_combout\,
	combout => \Shifter|stage[4][44]~344_combout\);

-- Location: LCCOMB_X66_Y38_N2
\Shifter|stage[4][44]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][44]~345_combout\ = (\Shifter|stage[4][44]~344_combout\) # ((!\B[2]~input_o\ & \Shifter|stage[4][44]~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][44]~344_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][44]~307_combout\,
	combout => \Shifter|stage[4][44]~345_combout\);

-- Location: LCCOMB_X66_Y39_N8
\Shifter|stage[5][44]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][44]~343_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[6][3]~205_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][3]~205_combout\ & ((\Shifter|stage[2][60]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][3]~205_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \Shifter|stage[2][60]~59_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[5][44]~343_combout\);

-- Location: LCCOMB_X66_Y39_N26
\Shifter|stage[5][44]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][44]~346_combout\ = (\Shifter|stage[5][44]~343_combout\) # ((\Shifter|stage[4][44]~345_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][44]~345_combout\,
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[5][44]~343_combout\,
	combout => \Shifter|stage[5][44]~346_combout\);

-- Location: LCCOMB_X65_Y38_N20
\Shifter|stage[4][28]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][28]~341_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][32]~96_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][28]~303_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][28]~303_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][32]~96_combout\,
	combout => \Shifter|stage[4][28]~341_combout\);

-- Location: LCCOMB_X67_Y40_N8
\Shifter|stage[6][12]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][12]~342_combout\ = (\Shifter|stage[6][14]~301_combout\ & (((!\Shifter|stage[6][63]~115_combout\)))) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[3][12]~255_combout\))) # 
-- (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[4][28]~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][28]~341_combout\,
	datab => \Shifter|stage[3][12]~255_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[6][63]~115_combout\,
	combout => \Shifter|stage[6][12]~342_combout\);

-- Location: LCCOMB_X67_Y40_N10
\Shifter|stage[6][12]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][12]~347_combout\ = (\Shifter|stage[6][12]~342_combout\ & ((\Shifter|stage[5][44]~346_combout\) # ((!\Shifter|stage[6][14]~301_combout\)))) # (!\Shifter|stage[6][12]~342_combout\ & (((\Shifter|stage[6][14]~301_combout\ & 
-- \Shifter|stage[3][20]~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[5][44]~346_combout\,
	datab => \Shifter|stage[6][12]~342_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[3][20]~259_combout\,
	combout => \Shifter|stage[6][12]~347_combout\);

-- Location: LCCOMB_X66_Y38_N28
\Shifter|stage[6][51]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][51]~348_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][51]~223_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[4][51]~223_combout\,
	combout => \Shifter|stage[6][51]~348_combout\);

-- Location: LCCOMB_X73_Y42_N28
\Y_internal~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~51_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~51_combout\);

-- Location: LCCOMB_X73_Y43_N26
\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ = \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\A[12]~input_o\ $ (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y43_N8
\Y_internal~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~49_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # ((\LogicUnit|Y~6_combout\)))) # (!\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicUnit|Y~6_combout\,
	datad => \B[0]~input_o\,
	combout => \Y_internal~49_combout\);

-- Location: LCCOMB_X73_Y43_N2
\Y_internal~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~50_combout\ = (\LogicFN[1]~input_o\ & ((\A[12]~input_o\ & ((\B[12]~input_o\) # (!\Y_internal~49_combout\))) # (!\A[12]~input_o\ & (!\Y_internal~49_combout\ & \B[12]~input_o\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~49_combout\,
	datad => \B[12]~input_o\,
	combout => \Y_internal~50_combout\);

-- Location: LCCOMB_X74_Y39_N0
\Y_internal~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~52_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & ((\Y_internal~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\,
	datad => \Y_internal~50_combout\,
	combout => \Y_internal~52_combout\);

-- Location: LCCOMB_X74_Y39_N26
\Y_internal~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~53_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~52_combout\ & ((\Shifter|stage[6][51]~348_combout\))) # (!\Y_internal~52_combout\ & (\Shifter|stage[6][12]~347_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Shifter|stage[6][12]~347_combout\,
	datac => \Shifter|stage[6][51]~348_combout\,
	datad => \Y_internal~52_combout\,
	combout => \Y_internal~53_combout\);

-- Location: LCCOMB_X68_Y41_N2
\Shifter|stage[5][45]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][45]~351_combout\ = (\Shifter|stage[6][3]~205_combout\ & (((\Shifter|sign_bit~0_combout\)))) # (!\Shifter|stage[6][3]~205_combout\ & ((\Shifter|stage[2][61]~123_combout\) # ((\Shifter|stage[2][61]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][61]~123_combout\,
	datab => \Shifter|stage[2][61]~124_combout\,
	datac => \Shifter|stage[6][3]~205_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[5][45]~351_combout\);

-- Location: LCCOMB_X68_Y41_N20
\Shifter|stage[4][45]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][45]~352_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shifter|stage[2][57]~127_combout\))) # (!\B[3]~input_o\ & (\Shifter|stage[2][49]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[2][49]~121_combout\,
	datac => \Shifter|stage[2][57]~127_combout\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][45]~352_combout\);

-- Location: LCCOMB_X68_Y41_N14
\Shifter|stage[4][45]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][45]~353_combout\ = (\Shifter|stage[4][45]~352_combout\) # ((!\B[2]~input_o\ & \Shifter|stage[4][45]~317_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][45]~352_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][45]~317_combout\,
	combout => \Shifter|stage[4][45]~353_combout\);

-- Location: LCCOMB_X69_Y41_N4
\Shifter|stage[5][45]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][45]~354_combout\ = (\B[4]~input_o\ & (\Shifter|stage[5][45]~351_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][45]~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[5][45]~351_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][45]~353_combout\,
	combout => \Shifter|stage[5][45]~354_combout\);

-- Location: LCCOMB_X69_Y41_N10
\Shifter|stage[4][29]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][29]~349_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][33]~152_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][29]~313_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][33]~152_combout\,
	datad => \Shifter|stage[4][29]~313_combout\,
	combout => \Shifter|stage[4][29]~349_combout\);

-- Location: LCCOMB_X67_Y40_N28
\Shifter|stage[6][13]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][13]~350_combout\ = (\Shifter|stage[6][14]~301_combout\ & (!\Shifter|stage[6][63]~115_combout\)) # (!\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[3][13]~268_combout\)) # 
-- (!\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][29]~349_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[3][13]~268_combout\,
	datad => \Shifter|stage[4][29]~349_combout\,
	combout => \Shifter|stage[6][13]~350_combout\);

-- Location: LCCOMB_X67_Y40_N6
\Shifter|stage[6][13]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][13]~355_combout\ = (\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][13]~350_combout\ & (\Shifter|stage[5][45]~354_combout\)) # (!\Shifter|stage[6][13]~350_combout\ & ((\Shifter|stage[3][21]~271_combout\))))) # 
-- (!\Shifter|stage[6][14]~301_combout\ & (((\Shifter|stage[6][13]~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[5][45]~354_combout\,
	datac => \Shifter|stage[3][21]~271_combout\,
	datad => \Shifter|stage[6][13]~350_combout\,
	combout => \Shifter|stage[6][13]~355_combout\);

-- Location: LCCOMB_X69_Y40_N6
\Shifter|stage[6][50]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][50]~356_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][50]~179_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datac => \Shifter|stage[6][63]~115_combout\,
	datad => \Shifter|stage[4][50]~179_combout\,
	combout => \Shifter|stage[6][50]~356_combout\);

-- Location: LCCOMB_X73_Y43_N20
\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\ = \B[13]~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (\A[13]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y43_N12
\Y_internal~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~287_combout\ = (\LogicFN[0]~input_o\ & ((\B[13]~input_o\ & (\A[13]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[13]~input_o\) # ((\A[13]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~287_combout\);

-- Location: LCCOMB_X73_Y43_N14
\Y_internal~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~288_combout\ = (\Y_internal~287_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Y_internal~287_combout\,
	combout => \Y_internal~288_combout\);

-- Location: LCCOMB_X73_Y43_N28
\Y_internal~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~54_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~288_combout\ & \Y_internal~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\,
	datac => \Y_internal~288_combout\,
	datad => \Y_internal~51_combout\,
	combout => \Y_internal~54_combout\);

-- Location: LCCOMB_X75_Y40_N18
\Y_internal~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~55_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~54_combout\ & ((\Shifter|stage[6][50]~356_combout\))) # (!\Y_internal~54_combout\ & (\Shifter|stage[6][13]~355_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][13]~355_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][50]~356_combout\,
	datad => \Y_internal~54_combout\,
	combout => \Y_internal~55_combout\);

-- Location: LCCOMB_X70_Y43_N24
\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\ = \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y43_N28
\Y_internal~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~56_combout\ = (\LogicFN[0]~input_o\ & (((\LogicUnit|Y~5_combout\) # (\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[2]~input_o\ & ((!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \LogicUnit|Y~5_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~56_combout\);

-- Location: LCCOMB_X70_Y43_N6
\Y_internal~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~57_combout\ = (\LogicFN[1]~input_o\ & ((\A[14]~input_o\ & ((\B[14]~input_o\) # (!\Y_internal~56_combout\))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & !\Y_internal~56_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \Y_internal~56_combout\,
	combout => \Y_internal~57_combout\);

-- Location: LCCOMB_X70_Y43_N8
\Y_internal~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~58_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~51_combout\ & \Y_internal~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\,
	datac => \Y_internal~51_combout\,
	datad => \Y_internal~57_combout\,
	combout => \Y_internal~58_combout\);

-- Location: LCCOMB_X70_Y40_N20
\Shifter|stage[5][46]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][46]~360_combout\ = (\B[3]~input_o\ & (((\Shifter|sign_bit~0_combout\)))) # (!\B[3]~input_o\ & ((\Shifter|stage[4][54]~277_combout\ & ((\Shifter|stage[1][62]~58_combout\))) # (!\Shifter|stage[4][54]~277_combout\ & 
-- (\Shifter|sign_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[4][54]~277_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[1][62]~58_combout\,
	combout => \Shifter|stage[5][46]~360_combout\);

-- Location: LCCOMB_X70_Y40_N6
\Shifter|stage[4][46]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][46]~361_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][58]~177_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][50]~173_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shifter|stage[2][58]~177_combout\,
	datad => \Shifter|stage[2][50]~173_combout\,
	combout => \Shifter|stage[4][46]~361_combout\);

-- Location: LCCOMB_X66_Y45_N24
\Shifter|stage[4][46]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][46]~362_combout\ = (\Shifter|stage[4][46]~361_combout\) # ((\Shifter|stage[4][46]~326_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][46]~326_combout\,
	datab => \B[2]~input_o\,
	datad => \Shifter|stage[4][46]~361_combout\,
	combout => \Shifter|stage[4][46]~362_combout\);

-- Location: LCCOMB_X66_Y45_N18
\Shifter|stage[5][46]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][46]~363_combout\ = (\B[4]~input_o\ & (\Shifter|stage[5][46]~360_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][46]~362_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shifter|stage[5][46]~360_combout\,
	datad => \Shifter|stage[4][46]~362_combout\,
	combout => \Shifter|stage[5][46]~363_combout\);

-- Location: LCCOMB_X68_Y40_N28
\Shifter|stage[4][30]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][30]~357_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shifter|stage[2][42]~191_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[2][38]~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[2][42]~191_combout\,
	datab => \Shifter|stage[2][38]~198_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shifter|stage[4][30]~357_combout\);

-- Location: LCCOMB_X68_Y40_N30
\Shifter|stage[4][30]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][30]~358_combout\ = (\Shifter|stage[4][30]~357_combout\) # ((!\B[3]~input_o\ & \Shifter|stage[3][30]~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[3][30]~283_combout\,
	datad => \Shifter|stage[4][30]~357_combout\,
	combout => \Shifter|stage[4][30]~358_combout\);

-- Location: LCCOMB_X67_Y40_N16
\Shifter|stage[6][14]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][14]~359_combout\ = (\Shifter|stage[6][63]~115_combout\ & (\Shifter|stage[3][14]~281_combout\ & (!\Shifter|stage[6][14]~301_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (((\Shifter|stage[6][14]~301_combout\) # 
-- (\Shifter|stage[4][30]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][14]~281_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[4][30]~358_combout\,
	combout => \Shifter|stage[6][14]~359_combout\);

-- Location: LCCOMB_X67_Y40_N18
\Shifter|stage[6][14]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][14]~364_combout\ = (\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][14]~359_combout\ & ((\Shifter|stage[5][46]~363_combout\))) # (!\Shifter|stage[6][14]~359_combout\ & (\Shifter|stage[3][22]~284_combout\)))) # 
-- (!\Shifter|stage[6][14]~301_combout\ & (((\Shifter|stage[6][14]~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[3][22]~284_combout\,
	datac => \Shifter|stage[5][46]~363_combout\,
	datad => \Shifter|stage[6][14]~359_combout\,
	combout => \Shifter|stage[6][14]~364_combout\);

-- Location: LCCOMB_X70_Y41_N16
\Shifter|stage[6][49]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][49]~365_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][49]~128_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[4][49]~128_combout\,
	combout => \Shifter|stage[6][49]~365_combout\);

-- Location: LCCOMB_X66_Y36_N16
\Y_internal~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~59_combout\ = (\Y_internal~58_combout\ & (((\Shifter|stage[6][49]~365_combout\) # (!\Y_internal~3_combout\)))) # (!\Y_internal~58_combout\ & (\Shifter|stage[6][14]~364_combout\ & ((\Y_internal~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~58_combout\,
	datab => \Shifter|stage[6][14]~364_combout\,
	datac => \Shifter|stage[6][49]~365_combout\,
	datad => \Y_internal~3_combout\,
	combout => \Y_internal~59_combout\);

-- Location: LCCOMB_X70_Y43_N26
\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ = \A[15]~input_o\ $ (\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\ $ (\B[15]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|cout~0_combout\,
	datac => \B[15]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y43_N18
\Y_internal~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~285_combout\ = (\LogicFN[0]~input_o\ & ((\A[15]~input_o\ & (\B[15]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[15]~input_o\) # ((\B[15]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~285_combout\);

-- Location: LCCOMB_X70_Y43_N12
\Y_internal~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~286_combout\ = (\Y_internal~285_combout\ & ((\LogicFN[1]~input_o\) # ((\B[3]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Y_internal~285_combout\,
	datac => \B[3]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~286_combout\);

-- Location: LCCOMB_X70_Y43_N20
\Y_internal~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~60_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & ((\Y_internal~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\,
	datad => \Y_internal~286_combout\,
	combout => \Y_internal~60_combout\);

-- Location: LCCOMB_X66_Y40_N10
\Shifter|stage[4][31]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][31]~366_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][35]~238_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][31]~332_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][31]~332_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][35]~238_combout\,
	combout => \Shifter|stage[4][31]~366_combout\);

-- Location: LCCOMB_X67_Y40_N4
\Shifter|stage[6][15]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][15]~367_combout\ = (\Shifter|stage[6][63]~115_combout\ & (((!\Shifter|stage[6][14]~301_combout\ & \Shifter|stage[3][15]~294_combout\)))) # (!\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][31]~366_combout\) # 
-- ((\Shifter|stage[6][14]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][31]~366_combout\,
	datab => \Shifter|stage[6][63]~115_combout\,
	datac => \Shifter|stage[6][14]~301_combout\,
	datad => \Shifter|stage[3][15]~294_combout\,
	combout => \Shifter|stage[6][15]~367_combout\);

-- Location: LCCOMB_X67_Y41_N4
\Shifter|stage[5][47]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][47]~368_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[4][63]~116_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[4][63]~116_combout\ & (\Shifter|stage_in[63]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][63]~116_combout\,
	datab => \Shifter|stage_in[63]~132_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[5][47]~368_combout\);

-- Location: LCCOMB_X68_Y39_N26
\Shifter|stage[4][47]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][47]~369_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shifter|stage[2][59]~221_combout\)) # (!\B[3]~input_o\ & ((\Shifter|stage[2][51]~217_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shifter|stage[2][59]~221_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[2][51]~217_combout\,
	combout => \Shifter|stage[4][47]~369_combout\);

-- Location: LCCOMB_X68_Y39_N12
\Shifter|stage[4][47]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][47]~370_combout\ = (\Shifter|stage[4][47]~369_combout\) # ((\Shifter|stage[4][47]~336_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][47]~369_combout\,
	datab => \Shifter|stage[4][47]~336_combout\,
	datac => \B[2]~input_o\,
	combout => \Shifter|stage[4][47]~370_combout\);

-- Location: LCCOMB_X67_Y41_N6
\Shifter|stage[5][47]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[5][47]~371_combout\ = (\Shifter|stage[5][47]~368_combout\) # ((!\B[4]~input_o\ & \Shifter|stage[4][47]~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shifter|stage[5][47]~368_combout\,
	datad => \Shifter|stage[4][47]~370_combout\,
	combout => \Shifter|stage[5][47]~371_combout\);

-- Location: LCCOMB_X67_Y40_N14
\Shifter|stage[6][15]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][15]~372_combout\ = (\Shifter|stage[6][14]~301_combout\ & ((\Shifter|stage[6][15]~367_combout\ & ((\Shifter|stage[5][47]~371_combout\))) # (!\Shifter|stage[6][15]~367_combout\ & (\Shifter|stage[3][23]~297_combout\)))) # 
-- (!\Shifter|stage[6][14]~301_combout\ & (\Shifter|stage[6][15]~367_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][14]~301_combout\,
	datab => \Shifter|stage[6][15]~367_combout\,
	datac => \Shifter|stage[3][23]~297_combout\,
	datad => \Shifter|stage[5][47]~371_combout\,
	combout => \Shifter|stage[6][15]~372_combout\);

-- Location: LCCOMB_X66_Y42_N14
\Shifter|stage[6][48]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][48]~373_combout\ = (\Shifter|stage[6][63]~115_combout\ & ((\Shifter|stage[4][48]~64_combout\))) # (!\Shifter|stage[6][63]~115_combout\ & (\Shifter|sign_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[4][48]~64_combout\,
	datac => \Shifter|stage[6][63]~115_combout\,
	combout => \Shifter|stage[6][48]~373_combout\);

-- Location: LCCOMB_X69_Y42_N6
\Y_internal~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~61_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~60_combout\ & ((\Shifter|stage[6][48]~373_combout\))) # (!\Y_internal~60_combout\ & (\Shifter|stage[6][15]~372_combout\)))) # (!\Y_internal~3_combout\ & (\Y_internal~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Y_internal~60_combout\,
	datac => \Shifter|stage[6][15]~372_combout\,
	datad => \Shifter|stage[6][48]~373_combout\,
	combout => \Y_internal~61_combout\);

-- Location: LCCOMB_X74_Y42_N28
\Y_internal~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~283_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[16]~input_o\ & ((\B[16]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\B[16]~input_o\ & 
-- (!\LogicFN[1]~input_o\ & !\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~283_combout\);

-- Location: LCCOMB_X74_Y42_N14
\Y_internal~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~284_combout\ = (\Y_internal~283_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Y_internal~283_combout\,
	combout => \Y_internal~284_combout\);

-- Location: LCCOMB_X74_Y42_N12
\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ = \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\ $ (\B[16]~input_o\ $ (\AddnSub~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:0:fa_cin~combout\,
	datab => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[16]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X65_Y42_N10
\Y_internal~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~62_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\) # (!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (\Y_internal~284_combout\ & ((\Y_internal~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~284_combout\,
	datab => \Y_internal~4_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\,
	datad => \Y_internal~51_combout\,
	combout => \Y_internal~62_combout\);

-- Location: LCCOMB_X65_Y38_N30
\Shifter|stage[4][32]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][32]~374_combout\ = (\B[2]~input_o\ & (\Shifter|stage[4][36]~88_combout\)) # (!\B[2]~input_o\ & ((\Shifter|stage[4][32]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][36]~88_combout\,
	datac => \B[2]~input_o\,
	datad => \Shifter|stage[4][32]~96_combout\,
	combout => \Shifter|stage[4][32]~374_combout\);

-- Location: LCCOMB_X66_Y42_N16
\Shifter|stage[6][16]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][16]~375_combout\ = (\ShiftCount[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][32]~374_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][16]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][32]~374_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][16]~80_combout\,
	combout => \Shifter|stage[6][16]~375_combout\);

-- Location: LCCOMB_X66_Y42_N18
\Shifter|stage[6][16]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][16]~376_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][16]~375_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][16]~375_combout\ & ((\Shifter|stage[4][48]~64_combout\))))) # (!\ShiftCount[5]~0_combout\ & 
-- (((\Shifter|stage[6][16]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[4][48]~64_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[6][16]~375_combout\,
	combout => \Shifter|stage[6][16]~376_combout\);

-- Location: LCCOMB_X68_Y42_N18
\Shifter|stage[6][47]~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][47]~425_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[5][47]~371_combout\))) # (!\ExtWord~input_o\ & (\Shifter|sign_bit~0_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[5][47]~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[5][47]~371_combout\,
	combout => \Shifter|stage[6][47]~425_combout\);

-- Location: LCCOMB_X65_Y42_N4
\Y_internal~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~63_combout\ = (\Y_internal~62_combout\ & (((\Shifter|stage[6][47]~425_combout\) # (!\Y_internal~3_combout\)))) # (!\Y_internal~62_combout\ & (\Shifter|stage[6][16]~376_combout\ & (\Y_internal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~62_combout\,
	datab => \Shifter|stage[6][16]~376_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Shifter|stage[6][47]~425_combout\,
	combout => \Y_internal~63_combout\);

-- Location: LCCOMB_X74_Y39_N20
\Y_internal~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~64_combout\ = (\LogicFN[0]~input_o\ & ((\LogicUnit|Y~10_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((\B[5]~input_o\ & !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicUnit|Y~10_combout\,
	datac => \B[5]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~64_combout\);

-- Location: LCCOMB_X74_Y39_N6
\Y_internal~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~65_combout\ = (\LogicFN[1]~input_o\ & ((\A[17]~input_o\ & ((\B[17]~input_o\) # (!\Y_internal~64_combout\))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & !\Y_internal~64_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[17]~input_o\,
	datad => \Y_internal~64_combout\,
	combout => \Y_internal~65_combout\);

-- Location: LCCOMB_X74_Y39_N28
\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ = \A[17]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (\B[17]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X74_Y39_N8
\Y_internal~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~66_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\) # (!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (\Y_internal~65_combout\ & ((\Y_internal~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~65_combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Y_internal~4_combout\,
	datad => \Y_internal~51_combout\,
	combout => \Y_internal~66_combout\);

-- Location: LCCOMB_X69_Y41_N14
\Shifter|stage[4][33]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][33]~377_combout\ = (\B[2]~input_o\ & ((\Shifter|stage[4][37]~146_combout\))) # (!\B[2]~input_o\ & (\Shifter|stage[4][33]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shifter|stage[4][33]~152_combout\,
	datad => \Shifter|stage[4][37]~146_combout\,
	combout => \Shifter|stage[4][33]~377_combout\);

-- Location: LCCOMB_X70_Y41_N18
\Shifter|stage[6][17]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][17]~378_combout\ = (\ShiftCount[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][33]~377_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][17]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][17]~140_combout\,
	datab => \Shifter|stage[4][33]~377_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][17]~378_combout\);

-- Location: LCCOMB_X70_Y41_N4
\Shifter|stage[6][17]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][17]~379_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][17]~378_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][17]~378_combout\ & ((\Shifter|stage[4][49]~128_combout\))))) # (!\ShiftCount[5]~0_combout\ & 
-- (\Shifter|stage[6][17]~378_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[6][17]~378_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[4][49]~128_combout\,
	combout => \Shifter|stage[6][17]~379_combout\);

-- Location: LCCOMB_X66_Y39_N18
\Shifter|stage[6][46]~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][46]~426_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[5][46]~363_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[5][46]~363_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[5][46]~363_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Shifter|stage[6][46]~426_combout\);

-- Location: LCCOMB_X67_Y36_N2
\Y_internal~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~67_combout\ = (\Y_internal~66_combout\ & (((\Shifter|stage[6][46]~426_combout\)) # (!\Y_internal~3_combout\))) # (!\Y_internal~66_combout\ & (\Y_internal~3_combout\ & (\Shifter|stage[6][17]~379_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~66_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][17]~379_combout\,
	datad => \Shifter|stage[6][46]~426_combout\,
	combout => \Y_internal~67_combout\);

-- Location: LCCOMB_X69_Y40_N24
\Shifter|stage[6][18]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][18]~380_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[4][34]~200_combout\) # ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & (((!\ShiftCount[5]~0_combout\ & \Shifter|stage[4][18]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][34]~200_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][18]~189_combout\,
	combout => \Shifter|stage[6][18]~380_combout\);

-- Location: LCCOMB_X69_Y40_N2
\Shifter|stage[6][18]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][18]~381_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][18]~380_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][18]~380_combout\ & ((\Shifter|stage[4][50]~179_combout\))))) # (!\ShiftCount[5]~0_combout\ & 
-- (((\Shifter|stage[6][18]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[6][18]~380_combout\,
	datad => \Shifter|stage[4][50]~179_combout\,
	combout => \Shifter|stage[6][18]~381_combout\);

-- Location: LCCOMB_X68_Y42_N4
\Shifter|stage[6][45]~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][45]~427_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[5][45]~354_combout\))) # (!\ExtWord~input_o\ & (\Shifter|sign_bit~0_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[5][45]~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[5][45]~354_combout\,
	combout => \Shifter|stage[6][45]~427_combout\);

-- Location: LCCOMB_X74_Y38_N8
\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0_combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X74_Y38_N30
\Y_internal~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~281_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[18]~input_o\ & ((\A[18]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[18]~input_o\ & 
-- (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~281_combout\);

-- Location: LCCOMB_X74_Y38_N24
\Y_internal~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~282_combout\ = (\Y_internal~281_combout\ & ((\LogicFN[0]~input_o\) # ((\B[6]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Y_internal~281_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~282_combout\);

-- Location: LCCOMB_X74_Y38_N2
\Y_internal~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~68_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0_combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & ((\Y_internal~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|sum~0_combout\,
	datad => \Y_internal~282_combout\,
	combout => \Y_internal~68_combout\);

-- Location: LCCOMB_X67_Y36_N20
\Y_internal~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~69_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~68_combout\ & ((\Shifter|stage[6][45]~427_combout\))) # (!\Y_internal~68_combout\ & (\Shifter|stage[6][18]~381_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][18]~381_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][45]~427_combout\,
	datad => \Y_internal~68_combout\,
	combout => \Y_internal~69_combout\);

-- Location: LCCOMB_X66_Y40_N12
\Shifter|stage[6][19]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][19]~382_combout\ = (\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\) # ((\Shifter|stage[4][35]~239_combout\)))) # (!\B[4]~input_o\ & (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[4][19]~232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[4][19]~232_combout\,
	datad => \Shifter|stage[4][35]~239_combout\,
	combout => \Shifter|stage[6][19]~382_combout\);

-- Location: LCCOMB_X66_Y38_N6
\Shifter|stage[6][19]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][19]~383_combout\ = (\Shifter|stage[6][19]~382_combout\ & (((\Shifter|sign_bit~0_combout\)) # (!\ShiftCount[5]~0_combout\))) # (!\Shifter|stage[6][19]~382_combout\ & (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][51]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][19]~382_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[4][51]~223_combout\,
	combout => \Shifter|stage[6][19]~383_combout\);

-- Location: LCCOMB_X68_Y42_N30
\Shifter|stage[6][44]~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][44]~428_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[5][44]~346_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[5][44]~346_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|stage[5][44]~346_combout\,
	combout => \Shifter|stage[6][44]~428_combout\);

-- Location: LCCOMB_X74_Y38_N12
\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ = \B[19]~input_o\ $ (\AddnSub~input_o\ $ (\A[19]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[19]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X74_Y38_N28
\Y_internal~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~70_combout\ = (\LogicFN[0]~input_o\ & (((\LogicUnit|Y~11_combout\) # (\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[7]~input_o\ & ((!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \LogicUnit|Y~11_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~70_combout\);

-- Location: LCCOMB_X74_Y38_N6
\Y_internal~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~71_combout\ = (\LogicFN[1]~input_o\ & ((\Y_internal~70_combout\ & (\A[19]~input_o\ & \B[19]~input_o\)) # (!\Y_internal~70_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))))) # (!\LogicFN[1]~input_o\ & (\Y_internal~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Y_internal~70_combout\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Y_internal~71_combout\);

-- Location: LCCOMB_X74_Y38_N0
\Y_internal~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~72_combout\ = (\Y_internal~51_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\Y_internal~71_combout\))))) # (!\Y_internal~51_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\,
	datab => \Y_internal~51_combout\,
	datac => \Y_internal~4_combout\,
	datad => \Y_internal~71_combout\,
	combout => \Y_internal~72_combout\);

-- Location: LCCOMB_X67_Y36_N14
\Y_internal~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~73_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~72_combout\ & ((\Shifter|stage[6][44]~428_combout\))) # (!\Y_internal~72_combout\ & (\Shifter|stage[6][19]~383_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][19]~383_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][44]~428_combout\,
	datad => \Y_internal~72_combout\,
	combout => \Y_internal~73_combout\);

-- Location: LCCOMB_X66_Y39_N28
\Shifter|stage[6][43]~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][43]~429_combout\ = (\ExtWord~input_o\ & (\Shifter|stage[5][43]~338_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[5]~input_o\ & (\Shifter|stage[5][43]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[5][43]~338_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \Shifter|stage[6][43]~429_combout\);

-- Location: LCCOMB_X66_Y38_N10
\Shifter|stage[6][20]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][20]~385_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[4][36]~250_combout\) # ((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & (((\Shifter|stage[4][20]~260_combout\ & !\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][36]~250_combout\,
	datab => \Shifter|stage[4][20]~260_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \Shifter|stage[6][20]~385_combout\);

-- Location: LCCOMB_X66_Y38_N24
\Shifter|stage[4][52]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][52]~384_combout\ = (\Shifter|stage[4][52]~252_combout\) # (\Shifter|stage[4][52]~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shifter|stage[4][52]~252_combout\,
	datad => \Shifter|stage[4][52]~251_combout\,
	combout => \Shifter|stage[4][52]~384_combout\);

-- Location: LCCOMB_X66_Y38_N20
\Shifter|stage[6][20]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][20]~386_combout\ = (\Shifter|stage[6][20]~385_combout\ & (((\Shifter|sign_bit~0_combout\) # (!\ShiftCount[5]~0_combout\)))) # (!\Shifter|stage[6][20]~385_combout\ & (\Shifter|stage[4][52]~384_combout\ & ((\ShiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][20]~385_combout\,
	datab => \Shifter|stage[4][52]~384_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \Shifter|stage[6][20]~386_combout\);

-- Location: LCCOMB_X70_Y38_N16
\Y_internal~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~74_combout\ = (\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\) # (\LogicUnit|Y~12_combout\)))) # (!\LogicFN[0]~input_o\ & (\B[8]~input_o\ & (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicUnit|Y~12_combout\,
	combout => \Y_internal~74_combout\);

-- Location: LCCOMB_X70_Y38_N10
\Y_internal~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~75_combout\ = (\LogicFN[1]~input_o\ & ((\B[20]~input_o\ & ((\A[20]~input_o\) # (!\Y_internal~74_combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & !\Y_internal~74_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \Y_internal~74_combout\,
	combout => \Y_internal~75_combout\);

-- Location: LCCOMB_X70_Y38_N24
\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ = \A[20]~input_o\ $ (\AddnSub~input_o\ $ (\B[20]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[20]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y38_N4
\Y_internal~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~76_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\) # (!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (\Y_internal~75_combout\ & (\Y_internal~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~75_combout\,
	datab => \Y_internal~4_combout\,
	datac => \Y_internal~51_combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Y_internal~76_combout\);

-- Location: LCCOMB_X66_Y36_N26
\Y_internal~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~77_combout\ = (\Y_internal~76_combout\ & ((\Shifter|stage[6][43]~429_combout\) # ((!\Y_internal~3_combout\)))) # (!\Y_internal~76_combout\ & (((\Shifter|stage[6][20]~386_combout\ & \Y_internal~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][43]~429_combout\,
	datab => \Shifter|stage[6][20]~386_combout\,
	datac => \Y_internal~76_combout\,
	datad => \Y_internal~3_combout\,
	combout => \Y_internal~77_combout\);

-- Location: LCCOMB_X68_Y41_N4
\Shifter|stage[4][53]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][53]~265_combout\ = (\Shifter|stage[4][53]~264_combout\) # (\Shifter|stage[4][53]~263_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[4][53]~264_combout\,
	datad => \Shifter|stage[4][53]~263_combout\,
	combout => \Shifter|stage[4][53]~265_combout\);

-- Location: LCCOMB_X66_Y39_N12
\Shifter|stage[6][21]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][21]~387_combout\ = (\ShiftCount[5]~0_combout\ & (((\Shifter|stage[4][53]~265_combout\) # (\B[4]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & (\Shifter|stage[4][21]~272_combout\ & ((!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][21]~272_combout\,
	datab => \Shifter|stage[4][53]~265_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][21]~387_combout\);

-- Location: LCCOMB_X66_Y39_N6
\Shifter|stage[6][21]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][21]~388_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[6][21]~387_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[6][21]~387_combout\ & (\Shifter|stage[4][37]~267_combout\)))) # (!\B[4]~input_o\ & 
-- (((\Shifter|stage[6][21]~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][37]~267_combout\,
	datab => \B[4]~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[6][21]~387_combout\,
	combout => \Shifter|stage[6][21]~388_combout\);

-- Location: LCCOMB_X69_Y40_N28
\Shifter|stage[6][42]~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][42]~430_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[5][42]~328_combout\))) # (!\ExtWord~input_o\ & (\Shifter|sign_bit~0_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[5][42]~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Shifter|stage[5][42]~328_combout\,
	combout => \Shifter|stage[6][42]~430_combout\);

-- Location: LCCOMB_X70_Y38_N6
\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ = \B[21]~input_o\ $ (\AddnSub~input_o\ $ (\A[21]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y38_N26
\Y_internal~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~279_combout\ = (\LogicFN[1]~input_o\ & ((\A[21]~input_o\ & ((\B[21]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[21]~input_o\ $ (\B[21]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~279_combout\);

-- Location: LCCOMB_X70_Y38_N12
\Y_internal~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~280_combout\ = (\Y_internal~279_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Y_internal~279_combout\,
	datad => \B[9]~input_o\,
	combout => \Y_internal~280_combout\);

-- Location: LCCOMB_X70_Y38_N0
\Y_internal~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~78_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~51_combout\ & \Y_internal~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \Y_internal~51_combout\,
	datad => \Y_internal~280_combout\,
	combout => \Y_internal~78_combout\);

-- Location: LCCOMB_X66_Y36_N28
\Y_internal~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~79_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~78_combout\ & ((\Shifter|stage[6][42]~430_combout\))) # (!\Y_internal~78_combout\ & (\Shifter|stage[6][21]~388_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][21]~388_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][42]~430_combout\,
	datad => \Y_internal~78_combout\,
	combout => \Y_internal~79_combout\);

-- Location: LCCOMB_X69_Y38_N14
\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y38_N10
\Y_internal~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~80_combout\ = (\LogicFN[0]~input_o\ & ((\LogicUnit|Y~13_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((!\LogicFN[1]~input_o\ & \B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicUnit|Y~13_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Y_internal~80_combout\);

-- Location: LCCOMB_X69_Y38_N12
\Y_internal~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~81_combout\ = (\LogicFN[1]~input_o\ & ((\A[22]~input_o\ & ((\B[22]~input_o\) # (!\Y_internal~80_combout\))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & !\Y_internal~80_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~80_combout\,
	combout => \Y_internal~81_combout\);

-- Location: LCCOMB_X70_Y38_N2
\Y_internal~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~82_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~51_combout\ & \Y_internal~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \Y_internal~51_combout\,
	datad => \Y_internal~81_combout\,
	combout => \Y_internal~82_combout\);

-- Location: LCCOMB_X70_Y40_N8
\Shifter|stage[4][54]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[4][54]~389_combout\ = (\Shifter|stage[4][54]~278_combout\) # (\Shifter|stage[4][54]~279_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][54]~278_combout\,
	datac => \Shifter|stage[4][54]~279_combout\,
	combout => \Shifter|stage[4][54]~389_combout\);

-- Location: LCCOMB_X70_Y40_N10
\Shifter|stage[6][22]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][22]~390_combout\ = (\ShiftCount[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][38]~276_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][22]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][22]~285_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][38]~276_combout\,
	combout => \Shifter|stage[6][22]~390_combout\);

-- Location: LCCOMB_X70_Y40_N28
\Shifter|stage[6][22]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][22]~391_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][22]~390_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[6][22]~390_combout\ & (\Shifter|stage[4][54]~389_combout\)))) # (!\ShiftCount[5]~0_combout\ & 
-- (((\Shifter|stage[6][22]~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][54]~389_combout\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[6][22]~390_combout\,
	combout => \Shifter|stage[6][22]~391_combout\);

-- Location: LCCOMB_X68_Y42_N8
\Shifter|stage[6][41]~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][41]~431_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[5][41]~319_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[5][41]~319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|stage[5][41]~319_combout\,
	combout => \Shifter|stage[6][41]~431_combout\);

-- Location: LCCOMB_X66_Y36_N14
\Y_internal~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~83_combout\ = (\Y_internal~82_combout\ & (((\Shifter|stage[6][41]~431_combout\) # (!\Y_internal~3_combout\)))) # (!\Y_internal~82_combout\ & (\Shifter|stage[6][22]~391_combout\ & ((\Y_internal~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~82_combout\,
	datab => \Shifter|stage[6][22]~391_combout\,
	datac => \Shifter|stage[6][41]~431_combout\,
	datad => \Y_internal~3_combout\,
	combout => \Y_internal~83_combout\);

-- Location: LCCOMB_X67_Y39_N8
\Shifter|stage[6][23]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][23]~392_combout\ = (\B[4]~input_o\ & (((\ShiftCount[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftCount[5]~0_combout\ & (\Shifter|stage[4][55]~290_combout\)) # (!\ShiftCount[5]~0_combout\ & ((\Shifter|stage[4][23]~298_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][55]~290_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][23]~298_combout\,
	combout => \Shifter|stage[6][23]~392_combout\);

-- Location: LCCOMB_X67_Y39_N26
\Shifter|stage[6][23]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][23]~393_combout\ = (\B[4]~input_o\ & ((\Shifter|stage[6][23]~392_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][23]~392_combout\ & ((\Shifter|stage[4][39]~292_combout\))))) # (!\B[4]~input_o\ & 
-- (((\Shifter|stage[6][23]~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[6][23]~392_combout\,
	datad => \Shifter|stage[4][39]~292_combout\,
	combout => \Shifter|stage[6][23]~393_combout\);

-- Location: LCCOMB_X68_Y42_N10
\Shifter|stage[6][40]~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][40]~432_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[5][40]~309_combout\))) # (!\ExtWord~input_o\ & (\Shifter|sign_bit~0_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[5][40]~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[5][40]~309_combout\,
	combout => \Shifter|stage[6][40]~432_combout\);

-- Location: LCCOMB_X74_Y42_N0
\Y_internal~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~84_combout\ = (\LogicFN[0]~input_o\ & ((\LogicUnit|Y~14_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((!\LogicFN[1]~input_o\ & \B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~14_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Y_internal~84_combout\);

-- Location: LCCOMB_X74_Y42_N2
\Y_internal~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~85_combout\ = (\LogicFN[1]~input_o\ & ((\A[23]~input_o\ & ((\B[23]~input_o\) # (!\Y_internal~84_combout\))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & !\Y_internal~84_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~84_combout\,
	combout => \Y_internal~85_combout\);

-- Location: LCCOMB_X74_Y42_N30
\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ = \A[23]~input_o\ $ (\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\ $ (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|cout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[23]~input_o\,
	combout => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y42_N6
\Y_internal~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~86_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\) # (!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (\Y_internal~85_combout\ & ((\Y_internal~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~85_combout\,
	datab => \Y_internal~4_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\,
	datad => \Y_internal~51_combout\,
	combout => \Y_internal~86_combout\);

-- Location: LCCOMB_X73_Y42_N8
\Y_internal~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~87_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~86_combout\ & ((\Shifter|stage[6][40]~432_combout\))) # (!\Y_internal~86_combout\ & (\Shifter|stage[6][23]~393_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][23]~393_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][40]~432_combout\,
	datad => \Y_internal~86_combout\,
	combout => \Y_internal~87_combout\);

-- Location: LCCOMB_X66_Y42_N30
\Shifter|stage[6][24]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][24]~395_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][40]~308_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][24]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][24]~304_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][40]~308_combout\,
	combout => \Shifter|stage[6][24]~395_combout\);

-- Location: LCCOMB_X66_Y42_N12
\Shifter|stage[6][24]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][24]~394_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[3][56]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[3][56]~63_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[6][7]~256_combout\,
	combout => \Shifter|stage[6][24]~394_combout\);

-- Location: LCCOMB_X66_Y42_N24
\Shifter|stage[6][24]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][24]~396_combout\ = (\Shifter|stage[6][24]~395_combout\) # (\Shifter|stage[6][24]~394_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shifter|stage[6][24]~395_combout\,
	datad => \Shifter|stage[6][24]~394_combout\,
	combout => \Shifter|stage[6][24]~396_combout\);

-- Location: LCCOMB_X67_Y39_N22
\Shifter|stage[6][39]~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][39]~433_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[6][39]~293_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[6][39]~293_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|stage[6][39]~293_combout\,
	combout => \Shifter|stage[6][39]~433_combout\);

-- Location: LCCOMB_X73_Y46_N26
\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y43_N0
\Y_internal~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~277_combout\ = (\A[24]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[24]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[24]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[24]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[24]~input_o\) 
-- # (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[24]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~277_combout\);

-- Location: LCCOMB_X73_Y43_N10
\Y_internal~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~278_combout\ = (\Y_internal~277_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~277_combout\,
	datad => \B[12]~input_o\,
	combout => \Y_internal~278_combout\);

-- Location: LCCOMB_X73_Y43_N22
\Y_internal~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~88_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~51_combout\ & \Y_internal~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|sum~combout\,
	datac => \Y_internal~51_combout\,
	datad => \Y_internal~278_combout\,
	combout => \Y_internal~88_combout\);

-- Location: LCCOMB_X66_Y45_N28
\Y_internal~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~89_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~88_combout\ & ((\Shifter|stage[6][39]~433_combout\))) # (!\Y_internal~88_combout\ & (\Shifter|stage[6][24]~396_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][24]~396_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][39]~433_combout\,
	datad => \Y_internal~88_combout\,
	combout => \Y_internal~89_combout\);

-- Location: LCCOMB_X73_Y46_N18
\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ = \A[25]~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\ $ (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y46_N6
\Y_internal~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~275_combout\ = (\B[25]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[25]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[25]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[25]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[25]~input_o\) 
-- # (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[25]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~275_combout\);

-- Location: LCCOMB_X73_Y43_N30
\Y_internal~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~276_combout\ = (\Y_internal~275_combout\ & ((\LogicFN[0]~input_o\) # ((\B[13]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~275_combout\,
	combout => \Y_internal~276_combout\);

-- Location: LCCOMB_X73_Y43_N24
\Y_internal~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~90_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~276_combout\ & \Y_internal~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Y_internal~276_combout\,
	datad => \Y_internal~51_combout\,
	combout => \Y_internal~90_combout\);

-- Location: LCCOMB_X70_Y41_N0
\Shifter|stage[6][25]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][25]~398_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][41]~318_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][25]~314_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][41]~318_combout\,
	datab => \Shifter|stage[4][25]~314_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][25]~398_combout\);

-- Location: LCCOMB_X70_Y41_N6
\Shifter|stage[6][25]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][25]~397_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[3][57]~419_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~256_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[3][57]~419_combout\,
	combout => \Shifter|stage[6][25]~397_combout\);

-- Location: LCCOMB_X70_Y41_N26
\Shifter|stage[6][25]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][25]~399_combout\ = (\Shifter|stage[6][25]~398_combout\) # (\Shifter|stage[6][25]~397_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shifter|stage[6][25]~398_combout\,
	datad => \Shifter|stage[6][25]~397_combout\,
	combout => \Shifter|stage[6][25]~399_combout\);

-- Location: LCCOMB_X68_Y42_N20
\Shifter|stage[6][38]~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][38]~434_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\Shifter|stage[6][38]~280_combout\))) # (!\ExtWord~input_o\ & (\Shifter|sign_bit~0_combout\)))) # (!\B[5]~input_o\ & (((\Shifter|stage[6][38]~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[6][38]~280_combout\,
	combout => \Shifter|stage[6][38]~434_combout\);

-- Location: LCCOMB_X69_Y46_N24
\Y_internal~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~91_combout\ = (\Y_internal~90_combout\ & (((\Shifter|stage[6][38]~434_combout\) # (!\Y_internal~3_combout\)))) # (!\Y_internal~90_combout\ & (\Shifter|stage[6][25]~399_combout\ & (\Y_internal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~90_combout\,
	datab => \Shifter|stage[6][25]~399_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Shifter|stage[6][38]~434_combout\,
	combout => \Y_internal~91_combout\);

-- Location: LCCOMB_X68_Y42_N22
\Shifter|stage[6][37]~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][37]~435_combout\ = (\ExtWord~input_o\ & (\Shifter|stage[6][37]~421_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[5]~input_o\ & (\Shifter|stage[6][37]~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][37]~421_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][37]~435_combout\);

-- Location: LCCOMB_X70_Y46_N8
\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ = \A[26]~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (\B[26]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y46_N4
\Y_internal~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~273_combout\ = (\A[26]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[26]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[26]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[26]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[26]~input_o\) 
-- # (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[26]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~273_combout\);

-- Location: LCCOMB_X70_Y46_N6
\Y_internal~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~274_combout\ = (\Y_internal~273_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~273_combout\,
	datad => \B[14]~input_o\,
	combout => \Y_internal~274_combout\);

-- Location: LCCOMB_X70_Y46_N18
\Y_internal~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~92_combout\ = (\Y_internal~51_combout\ & ((\Y_internal~4_combout\ & (\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\)) # (!\Y_internal~4_combout\ & ((\Y_internal~274_combout\))))) # (!\Y_internal~51_combout\ & 
-- (((\Y_internal~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~51_combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\,
	datac => \Y_internal~4_combout\,
	datad => \Y_internal~274_combout\,
	combout => \Y_internal~92_combout\);

-- Location: LCCOMB_X69_Y40_N30
\Shifter|stage[6][26]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][26]~401_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][42]~327_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][26]~323_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][42]~327_combout\,
	datab => \B[4]~input_o\,
	datac => \Shifter|stage[4][26]~323_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \Shifter|stage[6][26]~401_combout\);

-- Location: LCCOMB_X69_Y40_N20
\Shifter|stage[6][26]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][26]~400_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][7]~256_combout\ & ((\Shifter|stage[3][58]~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[6][7]~256_combout\,
	datad => \Shifter|stage[3][58]~178_combout\,
	combout => \Shifter|stage[6][26]~400_combout\);

-- Location: LCCOMB_X69_Y40_N8
\Shifter|stage[6][26]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][26]~402_combout\ = (\Shifter|stage[6][26]~401_combout\) # (\Shifter|stage[6][26]~400_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shifter|stage[6][26]~401_combout\,
	datad => \Shifter|stage[6][26]~400_combout\,
	combout => \Shifter|stage[6][26]~402_combout\);

-- Location: LCCOMB_X69_Y42_N8
\Y_internal~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~93_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~92_combout\ & (\Shifter|stage[6][37]~435_combout\)) # (!\Y_internal~92_combout\ & ((\Shifter|stage[6][26]~402_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~3_combout\,
	datab => \Shifter|stage[6][37]~435_combout\,
	datac => \Y_internal~92_combout\,
	datad => \Shifter|stage[6][26]~402_combout\,
	combout => \Y_internal~93_combout\);

-- Location: LCCOMB_X68_Y42_N16
\Shifter|stage[6][36]~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][36]~436_combout\ = (\ExtWord~input_o\ & (((\Shifter|stage[6][36]~253_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[5]~input_o\ & ((\Shifter|stage[6][36]~253_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shifter|stage[6][36]~253_combout\,
	combout => \Shifter|stage[6][36]~436_combout\);

-- Location: LCCOMB_X66_Y39_N10
\Shifter|stage[6][27]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][27]~404_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][43]~337_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][27]~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][27]~333_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][43]~337_combout\,
	combout => \Shifter|stage[6][27]~404_combout\);

-- Location: LCCOMB_X66_Y39_N24
\Shifter|stage[6][27]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][27]~403_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[6][7]~256_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[6][7]~256_combout\ & (\Shifter|stage[3][59]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[3][59]~222_combout\,
	datab => \Shifter|stage[6][7]~256_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][27]~403_combout\);

-- Location: LCCOMB_X66_Y39_N20
\Shifter|stage[6][27]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][27]~405_combout\ = (\Shifter|stage[6][27]~404_combout\) # (\Shifter|stage[6][27]~403_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][27]~404_combout\,
	datad => \Shifter|stage[6][27]~403_combout\,
	combout => \Shifter|stage[6][27]~405_combout\);

-- Location: LCCOMB_X70_Y46_N2
\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ = \B[27]~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\ $ (\A[27]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|cout~0_combout\,
	datac => \A[27]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y46_N20
\Y_internal~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~94_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # ((\LogicUnit|Y~15_combout\)))) # (!\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[15]~input_o\,
	datad => \LogicUnit|Y~15_combout\,
	combout => \Y_internal~94_combout\);

-- Location: LCCOMB_X70_Y46_N22
\Y_internal~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~95_combout\ = (\LogicFN[1]~input_o\ & ((\B[27]~input_o\ & ((\A[27]~input_o\) # (!\Y_internal~94_combout\))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & !\Y_internal~94_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[27]~input_o\,
	datad => \Y_internal~94_combout\,
	combout => \Y_internal~95_combout\);

-- Location: LCCOMB_X72_Y46_N26
\Y_internal~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~96_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & ((\Y_internal~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Y_internal~95_combout\,
	combout => \Y_internal~96_combout\);

-- Location: LCCOMB_X73_Y42_N26
\Y_internal~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~97_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~96_combout\ & (\Shifter|stage[6][36]~436_combout\)) # (!\Y_internal~96_combout\ & ((\Shifter|stage[6][27]~405_combout\))))) # (!\Y_internal~3_combout\ & (((\Y_internal~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][36]~436_combout\,
	datab => \Shifter|stage[6][27]~405_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Y_internal~96_combout\,
	combout => \Y_internal~97_combout\);

-- Location: LCCOMB_X66_Y39_N30
\Shifter|stage[6][28]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][28]~406_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][44]~345_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][28]~341_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][44]~345_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \Shifter|stage[4][28]~341_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][28]~406_combout\);

-- Location: LCCOMB_X66_Y39_N0
\Shifter|stage[6][28]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][28]~407_combout\ = (\Shifter|stage[6][3]~205_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][3]~205_combout\ & ((\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[4]~input_o\ & 
-- ((\Shifter|stage[2][60]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][3]~205_combout\,
	datab => \Shifter|sign_bit~0_combout\,
	datac => \Shifter|stage[2][60]~59_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][28]~407_combout\);

-- Location: LCCOMB_X66_Y39_N14
\Shifter|stage[6][28]~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][28]~437_combout\ = (\Shifter|stage[6][28]~406_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \Shifter|stage[6][28]~407_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][28]~406_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Shifter|stage[6][28]~407_combout\,
	combout => \Shifter|stage[6][28]~437_combout\);

-- Location: LCCOMB_X72_Y46_N6
\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\B[28]~input_o\ $ (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X74_Y42_N8
\Y_internal~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~271_combout\ = (\A[28]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[28]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[28]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[28]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[28]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Y_internal~271_combout\);

-- Location: LCCOMB_X74_Y42_N18
\Y_internal~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~272_combout\ = (\Y_internal~271_combout\ & ((\LogicFN[1]~input_o\) # ((\B[16]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[16]~input_o\,
	datac => \Y_internal~271_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~272_combout\);

-- Location: LCCOMB_X73_Y42_N4
\Y_internal~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~98_combout\ = (\Y_internal~4_combout\ & ((\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\) # ((!\Y_internal~51_combout\)))) # (!\Y_internal~4_combout\ & (((\Y_internal~51_combout\ & \Y_internal~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\,
	datab => \Y_internal~4_combout\,
	datac => \Y_internal~51_combout\,
	datad => \Y_internal~272_combout\,
	combout => \Y_internal~98_combout\);

-- Location: LCCOMB_X66_Y40_N22
\Shifter|stage[6][35]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][35]~408_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][51]~223_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][35]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[4][35]~239_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][51]~223_combout\,
	combout => \Shifter|stage[6][35]~408_combout\);

-- Location: LCCOMB_X68_Y42_N26
\Shifter|stage[6][35]~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][35]~438_combout\ = (\Shifter|stage[6][35]~408_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \Shifter|sign_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[6][35]~408_combout\,
	combout => \Shifter|stage[6][35]~438_combout\);

-- Location: LCCOMB_X66_Y45_N6
\Y_internal~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~99_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~98_combout\ & ((\Shifter|stage[6][35]~438_combout\))) # (!\Y_internal~98_combout\ & (\Shifter|stage[6][28]~437_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][28]~437_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Y_internal~98_combout\,
	datad => \Shifter|stage[6][35]~438_combout\,
	combout => \Y_internal~99_combout\);

-- Location: LCCOMB_X68_Y41_N0
\Shifter|stage[6][29]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][29]~409_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][45]~353_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][29]~349_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shifter|stage[4][45]~353_combout\,
	datac => \Shifter|stage[4][29]~349_combout\,
	datad => \ShiftCount[5]~0_combout\,
	combout => \Shifter|stage[6][29]~409_combout\);

-- Location: LCCOMB_X68_Y41_N26
\Shifter|stage[6][29]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][29]~410_combout\ = (\Shifter|stage[6][3]~205_combout\ & (\Shifter|sign_bit~0_combout\)) # (!\Shifter|stage[6][3]~205_combout\ & ((\B[4]~input_o\ & (\Shifter|sign_bit~0_combout\)) # (!\B[4]~input_o\ & 
-- ((\Shifter|stage[2][61]~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \Shifter|stage[6][3]~205_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[2][61]~125_combout\,
	combout => \Shifter|stage[6][29]~410_combout\);

-- Location: LCCOMB_X68_Y42_N12
\Shifter|stage[6][29]~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][29]~439_combout\ = (\Shifter|stage[6][29]~409_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \Shifter|stage[6][29]~410_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shifter|stage[6][29]~409_combout\,
	datac => \ExtWord~input_o\,
	datad => \Shifter|stage[6][29]~410_combout\,
	combout => \Shifter|stage[6][29]~439_combout\);

-- Location: LCCOMB_X69_Y40_N18
\Shifter|stage[6][34]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][34]~411_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][50]~179_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][34]~200_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][50]~179_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|stage[4][34]~200_combout\,
	combout => \Shifter|stage[6][34]~411_combout\);

-- Location: LCCOMB_X69_Y40_N14
\Shifter|stage[6][34]~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][34]~440_combout\ = (\Shifter|stage[6][34]~411_combout\) # ((\Shifter|sign_bit~0_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|sign_bit~0_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Shifter|stage[6][34]~411_combout\,
	combout => \Shifter|stage[6][34]~440_combout\);

-- Location: LCCOMB_X72_Y46_N28
\Y_internal~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~100_combout\ = (\LogicFN[1]~input_o\ & (\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\LogicUnit|Y~16_combout\)) # (!\LogicFN[0]~input_o\ & ((\B[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicUnit|Y~16_combout\,
	datad => \B[17]~input_o\,
	combout => \Y_internal~100_combout\);

-- Location: LCCOMB_X72_Y46_N30
\Y_internal~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~101_combout\ = (\LogicFN[1]~input_o\ & ((\Y_internal~100_combout\ & (\B[29]~input_o\ & \A[29]~input_o\)) # (!\Y_internal~100_combout\ & ((\B[29]~input_o\) # (\A[29]~input_o\))))) # (!\LogicFN[1]~input_o\ & (\Y_internal~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Y_internal~100_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Y_internal~101_combout\);

-- Location: LCCOMB_X72_Y46_N16
\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (\B[29]~input_o\ $ (\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X72_Y46_N24
\Y_internal~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~102_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & (\Y_internal~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Y_internal~101_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\,
	combout => \Y_internal~102_combout\);

-- Location: LCCOMB_X69_Y46_N26
\Y_internal~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~103_combout\ = (\Y_internal~3_combout\ & ((\Y_internal~102_combout\ & ((\Shifter|stage[6][34]~440_combout\))) # (!\Y_internal~102_combout\ & (\Shifter|stage[6][29]~439_combout\)))) # (!\Y_internal~3_combout\ & (((\Y_internal~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][29]~439_combout\,
	datab => \Shifter|stage[6][34]~440_combout\,
	datac => \Y_internal~3_combout\,
	datad => \Y_internal~102_combout\,
	combout => \Y_internal~103_combout\);

-- Location: LCCOMB_X72_Y46_N20
\Y_internal~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~269_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[30]~input_o\ & \B[30]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[30]~input_o\) # (\B[30]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[30]~input_o\ $ (\B[30]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Y_internal~269_combout\);

-- Location: LCCOMB_X72_Y46_N22
\Y_internal~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~270_combout\ = (\Y_internal~269_combout\ & ((\B[18]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~269_combout\,
	combout => \Y_internal~270_combout\);

-- Location: LCCOMB_X72_Y46_N10
\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\A[30]~input_o\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X72_Y46_N18
\Y_internal~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~104_combout\ = (\Y_internal~4_combout\ & (((\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\)) # (!\Y_internal~51_combout\))) # (!\Y_internal~4_combout\ & (\Y_internal~51_combout\ & (\Y_internal~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~4_combout\,
	datab => \Y_internal~51_combout\,
	datac => \Y_internal~270_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\,
	combout => \Y_internal~104_combout\);

-- Location: LCCOMB_X70_Y41_N12
\Shifter|stage[6][33]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][33]~415_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][49]~128_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][33]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][33]~377_combout\,
	datab => \Shifter|stage[4][49]~128_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shifter|stage[6][33]~415_combout\);

-- Location: LCCOMB_X70_Y41_N22
\Shifter|stage[6][33]~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][33]~441_combout\ = (\Shifter|stage[6][33]~415_combout\) # ((\B[5]~input_o\ & (\Shifter|sign_bit~0_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][33]~415_combout\,
	datab => \B[5]~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Shifter|stage[6][33]~441_combout\);

-- Location: LCCOMB_X67_Y41_N0
\Shifter|stage[6][30]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][30]~412_combout\ = (\ShiftCount[5]~0_combout\ & ((\Shifter|stage[5][62]~168_combout\ & ((\Shifter|sign_bit~0_combout\))) # (!\Shifter|stage[5][62]~168_combout\ & (\Shifter|stage[1][62]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[1][62]~58_combout\,
	datab => \Shifter|stage[5][62]~168_combout\,
	datac => \ShiftCount[5]~0_combout\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][30]~412_combout\);

-- Location: LCCOMB_X66_Y45_N16
\Shifter|stage[6][30]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][30]~413_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][46]~362_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][30]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][30]~358_combout\,
	datab => \ShiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][46]~362_combout\,
	combout => \Shifter|stage[6][30]~413_combout\);

-- Location: LCCOMB_X66_Y45_N2
\Shifter|stage[6][30]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][30]~414_combout\ = (\Shifter|stage[6][30]~412_combout\) # (\Shifter|stage[6][30]~413_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shifter|stage[6][30]~412_combout\,
	datad => \Shifter|stage[6][30]~413_combout\,
	combout => \Shifter|stage[6][30]~414_combout\);

-- Location: LCCOMB_X66_Y45_N20
\Y_internal~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~105_combout\ = (\Y_internal~104_combout\ & (((\Shifter|stage[6][33]~441_combout\)) # (!\Y_internal~3_combout\))) # (!\Y_internal~104_combout\ & (\Y_internal~3_combout\ & ((\Shifter|stage[6][30]~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~104_combout\,
	datab => \Y_internal~3_combout\,
	datac => \Shifter|stage[6][33]~441_combout\,
	datad => \Shifter|stage[6][30]~414_combout\,
	combout => \Y_internal~105_combout\);

-- Location: LCCOMB_X67_Y41_N10
\Shifter|stage[6][31]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][31]~416_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & ((\Shifter|stage[4][47]~370_combout\))) # (!\B[4]~input_o\ & (\Shifter|stage[4][31]~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][31]~366_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][47]~370_combout\,
	combout => \Shifter|stage[6][31]~416_combout\);

-- Location: LCCOMB_X67_Y41_N20
\Shifter|stage[6][31]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][31]~417_combout\ = (\Shifter|stage[4][63]~116_combout\ & (((\Shifter|sign_bit~0_combout\)))) # (!\Shifter|stage[4][63]~116_combout\ & ((\B[4]~input_o\ & ((\Shifter|sign_bit~0_combout\))) # (!\B[4]~input_o\ & 
-- (\Shifter|stage_in[63]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[4][63]~116_combout\,
	datab => \Shifter|stage_in[63]~132_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|sign_bit~0_combout\,
	combout => \Shifter|stage[6][31]~417_combout\);

-- Location: LCCOMB_X67_Y41_N14
\Shifter|stage[6][31]~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][31]~442_combout\ = (\Shifter|stage[6][31]~416_combout\) # ((\Shifter|stage[6][31]~417_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][31]~416_combout\,
	datab => \Shifter|stage[6][31]~417_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Shifter|stage[6][31]~442_combout\);

-- Location: LCCOMB_X66_Y42_N26
\Shifter|stage[6][32]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][32]~418_combout\ = (!\ShiftCount[5]~0_combout\ & ((\B[4]~input_o\ & (\Shifter|stage[4][48]~64_combout\)) # (!\B[4]~input_o\ & ((\Shifter|stage[4][32]~374_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~0_combout\,
	datab => \Shifter|stage[4][48]~64_combout\,
	datac => \B[4]~input_o\,
	datad => \Shifter|stage[4][32]~374_combout\,
	combout => \Shifter|stage[6][32]~418_combout\);

-- Location: LCCOMB_X68_Y42_N6
\Shifter|stage[6][32]~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|stage[6][32]~443_combout\ = (\Shifter|stage[6][32]~418_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \Shifter|sign_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Shifter|sign_bit~0_combout\,
	datad => \Shifter|stage[6][32]~418_combout\,
	combout => \Shifter|stage[6][32]~443_combout\);

-- Location: LCCOMB_X69_Y42_N26
\Shifter|Output[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|Output[31]~2_combout\ = (\ShiftFN[1]~input_o\ & (\Shifter|stage[6][31]~442_combout\)) # (!\ShiftFN[1]~input_o\ & (((\Shifter|stage[6][32]~443_combout\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Shifter|stage[6][31]~442_combout\,
	datac => \Shifter|stage[6][32]~443_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Shifter|Output[31]~2_combout\);

-- Location: LCCOMB_X73_Y46_N4
\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ = \B[31]~input_o\ $ (\A[31]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y42_N28
\Shifter|Output[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shifter|Output[31]~3_combout\ = (\Shifter|Output[31]~2_combout\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Output[31]~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Shifter|Output[31]~3_combout\);

-- Location: LCCOMB_X73_Y46_N20
\LogicUnit|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Mux32~0_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~17_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicUnit|Y~17_combout\,
	combout => \LogicUnit|Mux32~0_combout\);

-- Location: LCCOMB_X73_Y46_N14
\LogicUnit|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit|Mux32~1_combout\ = (\LogicUnit|Mux32~0_combout\ & (((\A[31]~input_o\ & \B[31]~input_o\)) # (!\LogicFN[1]~input_o\))) # (!\LogicUnit|Mux32~0_combout\ & (\LogicFN[1]~input_o\ & ((\A[31]~input_o\) # (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Mux32~0_combout\,
	datab => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \LogicUnit|Mux32~1_combout\);

-- Location: LCCOMB_X69_Y46_N28
\Y_internal~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~106_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\LogicUnit|Mux32~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Shifter|Output[31]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \LogicUnit|Mux32~1_combout\,
	combout => \Y_internal~106_combout\);

-- Location: LCCOMB_X69_Y42_N14
\Y_internal~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~107_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_internal~107_combout\);

-- Location: LCCOMB_X67_Y46_N6
\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\ $ (\B[32]~input_o\ $ (\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:0:fa_cin~combout\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y42_N24
\Y_internal~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~108_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\) # (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_internal~108_combout\);

-- Location: LCCOMB_X69_Y42_N18
\Y_internal~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~109_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & ((\Shifter|stage[6][32]~443_combout\))) # (!\Y_internal~108_combout\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|stage[6][32]~443_combout\,
	datad => \Y_internal~108_combout\,
	combout => \Y_internal~109_combout\);

-- Location: LCCOMB_X69_Y46_N14
\Y_internal~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~110_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~109_combout\ & (\Shifter|stage[6][31]~442_combout\)) # (!\Y_internal~109_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][31]~442_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~109_combout\,
	combout => \Y_internal~110_combout\);

-- Location: LCCOMB_X67_Y46_N2
\Y_internal~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~267_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[32]~input_o\ & \A[32]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[32]~input_o\) # (\A[32]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[32]~input_o\ $ (\A[32]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Y_internal~267_combout\);

-- Location: LCCOMB_X67_Y46_N4
\Y_internal~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~268_combout\ = (\Y_internal~267_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Y_internal~267_combout\,
	combout => \Y_internal~268_combout\);

-- Location: LCCOMB_X69_Y46_N16
\Y_internal~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~111_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~268_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~110_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~268_combout\,
	combout => \Y_internal~111_combout\);

-- Location: LCCOMB_X67_Y45_N2
\Y_internal~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~112_combout\ = (\LogicFN[1]~input_o\ & (\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\LogicUnit|Y~18_combout\)) # (!\LogicFN[0]~input_o\ & ((\B[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicUnit|Y~18_combout\,
	datad => \B[19]~input_o\,
	combout => \Y_internal~112_combout\);

-- Location: LCCOMB_X67_Y45_N4
\Y_internal~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~113_combout\ = (\LogicFN[1]~input_o\ & ((\A[33]~input_o\ & ((\B[33]~input_o\) # (!\Y_internal~112_combout\))) # (!\A[33]~input_o\ & (\B[33]~input_o\ & !\Y_internal~112_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[33]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~112_combout\,
	combout => \Y_internal~113_combout\);

-- Location: LCCOMB_X67_Y45_N12
\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[33]~input_o\ $ (\B[33]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y45_N30
\Y_internal~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~114_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & (\Shifter|Output[31]~3_combout\)) # (!\Y_internal~107_combout\ & 
-- ((\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Output[31]~3_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|sum~combout\,
	combout => \Y_internal~114_combout\);

-- Location: LCCOMB_X66_Y45_N0
\Y_internal~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~115_combout\ = (\Y_internal~114_combout\ & (((\Shifter|stage[6][30]~414_combout\)) # (!\Y_internal~108_combout\))) # (!\Y_internal~114_combout\ & (\Y_internal~108_combout\ & (\Shifter|stage[6][33]~441_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~114_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][33]~441_combout\,
	datad => \Shifter|stage[6][30]~414_combout\,
	combout => \Y_internal~115_combout\);

-- Location: LCCOMB_X66_Y45_N26
\Y_internal~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~116_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~113_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~113_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~115_combout\,
	combout => \Y_internal~116_combout\);

-- Location: LCCOMB_X67_Y45_N28
\Y_internal~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~265_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[34]~input_o\ & \A[34]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[34]~input_o\) # (\A[34]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[34]~input_o\ $ (\A[34]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Y_internal~265_combout\);

-- Location: LCCOMB_X67_Y45_N14
\Y_internal~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~266_combout\ = (\Y_internal~265_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~265_combout\,
	combout => \Y_internal~266_combout\);

-- Location: LCCOMB_X67_Y45_N6
\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (\B[34]~input_o\ $ (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \B[34]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y46_N10
\Y_internal~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~117_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & ((\Shifter|stage[6][34]~440_combout\))) # (!\Y_internal~108_combout\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Shifter|stage[6][34]~440_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~108_combout\,
	combout => \Y_internal~117_combout\);

-- Location: LCCOMB_X69_Y46_N20
\Y_internal~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~118_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~117_combout\ & (\Shifter|stage[6][29]~439_combout\)) # (!\Y_internal~117_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][29]~439_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~117_combout\,
	combout => \Y_internal~118_combout\);

-- Location: LCCOMB_X69_Y46_N6
\Y_internal~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~119_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~266_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~266_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~118_combout\,
	combout => \Y_internal~119_combout\);

-- Location: LCCOMB_X67_Y45_N22
\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\B[35]~input_o\ $ (\A[35]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y45_N4
\Y_internal~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~120_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & (\Shifter|Output[31]~3_combout\)) # (!\Y_internal~107_combout\ & 
-- ((\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Output[31]~3_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\,
	combout => \Y_internal~120_combout\);

-- Location: LCCOMB_X66_Y45_N22
\Y_internal~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~121_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~120_combout\ & (\Shifter|stage[6][28]~437_combout\)) # (!\Y_internal~120_combout\ & ((\Shifter|stage[6][35]~438_combout\))))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][28]~437_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~120_combout\,
	datad => \Shifter|stage[6][35]~438_combout\,
	combout => \Y_internal~121_combout\);

-- Location: LCCOMB_X67_Y45_N8
\Y_internal~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~263_combout\ = (\A[35]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[35]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[35]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[35]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[35]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Y_internal~263_combout\);

-- Location: LCCOMB_X67_Y45_N18
\Y_internal~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~264_combout\ = (\Y_internal~263_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Y_internal~263_combout\,
	datad => \B[19]~input_o\,
	combout => \Y_internal~264_combout\);

-- Location: LCCOMB_X66_Y45_N8
\Y_internal~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~122_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~264_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~121_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~264_combout\,
	combout => \Y_internal~122_combout\);

-- Location: LCCOMB_X68_Y46_N10
\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\B[36]~input_o\ $ (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y42_N30
\Y_internal~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~123_combout\ = (\Y_internal~108_combout\ & ((\Shifter|stage[6][36]~436_combout\) # ((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & (((!\Y_internal~107_combout\ & \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][36]~436_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Y_internal~123_combout\);

-- Location: LCCOMB_X73_Y42_N24
\Y_internal~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~124_combout\ = (\Y_internal~123_combout\ & (((\Shifter|stage[6][27]~405_combout\) # (!\Y_internal~107_combout\)))) # (!\Y_internal~123_combout\ & (\Shifter|Output[31]~3_combout\ & (\Y_internal~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~123_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Shifter|stage[6][27]~405_combout\,
	combout => \Y_internal~124_combout\);

-- Location: LCCOMB_X68_Y46_N20
\Y_internal~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~261_combout\ = (\B[36]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[36]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[36]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[36]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[36]~input_o\) 
-- # (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Y_internal~261_combout\);

-- Location: LCCOMB_X68_Y46_N30
\Y_internal~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~262_combout\ = (\Y_internal~261_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Y_internal~261_combout\,
	combout => \Y_internal~262_combout\);

-- Location: LCCOMB_X73_Y42_N10
\Y_internal~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~125_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~262_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~124_combout\,
	datac => \Y_internal~262_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~125_combout\);

-- Location: LCCOMB_X68_Y46_N12
\Y_internal~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~126_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~19_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicUnit|Y~19_combout\,
	combout => \Y_internal~126_combout\);

-- Location: LCCOMB_X68_Y46_N6
\Y_internal~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~127_combout\ = (\Y_internal~126_combout\ & (((\B[37]~input_o\ & \A[37]~input_o\)) # (!\LogicFN[1]~input_o\))) # (!\Y_internal~126_combout\ & (\LogicFN[1]~input_o\ & ((\B[37]~input_o\) # (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~126_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \Y_internal~127_combout\);

-- Location: LCCOMB_X68_Y46_N28
\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[37]~input_o\ $ (\B[37]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y42_N12
\Y_internal~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~128_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\))) # (!\Y_internal~107_combout\ & 
-- (\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~128_combout\);

-- Location: LCCOMB_X69_Y42_N22
\Y_internal~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~129_combout\ = (\Y_internal~128_combout\ & (((\Shifter|stage[6][26]~402_combout\)) # (!\Y_internal~108_combout\))) # (!\Y_internal~128_combout\ & (\Y_internal~108_combout\ & (\Shifter|stage[6][37]~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~128_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][37]~435_combout\,
	datad => \Shifter|stage[6][26]~402_combout\,
	combout => \Y_internal~129_combout\);

-- Location: LCCOMB_X69_Y46_N8
\Y_internal~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~130_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~127_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~127_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~129_combout\,
	combout => \Y_internal~130_combout\);

-- Location: LCCOMB_X68_Y46_N16
\Y_internal~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~259_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[38]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[38]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[38]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[38]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~259_combout\);

-- Location: LCCOMB_X68_Y46_N2
\Y_internal~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~260_combout\ = (\Y_internal~259_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Y_internal~259_combout\,
	combout => \Y_internal~260_combout\);

-- Location: LCCOMB_X68_Y46_N14
\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ = \A[38]~input_o\ $ (\B[38]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y46_N18
\Y_internal~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~131_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\) # (\Shifter|stage[6][38]~434_combout\)))) # (!\Y_internal~108_combout\ & (\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Y_internal~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Shifter|stage[6][38]~434_combout\,
	combout => \Y_internal~131_combout\);

-- Location: LCCOMB_X69_Y46_N12
\Y_internal~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~132_combout\ = (\Y_internal~131_combout\ & (((\Shifter|stage[6][25]~399_combout\)) # (!\Y_internal~107_combout\))) # (!\Y_internal~131_combout\ & (\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~131_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|stage[6][25]~399_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~132_combout\);

-- Location: LCCOMB_X69_Y46_N22
\Y_internal~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~133_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~260_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~260_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~132_combout\,
	combout => \Y_internal~133_combout\);

-- Location: LCCOMB_X67_Y46_N16
\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\ $ (\A[39]~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y45_N10
\Y_internal~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~136_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & (\Shifter|Output[31]~3_combout\)) # (!\Y_internal~107_combout\ & 
-- ((\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Output[31]~3_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Y_internal~136_combout\);

-- Location: LCCOMB_X66_Y45_N12
\Y_internal~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~137_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~136_combout\ & (\Shifter|stage[6][24]~396_combout\)) # (!\Y_internal~136_combout\ & ((\Shifter|stage[6][39]~433_combout\))))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][24]~396_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][39]~433_combout\,
	datad => \Y_internal~136_combout\,
	combout => \Y_internal~137_combout\);

-- Location: LCCOMB_X67_Y46_N18
\Y_internal~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~134_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~20_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicUnit|Y~20_combout\,
	combout => \Y_internal~134_combout\);

-- Location: LCCOMB_X67_Y46_N20
\Y_internal~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~135_combout\ = (\LogicFN[1]~input_o\ & ((\B[39]~input_o\ & ((\A[39]~input_o\) # (!\Y_internal~134_combout\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & !\Y_internal~134_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \Y_internal~134_combout\,
	combout => \Y_internal~135_combout\);

-- Location: LCCOMB_X66_Y45_N14
\Y_internal~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~138_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~135_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~137_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~135_combout\,
	combout => \Y_internal~138_combout\);

-- Location: LCCOMB_X69_Y36_N10
\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[40]~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[40]~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:0:fa_cin~combout\,
	datad => \B[40]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X73_Y42_N20
\Y_internal~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~139_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & (\Shifter|stage[6][40]~432_combout\)) # (!\Y_internal~108_combout\ & 
-- ((\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][40]~432_combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~108_combout\,
	combout => \Y_internal~139_combout\);

-- Location: LCCOMB_X73_Y42_N14
\Y_internal~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~140_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~139_combout\ & (\Shifter|stage[6][23]~393_combout\)) # (!\Y_internal~139_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][23]~393_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~139_combout\,
	combout => \Y_internal~140_combout\);

-- Location: LCCOMB_X69_Y36_N20
\Y_internal~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~257_combout\ = (\LogicFN[1]~input_o\ & ((\A[40]~input_o\ & ((\B[40]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[40]~input_o\ & (!\LogicFN[0]~input_o\ & \B[40]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[40]~input_o\ $ (\B[40]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[40]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Y_internal~257_combout\);

-- Location: LCCOMB_X69_Y36_N30
\Y_internal~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~258_combout\ = (\Y_internal~257_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Y_internal~257_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~258_combout\);

-- Location: LCCOMB_X73_Y42_N16
\Y_internal~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~141_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~258_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~140_combout\,
	datac => \Y_internal~258_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~141_combout\);

-- Location: LCCOMB_X65_Y36_N28
\Y_internal~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~142_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~21_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicUnit|Y~21_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~142_combout\);

-- Location: LCCOMB_X65_Y36_N14
\Y_internal~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~143_combout\ = (\LogicFN[1]~input_o\ & ((\B[41]~input_o\ & ((\A[41]~input_o\) # (!\Y_internal~142_combout\))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & !\Y_internal~142_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~142_combout\,
	combout => \Y_internal~143_combout\);

-- Location: LCCOMB_X65_Y36_N12
\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ = \B[41]~input_o\ $ (\A[41]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y36_N0
\Y_internal~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~144_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\) # (\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Y_internal~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~144_combout\);

-- Location: LCCOMB_X66_Y36_N2
\Y_internal~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~145_combout\ = (\Y_internal~144_combout\ & (((\Shifter|stage[6][22]~391_combout\) # (!\Y_internal~108_combout\)))) # (!\Y_internal~144_combout\ & (\Shifter|stage[6][41]~431_combout\ & (\Y_internal~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~144_combout\,
	datab => \Shifter|stage[6][41]~431_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|stage[6][22]~391_combout\,
	combout => \Y_internal~145_combout\);

-- Location: LCCOMB_X66_Y36_N20
\Y_internal~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~146_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~143_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_internal~143_combout\,
	datad => \Y_internal~145_combout\,
	combout => \Y_internal~146_combout\);

-- Location: LCCOMB_X65_Y36_N6
\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ = \A[42]~input_o\ $ (\B[42]~input_o\ $ (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y36_N22
\Y_internal~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~147_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~107_combout\) # ((\Shifter|stage[6][42]~430_combout\)))) # (!\Y_internal~108_combout\ & (!\Y_internal~107_combout\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|stage[6][42]~430_combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\,
	combout => \Y_internal~147_combout\);

-- Location: LCCOMB_X66_Y36_N8
\Y_internal~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~148_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~147_combout\ & (\Shifter|stage[6][21]~388_combout\)) # (!\Y_internal~147_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][21]~388_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~147_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~148_combout\);

-- Location: LCCOMB_X65_Y36_N4
\Y_internal~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~255_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[42]~input_o\ & ((\B[42]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\B[42]~input_o\ & 
-- (!\LogicFN[1]~input_o\ & !\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[42]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~255_combout\);

-- Location: LCCOMB_X65_Y36_N30
\Y_internal~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~256_combout\ = (\Y_internal~255_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Y_internal~255_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~256_combout\);

-- Location: LCCOMB_X66_Y36_N18
\Y_internal~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~149_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~256_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_internal~148_combout\,
	datad => \Y_internal~256_combout\,
	combout => \Y_internal~149_combout\);

-- Location: LCCOMB_X65_Y36_N0
\Y_internal~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~253_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[43]~input_o\ $ (\A[43]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[43]~input_o\) # (\A[43]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Y_internal~253_combout\);

-- Location: LCCOMB_X65_Y36_N2
\Y_internal~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~254_combout\ = (\Y_internal~253_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Y_internal~253_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~254_combout\);

-- Location: LCCOMB_X65_Y36_N8
\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\ $ (\A[43]~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[43]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y36_N12
\Y_internal~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~150_combout\ = (\Y_internal~108_combout\ & (\Y_internal~107_combout\)) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\))) # (!\Y_internal~107_combout\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~150_combout\);

-- Location: LCCOMB_X66_Y36_N6
\Y_internal~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~151_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~150_combout\ & (\Shifter|stage[6][20]~386_combout\)) # (!\Y_internal~150_combout\ & ((\Shifter|stage[6][43]~429_combout\))))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Shifter|stage[6][20]~386_combout\,
	datac => \Shifter|stage[6][43]~429_combout\,
	datad => \Y_internal~150_combout\,
	combout => \Y_internal~151_combout\);

-- Location: LCCOMB_X66_Y36_N24
\Y_internal~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~152_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~254_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_internal~254_combout\,
	datad => \Y_internal~151_combout\,
	combout => \Y_internal~152_combout\);

-- Location: LCCOMB_X69_Y36_N0
\Y_internal~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~251_combout\ = (\LogicFN[0]~input_o\ & ((\B[44]~input_o\ & (\A[44]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[44]~input_o\) # ((\A[44]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[44]~input_o\,
	datac => \A[44]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~251_combout\);

-- Location: LCCOMB_X69_Y36_N2
\Y_internal~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~252_combout\ = (\Y_internal~251_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Y_internal~251_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~252_combout\);

-- Location: LCCOMB_X69_Y36_N28
\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\A[44]~input_o\ $ (\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X67_Y36_N16
\Y_internal~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~153_combout\ = (\Y_internal~108_combout\ & (((\Shifter|stage[6][44]~428_combout\) # (\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & (\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\ & ((!\Y_internal~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][44]~428_combout\,
	datad => \Y_internal~107_combout\,
	combout => \Y_internal~153_combout\);

-- Location: LCCOMB_X67_Y36_N10
\Y_internal~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~154_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~153_combout\ & (\Shifter|stage[6][19]~383_combout\)) # (!\Y_internal~153_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][19]~383_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Y_internal~153_combout\,
	combout => \Y_internal~154_combout\);

-- Location: LCCOMB_X67_Y36_N12
\Y_internal~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~155_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~252_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~154_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_internal~252_combout\,
	datad => \Y_internal~154_combout\,
	combout => \Y_internal~155_combout\);

-- Location: LCCOMB_X68_Y36_N16
\Y_internal~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~156_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~22_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicUnit|Y~22_combout\,
	combout => \Y_internal~156_combout\);

-- Location: LCCOMB_X68_Y36_N2
\Y_internal~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~157_combout\ = (\LogicFN[1]~input_o\ & ((\A[45]~input_o\ & ((\B[45]~input_o\) # (!\Y_internal~156_combout\))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & !\Y_internal~156_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \Y_internal~156_combout\,
	combout => \Y_internal~157_combout\);

-- Location: LCCOMB_X68_Y36_N18
\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[45]~input_o\ $ (\B[45]~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X67_Y36_N6
\Y_internal~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~158_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~108_combout\) # ((\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (!\Y_internal~108_combout\ & ((\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\,
	combout => \Y_internal~158_combout\);

-- Location: LCCOMB_X67_Y36_N0
\Y_internal~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~159_combout\ = (\Y_internal~158_combout\ & (((\Shifter|stage[6][18]~381_combout\)) # (!\Y_internal~108_combout\))) # (!\Y_internal~158_combout\ & (\Y_internal~108_combout\ & (\Shifter|stage[6][45]~427_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~158_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][45]~427_combout\,
	datad => \Shifter|stage[6][18]~381_combout\,
	combout => \Y_internal~159_combout\);

-- Location: LCCOMB_X67_Y36_N18
\Y_internal~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~160_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~157_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_internal~157_combout\,
	datad => \Y_internal~159_combout\,
	combout => \Y_internal~160_combout\);

-- Location: LCCOMB_X65_Y42_N28
\Y_internal~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~249_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[46]~input_o\ & \A[46]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[46]~input_o\) # (\A[46]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[46]~input_o\ $ (\A[46]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Y_internal~249_combout\);

-- Location: LCCOMB_X65_Y42_N14
\Y_internal~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~250_combout\ = (\Y_internal~249_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Y_internal~249_combout\,
	combout => \Y_internal~250_combout\);

-- Location: LCCOMB_X68_Y36_N4
\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[46]~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[46]~input_o\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \B[46]~input_o\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X67_Y36_N28
\Y_internal~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~161_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & ((\Shifter|stage[6][46]~426_combout\))) # (!\Y_internal~108_combout\ & 
-- (\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|stage[6][46]~426_combout\,
	combout => \Y_internal~161_combout\);

-- Location: LCCOMB_X67_Y36_N22
\Y_internal~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~162_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~161_combout\ & ((\Shifter|stage[6][17]~379_combout\))) # (!\Y_internal~161_combout\ & (\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (((\Y_internal~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|Output[31]~3_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|stage[6][17]~379_combout\,
	datad => \Y_internal~161_combout\,
	combout => \Y_internal~162_combout\);

-- Location: LCCOMB_X67_Y36_N24
\Y_internal~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~163_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~250_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~250_combout\,
	datac => \Y_internal~162_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~163_combout\);

-- Location: LCCOMB_X68_Y36_N28
\Y_internal~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~164_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicUnit|Y~23_combout\))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicUnit|Y~23_combout\,
	combout => \Y_internal~164_combout\);

-- Location: LCCOMB_X68_Y36_N22
\Y_internal~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~165_combout\ = (\LogicFN[1]~input_o\ & ((\B[47]~input_o\ & ((\A[47]~input_o\) # (!\Y_internal~164_combout\))) # (!\B[47]~input_o\ & (\A[47]~input_o\ & !\Y_internal~164_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Y_internal~164_combout\,
	combout => \Y_internal~165_combout\);

-- Location: LCCOMB_X68_Y36_N30
\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\ $ (\A[47]~input_o\ $ (\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[47]~input_o\,
	datac => \A[47]~input_o\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y44_N18
\Y_internal~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~166_combout\ = (\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\) # ((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & (((!\Y_internal~108_combout\ & \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Y_internal~166_combout\);

-- Location: LCCOMB_X65_Y42_N30
\Y_internal~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~167_combout\ = (\Y_internal~166_combout\ & (((\Shifter|stage[6][16]~376_combout\)) # (!\Y_internal~108_combout\))) # (!\Y_internal~166_combout\ & (\Y_internal~108_combout\ & ((\Shifter|stage[6][47]~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~166_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][16]~376_combout\,
	datad => \Shifter|stage[6][47]~425_combout\,
	combout => \Y_internal~167_combout\);

-- Location: LCCOMB_X65_Y42_N16
\Y_internal~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~168_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~165_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~165_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_internal~167_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y_internal~168_combout\);

-- Location: LCCOMB_X73_Y40_N2
\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ = \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\ $ (\AddnSub~input_o\ $ (\A[48]~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:0:fa_cin~combout\,
	datab => \AddnSub~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y42_N0
\Y_internal~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~169_combout\ = (\Y_internal~108_combout\ & ((\Shifter|stage[6][48]~373_combout\) # ((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & (((!\Y_internal~107_combout\ & \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][48]~373_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\,
	combout => \Y_internal~169_combout\);

-- Location: LCCOMB_X69_Y42_N10
\Y_internal~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~170_combout\ = (\Y_internal~169_combout\ & ((\Shifter|stage[6][15]~372_combout\) # ((!\Y_internal~107_combout\)))) # (!\Y_internal~169_combout\ & (((\Y_internal~107_combout\ & \Shifter|Output[31]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~169_combout\,
	datab => \Shifter|stage[6][15]~372_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~170_combout\);

-- Location: LCCOMB_X73_Y40_N4
\Y_internal~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~247_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[48]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[48]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[48]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[48]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~247_combout\);

-- Location: LCCOMB_X73_Y40_N14
\Y_internal~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~248_combout\ = (\Y_internal~247_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Y_internal~247_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~248_combout\);

-- Location: LCCOMB_X73_Y42_N18
\Y_internal~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~171_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~248_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~170_combout\,
	datac => \Y_internal~248_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~171_combout\);

-- Location: LCCOMB_X69_Y36_N22
\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (\B[49]~input_o\ $ (\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y36_N10
\Y_internal~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~174_combout\ = (\Y_internal~108_combout\ & (\Y_internal~107_combout\)) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\))) # (!\Y_internal~107_combout\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~174_combout\);

-- Location: LCCOMB_X66_Y36_N4
\Y_internal~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~175_combout\ = (\Y_internal~174_combout\ & (((\Shifter|stage[6][14]~364_combout\) # (!\Y_internal~108_combout\)))) # (!\Y_internal~174_combout\ & (\Shifter|stage[6][49]~365_combout\ & (\Y_internal~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~174_combout\,
	datab => \Shifter|stage[6][49]~365_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|stage[6][14]~364_combout\,
	combout => \Y_internal~175_combout\);

-- Location: LCCOMB_X69_Y36_N14
\Y_internal~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~172_combout\ = (\LogicFN[0]~input_o\ & ((\LogicUnit|Y~25_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\ & !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicUnit|Y~25_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~172_combout\);

-- Location: LCCOMB_X69_Y36_N16
\Y_internal~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~173_combout\ = (\LogicFN[1]~input_o\ & ((\Y_internal~172_combout\ & (\B[49]~input_o\ & \A[49]~input_o\)) # (!\Y_internal~172_combout\ & ((\B[49]~input_o\) # (\A[49]~input_o\))))) # (!\LogicFN[1]~input_o\ & (\Y_internal~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Y_internal~172_combout\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Y_internal~173_combout\);

-- Location: LCCOMB_X66_Y36_N30
\Y_internal~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~176_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~173_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~175_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~173_combout\,
	combout => \Y_internal~176_combout\);

-- Location: LCCOMB_X75_Y40_N16
\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[50]~input_o\ $ (\B[50]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X75_Y40_N4
\Y_internal~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~177_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & (\Shifter|stage[6][50]~356_combout\)) # (!\Y_internal~108_combout\ & 
-- ((\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|stage[6][50]~356_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\,
	combout => \Y_internal~177_combout\);

-- Location: LCCOMB_X75_Y40_N6
\Y_internal~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~178_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~177_combout\ & ((\Shifter|stage[6][13]~355_combout\))) # (!\Y_internal~177_combout\ & (\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (((\Y_internal~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~177_combout\,
	datad => \Shifter|stage[6][13]~355_combout\,
	combout => \Y_internal~178_combout\);

-- Location: LCCOMB_X75_Y40_N10
\Y_internal~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~245_combout\ = (\LogicFN[0]~input_o\ & ((\A[50]~input_o\ & (\B[50]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[50]~input_o\) # ((\B[50]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~245_combout\);

-- Location: LCCOMB_X75_Y40_N12
\Y_internal~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~246_combout\ = (\Y_internal~245_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Y_internal~245_combout\,
	combout => \Y_internal~246_combout\);

-- Location: LCCOMB_X75_Y40_N8
\Y_internal~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~179_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~246_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~178_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~246_combout\,
	combout => \Y_internal~179_combout\);

-- Location: LCCOMB_X74_Y39_N10
\Y_internal~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~180_combout\ = (\LogicFN[0]~input_o\ & (((\LogicUnit|Y~26_combout\) # (\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\ & ((!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicUnit|Y~26_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~180_combout\);

-- Location: LCCOMB_X74_Y39_N12
\Y_internal~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~181_combout\ = (\LogicFN[1]~input_o\ & ((\B[51]~input_o\ & ((\A[51]~input_o\) # (!\Y_internal~180_combout\))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & !\Y_internal~180_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[51]~input_o\,
	datad => \Y_internal~180_combout\,
	combout => \Y_internal~181_combout\);

-- Location: LCCOMB_X74_Y39_N22
\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ = \B[51]~input_o\ $ (\AddnSub~input_o\ $ (\A[51]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X74_Y39_N30
\Y_internal~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~182_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & ((\Y_internal~107_combout\ & (\Shifter|Output[31]~3_combout\)) # (!\Y_internal~107_combout\ & 
-- ((\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Y_internal~107_combout\,
	combout => \Y_internal~182_combout\);

-- Location: LCCOMB_X74_Y39_N16
\Y_internal~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~183_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~182_combout\ & (\Shifter|stage[6][12]~347_combout\)) # (!\Y_internal~182_combout\ & ((\Shifter|stage[6][51]~348_combout\))))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Shifter|stage[6][12]~347_combout\,
	datac => \Y_internal~182_combout\,
	datad => \Shifter|stage[6][51]~348_combout\,
	combout => \Y_internal~183_combout\);

-- Location: LCCOMB_X74_Y39_N2
\Y_internal~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~184_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~181_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~183_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~181_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~183_combout\,
	combout => \Y_internal~184_combout\);

-- Location: LCCOMB_X74_Y40_N10
\Y_internal~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~243_combout\ = (\B[52]~input_o\ & ((\A[52]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[52]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[52]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[52]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[52]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~243_combout\);

-- Location: LCCOMB_X74_Y40_N12
\Y_internal~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~244_combout\ = (\Y_internal~243_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Y_internal~243_combout\,
	combout => \Y_internal~244_combout\);

-- Location: LCCOMB_X74_Y40_N8
\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\ = \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\B[52]~input_o\ $ (\A[52]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X75_Y40_N2
\Y_internal~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~185_combout\ = (\Y_internal~108_combout\ & ((\Shifter|stage[6][52]~340_combout\) # ((\Y_internal~107_combout\)))) # (!\Y_internal~108_combout\ & (((!\Y_internal~107_combout\ & \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Shifter|stage[6][52]~340_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Y_internal~185_combout\);

-- Location: LCCOMB_X75_Y40_N20
\Y_internal~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~186_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~185_combout\ & (\Shifter|stage[6][11]~339_combout\)) # (!\Y_internal~185_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][11]~339_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~185_combout\,
	combout => \Y_internal~186_combout\);

-- Location: LCCOMB_X75_Y40_N30
\Y_internal~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~187_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~244_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~244_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~186_combout\,
	combout => \Y_internal~187_combout\);

-- Location: LCCOMB_X74_Y40_N2
\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\ $ (\A[53]~input_o\ $ (\B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|cout~0_combout\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X75_Y40_N24
\Y_internal~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~190_combout\ = (\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\) # ((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & (((!\Y_internal~108_combout\ & \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\,
	combout => \Y_internal~190_combout\);

-- Location: LCCOMB_X72_Y39_N26
\Y_internal~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~191_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~190_combout\ & ((\Shifter|stage[6][10]~329_combout\))) # (!\Y_internal~190_combout\ & (\Shifter|stage[6][53]~330_combout\)))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Shifter|stage[6][53]~330_combout\,
	datac => \Shifter|stage[6][10]~329_combout\,
	datad => \Y_internal~190_combout\,
	combout => \Y_internal~191_combout\);

-- Location: LCCOMB_X74_Y40_N28
\Y_internal~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~188_combout\ = (\LogicFN[0]~input_o\ & (((\LogicUnit|Y~24_combout\) # (\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\ & ((!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicUnit|Y~24_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~188_combout\);

-- Location: LCCOMB_X74_Y40_N14
\Y_internal~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~189_combout\ = (\LogicFN[1]~input_o\ & ((\B[53]~input_o\ & ((\A[53]~input_o\) # (!\Y_internal~188_combout\))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & !\Y_internal~188_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[53]~input_o\,
	datad => \Y_internal~188_combout\,
	combout => \Y_internal~189_combout\);

-- Location: LCCOMB_X75_Y40_N26
\Y_internal~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~192_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~189_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~191_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~189_combout\,
	combout => \Y_internal~192_combout\);

-- Location: LCCOMB_X74_Y40_N30
\Y_internal~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~241_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[54]~input_o\ & \A[54]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[54]~input_o\ $ (\A[54]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[54]~input_o\) # (\A[54]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Y_internal~241_combout\);

-- Location: LCCOMB_X74_Y40_N0
\Y_internal~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~242_combout\ = (\Y_internal~241_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Y_internal~241_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~242_combout\);

-- Location: LCCOMB_X74_Y40_N20
\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[54]~input_o\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datad => \A[54]~input_o\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y44_N4
\Y_internal~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~193_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & ((\Shifter|stage[6][54]~321_combout\))) # (!\Y_internal~108_combout\ & 
-- (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|stage[6][54]~321_combout\,
	combout => \Y_internal~193_combout\);

-- Location: LCCOMB_X70_Y44_N22
\Y_internal~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~194_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~193_combout\ & ((\Shifter|stage[6][9]~320_combout\))) # (!\Y_internal~193_combout\ & (\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (((\Y_internal~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~193_combout\,
	datad => \Shifter|stage[6][9]~320_combout\,
	combout => \Y_internal~194_combout\);

-- Location: LCCOMB_X70_Y44_N24
\Y_internal~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~195_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~242_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~194_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~242_combout\,
	datac => \Y_internal~194_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~195_combout\);

-- Location: LCCOMB_X73_Y40_N0
\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ = \A[55]~input_o\ $ (\AddnSub~input_o\ $ (\B[55]~input_o\ $ (\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y44_N26
\Y_internal~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~196_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~108_combout\) # ((\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (!\Y_internal~108_combout\ & ((\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Y_internal~196_combout\);

-- Location: LCCOMB_X70_Y44_N20
\Y_internal~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~197_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~196_combout\ & ((\Shifter|stage[6][8]~310_combout\))) # (!\Y_internal~196_combout\ & (\Shifter|stage[6][55]~311_combout\)))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][55]~311_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Y_internal~196_combout\,
	datad => \Shifter|stage[6][8]~310_combout\,
	combout => \Y_internal~197_combout\);

-- Location: LCCOMB_X73_Y40_N16
\Y_internal~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~239_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[55]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[55]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[55]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[55]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~239_combout\);

-- Location: LCCOMB_X73_Y40_N18
\Y_internal~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~240_combout\ = (\Y_internal~239_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Y_internal~239_combout\,
	combout => \Y_internal~240_combout\);

-- Location: LCCOMB_X65_Y42_N26
\Y_internal~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~198_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~240_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~197_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~240_combout\,
	combout => \Y_internal~198_combout\);

-- Location: LCCOMB_X72_Y44_N16
\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\ = \B[56]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\ $ (\AddnSub~input_o\ $ (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:0:fa_cin~combout\,
	datac => \AddnSub~input_o\,
	datad => \A[56]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y44_N16
\Y_internal~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~199_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & (\Shifter|stage[6][56]~300_combout\)) # (!\Y_internal~108_combout\ & 
-- ((\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][56]~300_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\,
	combout => \Y_internal~199_combout\);

-- Location: LCCOMB_X68_Y44_N10
\Y_internal~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~200_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~199_combout\ & (\Shifter|stage[6][7]~424_combout\)) # (!\Y_internal~199_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][7]~424_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Y_internal~199_combout\,
	combout => \Y_internal~200_combout\);

-- Location: LCCOMB_X72_Y44_N12
\Y_internal~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~237_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[56]~input_o\ & \A[56]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[56]~input_o\) # (\A[56]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[56]~input_o\ $ (\A[56]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Y_internal~237_combout\);

-- Location: LCCOMB_X72_Y44_N14
\Y_internal~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~238_combout\ = (\Y_internal~237_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Y_internal~237_combout\,
	combout => \Y_internal~238_combout\);

-- Location: LCCOMB_X68_Y44_N28
\Y_internal~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~201_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~238_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~200_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~238_combout\,
	combout => \Y_internal~201_combout\);

-- Location: LCCOMB_X72_Y44_N10
\Y_internal~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~235_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[57]~input_o\ & \A[57]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[57]~input_o\) # (\A[57]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[57]~input_o\ $ (\A[57]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[57]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Y_internal~235_combout\);

-- Location: LCCOMB_X70_Y44_N14
\Y_internal~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~236_combout\ = (\Y_internal~235_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Y_internal~235_combout\,
	combout => \Y_internal~236_combout\);

-- Location: LCCOMB_X72_Y44_N26
\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\ = \A[57]~input_o\ $ (\AddnSub~input_o\ $ (\B[57]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[57]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y44_N6
\Y_internal~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~202_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~108_combout\) # ((\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (!\Y_internal~108_combout\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\,
	combout => \Y_internal~202_combout\);

-- Location: LCCOMB_X70_Y44_N0
\Y_internal~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~203_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~202_combout\ & (\Shifter|stage[6][6]~423_combout\)) # (!\Y_internal~202_combout\ & ((\Shifter|stage[6][57]~287_combout\))))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][6]~423_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][57]~287_combout\,
	datad => \Y_internal~202_combout\,
	combout => \Y_internal~203_combout\);

-- Location: LCCOMB_X70_Y44_N10
\Y_internal~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~204_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~236_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~203_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~236_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~203_combout\,
	combout => \Y_internal~204_combout\);

-- Location: LCCOMB_X72_Y44_N24
\Y_internal~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~233_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[58]~input_o\) # (\B[58]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[58]~input_o\ $ (\B[58]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Y_internal~233_combout\);

-- Location: LCCOMB_X73_Y40_N22
\Y_internal~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~234_combout\ = (\Y_internal~233_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~233_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~234_combout\);

-- Location: LCCOMB_X72_Y44_N28
\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ = \B[58]~input_o\ $ (\AddnSub~input_o\ $ (\A[58]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X69_Y42_N4
\Y_internal~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~205_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & ((\Shifter|stage[6][58]~274_combout\))) # (!\Y_internal~108_combout\ & 
-- (\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Shifter|stage[6][58]~274_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~108_combout\,
	combout => \Y_internal~205_combout\);

-- Location: LCCOMB_X69_Y42_N30
\Y_internal~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~206_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~205_combout\ & (\Shifter|stage[6][5]~422_combout\)) # (!\Y_internal~205_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][5]~422_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~205_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~206_combout\);

-- Location: LCCOMB_X73_Y42_N12
\Y_internal~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~207_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~234_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~234_combout\,
	datac => \Y_internal~206_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Y_internal~207_combout\);

-- Location: LCCOMB_X65_Y42_N12
\Y_internal~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~208_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\LogicUnit|Y~28_combout\)) # (!\LogicFN[0]~input_o\ & ((\B[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~28_combout\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Y_internal~208_combout\);

-- Location: LCCOMB_X65_Y42_N22
\Y_internal~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~209_combout\ = (\LogicFN[1]~input_o\ & ((\A[59]~input_o\ & ((\B[59]~input_o\) # (!\Y_internal~208_combout\))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & !\Y_internal~208_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \Y_internal~208_combout\,
	combout => \Y_internal~209_combout\);

-- Location: LCCOMB_X66_Y44_N12
\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ = \A[59]~input_o\ $ (\AddnSub~input_o\ $ (\B[59]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[59]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y44_N22
\Y_internal~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~210_combout\ = (\Y_internal~107_combout\ & ((\Shifter|Output[31]~3_combout\) # ((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & (((!\Y_internal~108_combout\ & \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\,
	combout => \Y_internal~210_combout\);

-- Location: LCCOMB_X65_Y42_N24
\Y_internal~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~211_combout\ = (\Y_internal~210_combout\ & (((\Shifter|stage[6][4]~420_combout\)) # (!\Y_internal~108_combout\))) # (!\Y_internal~210_combout\ & (\Y_internal~108_combout\ & (\Shifter|stage[6][59]~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~210_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|stage[6][59]~262_combout\,
	datad => \Shifter|stage[6][4]~420_combout\,
	combout => \Y_internal~211_combout\);

-- Location: LCCOMB_X65_Y42_N2
\Y_internal~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~212_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~209_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~211_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~209_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~211_combout\,
	combout => \Y_internal~212_combout\);

-- Location: LCCOMB_X66_Y44_N6
\Y_internal~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~231_combout\ = (\A[60]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[60]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[60]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[60]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[60]~input_o\) 
-- # (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Y_internal~231_combout\);

-- Location: LCCOMB_X73_Y40_N20
\Y_internal~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~232_combout\ = (\Y_internal~231_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~231_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~232_combout\);

-- Location: LCCOMB_X66_Y44_N16
\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\ = \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\ $ (\A[60]~input_o\ $ (\AddnSub~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|cout~0_combout\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y44_N26
\Y_internal~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~213_combout\ = (\Y_internal~107_combout\ & (((\Y_internal~108_combout\)))) # (!\Y_internal~107_combout\ & ((\Y_internal~108_combout\ & (\Shifter|stage[6][60]~248_combout\)) # (!\Y_internal~108_combout\ & 
-- ((\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Shifter|stage[6][60]~248_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Y_internal~213_combout\);

-- Location: LCCOMB_X69_Y46_N0
\Y_internal~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~214_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~213_combout\ & (\Shifter|stage[6][3]~247_combout\)) # (!\Y_internal~213_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][3]~247_combout\,
	datab => \Shifter|Output[31]~3_combout\,
	datac => \Y_internal~107_combout\,
	datad => \Y_internal~213_combout\,
	combout => \Y_internal~214_combout\);

-- Location: LCCOMB_X69_Y46_N2
\Y_internal~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~215_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~232_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~214_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~232_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~214_combout\,
	combout => \Y_internal~215_combout\);

-- Location: LCCOMB_X66_Y44_N4
\Y_internal~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~216_combout\ = (\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\) # (\LogicUnit|Y~29_combout\)))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\ & (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicUnit|Y~29_combout\,
	combout => \Y_internal~216_combout\);

-- Location: LCCOMB_X66_Y44_N14
\Y_internal~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~217_combout\ = (\LogicFN[1]~input_o\ & ((\B[61]~input_o\ & ((\A[61]~input_o\) # (!\Y_internal~216_combout\))) # (!\B[61]~input_o\ & (!\Y_internal~216_combout\ & \A[61]~input_o\)))) # (!\LogicFN[1]~input_o\ & (((\Y_internal~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Y_internal~216_combout\,
	datad => \A[61]~input_o\,
	combout => \Y_internal~217_combout\);

-- Location: LCCOMB_X66_Y44_N8
\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ = \B[61]~input_o\ $ (\AddnSub~input_o\ $ (\A[61]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[61]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X66_Y44_N18
\Y_internal~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~218_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~108_combout\) # ((\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (!\Y_internal~108_combout\ & (\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~218_combout\);

-- Location: LCCOMB_X67_Y36_N26
\Y_internal~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~219_combout\ = (\Y_internal~218_combout\ & (((\Shifter|stage[6][2]~214_combout\) # (!\Y_internal~108_combout\)))) # (!\Y_internal~218_combout\ & (\Shifter|stage[6][61]~215_combout\ & (\Y_internal~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][61]~215_combout\,
	datab => \Y_internal~218_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Shifter|stage[6][2]~214_combout\,
	combout => \Y_internal~219_combout\);

-- Location: LCCOMB_X67_Y36_N4
\Y_internal~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~220_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Y_internal~217_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_internal~219_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~217_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_internal~219_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Y_internal~220_combout\);

-- Location: LCCOMB_X73_Y44_N4
\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\ $ (\B[62]~input_o\ $ (\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|cout~0_combout\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y44_N30
\Y_internal~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~221_combout\ = (\Y_internal~108_combout\ & (((\Y_internal~107_combout\) # (\Shifter|stage[6][62]~169_combout\)))) # (!\Y_internal~108_combout\ & (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Y_internal~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~108_combout\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\,
	datac => \Y_internal~107_combout\,
	datad => \Shifter|stage[6][62]~169_combout\,
	combout => \Y_internal~221_combout\);

-- Location: LCCOMB_X68_Y44_N0
\Y_internal~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~222_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~221_combout\ & (\Shifter|stage[6][1]~167_combout\)) # (!\Y_internal~221_combout\ & ((\Shifter|Output[31]~3_combout\))))) # (!\Y_internal~107_combout\ & (((\Y_internal~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][1]~167_combout\,
	datab => \Y_internal~107_combout\,
	datac => \Y_internal~221_combout\,
	datad => \Shifter|Output[31]~3_combout\,
	combout => \Y_internal~222_combout\);

-- Location: LCCOMB_X73_Y44_N14
\Y_internal~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~229_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[62]~input_o\ & \A[62]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[62]~input_o\) # (\A[62]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[62]~input_o\ $ (\A[62]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Y_internal~229_combout\);

-- Location: LCCOMB_X69_Y44_N30
\Y_internal~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~230_combout\ = (\Y_internal~229_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Y_internal~229_combout\,
	combout => \Y_internal~230_combout\);

-- Location: LCCOMB_X68_Y44_N18
\Y_internal~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~223_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~230_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_internal~222_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_internal~230_combout\,
	combout => \Y_internal~223_combout\);

-- Location: LCCOMB_X73_Y44_N10
\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\ = \AddnSub~input_o\ $ (\A[63]~input_o\ $ (\B[63]~input_o\ $ (\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|cout~0_combout\,
	combout => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\);

-- Location: LCCOMB_X70_Y44_N28
\Y_internal~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~226_combout\ = (\Y_internal~107_combout\ & ((\Y_internal~108_combout\) # ((\Shifter|Output[31]~3_combout\)))) # (!\Y_internal~107_combout\ & (!\Y_internal~108_combout\ & ((\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~107_combout\,
	datab => \Y_internal~108_combout\,
	datac => \Shifter|Output[31]~3_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Y_internal~226_combout\);

-- Location: LCCOMB_X67_Y44_N4
\Y_internal~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~227_combout\ = (\Y_internal~108_combout\ & ((\Y_internal~226_combout\ & ((\Shifter|stage[6][0]~114_combout\))) # (!\Y_internal~226_combout\ & (\Shifter|stage[6][63]~117_combout\)))) # (!\Y_internal~108_combout\ & 
-- (((\Y_internal~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter|stage[6][63]~117_combout\,
	datab => \Shifter|stage[6][0]~114_combout\,
	datac => \Y_internal~108_combout\,
	datad => \Y_internal~226_combout\,
	combout => \Y_internal~227_combout\);

-- Location: LCCOMB_X73_Y44_N22
\Y_internal~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~224_combout\ = (\LogicFN[0]~input_o\ & ((\LogicUnit|Y~27_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\ & !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicUnit|Y~27_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~224_combout\);

-- Location: LCCOMB_X73_Y44_N24
\Y_internal~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~225_combout\ = (\Y_internal~224_combout\ & (((\A[63]~input_o\ & \B[63]~input_o\)) # (!\LogicFN[1]~input_o\))) # (!\Y_internal~224_combout\ & (\LogicFN[1]~input_o\ & ((\A[63]~input_o\) # (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_internal~224_combout\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Y_internal~225_combout\);

-- Location: LCCOMB_X69_Y46_N4
\Y_internal~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_internal~228_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Y_internal~225_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_internal~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_internal~227_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_internal~225_combout\,
	combout => \Y_internal~228_combout\);

-- Location: LCCOMB_X65_Y36_N10
\Equal3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~16_combout\ = (!\Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:5:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Equal3~16_combout\);

-- Location: LCCOMB_X68_Y46_N8
\Equal3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~15_combout\ = (!\Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:7:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:5:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:6:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:4:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Equal3~15_combout\);

-- Location: LCCOMB_X68_Y36_N24
\Equal3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~17_combout\ = (!\Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:5:gen_rippleadder:7:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:5:gen_rippleadder:5:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:6:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:1:FA_inst|sum~combout\,
	combout => \Equal3~17_combout\);

-- Location: LCCOMB_X75_Y40_N28
\Equal3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~18_combout\ = (!\Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:2:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:6:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:6:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Equal3~18_combout\);

-- Location: LCCOMB_X75_Y40_N22
\Equal3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~19_combout\ = (\Equal3~16_combout\ & (\Equal3~15_combout\ & (\Equal3~17_combout\ & \Equal3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~16_combout\,
	datab => \Equal3~15_combout\,
	datac => \Equal3~17_combout\,
	datad => \Equal3~18_combout\,
	combout => \Equal3~19_combout\);

-- Location: LCCOMB_X70_Y38_N20
\Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (!\Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:7:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:2:gen_rippleadder:6:FA_inst|sum~combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X74_Y38_N26
\Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!\Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\ & (\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\ $ (!\Adder|gen_blk_cs:2:bits[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:3:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|cout~0_combout\,
	datac => \Adder|gen_blk_cs:2:bits[2]~0_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X70_Y38_N14
\Equal3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~11_combout\ = (!\Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\ & (\Equal3~10_combout\ & \Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:2:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:4:FA_inst|sum~combout\,
	datac => \Equal3~10_combout\,
	datad => \Equal3~9_combout\,
	combout => \Equal3~11_combout\);

-- Location: LCCOMB_X67_Y45_N24
\Equal3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~13_combout\ = (!\Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\ & (\AddnSub~input_o\ $ (\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\ $ (!\LogicUnit|Y~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|cout~0_combout\,
	datac => \LogicUnit|Y~18_combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Equal3~13_combout\);

-- Location: LCCOMB_X72_Y46_N4
\Equal3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~12_combout\ = (!\Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:3:gen_rippleadder:6:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:3:gen_rippleadder:5:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:3:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Equal3~12_combout\);

-- Location: LCCOMB_X67_Y45_N26
\Equal3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~14_combout\ = (!\Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\ & (\Equal3~13_combout\ & (!\Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\ & \Equal3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:2:FA_inst|sum~combout\,
	datab => \Equal3~13_combout\,
	datac => \Adder|gen_blk_cs:4:gen_rippleadder:3:FA_inst|sum~combout\,
	datad => \Equal3~12_combout\,
	combout => \Equal3~14_combout\);

-- Location: LCCOMB_X68_Y43_N22
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (!\Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:6:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:7:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:5:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:4:FA_inst|sum~combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X68_Y43_N0
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (\Equal3~4_combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Adder|gen_blk_cs:0:gen_rippleadder:3:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:0:gen_rippleadder:2:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:0:gen_rippleadder:1:FA_inst|sum~combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X70_Y43_N14
\Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!\Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:5:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:2:gen_rippleadder:1:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:7:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:6:FA_inst|sum~combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X69_Y43_N10
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!\Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:1:gen_rippleadder:4:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:2:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:1:gen_rippleadder:1:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:1:gen_rippleadder:3:FA_inst|sum~combout\,
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X69_Y43_N20
\Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (\Equal3~5_combout\ & (!\Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\ & (\Equal3~7_combout\ & \Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~5_combout\,
	datab => \Adder|gen_blk_cs:1:gen_rippleadder:0:FA_inst|sum~combout\,
	datac => \Equal3~7_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X70_Y44_N2
\Equal3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~20_combout\ = (\Equal3~19_combout\ & (\Equal3~11_combout\ & (\Equal3~14_combout\ & \Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~19_combout\,
	datab => \Equal3~11_combout\,
	datac => \Equal3~14_combout\,
	datad => \Equal3~8_combout\,
	combout => \Equal3~20_combout\);

-- Location: LCCOMB_X66_Y44_N20
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:7:gen_rippleadder:3:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:7:gen_rippleadder:4:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:5:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:6:FA_inst|sum~combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X70_Y44_N30
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\ & 
-- !\Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:6:gen_rippleadder:7:FA_inst|sum~combout\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:6:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:7:gen_rippleadder:2:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:1:FA_inst|sum~combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X70_Y44_N8
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!\Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\ & (\Equal3~2_combout\ & (\Equal3~1_combout\ & !\Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:0:gen_rippleadder:0:FA_inst|sum~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~1_combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:7:FA_inst|sum~combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X73_Y46_N8
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\ & (\Adder|gen_blk_cs:3:bits[0]~0_combout\ $ (!\Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder|gen_blk_cs:3:bits[0]~0_combout\,
	datac => \Adder|gen_blk_cs:2:gen_rippleadder:0:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:3:gen_rippleadder:0:fa_cin~combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X70_Y44_N12
\Equal3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~21_combout\ = (!\Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\ & (\Equal3~20_combout\ & (\Equal3~3_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder|gen_blk_cs:4:gen_rippleadder:0:FA_inst|sum~combout\,
	datab => \Equal3~20_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~21_combout\);

-- Location: LCCOMB_X68_Y44_N20
\Equal3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~22_combout\ = (\Equal3~21_combout\ & (!\Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\ & (!\Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\ & !\Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~21_combout\,
	datab => \Adder|gen_blk_cs:6:gen_rippleadder:0:FA_inst|sum~combout\,
	datac => \Adder|gen_blk_cs:5:gen_rippleadder:0:FA_inst|sum~combout\,
	datad => \Adder|gen_blk_cs:7:gen_rippleadder:0:FA_inst|sum~combout\,
	combout => \Equal3~22_combout\);

-- Location: LCCOMB_X73_Y44_N20
\AltB_sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB_sig~2_combout\ = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\Adder|Cout~combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Adder|Cout~combout\,
	datad => \AddnSub~input_o\,
	combout => \AltB_sig~2_combout\);

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


