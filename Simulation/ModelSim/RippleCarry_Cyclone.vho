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

-- DATE "11/16/2025 17:29:01"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	RippleCarry IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END RippleCarry;

-- Design Ports Information
-- S[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RippleCarry IS
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
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \gen_adders:0:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:0:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \gen_adders:1:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \gen_adders:2:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:3:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \gen_adders:3:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:4:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen_adders:5:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:5:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen_adders:6:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:7:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:8:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \gen_adders:8:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:9:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:10:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen_adders:11:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \gen_adders:11:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \gen_adders:12:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \gen_adders:12:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:13:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:14:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \gen_adders:15:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:15:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \gen_adders:16:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \gen_adders:16:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:17:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:17:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \gen_adders:18:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:18:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \gen_adders:19:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:20:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:20:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \gen_adders:21:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:22:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:23:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \gen_adders:23:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \gen_adders:24:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \gen_adders:25:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \gen_adders:25:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \gen_adders:26:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \gen_adders:26:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \gen_adders:27:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \gen_adders:27:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:28:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \gen_adders:28:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:29:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \gen_adders:30:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \gen_adders:31:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:32:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:32:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \gen_adders:33:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \gen_adders:33:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \gen_adders:34:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:35:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \gen_adders:36:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:36:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \gen_adders:37:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:37:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \gen_adders:38:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \gen_adders:39:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:40:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:40:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \gen_adders:41:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:42:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \gen_adders:43:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:43:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \gen_adders:44:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \gen_adders:45:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \gen_adders:46:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \gen_adders:46:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:47:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:48:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \gen_adders:49:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \gen_adders:50:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \gen_adders:50:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:51:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:52:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:53:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:53:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \gen_adders:54:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \gen_adders:55:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \gen_adders:55:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \gen_adders:56:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \gen_adders:56:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \gen_adders:57:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:57:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \gen_adders:58:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:58:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \gen_adders:59:FA_inst|sum~combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|sum~0_combout\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|sum~combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|cout~1_combout\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|cout~2_combout\ : std_logic;
SIGNAL \gen_adders:60:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \gen_adders:61:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:61:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \gen_adders:62:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:62:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \gen_adders:63:FA_inst|sum~combout\ : std_logic;
SIGNAL \gen_adders:63:FA_inst|cout~0_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y73_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:0:FA_inst|sum~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:1:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:2:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:3:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:4:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:5:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:6:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:7:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:8:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:9:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:10:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:11:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:12:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:13:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:14:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:15:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:16:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:17:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:18:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:19:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:20:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:21:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:22:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:23:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:24:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:25:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:26:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:27:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:28:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:29:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:30:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:31:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:32:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X0_Y69_N2
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:33:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:34:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:35:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:36:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:37:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:38:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:39:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:40:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:41:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:42:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:43:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:44:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:45:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:46:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:47:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:48:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:49:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:50:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:51:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:52:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:53:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:54:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:55:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:56:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:57:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:58:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:59:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:60:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:61:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:62:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:63:FA_inst|sum~combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:63:FA_inst|cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X34_Y72_N0
\gen_adders:0:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:0:FA_inst|sum~0_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	combout => \gen_adders:0:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X34_Y72_N26
\gen_adders:0:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:0:FA_inst|cout~0_combout\ = (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	combout => \gen_adders:0:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X34_Y72_N4
\gen_adders:1:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:1:FA_inst|sum~combout\ = \gen_adders:0:FA_inst|cout~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:0:FA_inst|cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_adders:1:FA_inst|sum~combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X34_Y72_N30
\gen_adders:2:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|sum~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \gen_adders:2:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X34_Y72_N8
\gen_adders:2:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|sum~combout\ = \gen_adders:2:FA_inst|sum~0_combout\ $ (((\gen_adders:0:FA_inst|cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\gen_adders:0:FA_inst|cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:0:FA_inst|cout~0_combout\,
	datab => \gen_adders:2:FA_inst|sum~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_adders:2:FA_inst|sum~combout\);

-- Location: LCCOMB_X34_Y72_N20
\gen_adders:2:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|cout~1_combout\ = (\B[2]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \gen_adders:2:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X34_Y72_N22
\gen_adders:2:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|cout~2_combout\ = (\gen_adders:2:FA_inst|cout~1_combout\ & ((\gen_adders:0:FA_inst|cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\gen_adders:0:FA_inst|cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:0:FA_inst|cout~0_combout\,
	datab => \gen_adders:2:FA_inst|cout~1_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \gen_adders:2:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X23_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X34_Y72_N10
\gen_adders:2:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:2:FA_inst|cout~0_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \gen_adders:2:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X34_Y72_N24
\gen_adders:3:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:3:FA_inst|sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\gen_adders:2:FA_inst|cout~2_combout\) # (\gen_adders:2:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:2:FA_inst|cout~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \gen_adders:2:FA_inst|cout~0_combout\,
	combout => \gen_adders:3:FA_inst|sum~combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X34_Y72_N18
\gen_adders:3:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:3:FA_inst|cout~0_combout\ = (\B[3]~input_o\ & ((\gen_adders:2:FA_inst|cout~2_combout\) # ((\A[3]~input_o\) # (\gen_adders:2:FA_inst|cout~0_combout\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\gen_adders:2:FA_inst|cout~2_combout\) # 
-- (\gen_adders:2:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:2:FA_inst|cout~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \gen_adders:2:FA_inst|cout~0_combout\,
	combout => \gen_adders:3:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X34_Y72_N12
\gen_adders:4:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|sum~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \gen_adders:3:FA_inst|cout~0_combout\,
	combout => \gen_adders:4:FA_inst|sum~combout\);

-- Location: LCCOMB_X34_Y72_N14
\gen_adders:4:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:4:FA_inst|cout~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\gen_adders:3:FA_inst|cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \gen_adders:3:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \gen_adders:3:FA_inst|cout~0_combout\,
	combout => \gen_adders:4:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X34_Y72_N16
\gen_adders:5:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:5:FA_inst|sum~combout\ = \gen_adders:4:FA_inst|cout~0_combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:4:FA_inst|cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_adders:5:FA_inst|sum~combout\);

-- Location: LCCOMB_X34_Y72_N2
\gen_adders:5:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:5:FA_inst|cout~0_combout\ = (\gen_adders:4:FA_inst|cout~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\gen_adders:4:FA_inst|cout~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:4:FA_inst|cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \gen_adders:5:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X34_Y72_N28
\gen_adders:6:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:6:FA_inst|sum~combout\ = \gen_adders:5:FA_inst|cout~0_combout\ $ (\A[6]~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:5:FA_inst|cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \gen_adders:6:FA_inst|sum~combout\);

-- Location: IOIBUF_X67_Y0_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X68_Y4_N0
\gen_adders:7:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|sum~0_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \gen_adders:7:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X34_Y72_N6
\gen_adders:7:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|sum~combout\ = \gen_adders:7:FA_inst|sum~0_combout\ $ (((\B[6]~input_o\ & ((\gen_adders:5:FA_inst|cout~0_combout\) # (\A[6]~input_o\))) # (!\B[6]~input_o\ & (\gen_adders:5:FA_inst|cout~0_combout\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \gen_adders:5:FA_inst|cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \gen_adders:7:FA_inst|sum~0_combout\,
	combout => \gen_adders:7:FA_inst|sum~combout\);

-- Location: IOIBUF_X65_Y0_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X68_Y4_N20
\gen_adders:7:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|cout~1_combout\ = (\A[7]~input_o\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \gen_adders:7:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X58_Y69_N8
\gen_adders:7:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|cout~2_combout\ = (\gen_adders:7:FA_inst|cout~1_combout\ & ((\A[6]~input_o\ & ((\gen_adders:5:FA_inst|cout~0_combout\) # (\B[6]~input_o\))) # (!\A[6]~input_o\ & (\gen_adders:5:FA_inst|cout~0_combout\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \gen_adders:5:FA_inst|cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \gen_adders:7:FA_inst|cout~1_combout\,
	combout => \gen_adders:7:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X68_Y4_N2
\gen_adders:7:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:7:FA_inst|cout~0_combout\ = (\A[7]~input_o\ & \B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \gen_adders:7:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y4_N22
\gen_adders:8:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:8:FA_inst|sum~combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\gen_adders:7:FA_inst|cout~2_combout\) # (\gen_adders:7:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \gen_adders:7:FA_inst|cout~2_combout\,
	datad => \gen_adders:7:FA_inst|cout~0_combout\,
	combout => \gen_adders:8:FA_inst|sum~combout\);

-- Location: IOIBUF_X67_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X68_Y4_N24
\gen_adders:8:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:8:FA_inst|cout~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\gen_adders:7:FA_inst|cout~2_combout\) # (\gen_adders:7:FA_inst|cout~0_combout\)))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & ((\gen_adders:7:FA_inst|cout~2_combout\) # 
-- (\gen_adders:7:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \gen_adders:7:FA_inst|cout~2_combout\,
	datad => \gen_adders:7:FA_inst|cout~0_combout\,
	combout => \gen_adders:8:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X68_Y4_N26
\gen_adders:9:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:9:FA_inst|sum~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\gen_adders:8:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \gen_adders:8:FA_inst|cout~0_combout\,
	combout => \gen_adders:9:FA_inst|sum~combout\);

-- Location: IOIBUF_X72_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X68_Y4_N4
\gen_adders:10:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|sum~0_combout\ = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_adders:10:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X68_Y4_N30
\gen_adders:10:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|sum~combout\ = \gen_adders:10:FA_inst|sum~0_combout\ $ (((\A[9]~input_o\ & ((\B[9]~input_o\) # (\gen_adders:8:FA_inst|cout~0_combout\))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & \gen_adders:8:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \gen_adders:10:FA_inst|sum~0_combout\,
	datad => \gen_adders:8:FA_inst|cout~0_combout\,
	combout => \gen_adders:10:FA_inst|sum~combout\);

-- Location: LCCOMB_X68_Y4_N10
\gen_adders:10:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|cout~1_combout\ = (\B[10]~input_o\) # (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_adders:10:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X68_Y4_N12
\gen_adders:10:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|cout~2_combout\ = (\gen_adders:10:FA_inst|cout~1_combout\ & ((\B[9]~input_o\ & ((\A[9]~input_o\) # (\gen_adders:8:FA_inst|cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \gen_adders:8:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:10:FA_inst|cout~1_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \gen_adders:8:FA_inst|cout~0_combout\,
	combout => \gen_adders:10:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X68_Y4_N16
\gen_adders:10:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:10:FA_inst|cout~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \gen_adders:10:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X69_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X68_Y4_N14
\gen_adders:11:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:11:FA_inst|sum~combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\gen_adders:10:FA_inst|cout~2_combout\) # (\gen_adders:10:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:10:FA_inst|cout~2_combout\,
	datab => \gen_adders:10:FA_inst|cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \gen_adders:11:FA_inst|sum~combout\);

-- Location: IOIBUF_X69_Y0_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X68_Y4_N8
\gen_adders:11:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:11:FA_inst|cout~0_combout\ = (\A[11]~input_o\ & ((\gen_adders:10:FA_inst|cout~2_combout\) # ((\gen_adders:10:FA_inst|cout~0_combout\) # (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\gen_adders:10:FA_inst|cout~2_combout\) # 
-- (\gen_adders:10:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:10:FA_inst|cout~2_combout\,
	datab => \gen_adders:10:FA_inst|cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \gen_adders:11:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X74_Y0_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X68_Y4_N18
\gen_adders:12:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:12:FA_inst|sum~combout\ = \B[12]~input_o\ $ (\gen_adders:11:FA_inst|cout~0_combout\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \gen_adders:11:FA_inst|cout~0_combout\,
	datad => \A[12]~input_o\,
	combout => \gen_adders:12:FA_inst|sum~combout\);

-- Location: IOIBUF_X29_Y0_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X68_Y4_N28
\gen_adders:12:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:12:FA_inst|cout~0_combout\ = (\B[12]~input_o\ & ((\gen_adders:11:FA_inst|cout~0_combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & (\gen_adders:11:FA_inst|cout~0_combout\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datac => \gen_adders:11:FA_inst|cout~0_combout\,
	datad => \A[12]~input_o\,
	combout => \gen_adders:12:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X42_Y4_N24
\gen_adders:13:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:13:FA_inst|sum~combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\gen_adders:12:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \gen_adders:12:FA_inst|cout~0_combout\,
	combout => \gen_adders:13:FA_inst|sum~combout\);

-- Location: IOIBUF_X49_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X42_Y4_N26
\gen_adders:14:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|sum~0_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \gen_adders:14:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X42_Y4_N4
\gen_adders:14:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|sum~combout\ = \gen_adders:14:FA_inst|sum~0_combout\ $ (((\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_adders:12:FA_inst|cout~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_adders:12:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \gen_adders:14:FA_inst|sum~0_combout\,
	datad => \gen_adders:12:FA_inst|cout~0_combout\,
	combout => \gen_adders:14:FA_inst|sum~combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X42_Y4_N16
\gen_adders:14:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~1_combout\ = (\B[14]~input_o\) # (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \gen_adders:14:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X42_Y4_N2
\gen_adders:14:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~2_combout\ = (\gen_adders:14:FA_inst|cout~1_combout\ & ((\A[13]~input_o\ & ((\B[13]~input_o\) # (\gen_adders:12:FA_inst|cout~0_combout\))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & \gen_adders:12:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \gen_adders:14:FA_inst|cout~1_combout\,
	datac => \B[13]~input_o\,
	datad => \gen_adders:12:FA_inst|cout~0_combout\,
	combout => \gen_adders:14:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X42_Y4_N14
\gen_adders:14:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:14:FA_inst|cout~0_combout\ = (\B[14]~input_o\ & \A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \gen_adders:14:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X42_Y4_N20
\gen_adders:15:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:15:FA_inst|sum~combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\gen_adders:14:FA_inst|cout~2_combout\) # (\gen_adders:14:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_adders:14:FA_inst|cout~2_combout\,
	datac => \gen_adders:14:FA_inst|cout~0_combout\,
	datad => \B[15]~input_o\,
	combout => \gen_adders:15:FA_inst|sum~combout\);

-- Location: LCCOMB_X42_Y4_N30
\gen_adders:15:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:15:FA_inst|cout~0_combout\ = (\A[15]~input_o\ & ((\gen_adders:14:FA_inst|cout~2_combout\) # ((\gen_adders:14:FA_inst|cout~0_combout\) # (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\gen_adders:14:FA_inst|cout~2_combout\) # 
-- (\gen_adders:14:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \gen_adders:14:FA_inst|cout~2_combout\,
	datac => \gen_adders:14:FA_inst|cout~0_combout\,
	datad => \B[15]~input_o\,
	combout => \gen_adders:15:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X56_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X42_Y4_N8
\gen_adders:16:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:16:FA_inst|sum~combout\ = \gen_adders:15:FA_inst|cout~0_combout\ $ (\B[16]~input_o\ $ (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:15:FA_inst|cout~0_combout\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \gen_adders:16:FA_inst|sum~combout\);

-- Location: IOIBUF_X27_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X42_Y4_N18
\gen_adders:16:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:16:FA_inst|cout~0_combout\ = (\gen_adders:15:FA_inst|cout~0_combout\ & ((\B[16]~input_o\) # (\A[16]~input_o\))) # (!\gen_adders:15:FA_inst|cout~0_combout\ & (\B[16]~input_o\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:15:FA_inst|cout~0_combout\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \gen_adders:16:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X42_Y4_N28
\gen_adders:17:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:17:FA_inst|sum~combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (\gen_adders:16:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => \gen_adders:16:FA_inst|cout~0_combout\,
	combout => \gen_adders:17:FA_inst|sum~combout\);

-- Location: LCCOMB_X42_Y4_N6
\gen_adders:17:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:17:FA_inst|cout~0_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\) # (\gen_adders:16:FA_inst|cout~0_combout\))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & \gen_adders:16:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => \gen_adders:16:FA_inst|cout~0_combout\,
	combout => \gen_adders:17:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X42_Y4_N0
\gen_adders:18:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:18:FA_inst|sum~combout\ = \gen_adders:17:FA_inst|cout~0_combout\ $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:17:FA_inst|cout~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \gen_adders:18:FA_inst|sum~combout\);

-- Location: LCCOMB_X42_Y4_N10
\gen_adders:18:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:18:FA_inst|cout~0_combout\ = (\gen_adders:17:FA_inst|cout~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (!\gen_adders:17:FA_inst|cout~0_combout\ & (\A[18]~input_o\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:17:FA_inst|cout~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \gen_adders:18:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X35_Y0_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X42_Y4_N12
\gen_adders:19:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|sum~combout\ = \gen_adders:18:FA_inst|cout~0_combout\ $ (\B[19]~input_o\ $ (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:18:FA_inst|cout~0_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \gen_adders:19:FA_inst|sum~combout\);

-- Location: IOIBUF_X3_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X42_Y4_N22
\gen_adders:19:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:19:FA_inst|cout~0_combout\ = (\gen_adders:18:FA_inst|cout~0_combout\ & ((\B[19]~input_o\) # (\A[19]~input_o\))) # (!\gen_adders:18:FA_inst|cout~0_combout\ & (\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:18:FA_inst|cout~0_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \gen_adders:19:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N16
\gen_adders:20:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:20:FA_inst|sum~combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (\gen_adders:19:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \gen_adders:19:FA_inst|cout~0_combout\,
	combout => \gen_adders:20:FA_inst|sum~combout\);

-- Location: LCCOMB_X6_Y4_N10
\gen_adders:20:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:20:FA_inst|cout~0_combout\ = (\B[20]~input_o\ & ((\A[20]~input_o\) # (\gen_adders:19:FA_inst|cout~0_combout\))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & \gen_adders:19:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \gen_adders:19:FA_inst|cout~0_combout\,
	combout => \gen_adders:20:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X20_Y0_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X6_Y4_N28
\gen_adders:21:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:21:FA_inst|sum~combout\ = \gen_adders:20:FA_inst|cout~0_combout\ $ (\B[21]~input_o\ $ (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:20:FA_inst|cout~0_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \gen_adders:21:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y18_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X6_Y4_N22
\gen_adders:22:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|sum~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \gen_adders:22:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X6_Y4_N0
\gen_adders:22:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|sum~combout\ = \gen_adders:22:FA_inst|sum~0_combout\ $ (((\gen_adders:20:FA_inst|cout~0_combout\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) # (!\gen_adders:20:FA_inst|cout~0_combout\ & (\B[21]~input_o\ & \A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:20:FA_inst|cout~0_combout\,
	datab => \B[21]~input_o\,
	datac => \gen_adders:22:FA_inst|sum~0_combout\,
	datad => \A[21]~input_o\,
	combout => \gen_adders:22:FA_inst|sum~combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X6_Y4_N26
\gen_adders:22:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|cout~0_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \gen_adders:22:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X6_Y4_N20
\gen_adders:22:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|cout~1_combout\ = (\B[22]~input_o\) # (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \gen_adders:22:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X6_Y4_N6
\gen_adders:22:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:22:FA_inst|cout~2_combout\ = (\gen_adders:22:FA_inst|cout~1_combout\ & ((\gen_adders:20:FA_inst|cout~0_combout\ & ((\B[21]~input_o\) # (\A[21]~input_o\))) # (!\gen_adders:20:FA_inst|cout~0_combout\ & (\B[21]~input_o\ & \A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:20:FA_inst|cout~0_combout\,
	datab => \gen_adders:22:FA_inst|cout~1_combout\,
	datac => \B[21]~input_o\,
	datad => \A[21]~input_o\,
	combout => \gen_adders:22:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X6_Y4_N24
\gen_adders:23:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:23:FA_inst|sum~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\gen_adders:22:FA_inst|cout~0_combout\) # (\gen_adders:22:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \gen_adders:22:FA_inst|cout~0_combout\,
	datad => \gen_adders:22:FA_inst|cout~2_combout\,
	combout => \gen_adders:23:FA_inst|sum~combout\);

-- Location: IOIBUF_X3_Y0_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X6_Y4_N2
\gen_adders:23:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:23:FA_inst|cout~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\gen_adders:22:FA_inst|cout~0_combout\) # (\gen_adders:22:FA_inst|cout~2_combout\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\gen_adders:22:FA_inst|cout~0_combout\) # 
-- (\gen_adders:22:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \gen_adders:22:FA_inst|cout~0_combout\,
	datad => \gen_adders:22:FA_inst|cout~2_combout\,
	combout => \gen_adders:23:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X6_Y4_N4
\gen_adders:24:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|sum~combout\ = \A[24]~input_o\ $ (\gen_adders:23:FA_inst|cout~0_combout\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \gen_adders:23:FA_inst|cout~0_combout\,
	datac => \B[24]~input_o\,
	combout => \gen_adders:24:FA_inst|sum~combout\);

-- Location: IOIBUF_X1_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X6_Y4_N30
\gen_adders:24:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:24:FA_inst|cout~0_combout\ = (\A[24]~input_o\ & ((\gen_adders:23:FA_inst|cout~0_combout\) # (\B[24]~input_o\))) # (!\A[24]~input_o\ & (\gen_adders:23:FA_inst|cout~0_combout\ & \B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \gen_adders:23:FA_inst|cout~0_combout\,
	datac => \B[24]~input_o\,
	combout => \gen_adders:24:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X6_Y4_N8
\gen_adders:25:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:25:FA_inst|sum~combout\ = \B[25]~input_o\ $ (\gen_adders:24:FA_inst|cout~0_combout\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \gen_adders:24:FA_inst|cout~0_combout\,
	datad => \A[25]~input_o\,
	combout => \gen_adders:25:FA_inst|sum~combout\);

-- Location: IOIBUF_X11_Y0_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X6_Y4_N18
\gen_adders:25:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:25:FA_inst|cout~0_combout\ = (\B[25]~input_o\ & ((\gen_adders:24:FA_inst|cout~0_combout\) # (\A[25]~input_o\))) # (!\B[25]~input_o\ & (\gen_adders:24:FA_inst|cout~0_combout\ & \A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \gen_adders:24:FA_inst|cout~0_combout\,
	datad => \A[25]~input_o\,
	combout => \gen_adders:25:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X6_Y4_N12
\gen_adders:26:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:26:FA_inst|sum~combout\ = \A[26]~input_o\ $ (\gen_adders:25:FA_inst|cout~0_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \gen_adders:25:FA_inst|cout~0_combout\,
	datad => \B[26]~input_o\,
	combout => \gen_adders:26:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y60_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X6_Y4_N14
\gen_adders:26:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:26:FA_inst|cout~0_combout\ = (\A[26]~input_o\ & ((\gen_adders:25:FA_inst|cout~0_combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\gen_adders:25:FA_inst|cout~0_combout\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \gen_adders:25:FA_inst|cout~0_combout\,
	datad => \B[26]~input_o\,
	combout => \gen_adders:26:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X3_Y73_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X1_Y65_N24
\gen_adders:27:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:27:FA_inst|sum~combout\ = \A[27]~input_o\ $ (\gen_adders:26:FA_inst|cout~0_combout\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \gen_adders:26:FA_inst|cout~0_combout\,
	datad => \B[27]~input_o\,
	combout => \gen_adders:27:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y63_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X1_Y65_N2
\gen_adders:27:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:27:FA_inst|cout~0_combout\ = (\A[27]~input_o\ & ((\gen_adders:26:FA_inst|cout~0_combout\) # (\B[27]~input_o\))) # (!\A[27]~input_o\ & (\gen_adders:26:FA_inst|cout~0_combout\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \gen_adders:26:FA_inst|cout~0_combout\,
	datad => \B[27]~input_o\,
	combout => \gen_adders:27:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y65_N20
\gen_adders:28:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:28:FA_inst|sum~combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (\gen_adders:27:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => \gen_adders:27:FA_inst|cout~0_combout\,
	combout => \gen_adders:28:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y67_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y65_N6
\gen_adders:28:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:28:FA_inst|cout~0_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\) # (\gen_adders:27:FA_inst|cout~0_combout\))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & \gen_adders:27:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datad => \gen_adders:27:FA_inst|cout~0_combout\,
	combout => \gen_adders:28:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y65_N8
\gen_adders:29:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|sum~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (\gen_adders:28:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \gen_adders:28:FA_inst|cout~0_combout\,
	combout => \gen_adders:29:FA_inst|sum~combout\);

-- Location: LCCOMB_X1_Y65_N10
\gen_adders:29:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:29:FA_inst|cout~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # (\gen_adders:28:FA_inst|cout~0_combout\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & \gen_adders:28:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \gen_adders:28:FA_inst|cout~0_combout\,
	combout => \gen_adders:29:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y59_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X1_Y65_N4
\gen_adders:30:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:30:FA_inst|sum~combout\ = \gen_adders:29:FA_inst|cout~0_combout\ $ (\B[30]~input_o\ $ (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:29:FA_inst|cout~0_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \gen_adders:30:FA_inst|sum~combout\);

-- Location: IOIBUF_X0_Y68_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y65_N22
\gen_adders:31:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|sum~0_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \gen_adders:31:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X1_Y65_N16
\gen_adders:31:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|sum~combout\ = \gen_adders:31:FA_inst|sum~0_combout\ $ (((\gen_adders:29:FA_inst|cout~0_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\gen_adders:29:FA_inst|cout~0_combout\ & (\B[30]~input_o\ & \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:29:FA_inst|cout~0_combout\,
	datab => \B[30]~input_o\,
	datac => \gen_adders:31:FA_inst|sum~0_combout\,
	datad => \A[30]~input_o\,
	combout => \gen_adders:31:FA_inst|sum~combout\);

-- Location: LCCOMB_X1_Y65_N28
\gen_adders:31:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|cout~1_combout\ = (\A[31]~input_o\) # (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \gen_adders:31:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X1_Y65_N30
\gen_adders:31:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|cout~2_combout\ = (\gen_adders:31:FA_inst|cout~1_combout\ & ((\gen_adders:29:FA_inst|cout~0_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\))) # (!\gen_adders:29:FA_inst|cout~0_combout\ & (\B[30]~input_o\ & \A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:29:FA_inst|cout~0_combout\,
	datab => \gen_adders:31:FA_inst|cout~1_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \gen_adders:31:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X1_Y65_N18
\gen_adders:31:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:31:FA_inst|cout~0_combout\ = (\A[31]~input_o\ & \B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \gen_adders:31:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X1_Y65_N0
\gen_adders:32:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:32:FA_inst|sum~combout\ = \A[32]~input_o\ $ (\B[32]~input_o\ $ (((\gen_adders:31:FA_inst|cout~2_combout\) # (\gen_adders:31:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:31:FA_inst|cout~2_combout\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \gen_adders:31:FA_inst|cout~0_combout\,
	combout => \gen_adders:32:FA_inst|sum~combout\);

-- Location: LCCOMB_X1_Y65_N26
\gen_adders:32:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:32:FA_inst|cout~0_combout\ = (\A[32]~input_o\ & ((\gen_adders:31:FA_inst|cout~2_combout\) # ((\B[32]~input_o\) # (\gen_adders:31:FA_inst|cout~0_combout\)))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & ((\gen_adders:31:FA_inst|cout~2_combout\) # 
-- (\gen_adders:31:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:31:FA_inst|cout~2_combout\,
	datab => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \gen_adders:31:FA_inst|cout~0_combout\,
	combout => \gen_adders:32:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y66_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X1_Y65_N12
\gen_adders:33:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:33:FA_inst|sum~combout\ = \gen_adders:32:FA_inst|cout~0_combout\ $ (\A[33]~input_o\ $ (\B[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:32:FA_inst|cout~0_combout\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	combout => \gen_adders:33:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y59_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X1_Y65_N14
\gen_adders:33:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:33:FA_inst|cout~0_combout\ = (\gen_adders:32:FA_inst|cout~0_combout\ & ((\A[33]~input_o\) # (\B[33]~input_o\))) # (!\gen_adders:32:FA_inst|cout~0_combout\ & (\A[33]~input_o\ & \B[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:32:FA_inst|cout~0_combout\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	combout => \gen_adders:33:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y68_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X107_Y69_N8
\gen_adders:34:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:34:FA_inst|sum~combout\ = \B[34]~input_o\ $ (\gen_adders:33:FA_inst|cout~0_combout\ $ (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \gen_adders:33:FA_inst|cout~0_combout\,
	datad => \A[34]~input_o\,
	combout => \gen_adders:34:FA_inst|sum~combout\);

-- Location: IOIBUF_X100_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X107_Y69_N26
\gen_adders:35:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|sum~0_combout\ = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \gen_adders:35:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X107_Y69_N20
\gen_adders:35:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|sum~combout\ = \gen_adders:35:FA_inst|sum~0_combout\ $ (((\B[34]~input_o\ & ((\gen_adders:33:FA_inst|cout~0_combout\) # (\A[34]~input_o\))) # (!\B[34]~input_o\ & (\gen_adders:33:FA_inst|cout~0_combout\ & \A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \gen_adders:33:FA_inst|cout~0_combout\,
	datac => \gen_adders:35:FA_inst|sum~0_combout\,
	datad => \A[34]~input_o\,
	combout => \gen_adders:35:FA_inst|sum~combout\);

-- Location: IOIBUF_X107_Y73_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X107_Y69_N24
\gen_adders:35:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|cout~1_combout\ = (\B[35]~input_o\) # (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \gen_adders:35:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X107_Y69_N18
\gen_adders:35:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|cout~2_combout\ = (\gen_adders:35:FA_inst|cout~1_combout\ & ((\B[34]~input_o\ & ((\gen_adders:33:FA_inst|cout~0_combout\) # (\A[34]~input_o\))) # (!\B[34]~input_o\ & (\gen_adders:33:FA_inst|cout~0_combout\ & \A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \gen_adders:35:FA_inst|cout~1_combout\,
	datac => \gen_adders:33:FA_inst|cout~0_combout\,
	datad => \A[34]~input_o\,
	combout => \gen_adders:35:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X107_Y69_N14
\gen_adders:35:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:35:FA_inst|cout~0_combout\ = (\B[35]~input_o\ & \A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => \gen_adders:35:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X111_Y73_N8
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X107_Y69_N4
\gen_adders:36:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:36:FA_inst|sum~combout\ = \B[36]~input_o\ $ (\A[36]~input_o\ $ (((\gen_adders:35:FA_inst|cout~2_combout\) # (\gen_adders:35:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \gen_adders:35:FA_inst|cout~2_combout\,
	datac => \gen_adders:35:FA_inst|cout~0_combout\,
	datad => \A[36]~input_o\,
	combout => \gen_adders:36:FA_inst|sum~combout\);

-- Location: LCCOMB_X107_Y69_N6
\gen_adders:36:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:36:FA_inst|cout~0_combout\ = (\B[36]~input_o\ & ((\gen_adders:35:FA_inst|cout~2_combout\) # ((\gen_adders:35:FA_inst|cout~0_combout\) # (\A[36]~input_o\)))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & ((\gen_adders:35:FA_inst|cout~2_combout\) # 
-- (\gen_adders:35:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \gen_adders:35:FA_inst|cout~2_combout\,
	datac => \gen_adders:35:FA_inst|cout~0_combout\,
	datad => \A[36]~input_o\,
	combout => \gen_adders:36:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X96_Y73_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X107_Y69_N0
\gen_adders:37:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:37:FA_inst|sum~combout\ = \gen_adders:36:FA_inst|cout~0_combout\ $ (\A[37]~input_o\ $ (\B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:36:FA_inst|cout~0_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \gen_adders:37:FA_inst|sum~combout\);

-- Location: LCCOMB_X107_Y69_N10
\gen_adders:37:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:37:FA_inst|cout~0_combout\ = (\gen_adders:36:FA_inst|cout~0_combout\ & ((\A[37]~input_o\) # (\B[37]~input_o\))) # (!\gen_adders:36:FA_inst|cout~0_combout\ & (\A[37]~input_o\ & \B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:36:FA_inst|cout~0_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \gen_adders:37:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X107_Y69_N28
\gen_adders:38:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:38:FA_inst|sum~combout\ = \gen_adders:37:FA_inst|cout~0_combout\ $ (\A[38]~input_o\ $ (\B[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:37:FA_inst|cout~0_combout\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \gen_adders:38:FA_inst|sum~combout\);

-- Location: IOIBUF_X100_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X107_Y69_N30
\gen_adders:39:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|sum~0_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \gen_adders:39:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X107_Y69_N16
\gen_adders:39:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|sum~combout\ = \gen_adders:39:FA_inst|sum~0_combout\ $ (((\gen_adders:37:FA_inst|cout~0_combout\ & ((\A[38]~input_o\) # (\B[38]~input_o\))) # (!\gen_adders:37:FA_inst|cout~0_combout\ & (\A[38]~input_o\ & \B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:37:FA_inst|cout~0_combout\,
	datab => \A[38]~input_o\,
	datac => \gen_adders:39:FA_inst|sum~0_combout\,
	datad => \B[38]~input_o\,
	combout => \gen_adders:39:FA_inst|sum~combout\);

-- Location: LCCOMB_X107_Y69_N12
\gen_adders:39:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~1_combout\ = (\B[39]~input_o\) # (\A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \gen_adders:39:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X107_Y69_N22
\gen_adders:39:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~2_combout\ = (\gen_adders:39:FA_inst|cout~1_combout\ & ((\gen_adders:37:FA_inst|cout~0_combout\ & ((\A[38]~input_o\) # (\B[38]~input_o\))) # (!\gen_adders:37:FA_inst|cout~0_combout\ & (\A[38]~input_o\ & \B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:37:FA_inst|cout~0_combout\,
	datab => \gen_adders:39:FA_inst|cout~1_combout\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \gen_adders:39:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X107_Y69_N2
\gen_adders:39:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:39:FA_inst|cout~0_combout\ = (\B[39]~input_o\ & \A[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[39]~input_o\,
	datad => \A[39]~input_o\,
	combout => \gen_adders:39:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X114_Y53_N8
\gen_adders:40:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:40:FA_inst|sum~combout\ = \A[40]~input_o\ $ (\B[40]~input_o\ $ (((\gen_adders:39:FA_inst|cout~2_combout\) # (\gen_adders:39:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:39:FA_inst|cout~2_combout\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \gen_adders:39:FA_inst|cout~0_combout\,
	combout => \gen_adders:40:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y53_N10
\gen_adders:40:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:40:FA_inst|cout~0_combout\ = (\A[40]~input_o\ & ((\gen_adders:39:FA_inst|cout~2_combout\) # ((\B[40]~input_o\) # (\gen_adders:39:FA_inst|cout~0_combout\)))) # (!\A[40]~input_o\ & (\B[40]~input_o\ & ((\gen_adders:39:FA_inst|cout~2_combout\) # 
-- (\gen_adders:39:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:39:FA_inst|cout~2_combout\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \gen_adders:39:FA_inst|cout~0_combout\,
	combout => \gen_adders:40:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X114_Y53_N20
\gen_adders:41:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:41:FA_inst|sum~combout\ = \gen_adders:40:FA_inst|cout~0_combout\ $ (\A[41]~input_o\ $ (\B[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:40:FA_inst|cout~0_combout\,
	datac => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => \gen_adders:41:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y56_N15
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X114_Y53_N14
\gen_adders:42:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|sum~0_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \gen_adders:42:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X114_Y53_N16
\gen_adders:42:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|sum~combout\ = \gen_adders:42:FA_inst|sum~0_combout\ $ (((\gen_adders:40:FA_inst|cout~0_combout\ & ((\A[41]~input_o\) # (\B[41]~input_o\))) # (!\gen_adders:40:FA_inst|cout~0_combout\ & (\A[41]~input_o\ & \B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:40:FA_inst|cout~0_combout\,
	datab => \A[41]~input_o\,
	datac => \gen_adders:42:FA_inst|sum~0_combout\,
	datad => \B[41]~input_o\,
	combout => \gen_adders:42:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y53_N12
\gen_adders:42:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|cout~1_combout\ = (\B[42]~input_o\) # (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \gen_adders:42:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X114_Y53_N30
\gen_adders:42:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|cout~2_combout\ = (\gen_adders:42:FA_inst|cout~1_combout\ & ((\B[41]~input_o\ & ((\A[41]~input_o\) # (\gen_adders:40:FA_inst|cout~0_combout\))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & \gen_adders:40:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:42:FA_inst|cout~1_combout\,
	datab => \B[41]~input_o\,
	datac => \A[41]~input_o\,
	datad => \gen_adders:40:FA_inst|cout~0_combout\,
	combout => \gen_adders:42:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X114_Y53_N18
\gen_adders:42:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:42:FA_inst|cout~0_combout\ = (\B[42]~input_o\ & \A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \gen_adders:42:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y46_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X114_Y53_N24
\gen_adders:43:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:43:FA_inst|sum~combout\ = \B[43]~input_o\ $ (\A[43]~input_o\ $ (((\gen_adders:42:FA_inst|cout~2_combout\) # (\gen_adders:42:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:42:FA_inst|cout~2_combout\,
	datab => \gen_adders:42:FA_inst|cout~0_combout\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \gen_adders:43:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y53_N2
\gen_adders:43:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:43:FA_inst|cout~0_combout\ = (\B[43]~input_o\ & ((\gen_adders:42:FA_inst|cout~2_combout\) # ((\gen_adders:42:FA_inst|cout~0_combout\) # (\A[43]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & ((\gen_adders:42:FA_inst|cout~2_combout\) # 
-- (\gen_adders:42:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:42:FA_inst|cout~2_combout\,
	datab => \gen_adders:42:FA_inst|cout~0_combout\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \gen_adders:43:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y51_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X114_Y53_N4
\gen_adders:44:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:44:FA_inst|sum~combout\ = \gen_adders:43:FA_inst|cout~0_combout\ $ (\A[44]~input_o\ $ (\B[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:43:FA_inst|cout~0_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \gen_adders:44:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y53_N6
\gen_adders:45:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|sum~0_combout\ = \A[45]~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \gen_adders:45:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X114_Y53_N0
\gen_adders:45:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|sum~combout\ = \gen_adders:45:FA_inst|sum~0_combout\ $ (((\gen_adders:43:FA_inst|cout~0_combout\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) # (!\gen_adders:43:FA_inst|cout~0_combout\ & (\A[44]~input_o\ & \B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:45:FA_inst|sum~0_combout\,
	datab => \gen_adders:43:FA_inst|cout~0_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \gen_adders:45:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y53_N28
\gen_adders:45:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|cout~1_combout\ = (\A[45]~input_o\) # (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \gen_adders:45:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X114_Y53_N22
\gen_adders:45:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|cout~2_combout\ = (\gen_adders:45:FA_inst|cout~1_combout\ & ((\gen_adders:43:FA_inst|cout~0_combout\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) # (!\gen_adders:43:FA_inst|cout~0_combout\ & (\A[44]~input_o\ & \B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:45:FA_inst|cout~1_combout\,
	datab => \gen_adders:43:FA_inst|cout~0_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \gen_adders:45:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X114_Y53_N26
\gen_adders:45:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:45:FA_inst|cout~0_combout\ = (\A[45]~input_o\ & \B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \gen_adders:45:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X84_Y69_N8
\gen_adders:46:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:46:FA_inst|sum~combout\ = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\gen_adders:45:FA_inst|cout~2_combout\) # (\gen_adders:45:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:45:FA_inst|cout~2_combout\,
	datab => \A[46]~input_o\,
	datac => \gen_adders:45:FA_inst|cout~0_combout\,
	datad => \B[46]~input_o\,
	combout => \gen_adders:46:FA_inst|sum~combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X84_Y69_N10
\gen_adders:46:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:46:FA_inst|cout~0_combout\ = (\A[46]~input_o\ & ((\gen_adders:45:FA_inst|cout~2_combout\) # ((\gen_adders:45:FA_inst|cout~0_combout\) # (\B[46]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & ((\gen_adders:45:FA_inst|cout~2_combout\) # 
-- (\gen_adders:45:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:45:FA_inst|cout~2_combout\,
	datab => \A[46]~input_o\,
	datac => \gen_adders:45:FA_inst|cout~0_combout\,
	datad => \B[46]~input_o\,
	combout => \gen_adders:46:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N4
\gen_adders:47:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:47:FA_inst|sum~combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (\gen_adders:46:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	datad => \gen_adders:46:FA_inst|cout~0_combout\,
	combout => \gen_adders:47:FA_inst|sum~combout\);

-- Location: IOIBUF_X81_Y73_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X85_Y69_N16
\gen_adders:48:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|sum~0_combout\ = \A[48]~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \gen_adders:48:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X84_Y69_N6
\gen_adders:48:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|sum~combout\ = \gen_adders:48:FA_inst|sum~0_combout\ $ (((\A[47]~input_o\ & ((\B[47]~input_o\) # (\gen_adders:46:FA_inst|cout~0_combout\))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & \gen_adders:46:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \gen_adders:48:FA_inst|sum~0_combout\,
	datac => \B[47]~input_o\,
	datad => \gen_adders:46:FA_inst|cout~0_combout\,
	combout => \gen_adders:48:FA_inst|sum~combout\);

-- Location: LCCOMB_X85_Y69_N10
\gen_adders:48:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|cout~0_combout\ = (\A[48]~input_o\ & \B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \gen_adders:48:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X85_Y69_N28
\gen_adders:48:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|cout~1_combout\ = (\A[48]~input_o\) # (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \gen_adders:48:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X84_Y69_N24
\gen_adders:48:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:48:FA_inst|cout~2_combout\ = (\gen_adders:48:FA_inst|cout~1_combout\ & ((\gen_adders:46:FA_inst|cout~0_combout\ & ((\B[47]~input_o\) # (\A[47]~input_o\))) # (!\gen_adders:46:FA_inst|cout~0_combout\ & (\B[47]~input_o\ & \A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:46:FA_inst|cout~0_combout\,
	datab => \gen_adders:48:FA_inst|cout~1_combout\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \gen_adders:48:FA_inst|cout~2_combout\);

-- Location: IOIBUF_X89_Y73_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X85_Y69_N30
\gen_adders:49:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|sum~combout\ = \B[49]~input_o\ $ (\A[49]~input_o\ $ (((\gen_adders:48:FA_inst|cout~0_combout\) # (\gen_adders:48:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:48:FA_inst|cout~0_combout\,
	datab => \gen_adders:48:FA_inst|cout~2_combout\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \gen_adders:49:FA_inst|sum~combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X85_Y69_N0
\gen_adders:49:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:49:FA_inst|cout~0_combout\ = (\B[49]~input_o\ & ((\gen_adders:48:FA_inst|cout~0_combout\) # ((\gen_adders:48:FA_inst|cout~2_combout\) # (\A[49]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & ((\gen_adders:48:FA_inst|cout~0_combout\) # 
-- (\gen_adders:48:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:48:FA_inst|cout~0_combout\,
	datab => \gen_adders:48:FA_inst|cout~2_combout\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \gen_adders:49:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X85_Y73_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X85_Y69_N26
\gen_adders:50:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:50:FA_inst|sum~combout\ = \B[50]~input_o\ $ (\gen_adders:49:FA_inst|cout~0_combout\ $ (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \gen_adders:49:FA_inst|cout~0_combout\,
	datad => \A[50]~input_o\,
	combout => \gen_adders:50:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y37_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X85_Y69_N4
\gen_adders:50:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:50:FA_inst|cout~0_combout\ = (\B[50]~input_o\ & ((\gen_adders:49:FA_inst|cout~0_combout\) # (\A[50]~input_o\))) # (!\B[50]~input_o\ & (\gen_adders:49:FA_inst|cout~0_combout\ & \A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \gen_adders:49:FA_inst|cout~0_combout\,
	datad => \A[50]~input_o\,
	combout => \gen_adders:50:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X85_Y69_N22
\gen_adders:51:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:51:FA_inst|sum~combout\ = \B[51]~input_o\ $ (\A[51]~input_o\ $ (\gen_adders:50:FA_inst|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \gen_adders:50:FA_inst|cout~0_combout\,
	combout => \gen_adders:51:FA_inst|sum~combout\);

-- Location: IOIBUF_X85_Y73_N8
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X85_Y69_N8
\gen_adders:52:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|sum~0_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \gen_adders:52:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X85_Y69_N2
\gen_adders:52:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|sum~combout\ = \gen_adders:52:FA_inst|sum~0_combout\ $ (((\B[51]~input_o\ & ((\gen_adders:50:FA_inst|cout~0_combout\) # (\A[51]~input_o\))) # (!\B[51]~input_o\ & (\gen_adders:50:FA_inst|cout~0_combout\ & \A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \gen_adders:50:FA_inst|cout~0_combout\,
	datac => \A[51]~input_o\,
	datad => \gen_adders:52:FA_inst|sum~0_combout\,
	combout => \gen_adders:52:FA_inst|sum~combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X85_Y69_N20
\gen_adders:52:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|cout~0_combout\ = (\B[52]~input_o\ & \A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \gen_adders:52:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X85_Y69_N6
\gen_adders:52:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|cout~1_combout\ = (\B[52]~input_o\) # (\A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \gen_adders:52:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X85_Y69_N24
\gen_adders:52:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:52:FA_inst|cout~2_combout\ = (\gen_adders:52:FA_inst|cout~1_combout\ & ((\A[51]~input_o\ & ((\gen_adders:50:FA_inst|cout~0_combout\) # (\B[51]~input_o\))) # (!\A[51]~input_o\ & (\gen_adders:50:FA_inst|cout~0_combout\ & \B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:52:FA_inst|cout~1_combout\,
	datab => \A[51]~input_o\,
	datac => \gen_adders:50:FA_inst|cout~0_combout\,
	datad => \B[51]~input_o\,
	combout => \gen_adders:52:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X85_Y69_N18
\gen_adders:53:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:53:FA_inst|sum~combout\ = \A[53]~input_o\ $ (\B[53]~input_o\ $ (((\gen_adders:52:FA_inst|cout~0_combout\) # (\gen_adders:52:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \gen_adders:52:FA_inst|cout~0_combout\,
	datac => \B[53]~input_o\,
	datad => \gen_adders:52:FA_inst|cout~2_combout\,
	combout => \gen_adders:53:FA_inst|sum~combout\);

-- Location: LCCOMB_X85_Y69_N12
\gen_adders:53:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:53:FA_inst|cout~0_combout\ = (\A[53]~input_o\ & ((\gen_adders:52:FA_inst|cout~0_combout\) # ((\B[53]~input_o\) # (\gen_adders:52:FA_inst|cout~2_combout\)))) # (!\A[53]~input_o\ & (\B[53]~input_o\ & ((\gen_adders:52:FA_inst|cout~0_combout\) # 
-- (\gen_adders:52:FA_inst|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \gen_adders:52:FA_inst|cout~0_combout\,
	datac => \B[53]~input_o\,
	datad => \gen_adders:52:FA_inst|cout~2_combout\,
	combout => \gen_adders:53:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y37_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X114_Y34_N8
\gen_adders:54:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|sum~combout\ = \gen_adders:53:FA_inst|cout~0_combout\ $ (\B[54]~input_o\ $ (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:53:FA_inst|cout~0_combout\,
	datab => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	combout => \gen_adders:54:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y27_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X114_Y34_N2
\gen_adders:54:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:54:FA_inst|cout~0_combout\ = (\gen_adders:53:FA_inst|cout~0_combout\ & ((\B[54]~input_o\) # (\A[54]~input_o\))) # (!\gen_adders:53:FA_inst|cout~0_combout\ & (\B[54]~input_o\ & \A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:53:FA_inst|cout~0_combout\,
	datab => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	combout => \gen_adders:54:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X114_Y34_N28
\gen_adders:55:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:55:FA_inst|sum~combout\ = \B[55]~input_o\ $ (\gen_adders:54:FA_inst|cout~0_combout\ $ (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \gen_adders:54:FA_inst|cout~0_combout\,
	datac => \A[55]~input_o\,
	combout => \gen_adders:55:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y34_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X114_Y34_N14
\gen_adders:55:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:55:FA_inst|cout~0_combout\ = (\B[55]~input_o\ & ((\gen_adders:54:FA_inst|cout~0_combout\) # (\A[55]~input_o\))) # (!\B[55]~input_o\ & (\gen_adders:54:FA_inst|cout~0_combout\ & \A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \gen_adders:54:FA_inst|cout~0_combout\,
	datac => \A[55]~input_o\,
	combout => \gen_adders:55:FA_inst|cout~0_combout\);

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

-- Location: LCCOMB_X114_Y34_N16
\gen_adders:56:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:56:FA_inst|sum~combout\ = \B[56]~input_o\ $ (\gen_adders:55:FA_inst|cout~0_combout\ $ (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[56]~input_o\,
	datac => \gen_adders:55:FA_inst|cout~0_combout\,
	datad => \A[56]~input_o\,
	combout => \gen_adders:56:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y31_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X114_Y34_N18
\gen_adders:56:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:56:FA_inst|cout~0_combout\ = (\B[56]~input_o\ & ((\gen_adders:55:FA_inst|cout~0_combout\) # (\A[56]~input_o\))) # (!\B[56]~input_o\ & (\gen_adders:55:FA_inst|cout~0_combout\ & \A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[56]~input_o\,
	datac => \gen_adders:55:FA_inst|cout~0_combout\,
	datad => \A[56]~input_o\,
	combout => \gen_adders:56:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y41_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X114_Y34_N4
\gen_adders:57:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:57:FA_inst|sum~combout\ = \A[57]~input_o\ $ (\gen_adders:56:FA_inst|cout~0_combout\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \gen_adders:56:FA_inst|cout~0_combout\,
	datad => \B[57]~input_o\,
	combout => \gen_adders:57:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y34_N30
\gen_adders:57:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:57:FA_inst|cout~0_combout\ = (\A[57]~input_o\ & ((\gen_adders:56:FA_inst|cout~0_combout\) # (\B[57]~input_o\))) # (!\A[57]~input_o\ & (\gen_adders:56:FA_inst|cout~0_combout\ & \B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \gen_adders:56:FA_inst|cout~0_combout\,
	datad => \B[57]~input_o\,
	combout => \gen_adders:57:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X0_Y34_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X114_Y34_N0
\gen_adders:58:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:58:FA_inst|sum~combout\ = \gen_adders:57:FA_inst|cout~0_combout\ $ (\B[58]~input_o\ $ (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:57:FA_inst|cout~0_combout\,
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	combout => \gen_adders:58:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y34_N10
\gen_adders:58:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:58:FA_inst|cout~0_combout\ = (\gen_adders:57:FA_inst|cout~0_combout\ & ((\B[58]~input_o\) # (\A[58]~input_o\))) # (!\gen_adders:57:FA_inst|cout~0_combout\ & (\B[58]~input_o\ & \A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:57:FA_inst|cout~0_combout\,
	datab => \B[58]~input_o\,
	datac => \A[58]~input_o\,
	combout => \gen_adders:58:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y24_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X114_Y34_N20
\gen_adders:59:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:59:FA_inst|sum~combout\ = \gen_adders:58:FA_inst|cout~0_combout\ $ (\A[59]~input_o\ $ (\B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:58:FA_inst|cout~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \gen_adders:59:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y44_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X114_Y34_N6
\gen_adders:60:FA_inst|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|sum~0_combout\ = \A[60]~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \gen_adders:60:FA_inst|sum~0_combout\);

-- Location: LCCOMB_X114_Y34_N24
\gen_adders:60:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|sum~combout\ = \gen_adders:60:FA_inst|sum~0_combout\ $ (((\B[59]~input_o\ & ((\A[59]~input_o\) # (\gen_adders:58:FA_inst|cout~0_combout\))) # (!\B[59]~input_o\ & (\A[59]~input_o\ & \gen_adders:58:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:60:FA_inst|sum~0_combout\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \gen_adders:58:FA_inst|cout~0_combout\,
	combout => \gen_adders:60:FA_inst|sum~combout\);

-- Location: IOIBUF_X115_Y17_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X114_Y34_N12
\gen_adders:60:FA_inst|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|cout~1_combout\ = (\A[60]~input_o\) # (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \gen_adders:60:FA_inst|cout~1_combout\);

-- Location: LCCOMB_X114_Y34_N22
\gen_adders:60:FA_inst|cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|cout~2_combout\ = (\gen_adders:60:FA_inst|cout~1_combout\ & ((\gen_adders:58:FA_inst|cout~0_combout\ & ((\B[59]~input_o\) # (\A[59]~input_o\))) # (!\gen_adders:58:FA_inst|cout~0_combout\ & (\B[59]~input_o\ & \A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:58:FA_inst|cout~0_combout\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \gen_adders:60:FA_inst|cout~1_combout\,
	combout => \gen_adders:60:FA_inst|cout~2_combout\);

-- Location: LCCOMB_X114_Y34_N26
\gen_adders:60:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:60:FA_inst|cout~0_combout\ = (\A[60]~input_o\ & \B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[60]~input_o\,
	datad => \B[60]~input_o\,
	combout => \gen_adders:60:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y22_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X114_Y18_N8
\gen_adders:61:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:61:FA_inst|sum~combout\ = \B[61]~input_o\ $ (\A[61]~input_o\ $ (((\gen_adders:60:FA_inst|cout~2_combout\) # (\gen_adders:60:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \gen_adders:60:FA_inst|cout~2_combout\,
	datac => \gen_adders:60:FA_inst|cout~0_combout\,
	datad => \A[61]~input_o\,
	combout => \gen_adders:61:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y18_N10
\gen_adders:61:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:61:FA_inst|cout~0_combout\ = (\B[61]~input_o\ & ((\gen_adders:60:FA_inst|cout~2_combout\) # ((\gen_adders:60:FA_inst|cout~0_combout\) # (\A[61]~input_o\)))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & ((\gen_adders:60:FA_inst|cout~2_combout\) # 
-- (\gen_adders:60:FA_inst|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \gen_adders:60:FA_inst|cout~2_combout\,
	datac => \gen_adders:60:FA_inst|cout~0_combout\,
	datad => \A[61]~input_o\,
	combout => \gen_adders:61:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X114_Y18_N4
\gen_adders:62:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:62:FA_inst|sum~combout\ = \gen_adders:61:FA_inst|cout~0_combout\ $ (\A[62]~input_o\ $ (\B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:61:FA_inst|cout~0_combout\,
	datac => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => \gen_adders:62:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y18_N6
\gen_adders:62:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:62:FA_inst|cout~0_combout\ = (\gen_adders:61:FA_inst|cout~0_combout\ & ((\A[62]~input_o\) # (\B[62]~input_o\))) # (!\gen_adders:61:FA_inst|cout~0_combout\ & (\A[62]~input_o\ & \B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:61:FA_inst|cout~0_combout\,
	datac => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => \gen_adders:62:FA_inst|cout~0_combout\);

-- Location: IOIBUF_X115_Y17_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X114_Y18_N24
\gen_adders:63:FA_inst|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:63:FA_inst|sum~combout\ = \gen_adders:62:FA_inst|cout~0_combout\ $ (\B[63]~input_o\ $ (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:62:FA_inst|cout~0_combout\,
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \gen_adders:63:FA_inst|sum~combout\);

-- Location: LCCOMB_X114_Y18_N26
\gen_adders:63:FA_inst|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_adders:63:FA_inst|cout~0_combout\ = (\gen_adders:62:FA_inst|cout~0_combout\ & ((\B[63]~input_o\) # (\A[63]~input_o\))) # (!\gen_adders:62:FA_inst|cout~0_combout\ & (\B[63]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:62:FA_inst|cout~0_combout\,
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \gen_adders:63:FA_inst|cout~0_combout\);

-- Location: LCCOMB_X114_Y18_N20
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\gen_adders:62:FA_inst|cout~0_combout\ & (!\B[63]~input_o\ & !\A[63]~input_o\)) # (!\gen_adders:62:FA_inst|cout~0_combout\ & (\B[63]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:62:FA_inst|cout~0_combout\,
	datab => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


