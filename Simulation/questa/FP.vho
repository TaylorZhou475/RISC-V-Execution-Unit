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

-- DATE "11/29/2025 20:06:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShfSepMux2 IS
    PORT (
	Input : IN std_logic_vector(63 DOWNTO 0);
	Arith : IN std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	ShiftCount : IN std_logic_vector(5 DOWNTO 0);
	Output : OUT std_logic_vector(63 DOWNTO 0)
	);
END ShfSepMux2;

-- Design Ports Information
-- Arith[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[11]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[12]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[13]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[15]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[16]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[17]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[18]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[19]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[20]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[21]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[22]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[23]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[24]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[25]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[27]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[28]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[29]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[31]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[32]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[33]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[34]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[35]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[36]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[37]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[38]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[39]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[40]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[41]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[42]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[43]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[44]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[45]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[46]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[47]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[48]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[49]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[50]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[51]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[52]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[53]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[54]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[55]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[56]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[57]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[58]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[59]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[60]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[61]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[62]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[63]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[8]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[16]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[18]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[19]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[21]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[22]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[23]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[24]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[25]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[26]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[27]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[28]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[29]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[30]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[31]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[32]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[33]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[34]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[35]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[36]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[37]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[38]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[39]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[40]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[41]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[42]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[43]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[44]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[45]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[46]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[47]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[48]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[49]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[50]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[51]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[52]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[53]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[54]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[55]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[56]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[57]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[58]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[59]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[60]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[61]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[62]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[63]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[48]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[16]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[49]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[50]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[51]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[19]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[52]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[20]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[53]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[54]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[22]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[55]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[23]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[56]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[57]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[25]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[58]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[26]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[59]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[27]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[60]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[61]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[29]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[62]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[30]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[63]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[31]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[32]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[33]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[34]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[35]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[36]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[37]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[38]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[39]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[40]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[41]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[9]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[42]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[43]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[44]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[45]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[46]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[14]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[47]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShfSepMux2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Arith : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_ShiftCount : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(63 DOWNTO 0);
SIGNAL \Arith[0]~input_o\ : std_logic;
SIGNAL \Arith[1]~input_o\ : std_logic;
SIGNAL \Arith[2]~input_o\ : std_logic;
SIGNAL \Arith[3]~input_o\ : std_logic;
SIGNAL \Arith[4]~input_o\ : std_logic;
SIGNAL \Arith[5]~input_o\ : std_logic;
SIGNAL \Arith[6]~input_o\ : std_logic;
SIGNAL \Arith[7]~input_o\ : std_logic;
SIGNAL \Arith[8]~input_o\ : std_logic;
SIGNAL \Arith[9]~input_o\ : std_logic;
SIGNAL \Arith[10]~input_o\ : std_logic;
SIGNAL \Arith[11]~input_o\ : std_logic;
SIGNAL \Arith[12]~input_o\ : std_logic;
SIGNAL \Arith[13]~input_o\ : std_logic;
SIGNAL \Arith[14]~input_o\ : std_logic;
SIGNAL \Arith[15]~input_o\ : std_logic;
SIGNAL \Arith[16]~input_o\ : std_logic;
SIGNAL \Arith[17]~input_o\ : std_logic;
SIGNAL \Arith[18]~input_o\ : std_logic;
SIGNAL \Arith[19]~input_o\ : std_logic;
SIGNAL \Arith[20]~input_o\ : std_logic;
SIGNAL \Arith[21]~input_o\ : std_logic;
SIGNAL \Arith[22]~input_o\ : std_logic;
SIGNAL \Arith[23]~input_o\ : std_logic;
SIGNAL \Arith[24]~input_o\ : std_logic;
SIGNAL \Arith[25]~input_o\ : std_logic;
SIGNAL \Arith[26]~input_o\ : std_logic;
SIGNAL \Arith[27]~input_o\ : std_logic;
SIGNAL \Arith[28]~input_o\ : std_logic;
SIGNAL \Arith[29]~input_o\ : std_logic;
SIGNAL \Arith[30]~input_o\ : std_logic;
SIGNAL \Arith[31]~input_o\ : std_logic;
SIGNAL \Arith[32]~input_o\ : std_logic;
SIGNAL \Arith[33]~input_o\ : std_logic;
SIGNAL \Arith[34]~input_o\ : std_logic;
SIGNAL \Arith[35]~input_o\ : std_logic;
SIGNAL \Arith[36]~input_o\ : std_logic;
SIGNAL \Arith[37]~input_o\ : std_logic;
SIGNAL \Arith[38]~input_o\ : std_logic;
SIGNAL \Arith[39]~input_o\ : std_logic;
SIGNAL \Arith[40]~input_o\ : std_logic;
SIGNAL \Arith[41]~input_o\ : std_logic;
SIGNAL \Arith[42]~input_o\ : std_logic;
SIGNAL \Arith[43]~input_o\ : std_logic;
SIGNAL \Arith[44]~input_o\ : std_logic;
SIGNAL \Arith[45]~input_o\ : std_logic;
SIGNAL \Arith[46]~input_o\ : std_logic;
SIGNAL \Arith[47]~input_o\ : std_logic;
SIGNAL \Arith[48]~input_o\ : std_logic;
SIGNAL \Arith[49]~input_o\ : std_logic;
SIGNAL \Arith[50]~input_o\ : std_logic;
SIGNAL \Arith[51]~input_o\ : std_logic;
SIGNAL \Arith[52]~input_o\ : std_logic;
SIGNAL \Arith[53]~input_o\ : std_logic;
SIGNAL \Arith[54]~input_o\ : std_logic;
SIGNAL \Arith[55]~input_o\ : std_logic;
SIGNAL \Arith[56]~input_o\ : std_logic;
SIGNAL \Arith[57]~input_o\ : std_logic;
SIGNAL \Arith[58]~input_o\ : std_logic;
SIGNAL \Arith[59]~input_o\ : std_logic;
SIGNAL \Arith[60]~input_o\ : std_logic;
SIGNAL \Arith[61]~input_o\ : std_logic;
SIGNAL \Arith[62]~input_o\ : std_logic;
SIGNAL \Arith[63]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ShiftCount[3]~input_o\ : std_logic;
SIGNAL \Input[51]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Input[19]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \sravals[0][51]~3_combout\ : std_logic;
SIGNAL \Input[50]~input_o\ : std_logic;
SIGNAL \Input[18]~input_o\ : std_logic;
SIGNAL \sravals[0][50]~2_combout\ : std_logic;
SIGNAL \ShiftCount[0]~input_o\ : std_logic;
SIGNAL \ShiftCount[1]~input_o\ : std_logic;
SIGNAL \Input[48]~input_o\ : std_logic;
SIGNAL \Input[16]~input_o\ : std_logic;
SIGNAL \sravals[0][48]~0_combout\ : std_logic;
SIGNAL \Input[49]~input_o\ : std_logic;
SIGNAL \Input[17]~input_o\ : std_logic;
SIGNAL \sravals[0][49]~1_combout\ : std_logic;
SIGNAL \sravals[2][48]~4_combout\ : std_logic;
SIGNAL \ShiftCount[2]~input_o\ : std_logic;
SIGNAL \Input[62]~input_o\ : std_logic;
SIGNAL \Input[30]~input_o\ : std_logic;
SIGNAL \sravals[0][62]~17_combout\ : std_logic;
SIGNAL \Input[28]~input_o\ : std_logic;
SIGNAL \Input[60]~input_o\ : std_logic;
SIGNAL \sravals[0][60]~15_combout\ : std_logic;
SIGNAL \Input[31]~input_o\ : std_logic;
SIGNAL \Input[63]~input_o\ : std_logic;
SIGNAL \y2[63]~0_combout\ : std_logic;
SIGNAL \Input[29]~input_o\ : std_logic;
SIGNAL \Input[61]~input_o\ : std_logic;
SIGNAL \sravals[0][61]~16_combout\ : std_logic;
SIGNAL \sravals[2][60]~18_combout\ : std_logic;
SIGNAL \Input[54]~input_o\ : std_logic;
SIGNAL \Input[22]~input_o\ : std_logic;
SIGNAL \sravals[0][54]~7_combout\ : std_logic;
SIGNAL \Input[23]~input_o\ : std_logic;
SIGNAL \Input[55]~input_o\ : std_logic;
SIGNAL \sravals[0][55]~8_combout\ : std_logic;
SIGNAL \Input[20]~input_o\ : std_logic;
SIGNAL \Input[52]~input_o\ : std_logic;
SIGNAL \sravals[0][52]~5_combout\ : std_logic;
SIGNAL \Input[53]~input_o\ : std_logic;
SIGNAL \Input[21]~input_o\ : std_logic;
SIGNAL \sravals[0][53]~6_combout\ : std_logic;
SIGNAL \sravals[2][52]~9_combout\ : std_logic;
SIGNAL \Input[24]~input_o\ : std_logic;
SIGNAL \Input[56]~input_o\ : std_logic;
SIGNAL \sravals[0][56]~10_combout\ : std_logic;
SIGNAL \Input[25]~input_o\ : std_logic;
SIGNAL \Input[57]~input_o\ : std_logic;
SIGNAL \sravals[0][57]~11_combout\ : std_logic;
SIGNAL \Input[59]~input_o\ : std_logic;
SIGNAL \Input[27]~input_o\ : std_logic;
SIGNAL \sravals[0][59]~13_combout\ : std_logic;
SIGNAL \Input[26]~input_o\ : std_logic;
SIGNAL \Input[58]~input_o\ : std_logic;
SIGNAL \sravals[0][58]~12_combout\ : std_logic;
SIGNAL \sravals[2][56]~14_combout\ : std_logic;
SIGNAL \sravals[4][48]~19_combout\ : std_logic;
SIGNAL \Input[38]~input_o\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \sravals[0][38]~27_combout\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \Input[39]~input_o\ : std_logic;
SIGNAL \sravals[0][39]~28_combout\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \Input[37]~input_o\ : std_logic;
SIGNAL \sravals[0][37]~26_combout\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \Input[36]~input_o\ : std_logic;
SIGNAL \sravals[0][36]~25_combout\ : std_logic;
SIGNAL \sravals[2][36]~29_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \Input[34]~input_o\ : std_logic;
SIGNAL \sravals[0][34]~22_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Input[32]~input_o\ : std_logic;
SIGNAL \sravals[0][32]~20_combout\ : std_logic;
SIGNAL \Input[35]~input_o\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \sravals[0][35]~23_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \Input[33]~input_o\ : std_logic;
SIGNAL \sravals[0][33]~21_combout\ : std_logic;
SIGNAL \sravals[2][32]~24_combout\ : std_logic;
SIGNAL \Input[45]~input_o\ : std_logic;
SIGNAL \Input[13]~input_o\ : std_logic;
SIGNAL \sravals[0][45]~36_combout\ : std_logic;
SIGNAL \Input[46]~input_o\ : std_logic;
SIGNAL \Input[14]~input_o\ : std_logic;
SIGNAL \sravals[0][46]~37_combout\ : std_logic;
SIGNAL \Input[44]~input_o\ : std_logic;
SIGNAL \Input[12]~input_o\ : std_logic;
SIGNAL \sravals[0][44]~35_combout\ : std_logic;
SIGNAL \Input[47]~input_o\ : std_logic;
SIGNAL \Input[15]~input_o\ : std_logic;
SIGNAL \sravals[0][47]~38_combout\ : std_logic;
SIGNAL \sravals[2][44]~39_combout\ : std_logic;
SIGNAL \Input[10]~input_o\ : std_logic;
SIGNAL \Input[42]~input_o\ : std_logic;
SIGNAL \sravals[0][42]~32_combout\ : std_logic;
SIGNAL \Input[8]~input_o\ : std_logic;
SIGNAL \Input[40]~input_o\ : std_logic;
SIGNAL \sravals[0][40]~30_combout\ : std_logic;
SIGNAL \Input[9]~input_o\ : std_logic;
SIGNAL \Input[41]~input_o\ : std_logic;
SIGNAL \sravals[0][41]~31_combout\ : std_logic;
SIGNAL \Input[43]~input_o\ : std_logic;
SIGNAL \Input[11]~input_o\ : std_logic;
SIGNAL \sravals[0][43]~33_combout\ : std_logic;
SIGNAL \sravals[2][40]~34_combout\ : std_logic;
SIGNAL \sravals[4][32]~40_combout\ : std_logic;
SIGNAL \ShiftCount[5]~input_o\ : std_logic;
SIGNAL \Output~0_combout\ : std_logic;
SIGNAL \sravals[0][10]~73_combout\ : std_logic;
SIGNAL \sravals[0][11]~74_combout\ : std_logic;
SIGNAL \sravals[0][9]~72_combout\ : std_logic;
SIGNAL \sravals[0][8]~71_combout\ : std_logic;
SIGNAL \sravals[2][8]~75_combout\ : std_logic;
SIGNAL \sravals[0][14]~78_combout\ : std_logic;
SIGNAL \sravals[0][13]~77_combout\ : std_logic;
SIGNAL \sravals[0][15]~79_combout\ : std_logic;
SIGNAL \sravals[0][12]~76_combout\ : std_logic;
SIGNAL \sravals[2][12]~80_combout\ : std_logic;
SIGNAL \sravals[0][1]~63_combout\ : std_logic;
SIGNAL \sravals[0][2]~64_combout\ : std_logic;
SIGNAL \sravals[0][0]~62_combout\ : std_logic;
SIGNAL \sravals[0][3]~65_combout\ : std_logic;
SIGNAL \Output~1_combout\ : std_logic;
SIGNAL \sravals[0][5]~67_combout\ : std_logic;
SIGNAL \sravals[0][6]~68_combout\ : std_logic;
SIGNAL \sravals[0][4]~66_combout\ : std_logic;
SIGNAL \sravals[0][7]~69_combout\ : std_logic;
SIGNAL \sravals[2][4]~70_combout\ : std_logic;
SIGNAL \Output~2_combout\ : std_logic;
SIGNAL \sllvals[2][0]~0_combout\ : std_logic;
SIGNAL \sllvals[4][4]~1_combout\ : std_logic;
SIGNAL \sllvals[4][0]~2_combout\ : std_logic;
SIGNAL \sravals[0][31]~59_combout\ : std_logic;
SIGNAL \sravals[0][28]~56_combout\ : std_logic;
SIGNAL \sravals[0][29]~57_combout\ : std_logic;
SIGNAL \sravals[0][30]~58_combout\ : std_logic;
SIGNAL \sravals[2][28]~60_combout\ : std_logic;
SIGNAL \sravals[0][19]~44_combout\ : std_logic;
SIGNAL \sravals[0][17]~42_combout\ : std_logic;
SIGNAL \sravals[0][18]~43_combout\ : std_logic;
SIGNAL \sravals[0][16]~41_combout\ : std_logic;
SIGNAL \sravals[2][16]~45_combout\ : std_logic;
SIGNAL \sravals[0][22]~48_combout\ : std_logic;
SIGNAL \sravals[0][23]~49_combout\ : std_logic;
SIGNAL \sravals[0][21]~47_combout\ : std_logic;
SIGNAL \sravals[0][20]~46_combout\ : std_logic;
SIGNAL \sravals[2][20]~50_combout\ : std_logic;
SIGNAL \sravals[0][25]~52_combout\ : std_logic;
SIGNAL \sravals[0][24]~51_combout\ : std_logic;
SIGNAL \sravals[0][27]~54_combout\ : std_logic;
SIGNAL \sravals[0][26]~53_combout\ : std_logic;
SIGNAL \sravals[2][24]~55_combout\ : std_logic;
SIGNAL \sravals[4][16]~61_combout\ : std_logic;
SIGNAL \ShiftCount[4]~input_o\ : std_logic;
SIGNAL \Output~3_combout\ : std_logic;
SIGNAL \Output~4_combout\ : std_logic;
SIGNAL \sravals[2][45]~89_combout\ : std_logic;
SIGNAL \sravals[2][33]~86_combout\ : std_logic;
SIGNAL \sravals[2][41]~88_combout\ : std_logic;
SIGNAL \sravals[2][37]~87_combout\ : std_logic;
SIGNAL \sravals[4][33]~90_combout\ : std_logic;
SIGNAL \sravals[2][53]~82_combout\ : std_logic;
SIGNAL \sravals[2][49]~81_combout\ : std_logic;
SIGNAL \sravals[2][61]~84_combout\ : std_logic;
SIGNAL \sravals[2][57]~83_combout\ : std_logic;
SIGNAL \sravals[4][49]~85_combout\ : std_logic;
SIGNAL \sravals[2][13]~98_combout\ : std_logic;
SIGNAL \sravals[2][9]~97_combout\ : std_logic;
SIGNAL \Output~5_combout\ : std_logic;
SIGNAL \sravals[2][5]~96_combout\ : std_logic;
SIGNAL \Output~6_combout\ : std_logic;
SIGNAL \sravals[2][25]~93_combout\ : std_logic;
SIGNAL \sravals[2][29]~94_combout\ : std_logic;
SIGNAL \sravals[2][21]~92_combout\ : std_logic;
SIGNAL \sravals[2][17]~91_combout\ : std_logic;
SIGNAL \sravals[4][17]~95_combout\ : std_logic;
SIGNAL \sllvals[4][1]~3_combout\ : std_logic;
SIGNAL \Output~7_combout\ : std_logic;
SIGNAL \Output~8_combout\ : std_logic;
SIGNAL \sravals[2][34]~104_combout\ : std_logic;
SIGNAL \sravals[2][46]~107_combout\ : std_logic;
SIGNAL \sravals[2][38]~105_combout\ : std_logic;
SIGNAL \sravals[2][42]~106_combout\ : std_logic;
SIGNAL \sravals[4][34]~108_combout\ : std_logic;
SIGNAL \sravals[2][54]~100_combout\ : std_logic;
SIGNAL \sravals[2][62]~102_combout\ : std_logic;
SIGNAL \sravals[2][58]~101_combout\ : std_logic;
SIGNAL \sravals[2][50]~99_combout\ : std_logic;
SIGNAL \sravals[4][50]~103_combout\ : std_logic;
SIGNAL \sllvals[4][2]~4_combout\ : std_logic;
SIGNAL \sravals[2][18]~109_combout\ : std_logic;
SIGNAL \sravals[2][30]~112_combout\ : std_logic;
SIGNAL \sravals[2][22]~110_combout\ : std_logic;
SIGNAL \sravals[2][26]~111_combout\ : std_logic;
SIGNAL \sravals[4][18]~113_combout\ : std_logic;
SIGNAL \sravals[2][14]~116_combout\ : std_logic;
SIGNAL \sravals[2][10]~115_combout\ : std_logic;
SIGNAL \Output~9_combout\ : std_logic;
SIGNAL \sravals[2][6]~114_combout\ : std_logic;
SIGNAL \Output~10_combout\ : std_logic;
SIGNAL \Output~11_combout\ : std_logic;
SIGNAL \Output~12_combout\ : std_logic;
SIGNAL \sravals[2][59]~119_combout\ : std_logic;
SIGNAL \sravals[2][55]~118_combout\ : std_logic;
SIGNAL \sravals[2][51]~117_combout\ : std_logic;
SIGNAL \sravals[4][51]~120_combout\ : std_logic;
SIGNAL \sravals[2][43]~123_combout\ : std_logic;
SIGNAL \sravals[2][47]~124_combout\ : std_logic;
SIGNAL \sravals[2][35]~121_combout\ : std_logic;
SIGNAL \sravals[2][39]~122_combout\ : std_logic;
SIGNAL \sravals[4][35]~125_combout\ : std_logic;
SIGNAL \sravals[2][7]~131_combout\ : std_logic;
SIGNAL \sravals[2][15]~133_combout\ : std_logic;
SIGNAL \sravals[2][11]~132_combout\ : std_logic;
SIGNAL \Output~13_combout\ : std_logic;
SIGNAL \Output~14_combout\ : std_logic;
SIGNAL \sllvals[2][3]~5_combout\ : std_logic;
SIGNAL \sllvals[4][3]~6_combout\ : std_logic;
SIGNAL \sravals[2][27]~128_combout\ : std_logic;
SIGNAL \sravals[2][19]~126_combout\ : std_logic;
SIGNAL \sravals[2][23]~127_combout\ : std_logic;
SIGNAL \sravals[2][31]~129_combout\ : std_logic;
SIGNAL \sravals[4][19]~130_combout\ : std_logic;
SIGNAL \Output~15_combout\ : std_logic;
SIGNAL \Output~16_combout\ : std_logic;
SIGNAL \sravals[4][36]~135_combout\ : std_logic;
SIGNAL \sravals[4][20]~136_combout\ : std_logic;
SIGNAL \Output~17_combout\ : std_logic;
SIGNAL \sllvals[2][4]~7_combout\ : std_logic;
SIGNAL \sllvals[4][4]~8_combout\ : std_logic;
SIGNAL \Output~18_combout\ : std_logic;
SIGNAL \sravals[4][52]~134_combout\ : std_logic;
SIGNAL \Output~19_combout\ : std_logic;
SIGNAL \sravals[4][53]~137_combout\ : std_logic;
SIGNAL \sravals[4][37]~138_combout\ : std_logic;
SIGNAL \sravals[4][21]~139_combout\ : std_logic;
SIGNAL \Output~20_combout\ : std_logic;
SIGNAL \sllvals[2][5]~10_combout\ : std_logic;
SIGNAL \sllvals[2][1]~9_combout\ : std_logic;
SIGNAL \sllvals[4][5]~11_combout\ : std_logic;
SIGNAL \Output~21_combout\ : std_logic;
SIGNAL \Output~22_combout\ : std_logic;
SIGNAL \sravals[4][38]~141_combout\ : std_logic;
SIGNAL \sravals[4][54]~140_combout\ : std_logic;
SIGNAL \Output~23_combout\ : std_logic;
SIGNAL \sravals[4][22]~142_combout\ : std_logic;
SIGNAL \sllvals[2][2]~12_combout\ : std_logic;
SIGNAL \sllvals[2][6]~13_combout\ : std_logic;
SIGNAL \sllvals[4][6]~14_combout\ : std_logic;
SIGNAL \Output~24_combout\ : std_logic;
SIGNAL \Output~25_combout\ : std_logic;
SIGNAL \Output~27_combout\ : std_logic;
SIGNAL \sravals[4][39]~144_combout\ : std_logic;
SIGNAL \sllvals[2][7]~15_combout\ : std_logic;
SIGNAL \sllvals[4][7]~16_combout\ : std_logic;
SIGNAL \Output~28_combout\ : std_logic;
SIGNAL \sravals[4][55]~145_combout\ : std_logic;
SIGNAL \Output~29_combout\ : std_logic;
SIGNAL \sravals[4][23]~143_combout\ : std_logic;
SIGNAL \Output~26_combout\ : std_logic;
SIGNAL \Output~30_combout\ : std_logic;
SIGNAL \sravals[4][24]~146_combout\ : std_logic;
SIGNAL \Output~31_combout\ : std_logic;
SIGNAL \sravals[4][56]~148_combout\ : std_logic;
SIGNAL \sllvals[2][8]~17_combout\ : std_logic;
SIGNAL \sllvals[4][8]~18_combout\ : std_logic;
SIGNAL \Output~32_combout\ : std_logic;
SIGNAL \sravals[4][40]~147_combout\ : std_logic;
SIGNAL \Output~33_combout\ : std_logic;
SIGNAL \sllvals[2][9]~19_combout\ : std_logic;
SIGNAL \sllvals[4][9]~20_combout\ : std_logic;
SIGNAL \sravals[4][57]~151_combout\ : std_logic;
SIGNAL \Output~34_combout\ : std_logic;
SIGNAL \Output~35_combout\ : std_logic;
SIGNAL \sravals[4][25]~149_combout\ : std_logic;
SIGNAL \sravals[4][41]~150_combout\ : std_logic;
SIGNAL \Output~36_combout\ : std_logic;
SIGNAL \Output~37_combout\ : std_logic;
SIGNAL \sllvals[2][10]~21_combout\ : std_logic;
SIGNAL \sllvals[4][10]~22_combout\ : std_logic;
SIGNAL \sravals[4][58]~154_combout\ : std_logic;
SIGNAL \Output~38_combout\ : std_logic;
SIGNAL \sravals[4][26]~152_combout\ : std_logic;
SIGNAL \sravals[4][42]~153_combout\ : std_logic;
SIGNAL \Output~39_combout\ : std_logic;
SIGNAL \sllvals[2][11]~23_combout\ : std_logic;
SIGNAL \sllvals[4][11]~24_combout\ : std_logic;
SIGNAL \sravals[4][43]~156_combout\ : std_logic;
SIGNAL \sravals[5][43]~157_combout\ : std_logic;
SIGNAL \Output~41_combout\ : std_logic;
SIGNAL \sravals[4][27]~155_combout\ : std_logic;
SIGNAL \Output~218_combout\ : std_logic;
SIGNAL \sllvals[2][12]~25_combout\ : std_logic;
SIGNAL \sllvals[4][12]~26_combout\ : std_logic;
SIGNAL \sravals[4][44]~159_combout\ : std_logic;
SIGNAL \sravals[5][44]~160_combout\ : std_logic;
SIGNAL \Output~42_combout\ : std_logic;
SIGNAL \sravals[4][28]~158_combout\ : std_logic;
SIGNAL \Output~214_combout\ : std_logic;
SIGNAL \sllvals[2][13]~27_combout\ : std_logic;
SIGNAL \sllvals[4][13]~28_combout\ : std_logic;
SIGNAL \sravals[4][29]~161_combout\ : std_logic;
SIGNAL \sravals[4][45]~162_combout\ : std_logic;
SIGNAL \sravals[5][45]~163_combout\ : std_logic;
SIGNAL \Output~43_combout\ : std_logic;
SIGNAL \Output~210_combout\ : std_logic;
SIGNAL \sllvals[2][14]~29_combout\ : std_logic;
SIGNAL \sllvals[4][14]~30_combout\ : std_logic;
SIGNAL \sravals[4][46]~165_combout\ : std_logic;
SIGNAL \sravals[5][46]~166_combout\ : std_logic;
SIGNAL \Output~44_combout\ : std_logic;
SIGNAL \sravals[4][30]~164_combout\ : std_logic;
SIGNAL \Output~206_combout\ : std_logic;
SIGNAL \sravals[4][47]~167_combout\ : std_logic;
SIGNAL \sllvals[2][15]~31_combout\ : std_logic;
SIGNAL \sllvals[4][15]~32_combout\ : std_logic;
SIGNAL \Output~45_combout\ : std_logic;
SIGNAL \sravals[4][31]~168_combout\ : std_logic;
SIGNAL \Output~46_combout\ : std_logic;
SIGNAL \Output~40_combout\ : std_logic;
SIGNAL \Output~47_combout\ : std_logic;
SIGNAL \sllvals[2][16]~33_combout\ : std_logic;
SIGNAL \sllvals[4][16]~34_combout\ : std_logic;
SIGNAL \Output~49_combout\ : std_logic;
SIGNAL \Output~50_combout\ : std_logic;
SIGNAL \Output~48_combout\ : std_logic;
SIGNAL \Output~51_combout\ : std_logic;
SIGNAL \Output~52_combout\ : std_logic;
SIGNAL \sllvals[2][17]~35_combout\ : std_logic;
SIGNAL \sllvals[4][17]~36_combout\ : std_logic;
SIGNAL \Output~53_combout\ : std_logic;
SIGNAL \Output~54_combout\ : std_logic;
SIGNAL \Output~55_combout\ : std_logic;
SIGNAL \sllvals[2][18]~37_combout\ : std_logic;
SIGNAL \sllvals[4][18]~38_combout\ : std_logic;
SIGNAL \Output~56_combout\ : std_logic;
SIGNAL \Output~57_combout\ : std_logic;
SIGNAL \Output~58_combout\ : std_logic;
SIGNAL \sllvals[2][19]~39_combout\ : std_logic;
SIGNAL \sllvals[4][19]~40_combout\ : std_logic;
SIGNAL \Output~60_combout\ : std_logic;
SIGNAL \Output~59_combout\ : std_logic;
SIGNAL \Output~61_combout\ : std_logic;
SIGNAL \sllvals[2][20]~41_combout\ : std_logic;
SIGNAL \sllvals[4][20]~42_combout\ : std_logic;
SIGNAL \Output~62_combout\ : std_logic;
SIGNAL \Output~63_combout\ : std_logic;
SIGNAL \Output~64_combout\ : std_logic;
SIGNAL \Output~65_combout\ : std_logic;
SIGNAL \Output~66_combout\ : std_logic;
SIGNAL \sllvals[2][21]~43_combout\ : std_logic;
SIGNAL \sllvals[4][21]~44_combout\ : std_logic;
SIGNAL \Output~67_combout\ : std_logic;
SIGNAL \sllvals[2][22]~45_combout\ : std_logic;
SIGNAL \sllvals[4][22]~46_combout\ : std_logic;
SIGNAL \Output~68_combout\ : std_logic;
SIGNAL \Output~69_combout\ : std_logic;
SIGNAL \Output~70_combout\ : std_logic;
SIGNAL \sllvals[2][23]~47_combout\ : std_logic;
SIGNAL \sllvals[4][23]~48_combout\ : std_logic;
SIGNAL \Output~73_combout\ : std_logic;
SIGNAL \Output~202_combout\ : std_logic;
SIGNAL \Output~74_combout\ : std_logic;
SIGNAL \sllvals[2][24]~49_combout\ : std_logic;
SIGNAL \sllvals[4][24]~50_combout\ : std_logic;
SIGNAL \Output~75_combout\ : std_logic;
SIGNAL \Output~76_combout\ : std_logic;
SIGNAL \Output~77_combout\ : std_logic;
SIGNAL \sllvals[2][25]~51_combout\ : std_logic;
SIGNAL \sllvals[4][25]~52_combout\ : std_logic;
SIGNAL \Output~198_combout\ : std_logic;
SIGNAL \Output~78_combout\ : std_logic;
SIGNAL \sllvals[2][26]~53_combout\ : std_logic;
SIGNAL \sllvals[4][26]~54_combout\ : std_logic;
SIGNAL \Output~194_combout\ : std_logic;
SIGNAL \Output~71_combout\ : std_logic;
SIGNAL \Output~72_combout\ : std_logic;
SIGNAL \sravals[5][59]~169_combout\ : std_logic;
SIGNAL \Output~79_combout\ : std_logic;
SIGNAL \sllvals[2][27]~55_combout\ : std_logic;
SIGNAL \sllvals[4][27]~56_combout\ : std_logic;
SIGNAL \Output~80_combout\ : std_logic;
SIGNAL \sllvals[2][28]~57_combout\ : std_logic;
SIGNAL \sllvals[4][28]~58_combout\ : std_logic;
SIGNAL \Output~82_combout\ : std_logic;
SIGNAL \sravals[5][60]~170_combout\ : std_logic;
SIGNAL \Output~81_combout\ : std_logic;
SIGNAL \Output~83_combout\ : std_logic;
SIGNAL \sllvals[2][29]~59_combout\ : std_logic;
SIGNAL \sllvals[4][29]~60_combout\ : std_logic;
SIGNAL \Output~84_combout\ : std_logic;
SIGNAL \Output~190_combout\ : std_logic;
SIGNAL \Output~85_combout\ : std_logic;
SIGNAL \sllvals[2][30]~61_combout\ : std_logic;
SIGNAL \sllvals[4][30]~62_combout\ : std_logic;
SIGNAL \sravals[5][62]~171_combout\ : std_logic;
SIGNAL \Output~86_combout\ : std_logic;
SIGNAL \Output~87_combout\ : std_logic;
SIGNAL \Output~88_combout\ : std_logic;
SIGNAL \sllvals[2][31]~63_combout\ : std_logic;
SIGNAL \sllvals[4][31]~64_combout\ : std_logic;
SIGNAL \Output~89_combout\ : std_logic;
SIGNAL \Output~90_combout\ : std_logic;
SIGNAL \Output~91_combout\ : std_logic;
SIGNAL \sllvals[2][32]~65_combout\ : std_logic;
SIGNAL \sllvals[4][32]~66_combout\ : std_logic;
SIGNAL \Output~92_combout\ : std_logic;
SIGNAL \Output~93_combout\ : std_logic;
SIGNAL \Output~94_combout\ : std_logic;
SIGNAL \Output~95_combout\ : std_logic;
SIGNAL \sllvals[2][33]~67_combout\ : std_logic;
SIGNAL \sllvals[4][33]~68_combout\ : std_logic;
SIGNAL \Output~96_combout\ : std_logic;
SIGNAL \Output~97_combout\ : std_logic;
SIGNAL \Output~98_combout\ : std_logic;
SIGNAL \Output~100_combout\ : std_logic;
SIGNAL \sllvals[2][34]~69_combout\ : std_logic;
SIGNAL \sllvals[4][34]~70_combout\ : std_logic;
SIGNAL \Output~99_combout\ : std_logic;
SIGNAL \Output~101_combout\ : std_logic;
SIGNAL \Output~103_combout\ : std_logic;
SIGNAL \sllvals[2][35]~71_combout\ : std_logic;
SIGNAL \sllvals[4][35]~72_combout\ : std_logic;
SIGNAL \Output~102_combout\ : std_logic;
SIGNAL \Output~104_combout\ : std_logic;
SIGNAL \Output~106_combout\ : std_logic;
SIGNAL \sllvals[2][36]~73_combout\ : std_logic;
SIGNAL \sllvals[4][36]~74_combout\ : std_logic;
SIGNAL \Output~105_combout\ : std_logic;
SIGNAL \Output~107_combout\ : std_logic;
SIGNAL \Output~109_combout\ : std_logic;
SIGNAL \sllvals[2][37]~75_combout\ : std_logic;
SIGNAL \sllvals[4][37]~76_combout\ : std_logic;
SIGNAL \Output~108_combout\ : std_logic;
SIGNAL \Output~110_combout\ : std_logic;
SIGNAL \sllvals[2][38]~77_combout\ : std_logic;
SIGNAL \sllvals[4][38]~78_combout\ : std_logic;
SIGNAL \Output~111_combout\ : std_logic;
SIGNAL \Output~112_combout\ : std_logic;
SIGNAL \Output~113_combout\ : std_logic;
SIGNAL \sllvals[2][39]~79_combout\ : std_logic;
SIGNAL \sllvals[4][39]~80_combout\ : std_logic;
SIGNAL \Output~114_combout\ : std_logic;
SIGNAL \Output~186_combout\ : std_logic;
SIGNAL \sllvals[2][40]~81_combout\ : std_logic;
SIGNAL \sllvals[4][40]~82_combout\ : std_logic;
SIGNAL \Output~115_combout\ : std_logic;
SIGNAL \Output~116_combout\ : std_logic;
SIGNAL \Output~117_combout\ : std_logic;
SIGNAL \sllvals[2][41]~83_combout\ : std_logic;
SIGNAL \sllvals[4][41]~84_combout\ : std_logic;
SIGNAL \Output~118_combout\ : std_logic;
SIGNAL \Output~119_combout\ : std_logic;
SIGNAL \Output~120_combout\ : std_logic;
SIGNAL \Output~121_combout\ : std_logic;
SIGNAL \sllvals[2][42]~85_combout\ : std_logic;
SIGNAL \sllvals[4][42]~86_combout\ : std_logic;
SIGNAL \Output~122_combout\ : std_logic;
SIGNAL \Output~123_combout\ : std_logic;
SIGNAL \sllvals[2][43]~87_combout\ : std_logic;
SIGNAL \sllvals[4][43]~88_combout\ : std_logic;
SIGNAL \Output~124_combout\ : std_logic;
SIGNAL \Output~125_combout\ : std_logic;
SIGNAL \sllvals[2][44]~89_combout\ : std_logic;
SIGNAL \sllvals[4][44]~90_combout\ : std_logic;
SIGNAL \Output~126_combout\ : std_logic;
SIGNAL \Output~127_combout\ : std_logic;
SIGNAL \sllvals[2][45]~91_combout\ : std_logic;
SIGNAL \sllvals[4][45]~92_combout\ : std_logic;
SIGNAL \Output~128_combout\ : std_logic;
SIGNAL \Output~129_combout\ : std_logic;
SIGNAL \sllvals[2][46]~93_combout\ : std_logic;
SIGNAL \sllvals[4][46]~94_combout\ : std_logic;
SIGNAL \Output~130_combout\ : std_logic;
SIGNAL \Output~131_combout\ : std_logic;
SIGNAL \Output~132_combout\ : std_logic;
SIGNAL \sllvals[2][47]~95_combout\ : std_logic;
SIGNAL \sllvals[4][47]~96_combout\ : std_logic;
SIGNAL \Output~133_combout\ : std_logic;
SIGNAL \sllvals[2][48]~97_combout\ : std_logic;
SIGNAL \Output~134_combout\ : std_logic;
SIGNAL \Output~135_combout\ : std_logic;
SIGNAL \Output~136_combout\ : std_logic;
SIGNAL \sllvals[2][49]~98_combout\ : std_logic;
SIGNAL \Output~137_combout\ : std_logic;
SIGNAL \Output~138_combout\ : std_logic;
SIGNAL \Output~139_combout\ : std_logic;
SIGNAL \sllvals[2][50]~99_combout\ : std_logic;
SIGNAL \Output~140_combout\ : std_logic;
SIGNAL \Output~141_combout\ : std_logic;
SIGNAL \Output~142_combout\ : std_logic;
SIGNAL \sllvals[2][51]~100_combout\ : std_logic;
SIGNAL \Output~143_combout\ : std_logic;
SIGNAL \Output~144_combout\ : std_logic;
SIGNAL \Output~145_combout\ : std_logic;
SIGNAL \sllvals[2][52]~101_combout\ : std_logic;
SIGNAL \Output~146_combout\ : std_logic;
SIGNAL \Output~147_combout\ : std_logic;
SIGNAL \Output~148_combout\ : std_logic;
SIGNAL \sllvals[2][53]~102_combout\ : std_logic;
SIGNAL \Output~149_combout\ : std_logic;
SIGNAL \Output~150_combout\ : std_logic;
SIGNAL \Output~151_combout\ : std_logic;
SIGNAL \sllvals[2][54]~103_combout\ : std_logic;
SIGNAL \Output~152_combout\ : std_logic;
SIGNAL \Output~153_combout\ : std_logic;
SIGNAL \Output~154_combout\ : std_logic;
SIGNAL \sllvals[2][55]~104_combout\ : std_logic;
SIGNAL \Output~155_combout\ : std_logic;
SIGNAL \Output~156_combout\ : std_logic;
SIGNAL \Output~157_combout\ : std_logic;
SIGNAL \sllvals[2][56]~105_combout\ : std_logic;
SIGNAL \Output~158_combout\ : std_logic;
SIGNAL \Output~159_combout\ : std_logic;
SIGNAL \Output~160_combout\ : std_logic;
SIGNAL \sllvals[2][57]~106_combout\ : std_logic;
SIGNAL \Output~161_combout\ : std_logic;
SIGNAL \Output~162_combout\ : std_logic;
SIGNAL \Output~163_combout\ : std_logic;
SIGNAL \sllvals[2][58]~107_combout\ : std_logic;
SIGNAL \Output~164_combout\ : std_logic;
SIGNAL \Output~165_combout\ : std_logic;
SIGNAL \Output~166_combout\ : std_logic;
SIGNAL \sllvals[2][59]~108_combout\ : std_logic;
SIGNAL \Output~167_combout\ : std_logic;
SIGNAL \Output~168_combout\ : std_logic;
SIGNAL \Output~169_combout\ : std_logic;
SIGNAL \Output~170_combout\ : std_logic;
SIGNAL \Output~171_combout\ : std_logic;
SIGNAL \Output~172_combout\ : std_logic;
SIGNAL \Output~173_combout\ : std_logic;
SIGNAL \Output~174_combout\ : std_logic;
SIGNAL \Output~175_combout\ : std_logic;
SIGNAL \Output~176_combout\ : std_logic;
SIGNAL \Output~182_combout\ : std_logic;
SIGNAL \Output~177_combout\ : std_logic;
SIGNAL \Output~178_combout\ : std_logic;
SIGNAL \Output~179_combout\ : std_logic;
SIGNAL \Output~180_combout\ : std_logic;
SIGNAL \sllvals[2][63]~109_combout\ : std_logic;
SIGNAL \sllvals[4][63]~110_combout\ : std_logic;
SIGNAL \sllvals[6][63]~111_combout\ : std_logic;
SIGNAL \Output~181_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[6][63]~111_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][63]~110_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][19]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Output~71_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][20]~41_combout\ : std_logic;
SIGNAL \ALT_INV_Output~59_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][27]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Output~62_combout\ : std_logic;
SIGNAL \ALT_INV_Output~68_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][23]~47_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][22]~45_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][19]~40_combout\ : std_logic;
SIGNAL \ALT_INV_Output~56_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][21]~44_combout\ : std_logic;
SIGNAL \ALT_INV_Output~66_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][26]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Output~54_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][23]~48_combout\ : std_logic;
SIGNAL \ALT_INV_Output~78_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][22]~46_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][24]~50_combout\ : std_logic;
SIGNAL \ALT_INV_Output~60_combout\ : std_logic;
SIGNAL \ALT_INV_Output~75_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][27]~55_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][59]~169_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][28]~57_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][25]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Output~77_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][60]~170_combout\ : std_logic;
SIGNAL \ALT_INV_Output~82_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][29]~59_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][29]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Output~69_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][17]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Output~51_combout\ : std_logic;
SIGNAL \ALT_INV_Output~73_combout\ : std_logic;
SIGNAL \ALT_INV_Output~81_combout\ : std_logic;
SIGNAL \ALT_INV_Output~84_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][18]~37_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][20]~42_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][21]~43_combout\ : std_logic;
SIGNAL \ALT_INV_Output~74_combout\ : std_logic;
SIGNAL \ALT_INV_Output~57_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][28]~58_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][26]~54_combout\ : std_logic;
SIGNAL \ALT_INV_Output~63_combout\ : std_logic;
SIGNAL \ALT_INV_Output~72_combout\ : std_logic;
SIGNAL \ALT_INV_Output~65_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][24]~49_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][17]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Output~53_combout\ : std_logic;
SIGNAL \ALT_INV_Output~50_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][25]~51_combout\ : std_logic;
SIGNAL \ALT_INV_Output~79_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][18]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Output~86_combout\ : std_logic;
SIGNAL \ALT_INV_Output~87_combout\ : std_logic;
SIGNAL \ALT_INV_Output~92_combout\ : std_logic;
SIGNAL \ALT_INV_Output~100_combout\ : std_logic;
SIGNAL \ALT_INV_Output~103_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][31]~64_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][36]~74_combout\ : std_logic;
SIGNAL \ALT_INV_Output~106_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][35]~72_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][37]~75_combout\ : std_logic;
SIGNAL \ALT_INV_Output~109_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][37]~76_combout\ : std_logic;
SIGNAL \ALT_INV_Output~112_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][40]~81_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][32]~66_combout\ : std_logic;
SIGNAL \ALT_INV_Output~111_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][39]~79_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][40]~82_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][41]~84_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][38]~78_combout\ : std_logic;
SIGNAL \ALT_INV_Output~118_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][34]~69_combout\ : std_logic;
SIGNAL \ALT_INV_Output~119_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][41]~83_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][30]~61_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][62]~171_combout\ : std_logic;
SIGNAL \ALT_INV_Output~89_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][39]~80_combout\ : std_logic;
SIGNAL \ALT_INV_Output~114_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][42]~85_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][42]~86_combout\ : std_logic;
SIGNAL \ALT_INV_Output~96_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][32]~65_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][35]~71_combout\ : std_logic;
SIGNAL \ALT_INV_Output~102_combout\ : std_logic;
SIGNAL \ALT_INV_Output~121_combout\ : std_logic;
SIGNAL \ALT_INV_Output~122_combout\ : std_logic;
SIGNAL \ALT_INV_Output~91_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][38]~77_combout\ : std_logic;
SIGNAL \ALT_INV_Output~97_combout\ : std_logic;
SIGNAL \ALT_INV_Output~94_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][33]~68_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][36]~73_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][33]~67_combout\ : std_logic;
SIGNAL \ALT_INV_Output~99_combout\ : std_logic;
SIGNAL \ALT_INV_Output~105_combout\ : std_logic;
SIGNAL \ALT_INV_Output~93_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][34]~70_combout\ : std_logic;
SIGNAL \ALT_INV_Output~108_combout\ : std_logic;
SIGNAL \ALT_INV_Output~115_combout\ : std_logic;
SIGNAL \ALT_INV_Output~116_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][31]~63_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][30]~62_combout\ : std_logic;
SIGNAL \ALT_INV_Output~130_combout\ : std_logic;
SIGNAL \ALT_INV_Output~153_combout\ : std_logic;
SIGNAL \ALT_INV_Output~147_combout\ : std_logic;
SIGNAL \ALT_INV_Output~161_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][44]~89_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][46]~94_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][55]~104_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][53]~102_combout\ : std_logic;
SIGNAL \ALT_INV_Output~155_combout\ : std_logic;
SIGNAL \ALT_INV_Output~140_combout\ : std_logic;
SIGNAL \ALT_INV_Output~126_combout\ : std_logic;
SIGNAL \ALT_INV_Output~124_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][50]~99_combout\ : std_logic;
SIGNAL \ALT_INV_Output~132_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][49]~98_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][54]~103_combout\ : std_logic;
SIGNAL \ALT_INV_Output~159_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][57]~106_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][45]~92_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][44]~90_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][58]~107_combout\ : std_logic;
SIGNAL \ALT_INV_Output~162_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][45]~91_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][56]~105_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][43]~88_combout\ : std_logic;
SIGNAL \ALT_INV_Output~164_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][47]~95_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][47]~96_combout\ : std_logic;
SIGNAL \ALT_INV_Output~165_combout\ : std_logic;
SIGNAL \ALT_INV_Output~144_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][43]~87_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][48]~97_combout\ : std_logic;
SIGNAL \ALT_INV_Output~135_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][51]~100_combout\ : std_logic;
SIGNAL \ALT_INV_Output~128_combout\ : std_logic;
SIGNAL \ALT_INV_Output~134_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][52]~101_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][46]~93_combout\ : std_logic;
SIGNAL \ALT_INV_Output~146_combout\ : std_logic;
SIGNAL \ALT_INV_Output~149_combout\ : std_logic;
SIGNAL \ALT_INV_Output~150_combout\ : std_logic;
SIGNAL \ALT_INV_Output~158_combout\ : std_logic;
SIGNAL \ALT_INV_Output~137_combout\ : std_logic;
SIGNAL \ALT_INV_Output~152_combout\ : std_logic;
SIGNAL \ALT_INV_Output~143_combout\ : std_logic;
SIGNAL \ALT_INV_Output~141_combout\ : std_logic;
SIGNAL \ALT_INV_Output~156_combout\ : std_logic;
SIGNAL \ALT_INV_Output~138_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][59]~108_combout\ : std_logic;
SIGNAL \ALT_INV_Output~168_combout\ : std_logic;
SIGNAL \ALT_INV_Output~170_combout\ : std_logic;
SIGNAL \ALT_INV_Output~172_combout\ : std_logic;
SIGNAL \ALT_INV_Output~174_combout\ : std_logic;
SIGNAL \ALT_INV_Output~176_combout\ : std_logic;
SIGNAL \ALT_INV_Output~167_combout\ : std_logic;
SIGNAL \ALT_INV_Output~171_combout\ : std_logic;
SIGNAL \ALT_INV_Output~175_combout\ : std_logic;
SIGNAL \ALT_INV_Output~177_combout\ : std_logic;
SIGNAL \ALT_INV_Output~179_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][63]~109_combout\ : std_logic;
SIGNAL \ALT_INV_Output~178_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][48]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][52]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][56]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][60]~15_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][61]~16_combout\ : std_logic;
SIGNAL \ALT_INV_y2[63]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Output~190_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][49]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][53]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][56]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][48]~19_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][32]~20_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][33]~21_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][35]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][32]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][36]~25_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][37]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][39]~28_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][58]~12_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][36]~29_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][40]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][50]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][51]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][54]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][59]~13_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][62]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][34]~22_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][60]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][55]~8_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][57]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][38]~27_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][41]~31_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][52]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][48]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][45]~36_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][21]~47_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][27]~54_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][28]~56_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][28]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Output~1_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][6]~68_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][11]~74_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][14]~78_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][15]~79_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][31]~59_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][12]~80_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][1]~63_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][7]~69_combout\ : std_logic;
SIGNAL \ALT_INV_Output~2_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][17]~42_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][19]~44_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][18]~43_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][22]~48_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][20]~50_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][29]~57_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][26]~53_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][16]~61_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][0]~62_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][49]~81_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][53]~82_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][8]~75_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][23]~49_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][5]~67_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][9]~72_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][57]~83_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][61]~84_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][44]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Output~3_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][49]~85_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][33]~86_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][37]~87_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][24]~51_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][2]~64_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][41]~88_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][47]~38_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][16]~41_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][16]~45_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][20]~46_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][3]~65_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][42]~32_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][8]~71_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][4]~70_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][10]~73_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][12]~76_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][32]~40_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][25]~52_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][13]~77_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][40]~34_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][46]~37_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][43]~33_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][44]~39_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][24]~55_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][30]~58_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[0][4]~66_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][13]~98_combout\ : std_logic;
SIGNAL \ALT_INV_Output~10_combout\ : std_logic;
SIGNAL \ALT_INV_Output~11_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][51]~117_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][51]~120_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][5]~96_combout\ : std_logic;
SIGNAL \ALT_INV_Output~9_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][43]~123_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][47]~124_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][30]~112_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][35]~125_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][34]~104_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][54]~100_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][34]~108_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][62]~102_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][46]~107_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][18]~113_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][17]~95_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][18]~109_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][22]~110_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][25]~93_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][14]~116_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][59]~119_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][50]~103_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][45]~89_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][35]~121_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Output~7_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][17]~91_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][23]~127_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][27]~128_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][26]~111_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][19]~130_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][21]~92_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][19]~126_combout\ : std_logic;
SIGNAL \ALT_INV_Output~13_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][55]~118_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][29]~94_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][42]~106_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][7]~131_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][58]~101_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][9]~97_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][31]~129_combout\ : std_logic;
SIGNAL \ALT_INV_Output~6_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][11]~132_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][15]~133_combout\ : std_logic;
SIGNAL \ALT_INV_Output~14_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][39]~122_combout\ : std_logic;
SIGNAL \ALT_INV_Output~15_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][38]~105_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][52]~134_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][36]~135_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][4]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][6]~114_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][50]~99_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[2][10]~115_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][33]~90_combout\ : std_logic;
SIGNAL \ALT_INV_Output~5_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][39]~144_combout\ : std_logic;
SIGNAL \ALT_INV_Output~29_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][27]~155_combout\ : std_logic;
SIGNAL \ALT_INV_Output~26_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][54]~140_combout\ : std_logic;
SIGNAL \ALT_INV_Output~21_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][7]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Output~35_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][37]~138_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][24]~146_combout\ : std_logic;
SIGNAL \ALT_INV_Output~32_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][10]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Output~40_combout\ : std_logic;
SIGNAL \ALT_INV_Output~17_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][43]~156_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][43]~157_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][11]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][40]~147_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][53]~137_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][6]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~23_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][5]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][21]~139_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][22]~142_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][55]~145_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][4]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Output~18_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][25]~149_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][9]~19_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][9]~20_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][58]~154_combout\ : std_logic;
SIGNAL \ALT_INV_Output~41_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][11]~24_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][56]~148_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][5]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][20]~136_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][38]~141_combout\ : std_logic;
SIGNAL \ALT_INV_Output~27_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][2]~12_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][6]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][7]~15_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][8]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][41]~150_combout\ : std_logic;
SIGNAL \ALT_INV_Output~31_combout\ : std_logic;
SIGNAL \ALT_INV_Output~34_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][57]~151_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][26]~152_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][42]~153_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][10]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Output~37_combout\ : std_logic;
SIGNAL \ALT_INV_Output~20_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][23]~143_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][8]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Output~38_combout\ : std_logic;
SIGNAL \ALT_INV_Output~28_combout\ : std_logic;
SIGNAL \ALT_INV_Output~24_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][28]~158_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][13]~28_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][15]~31_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][15]~32_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][46]~166_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][14]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][31]~168_combout\ : std_logic;
SIGNAL \ALT_INV_Output~45_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][12]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Output~46_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][16]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Output~43_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][44]~159_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][30]~164_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][12]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[4][16]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Output~48_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][44]~160_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][47]~167_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][46]~165_combout\ : std_logic;
SIGNAL \ALT_INV_Output~49_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][13]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~44_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][29]~161_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[5][45]~163_combout\ : std_logic;
SIGNAL \ALT_INV_sllvals[2][14]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Output~42_combout\ : std_logic;
SIGNAL \ALT_INV_sravals[4][45]~162_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[39]~input_o\ : std_logic;

BEGIN

ww_Input <= Input;
ww_Arith <= Arith;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
ww_ShiftCount <= ShiftCount;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sllvals[6][63]~111_combout\ <= NOT \sllvals[6][63]~111_combout\;
\ALT_INV_sllvals[4][63]~110_combout\ <= NOT \sllvals[4][63]~110_combout\;
\ALT_INV_sllvals[2][19]~39_combout\ <= NOT \sllvals[2][19]~39_combout\;
\ALT_INV_Output~71_combout\ <= NOT \Output~71_combout\;
\ALT_INV_sllvals[2][20]~41_combout\ <= NOT \sllvals[2][20]~41_combout\;
\ALT_INV_Output~59_combout\ <= NOT \Output~59_combout\;
\ALT_INV_sllvals[4][27]~56_combout\ <= NOT \sllvals[4][27]~56_combout\;
\ALT_INV_Output~62_combout\ <= NOT \Output~62_combout\;
\ALT_INV_Output~68_combout\ <= NOT \Output~68_combout\;
\ALT_INV_sllvals[2][23]~47_combout\ <= NOT \sllvals[2][23]~47_combout\;
\ALT_INV_sllvals[2][22]~45_combout\ <= NOT \sllvals[2][22]~45_combout\;
\ALT_INV_sllvals[4][19]~40_combout\ <= NOT \sllvals[4][19]~40_combout\;
\ALT_INV_Output~56_combout\ <= NOT \Output~56_combout\;
\ALT_INV_sllvals[4][21]~44_combout\ <= NOT \sllvals[4][21]~44_combout\;
\ALT_INV_Output~66_combout\ <= NOT \Output~66_combout\;
\ALT_INV_sllvals[2][26]~53_combout\ <= NOT \sllvals[2][26]~53_combout\;
\ALT_INV_Output~54_combout\ <= NOT \Output~54_combout\;
\ALT_INV_sllvals[4][23]~48_combout\ <= NOT \sllvals[4][23]~48_combout\;
\ALT_INV_Output~78_combout\ <= NOT \Output~78_combout\;
\ALT_INV_sllvals[4][22]~46_combout\ <= NOT \sllvals[4][22]~46_combout\;
\ALT_INV_sllvals[4][24]~50_combout\ <= NOT \sllvals[4][24]~50_combout\;
\ALT_INV_Output~60_combout\ <= NOT \Output~60_combout\;
\ALT_INV_Output~75_combout\ <= NOT \Output~75_combout\;
\ALT_INV_sllvals[2][27]~55_combout\ <= NOT \sllvals[2][27]~55_combout\;
\ALT_INV_sravals[5][59]~169_combout\ <= NOT \sravals[5][59]~169_combout\;
\ALT_INV_sllvals[2][28]~57_combout\ <= NOT \sllvals[2][28]~57_combout\;
\ALT_INV_sllvals[4][25]~52_combout\ <= NOT \sllvals[4][25]~52_combout\;
\ALT_INV_Output~77_combout\ <= NOT \Output~77_combout\;
\ALT_INV_sravals[5][60]~170_combout\ <= NOT \sravals[5][60]~170_combout\;
\ALT_INV_Output~82_combout\ <= NOT \Output~82_combout\;
\ALT_INV_sllvals[2][29]~59_combout\ <= NOT \sllvals[2][29]~59_combout\;
\ALT_INV_sllvals[4][29]~60_combout\ <= NOT \sllvals[4][29]~60_combout\;
\ALT_INV_Output~69_combout\ <= NOT \Output~69_combout\;
\ALT_INV_sllvals[4][17]~36_combout\ <= NOT \sllvals[4][17]~36_combout\;
\ALT_INV_Output~51_combout\ <= NOT \Output~51_combout\;
\ALT_INV_Output~73_combout\ <= NOT \Output~73_combout\;
\ALT_INV_Output~81_combout\ <= NOT \Output~81_combout\;
\ALT_INV_Output~84_combout\ <= NOT \Output~84_combout\;
\ALT_INV_sllvals[2][18]~37_combout\ <= NOT \sllvals[2][18]~37_combout\;
\ALT_INV_sllvals[4][20]~42_combout\ <= NOT \sllvals[4][20]~42_combout\;
\ALT_INV_sllvals[2][21]~43_combout\ <= NOT \sllvals[2][21]~43_combout\;
\ALT_INV_Output~74_combout\ <= NOT \Output~74_combout\;
\ALT_INV_Output~57_combout\ <= NOT \Output~57_combout\;
\ALT_INV_sllvals[4][28]~58_combout\ <= NOT \sllvals[4][28]~58_combout\;
\ALT_INV_sllvals[4][26]~54_combout\ <= NOT \sllvals[4][26]~54_combout\;
\ALT_INV_Output~63_combout\ <= NOT \Output~63_combout\;
\ALT_INV_Output~72_combout\ <= NOT \Output~72_combout\;
\ALT_INV_Output~65_combout\ <= NOT \Output~65_combout\;
\ALT_INV_sllvals[2][24]~49_combout\ <= NOT \sllvals[2][24]~49_combout\;
\ALT_INV_sllvals[2][17]~35_combout\ <= NOT \sllvals[2][17]~35_combout\;
\ALT_INV_Output~53_combout\ <= NOT \Output~53_combout\;
\ALT_INV_Output~50_combout\ <= NOT \Output~50_combout\;
\ALT_INV_sllvals[2][25]~51_combout\ <= NOT \sllvals[2][25]~51_combout\;
\ALT_INV_Output~79_combout\ <= NOT \Output~79_combout\;
\ALT_INV_sllvals[4][18]~38_combout\ <= NOT \sllvals[4][18]~38_combout\;
\ALT_INV_Output~86_combout\ <= NOT \Output~86_combout\;
\ALT_INV_Output~87_combout\ <= NOT \Output~87_combout\;
\ALT_INV_Output~92_combout\ <= NOT \Output~92_combout\;
\ALT_INV_Output~100_combout\ <= NOT \Output~100_combout\;
\ALT_INV_Output~103_combout\ <= NOT \Output~103_combout\;
\ALT_INV_sllvals[4][31]~64_combout\ <= NOT \sllvals[4][31]~64_combout\;
\ALT_INV_sllvals[4][36]~74_combout\ <= NOT \sllvals[4][36]~74_combout\;
\ALT_INV_Output~106_combout\ <= NOT \Output~106_combout\;
\ALT_INV_sllvals[4][35]~72_combout\ <= NOT \sllvals[4][35]~72_combout\;
\ALT_INV_sllvals[2][37]~75_combout\ <= NOT \sllvals[2][37]~75_combout\;
\ALT_INV_Output~109_combout\ <= NOT \Output~109_combout\;
\ALT_INV_sllvals[4][37]~76_combout\ <= NOT \sllvals[4][37]~76_combout\;
\ALT_INV_Output~112_combout\ <= NOT \Output~112_combout\;
\ALT_INV_sllvals[2][40]~81_combout\ <= NOT \sllvals[2][40]~81_combout\;
\ALT_INV_sllvals[4][32]~66_combout\ <= NOT \sllvals[4][32]~66_combout\;
\ALT_INV_Output~111_combout\ <= NOT \Output~111_combout\;
\ALT_INV_sllvals[2][39]~79_combout\ <= NOT \sllvals[2][39]~79_combout\;
\ALT_INV_sllvals[4][40]~82_combout\ <= NOT \sllvals[4][40]~82_combout\;
\ALT_INV_sllvals[4][41]~84_combout\ <= NOT \sllvals[4][41]~84_combout\;
\ALT_INV_sllvals[4][38]~78_combout\ <= NOT \sllvals[4][38]~78_combout\;
\ALT_INV_Output~118_combout\ <= NOT \Output~118_combout\;
\ALT_INV_sllvals[2][34]~69_combout\ <= NOT \sllvals[2][34]~69_combout\;
\ALT_INV_Output~119_combout\ <= NOT \Output~119_combout\;
\ALT_INV_sllvals[2][41]~83_combout\ <= NOT \sllvals[2][41]~83_combout\;
\ALT_INV_sllvals[2][30]~61_combout\ <= NOT \sllvals[2][30]~61_combout\;
\ALT_INV_sravals[5][62]~171_combout\ <= NOT \sravals[5][62]~171_combout\;
\ALT_INV_Output~89_combout\ <= NOT \Output~89_combout\;
\ALT_INV_sllvals[4][39]~80_combout\ <= NOT \sllvals[4][39]~80_combout\;
\ALT_INV_Output~114_combout\ <= NOT \Output~114_combout\;
\ALT_INV_sllvals[2][42]~85_combout\ <= NOT \sllvals[2][42]~85_combout\;
\ALT_INV_sllvals[4][42]~86_combout\ <= NOT \sllvals[4][42]~86_combout\;
\ALT_INV_Output~96_combout\ <= NOT \Output~96_combout\;
\ALT_INV_sllvals[2][32]~65_combout\ <= NOT \sllvals[2][32]~65_combout\;
\ALT_INV_sllvals[2][35]~71_combout\ <= NOT \sllvals[2][35]~71_combout\;
\ALT_INV_Output~102_combout\ <= NOT \Output~102_combout\;
\ALT_INV_Output~121_combout\ <= NOT \Output~121_combout\;
\ALT_INV_Output~122_combout\ <= NOT \Output~122_combout\;
\ALT_INV_Output~91_combout\ <= NOT \Output~91_combout\;
\ALT_INV_sllvals[2][38]~77_combout\ <= NOT \sllvals[2][38]~77_combout\;
\ALT_INV_Output~97_combout\ <= NOT \Output~97_combout\;
\ALT_INV_Output~94_combout\ <= NOT \Output~94_combout\;
\ALT_INV_sllvals[4][33]~68_combout\ <= NOT \sllvals[4][33]~68_combout\;
\ALT_INV_sllvals[2][36]~73_combout\ <= NOT \sllvals[2][36]~73_combout\;
\ALT_INV_sllvals[2][33]~67_combout\ <= NOT \sllvals[2][33]~67_combout\;
\ALT_INV_Output~99_combout\ <= NOT \Output~99_combout\;
\ALT_INV_Output~105_combout\ <= NOT \Output~105_combout\;
\ALT_INV_Output~93_combout\ <= NOT \Output~93_combout\;
\ALT_INV_sllvals[4][34]~70_combout\ <= NOT \sllvals[4][34]~70_combout\;
\ALT_INV_Output~108_combout\ <= NOT \Output~108_combout\;
\ALT_INV_Output~115_combout\ <= NOT \Output~115_combout\;
\ALT_INV_Output~116_combout\ <= NOT \Output~116_combout\;
\ALT_INV_sllvals[2][31]~63_combout\ <= NOT \sllvals[2][31]~63_combout\;
\ALT_INV_sllvals[4][30]~62_combout\ <= NOT \sllvals[4][30]~62_combout\;
\ALT_INV_Output~130_combout\ <= NOT \Output~130_combout\;
\ALT_INV_Output~153_combout\ <= NOT \Output~153_combout\;
\ALT_INV_Output~147_combout\ <= NOT \Output~147_combout\;
\ALT_INV_Output~161_combout\ <= NOT \Output~161_combout\;
\ALT_INV_sllvals[2][44]~89_combout\ <= NOT \sllvals[2][44]~89_combout\;
\ALT_INV_sllvals[4][46]~94_combout\ <= NOT \sllvals[4][46]~94_combout\;
\ALT_INV_sllvals[2][55]~104_combout\ <= NOT \sllvals[2][55]~104_combout\;
\ALT_INV_sllvals[2][53]~102_combout\ <= NOT \sllvals[2][53]~102_combout\;
\ALT_INV_Output~155_combout\ <= NOT \Output~155_combout\;
\ALT_INV_Output~140_combout\ <= NOT \Output~140_combout\;
\ALT_INV_Output~126_combout\ <= NOT \Output~126_combout\;
\ALT_INV_Output~124_combout\ <= NOT \Output~124_combout\;
\ALT_INV_sllvals[2][50]~99_combout\ <= NOT \sllvals[2][50]~99_combout\;
\ALT_INV_Output~132_combout\ <= NOT \Output~132_combout\;
\ALT_INV_sllvals[2][49]~98_combout\ <= NOT \sllvals[2][49]~98_combout\;
\ALT_INV_sllvals[2][54]~103_combout\ <= NOT \sllvals[2][54]~103_combout\;
\ALT_INV_Output~159_combout\ <= NOT \Output~159_combout\;
\ALT_INV_sllvals[2][57]~106_combout\ <= NOT \sllvals[2][57]~106_combout\;
\ALT_INV_sllvals[4][45]~92_combout\ <= NOT \sllvals[4][45]~92_combout\;
\ALT_INV_sllvals[4][44]~90_combout\ <= NOT \sllvals[4][44]~90_combout\;
\ALT_INV_sllvals[2][58]~107_combout\ <= NOT \sllvals[2][58]~107_combout\;
\ALT_INV_Output~162_combout\ <= NOT \Output~162_combout\;
\ALT_INV_sllvals[2][45]~91_combout\ <= NOT \sllvals[2][45]~91_combout\;
\ALT_INV_sllvals[2][56]~105_combout\ <= NOT \sllvals[2][56]~105_combout\;
\ALT_INV_sllvals[4][43]~88_combout\ <= NOT \sllvals[4][43]~88_combout\;
\ALT_INV_Output~164_combout\ <= NOT \Output~164_combout\;
\ALT_INV_sllvals[2][47]~95_combout\ <= NOT \sllvals[2][47]~95_combout\;
\ALT_INV_sllvals[4][47]~96_combout\ <= NOT \sllvals[4][47]~96_combout\;
\ALT_INV_Output~165_combout\ <= NOT \Output~165_combout\;
\ALT_INV_Output~144_combout\ <= NOT \Output~144_combout\;
\ALT_INV_sllvals[2][43]~87_combout\ <= NOT \sllvals[2][43]~87_combout\;
\ALT_INV_sllvals[2][48]~97_combout\ <= NOT \sllvals[2][48]~97_combout\;
\ALT_INV_Output~135_combout\ <= NOT \Output~135_combout\;
\ALT_INV_sllvals[2][51]~100_combout\ <= NOT \sllvals[2][51]~100_combout\;
\ALT_INV_Output~128_combout\ <= NOT \Output~128_combout\;
\ALT_INV_Output~134_combout\ <= NOT \Output~134_combout\;
\ALT_INV_sllvals[2][52]~101_combout\ <= NOT \sllvals[2][52]~101_combout\;
\ALT_INV_sllvals[2][46]~93_combout\ <= NOT \sllvals[2][46]~93_combout\;
\ALT_INV_Output~146_combout\ <= NOT \Output~146_combout\;
\ALT_INV_Output~149_combout\ <= NOT \Output~149_combout\;
\ALT_INV_Output~150_combout\ <= NOT \Output~150_combout\;
\ALT_INV_Output~158_combout\ <= NOT \Output~158_combout\;
\ALT_INV_Output~137_combout\ <= NOT \Output~137_combout\;
\ALT_INV_Output~152_combout\ <= NOT \Output~152_combout\;
\ALT_INV_Output~143_combout\ <= NOT \Output~143_combout\;
\ALT_INV_Output~141_combout\ <= NOT \Output~141_combout\;
\ALT_INV_Output~156_combout\ <= NOT \Output~156_combout\;
\ALT_INV_Output~138_combout\ <= NOT \Output~138_combout\;
\ALT_INV_sllvals[2][59]~108_combout\ <= NOT \sllvals[2][59]~108_combout\;
\ALT_INV_Output~168_combout\ <= NOT \Output~168_combout\;
\ALT_INV_Output~170_combout\ <= NOT \Output~170_combout\;
\ALT_INV_Output~172_combout\ <= NOT \Output~172_combout\;
\ALT_INV_Output~174_combout\ <= NOT \Output~174_combout\;
\ALT_INV_Output~176_combout\ <= NOT \Output~176_combout\;
\ALT_INV_Output~167_combout\ <= NOT \Output~167_combout\;
\ALT_INV_Output~171_combout\ <= NOT \Output~171_combout\;
\ALT_INV_Output~175_combout\ <= NOT \Output~175_combout\;
\ALT_INV_Output~177_combout\ <= NOT \Output~177_combout\;
\ALT_INV_Output~179_combout\ <= NOT \Output~179_combout\;
\ALT_INV_sllvals[2][63]~109_combout\ <= NOT \sllvals[2][63]~109_combout\;
\ALT_INV_Output~178_combout\ <= NOT \Output~178_combout\;
\ALT_INV_sravals[2][48]~4_combout\ <= NOT \sravals[2][48]~4_combout\;
\ALT_INV_sravals[2][52]~9_combout\ <= NOT \sravals[2][52]~9_combout\;
\ALT_INV_sravals[2][56]~14_combout\ <= NOT \sravals[2][56]~14_combout\;
\ALT_INV_sravals[0][60]~15_combout\ <= NOT \sravals[0][60]~15_combout\;
\ALT_INV_sravals[0][61]~16_combout\ <= NOT \sravals[0][61]~16_combout\;
\ALT_INV_y2[63]~0_combout\ <= NOT \y2[63]~0_combout\;
\ALT_INV_Output~190_combout\ <= NOT \Output~190_combout\;
\ALT_INV_sravals[0][49]~1_combout\ <= NOT \sravals[0][49]~1_combout\;
\ALT_INV_sravals[0][53]~6_combout\ <= NOT \sravals[0][53]~6_combout\;
\ALT_INV_sravals[0][56]~10_combout\ <= NOT \sravals[0][56]~10_combout\;
\ALT_INV_sravals[4][48]~19_combout\ <= NOT \sravals[4][48]~19_combout\;
\ALT_INV_sravals[0][32]~20_combout\ <= NOT \sravals[0][32]~20_combout\;
\ALT_INV_sravals[0][33]~21_combout\ <= NOT \sravals[0][33]~21_combout\;
\ALT_INV_sravals[0][35]~23_combout\ <= NOT \sravals[0][35]~23_combout\;
\ALT_INV_sravals[2][32]~24_combout\ <= NOT \sravals[2][32]~24_combout\;
\ALT_INV_Output~0_combout\ <= NOT \Output~0_combout\;
\ALT_INV_sravals[0][36]~25_combout\ <= NOT \sravals[0][36]~25_combout\;
\ALT_INV_sravals[0][37]~26_combout\ <= NOT \sravals[0][37]~26_combout\;
\ALT_INV_sravals[0][39]~28_combout\ <= NOT \sravals[0][39]~28_combout\;
\ALT_INV_sravals[0][58]~12_combout\ <= NOT \sravals[0][58]~12_combout\;
\ALT_INV_sravals[2][36]~29_combout\ <= NOT \sravals[2][36]~29_combout\;
\ALT_INV_sravals[0][40]~30_combout\ <= NOT \sravals[0][40]~30_combout\;
\ALT_INV_sravals[0][50]~2_combout\ <= NOT \sravals[0][50]~2_combout\;
\ALT_INV_sravals[0][51]~3_combout\ <= NOT \sravals[0][51]~3_combout\;
\ALT_INV_sravals[0][54]~7_combout\ <= NOT \sravals[0][54]~7_combout\;
\ALT_INV_sravals[0][59]~13_combout\ <= NOT \sravals[0][59]~13_combout\;
\ALT_INV_sravals[0][62]~17_combout\ <= NOT \sravals[0][62]~17_combout\;
\ALT_INV_sravals[0][34]~22_combout\ <= NOT \sravals[0][34]~22_combout\;
\ALT_INV_sravals[2][60]~18_combout\ <= NOT \sravals[2][60]~18_combout\;
\ALT_INV_sravals[0][55]~8_combout\ <= NOT \sravals[0][55]~8_combout\;
\ALT_INV_sravals[0][57]~11_combout\ <= NOT \sravals[0][57]~11_combout\;
\ALT_INV_sravals[0][38]~27_combout\ <= NOT \sravals[0][38]~27_combout\;
\ALT_INV_sravals[0][41]~31_combout\ <= NOT \sravals[0][41]~31_combout\;
\ALT_INV_sravals[0][52]~5_combout\ <= NOT \sravals[0][52]~5_combout\;
\ALT_INV_sravals[0][48]~0_combout\ <= NOT \sravals[0][48]~0_combout\;
\ALT_INV_sravals[0][45]~36_combout\ <= NOT \sravals[0][45]~36_combout\;
\ALT_INV_sravals[0][21]~47_combout\ <= NOT \sravals[0][21]~47_combout\;
\ALT_INV_sravals[0][27]~54_combout\ <= NOT \sravals[0][27]~54_combout\;
\ALT_INV_sravals[0][28]~56_combout\ <= NOT \sravals[0][28]~56_combout\;
\ALT_INV_sravals[2][28]~60_combout\ <= NOT \sravals[2][28]~60_combout\;
\ALT_INV_Output~1_combout\ <= NOT \Output~1_combout\;
\ALT_INV_sravals[0][6]~68_combout\ <= NOT \sravals[0][6]~68_combout\;
\ALT_INV_sravals[0][11]~74_combout\ <= NOT \sravals[0][11]~74_combout\;
\ALT_INV_sllvals[4][0]~2_combout\ <= NOT \sllvals[4][0]~2_combout\;
\ALT_INV_sravals[0][14]~78_combout\ <= NOT \sravals[0][14]~78_combout\;
\ALT_INV_sravals[0][15]~79_combout\ <= NOT \sravals[0][15]~79_combout\;
\ALT_INV_sravals[0][31]~59_combout\ <= NOT \sravals[0][31]~59_combout\;
\ALT_INV_sravals[2][12]~80_combout\ <= NOT \sravals[2][12]~80_combout\;
\ALT_INV_sravals[0][1]~63_combout\ <= NOT \sravals[0][1]~63_combout\;
\ALT_INV_sravals[0][7]~69_combout\ <= NOT \sravals[0][7]~69_combout\;
\ALT_INV_Output~2_combout\ <= NOT \Output~2_combout\;
\ALT_INV_sravals[0][17]~42_combout\ <= NOT \sravals[0][17]~42_combout\;
\ALT_INV_sravals[0][19]~44_combout\ <= NOT \sravals[0][19]~44_combout\;
\ALT_INV_sravals[0][18]~43_combout\ <= NOT \sravals[0][18]~43_combout\;
\ALT_INV_sravals[0][22]~48_combout\ <= NOT \sravals[0][22]~48_combout\;
\ALT_INV_sravals[2][20]~50_combout\ <= NOT \sravals[2][20]~50_combout\;
\ALT_INV_sravals[0][29]~57_combout\ <= NOT \sravals[0][29]~57_combout\;
\ALT_INV_sravals[0][26]~53_combout\ <= NOT \sravals[0][26]~53_combout\;
\ALT_INV_sravals[4][16]~61_combout\ <= NOT \sravals[4][16]~61_combout\;
\ALT_INV_sravals[0][0]~62_combout\ <= NOT \sravals[0][0]~62_combout\;
\ALT_INV_sllvals[2][0]~0_combout\ <= NOT \sllvals[2][0]~0_combout\;
\ALT_INV_sravals[2][49]~81_combout\ <= NOT \sravals[2][49]~81_combout\;
\ALT_INV_sravals[2][53]~82_combout\ <= NOT \sravals[2][53]~82_combout\;
\ALT_INV_sravals[2][8]~75_combout\ <= NOT \sravals[2][8]~75_combout\;
\ALT_INV_sravals[0][23]~49_combout\ <= NOT \sravals[0][23]~49_combout\;
\ALT_INV_sravals[0][5]~67_combout\ <= NOT \sravals[0][5]~67_combout\;
\ALT_INV_sravals[0][9]~72_combout\ <= NOT \sravals[0][9]~72_combout\;
\ALT_INV_sravals[2][57]~83_combout\ <= NOT \sravals[2][57]~83_combout\;
\ALT_INV_sravals[2][61]~84_combout\ <= NOT \sravals[2][61]~84_combout\;
\ALT_INV_sravals[0][44]~35_combout\ <= NOT \sravals[0][44]~35_combout\;
\ALT_INV_Output~3_combout\ <= NOT \Output~3_combout\;
\ALT_INV_sravals[4][49]~85_combout\ <= NOT \sravals[4][49]~85_combout\;
\ALT_INV_sravals[2][33]~86_combout\ <= NOT \sravals[2][33]~86_combout\;
\ALT_INV_sravals[2][37]~87_combout\ <= NOT \sravals[2][37]~87_combout\;
\ALT_INV_sravals[0][24]~51_combout\ <= NOT \sravals[0][24]~51_combout\;
\ALT_INV_sravals[0][2]~64_combout\ <= NOT \sravals[0][2]~64_combout\;
\ALT_INV_sravals[2][41]~88_combout\ <= NOT \sravals[2][41]~88_combout\;
\ALT_INV_sravals[0][47]~38_combout\ <= NOT \sravals[0][47]~38_combout\;
\ALT_INV_sravals[0][16]~41_combout\ <= NOT \sravals[0][16]~41_combout\;
\ALT_INV_sravals[2][16]~45_combout\ <= NOT \sravals[2][16]~45_combout\;
\ALT_INV_sravals[0][20]~46_combout\ <= NOT \sravals[0][20]~46_combout\;
\ALT_INV_sravals[0][3]~65_combout\ <= NOT \sravals[0][3]~65_combout\;
\ALT_INV_sravals[0][42]~32_combout\ <= NOT \sravals[0][42]~32_combout\;
\ALT_INV_sravals[0][8]~71_combout\ <= NOT \sravals[0][8]~71_combout\;
\ALT_INV_sravals[2][4]~70_combout\ <= NOT \sravals[2][4]~70_combout\;
\ALT_INV_sravals[0][10]~73_combout\ <= NOT \sravals[0][10]~73_combout\;
\ALT_INV_sravals[0][12]~76_combout\ <= NOT \sravals[0][12]~76_combout\;
\ALT_INV_sravals[4][32]~40_combout\ <= NOT \sravals[4][32]~40_combout\;
\ALT_INV_sravals[0][25]~52_combout\ <= NOT \sravals[0][25]~52_combout\;
\ALT_INV_sravals[0][13]~77_combout\ <= NOT \sravals[0][13]~77_combout\;
\ALT_INV_sravals[2][40]~34_combout\ <= NOT \sravals[2][40]~34_combout\;
\ALT_INV_sravals[0][46]~37_combout\ <= NOT \sravals[0][46]~37_combout\;
\ALT_INV_sravals[0][43]~33_combout\ <= NOT \sravals[0][43]~33_combout\;
\ALT_INV_sravals[2][44]~39_combout\ <= NOT \sravals[2][44]~39_combout\;
\ALT_INV_sllvals[4][4]~1_combout\ <= NOT \sllvals[4][4]~1_combout\;
\ALT_INV_sravals[2][24]~55_combout\ <= NOT \sravals[2][24]~55_combout\;
\ALT_INV_sravals[0][30]~58_combout\ <= NOT \sravals[0][30]~58_combout\;
\ALT_INV_sravals[0][4]~66_combout\ <= NOT \sravals[0][4]~66_combout\;
\ALT_INV_sravals[2][13]~98_combout\ <= NOT \sravals[2][13]~98_combout\;
\ALT_INV_Output~10_combout\ <= NOT \Output~10_combout\;
\ALT_INV_Output~11_combout\ <= NOT \Output~11_combout\;
\ALT_INV_sravals[2][51]~117_combout\ <= NOT \sravals[2][51]~117_combout\;
\ALT_INV_sravals[4][51]~120_combout\ <= NOT \sravals[4][51]~120_combout\;
\ALT_INV_sravals[2][5]~96_combout\ <= NOT \sravals[2][5]~96_combout\;
\ALT_INV_Output~9_combout\ <= NOT \Output~9_combout\;
\ALT_INV_sravals[2][43]~123_combout\ <= NOT \sravals[2][43]~123_combout\;
\ALT_INV_sravals[2][47]~124_combout\ <= NOT \sravals[2][47]~124_combout\;
\ALT_INV_sravals[2][30]~112_combout\ <= NOT \sravals[2][30]~112_combout\;
\ALT_INV_sravals[4][35]~125_combout\ <= NOT \sravals[4][35]~125_combout\;
\ALT_INV_sravals[2][34]~104_combout\ <= NOT \sravals[2][34]~104_combout\;
\ALT_INV_sravals[2][54]~100_combout\ <= NOT \sravals[2][54]~100_combout\;
\ALT_INV_sravals[4][34]~108_combout\ <= NOT \sravals[4][34]~108_combout\;
\ALT_INV_sravals[2][62]~102_combout\ <= NOT \sravals[2][62]~102_combout\;
\ALT_INV_sravals[2][46]~107_combout\ <= NOT \sravals[2][46]~107_combout\;
\ALT_INV_sravals[4][18]~113_combout\ <= NOT \sravals[4][18]~113_combout\;
\ALT_INV_sravals[4][17]~95_combout\ <= NOT \sravals[4][17]~95_combout\;
\ALT_INV_sllvals[4][2]~4_combout\ <= NOT \sllvals[4][2]~4_combout\;
\ALT_INV_sravals[2][18]~109_combout\ <= NOT \sravals[2][18]~109_combout\;
\ALT_INV_sravals[2][22]~110_combout\ <= NOT \sravals[2][22]~110_combout\;
\ALT_INV_sravals[2][25]~93_combout\ <= NOT \sravals[2][25]~93_combout\;
\ALT_INV_sravals[2][14]~116_combout\ <= NOT \sravals[2][14]~116_combout\;
\ALT_INV_sravals[2][59]~119_combout\ <= NOT \sravals[2][59]~119_combout\;
\ALT_INV_sravals[4][50]~103_combout\ <= NOT \sravals[4][50]~103_combout\;
\ALT_INV_sravals[2][45]~89_combout\ <= NOT \sravals[2][45]~89_combout\;
\ALT_INV_sravals[2][35]~121_combout\ <= NOT \sravals[2][35]~121_combout\;
\ALT_INV_sllvals[2][3]~5_combout\ <= NOT \sllvals[2][3]~5_combout\;
\ALT_INV_Output~7_combout\ <= NOT \Output~7_combout\;
\ALT_INV_sravals[2][17]~91_combout\ <= NOT \sravals[2][17]~91_combout\;
\ALT_INV_sllvals[4][3]~6_combout\ <= NOT \sllvals[4][3]~6_combout\;
\ALT_INV_sravals[2][23]~127_combout\ <= NOT \sravals[2][23]~127_combout\;
\ALT_INV_sravals[2][27]~128_combout\ <= NOT \sravals[2][27]~128_combout\;
\ALT_INV_sravals[2][26]~111_combout\ <= NOT \sravals[2][26]~111_combout\;
\ALT_INV_sravals[4][19]~130_combout\ <= NOT \sravals[4][19]~130_combout\;
\ALT_INV_sravals[2][21]~92_combout\ <= NOT \sravals[2][21]~92_combout\;
\ALT_INV_sravals[2][19]~126_combout\ <= NOT \sravals[2][19]~126_combout\;
\ALT_INV_Output~13_combout\ <= NOT \Output~13_combout\;
\ALT_INV_sravals[2][55]~118_combout\ <= NOT \sravals[2][55]~118_combout\;
\ALT_INV_sravals[2][29]~94_combout\ <= NOT \sravals[2][29]~94_combout\;
\ALT_INV_sravals[2][42]~106_combout\ <= NOT \sravals[2][42]~106_combout\;
\ALT_INV_sravals[2][7]~131_combout\ <= NOT \sravals[2][7]~131_combout\;
\ALT_INV_sravals[2][58]~101_combout\ <= NOT \sravals[2][58]~101_combout\;
\ALT_INV_sravals[2][9]~97_combout\ <= NOT \sravals[2][9]~97_combout\;
\ALT_INV_sravals[2][31]~129_combout\ <= NOT \sravals[2][31]~129_combout\;
\ALT_INV_Output~6_combout\ <= NOT \Output~6_combout\;
\ALT_INV_sravals[2][11]~132_combout\ <= NOT \sravals[2][11]~132_combout\;
\ALT_INV_sravals[2][15]~133_combout\ <= NOT \sravals[2][15]~133_combout\;
\ALT_INV_Output~14_combout\ <= NOT \Output~14_combout\;
\ALT_INV_sravals[2][39]~122_combout\ <= NOT \sravals[2][39]~122_combout\;
\ALT_INV_Output~15_combout\ <= NOT \Output~15_combout\;
\ALT_INV_sravals[2][38]~105_combout\ <= NOT \sravals[2][38]~105_combout\;
\ALT_INV_sravals[4][52]~134_combout\ <= NOT \sravals[4][52]~134_combout\;
\ALT_INV_sravals[4][36]~135_combout\ <= NOT \sravals[4][36]~135_combout\;
\ALT_INV_sllvals[2][4]~7_combout\ <= NOT \sllvals[2][4]~7_combout\;
\ALT_INV_sravals[2][6]~114_combout\ <= NOT \sravals[2][6]~114_combout\;
\ALT_INV_sravals[2][50]~99_combout\ <= NOT \sravals[2][50]~99_combout\;
\ALT_INV_sravals[2][10]~115_combout\ <= NOT \sravals[2][10]~115_combout\;
\ALT_INV_sllvals[4][1]~3_combout\ <= NOT \sllvals[4][1]~3_combout\;
\ALT_INV_sravals[4][33]~90_combout\ <= NOT \sravals[4][33]~90_combout\;
\ALT_INV_Output~5_combout\ <= NOT \Output~5_combout\;
\ALT_INV_sravals[4][39]~144_combout\ <= NOT \sravals[4][39]~144_combout\;
\ALT_INV_Output~29_combout\ <= NOT \Output~29_combout\;
\ALT_INV_sravals[4][27]~155_combout\ <= NOT \sravals[4][27]~155_combout\;
\ALT_INV_Output~26_combout\ <= NOT \Output~26_combout\;
\ALT_INV_sravals[4][54]~140_combout\ <= NOT \sravals[4][54]~140_combout\;
\ALT_INV_Output~21_combout\ <= NOT \Output~21_combout\;
\ALT_INV_sllvals[4][7]~16_combout\ <= NOT \sllvals[4][7]~16_combout\;
\ALT_INV_Output~35_combout\ <= NOT \Output~35_combout\;
\ALT_INV_sravals[4][37]~138_combout\ <= NOT \sravals[4][37]~138_combout\;
\ALT_INV_sravals[4][24]~146_combout\ <= NOT \sravals[4][24]~146_combout\;
\ALT_INV_Output~32_combout\ <= NOT \Output~32_combout\;
\ALT_INV_sllvals[4][10]~22_combout\ <= NOT \sllvals[4][10]~22_combout\;
\ALT_INV_Output~40_combout\ <= NOT \Output~40_combout\;
\ALT_INV_Output~17_combout\ <= NOT \Output~17_combout\;
\ALT_INV_sravals[4][43]~156_combout\ <= NOT \sravals[4][43]~156_combout\;
\ALT_INV_sravals[5][43]~157_combout\ <= NOT \sravals[5][43]~157_combout\;
\ALT_INV_sllvals[2][11]~23_combout\ <= NOT \sllvals[2][11]~23_combout\;
\ALT_INV_sravals[4][40]~147_combout\ <= NOT \sravals[4][40]~147_combout\;
\ALT_INV_sravals[4][53]~137_combout\ <= NOT \sravals[4][53]~137_combout\;
\ALT_INV_sllvals[2][6]~13_combout\ <= NOT \sllvals[2][6]~13_combout\;
\ALT_INV_Output~23_combout\ <= NOT \Output~23_combout\;
\ALT_INV_sllvals[4][5]~11_combout\ <= NOT \sllvals[4][5]~11_combout\;
\ALT_INV_sravals[4][21]~139_combout\ <= NOT \sravals[4][21]~139_combout\;
\ALT_INV_sravals[4][22]~142_combout\ <= NOT \sravals[4][22]~142_combout\;
\ALT_INV_sravals[4][55]~145_combout\ <= NOT \sravals[4][55]~145_combout\;
\ALT_INV_sllvals[4][4]~8_combout\ <= NOT \sllvals[4][4]~8_combout\;
\ALT_INV_Output~18_combout\ <= NOT \Output~18_combout\;
\ALT_INV_sravals[4][25]~149_combout\ <= NOT \sravals[4][25]~149_combout\;
\ALT_INV_sllvals[2][9]~19_combout\ <= NOT \sllvals[2][9]~19_combout\;
\ALT_INV_sllvals[4][9]~20_combout\ <= NOT \sllvals[4][9]~20_combout\;
\ALT_INV_sravals[4][58]~154_combout\ <= NOT \sravals[4][58]~154_combout\;
\ALT_INV_Output~41_combout\ <= NOT \Output~41_combout\;
\ALT_INV_sllvals[4][11]~24_combout\ <= NOT \sllvals[4][11]~24_combout\;
\ALT_INV_sllvals[2][1]~9_combout\ <= NOT \sllvals[2][1]~9_combout\;
\ALT_INV_sravals[4][56]~148_combout\ <= NOT \sravals[4][56]~148_combout\;
\ALT_INV_sllvals[2][5]~10_combout\ <= NOT \sllvals[2][5]~10_combout\;
\ALT_INV_sravals[4][20]~136_combout\ <= NOT \sravals[4][20]~136_combout\;
\ALT_INV_sravals[4][38]~141_combout\ <= NOT \sravals[4][38]~141_combout\;
\ALT_INV_Output~27_combout\ <= NOT \Output~27_combout\;
\ALT_INV_sllvals[2][2]~12_combout\ <= NOT \sllvals[2][2]~12_combout\;
\ALT_INV_sllvals[4][6]~14_combout\ <= NOT \sllvals[4][6]~14_combout\;
\ALT_INV_sllvals[2][7]~15_combout\ <= NOT \sllvals[2][7]~15_combout\;
\ALT_INV_sllvals[4][8]~18_combout\ <= NOT \sllvals[4][8]~18_combout\;
\ALT_INV_sravals[4][41]~150_combout\ <= NOT \sravals[4][41]~150_combout\;
\ALT_INV_Output~31_combout\ <= NOT \Output~31_combout\;
\ALT_INV_Output~34_combout\ <= NOT \Output~34_combout\;
\ALT_INV_sravals[4][57]~151_combout\ <= NOT \sravals[4][57]~151_combout\;
\ALT_INV_sravals[4][26]~152_combout\ <= NOT \sravals[4][26]~152_combout\;
\ALT_INV_sravals[4][42]~153_combout\ <= NOT \sravals[4][42]~153_combout\;
\ALT_INV_sllvals[2][10]~21_combout\ <= NOT \sllvals[2][10]~21_combout\;
\ALT_INV_Output~37_combout\ <= NOT \Output~37_combout\;
\ALT_INV_Output~20_combout\ <= NOT \Output~20_combout\;
\ALT_INV_sravals[4][23]~143_combout\ <= NOT \sravals[4][23]~143_combout\;
\ALT_INV_sllvals[2][8]~17_combout\ <= NOT \sllvals[2][8]~17_combout\;
\ALT_INV_Output~38_combout\ <= NOT \Output~38_combout\;
\ALT_INV_Output~28_combout\ <= NOT \Output~28_combout\;
\ALT_INV_Output~24_combout\ <= NOT \Output~24_combout\;
\ALT_INV_sravals[4][28]~158_combout\ <= NOT \sravals[4][28]~158_combout\;
\ALT_INV_sllvals[4][13]~28_combout\ <= NOT \sllvals[4][13]~28_combout\;
\ALT_INV_sllvals[2][15]~31_combout\ <= NOT \sllvals[2][15]~31_combout\;
\ALT_INV_sllvals[4][15]~32_combout\ <= NOT \sllvals[4][15]~32_combout\;
\ALT_INV_sravals[5][46]~166_combout\ <= NOT \sravals[5][46]~166_combout\;
\ALT_INV_sllvals[4][14]~30_combout\ <= NOT \sllvals[4][14]~30_combout\;
\ALT_INV_sravals[4][31]~168_combout\ <= NOT \sravals[4][31]~168_combout\;
\ALT_INV_Output~45_combout\ <= NOT \Output~45_combout\;
\ALT_INV_sllvals[2][12]~25_combout\ <= NOT \sllvals[2][12]~25_combout\;
\ALT_INV_Output~46_combout\ <= NOT \Output~46_combout\;
\ALT_INV_sllvals[2][16]~33_combout\ <= NOT \sllvals[2][16]~33_combout\;
\ALT_INV_Output~43_combout\ <= NOT \Output~43_combout\;
\ALT_INV_sravals[4][44]~159_combout\ <= NOT \sravals[4][44]~159_combout\;
\ALT_INV_sravals[4][30]~164_combout\ <= NOT \sravals[4][30]~164_combout\;
\ALT_INV_sllvals[4][12]~26_combout\ <= NOT \sllvals[4][12]~26_combout\;
\ALT_INV_sllvals[4][16]~34_combout\ <= NOT \sllvals[4][16]~34_combout\;
\ALT_INV_Output~48_combout\ <= NOT \Output~48_combout\;
\ALT_INV_sravals[5][44]~160_combout\ <= NOT \sravals[5][44]~160_combout\;
\ALT_INV_sravals[4][47]~167_combout\ <= NOT \sravals[4][47]~167_combout\;
\ALT_INV_sravals[4][46]~165_combout\ <= NOT \sravals[4][46]~165_combout\;
\ALT_INV_Output~49_combout\ <= NOT \Output~49_combout\;
\ALT_INV_sllvals[2][13]~27_combout\ <= NOT \sllvals[2][13]~27_combout\;
\ALT_INV_Output~44_combout\ <= NOT \Output~44_combout\;
\ALT_INV_sravals[4][29]~161_combout\ <= NOT \sravals[4][29]~161_combout\;
\ALT_INV_sravals[5][45]~163_combout\ <= NOT \sravals[5][45]~163_combout\;
\ALT_INV_sllvals[2][14]~29_combout\ <= NOT \sllvals[2][14]~29_combout\;
\ALT_INV_Output~42_combout\ <= NOT \Output~42_combout\;
\ALT_INV_sravals[4][45]~162_combout\ <= NOT \sravals[4][45]~162_combout\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Input[18]~input_o\ <= NOT \Input[18]~input_o\;
\ALT_INV_ShiftCount[5]~input_o\ <= NOT \ShiftCount[5]~input_o\;
\ALT_INV_Input[51]~input_o\ <= NOT \Input[51]~input_o\;
\ALT_INV_Input[52]~input_o\ <= NOT \Input[52]~input_o\;
\ALT_INV_Input[20]~input_o\ <= NOT \Input[20]~input_o\;
\ALT_INV_Input[26]~input_o\ <= NOT \Input[26]~input_o\;
\ALT_INV_Input[56]~input_o\ <= NOT \Input[56]~input_o\;
\ALT_INV_ShiftCount[4]~input_o\ <= NOT \ShiftCount[4]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_Input[23]~input_o\ <= NOT \Input[23]~input_o\;
\ALT_INV_Input[60]~input_o\ <= NOT \Input[60]~input_o\;
\ALT_INV_Input[61]~input_o\ <= NOT \Input[61]~input_o\;
\ALT_INV_Input[29]~input_o\ <= NOT \Input[29]~input_o\;
\ALT_INV_Input[50]~input_o\ <= NOT \Input[50]~input_o\;
\ALT_INV_ShiftCount[1]~input_o\ <= NOT \ShiftCount[1]~input_o\;
\ALT_INV_Input[53]~input_o\ <= NOT \Input[53]~input_o\;
\ALT_INV_Input[49]~input_o\ <= NOT \Input[49]~input_o\;
\ALT_INV_Input[54]~input_o\ <= NOT \Input[54]~input_o\;
\ALT_INV_Input[17]~input_o\ <= NOT \Input[17]~input_o\;
\ALT_INV_Input[22]~input_o\ <= NOT \Input[22]~input_o\;
\ALT_INV_Input[19]~input_o\ <= NOT \Input[19]~input_o\;
\ALT_INV_Input[55]~input_o\ <= NOT \Input[55]~input_o\;
\ALT_INV_Input[24]~input_o\ <= NOT \Input[24]~input_o\;
\ALT_INV_Input[57]~input_o\ <= NOT \Input[57]~input_o\;
\ALT_INV_Input[59]~input_o\ <= NOT \Input[59]~input_o\;
\ALT_INV_Input[21]~input_o\ <= NOT \Input[21]~input_o\;
\ALT_INV_Input[28]~input_o\ <= NOT \Input[28]~input_o\;
\ALT_INV_Input[58]~input_o\ <= NOT \Input[58]~input_o\;
\ALT_INV_Input[27]~input_o\ <= NOT \Input[27]~input_o\;
\ALT_INV_Input[62]~input_o\ <= NOT \Input[62]~input_o\;
\ALT_INV_ShiftCount[0]~input_o\ <= NOT \ShiftCount[0]~input_o\;
\ALT_INV_Input[30]~input_o\ <= NOT \Input[30]~input_o\;
\ALT_INV_Input[16]~input_o\ <= NOT \Input[16]~input_o\;
\ALT_INV_Input[25]~input_o\ <= NOT \Input[25]~input_o\;
\ALT_INV_Input[48]~input_o\ <= NOT \Input[48]~input_o\;
\ALT_INV_Input[63]~input_o\ <= NOT \Input[63]~input_o\;
\ALT_INV_Input[0]~input_o\ <= NOT \Input[0]~input_o\;
\ALT_INV_Input[2]~input_o\ <= NOT \Input[2]~input_o\;
\ALT_INV_Input[42]~input_o\ <= NOT \Input[42]~input_o\;
\ALT_INV_Input[43]~input_o\ <= NOT \Input[43]~input_o\;
\ALT_INV_Input[5]~input_o\ <= NOT \Input[5]~input_o\;
\ALT_INV_Input[45]~input_o\ <= NOT \Input[45]~input_o\;
\ALT_INV_Input[12]~input_o\ <= NOT \Input[12]~input_o\;
\ALT_INV_Input[6]~input_o\ <= NOT \Input[6]~input_o\;
\ALT_INV_Input[10]~input_o\ <= NOT \Input[10]~input_o\;
\ALT_INV_Input[13]~input_o\ <= NOT \Input[13]~input_o\;
\ALT_INV_Input[35]~input_o\ <= NOT \Input[35]~input_o\;
\ALT_INV_Input[7]~input_o\ <= NOT \Input[7]~input_o\;
\ALT_INV_Input[14]~input_o\ <= NOT \Input[14]~input_o\;
\ALT_INV_Input[37]~input_o\ <= NOT \Input[37]~input_o\;
\ALT_INV_ShiftCount[2]~input_o\ <= NOT \ShiftCount[2]~input_o\;
\ALT_INV_ShiftCount[3]~input_o\ <= NOT \ShiftCount[3]~input_o\;
\ALT_INV_Input[15]~input_o\ <= NOT \Input[15]~input_o\;
\ALT_INV_Input[41]~input_o\ <= NOT \Input[41]~input_o\;
\ALT_INV_Input[44]~input_o\ <= NOT \Input[44]~input_o\;
\ALT_INV_Input[9]~input_o\ <= NOT \Input[9]~input_o\;
\ALT_INV_Input[46]~input_o\ <= NOT \Input[46]~input_o\;
\ALT_INV_Input[47]~input_o\ <= NOT \Input[47]~input_o\;
\ALT_INV_Input[1]~input_o\ <= NOT \Input[1]~input_o\;
\ALT_INV_Input[32]~input_o\ <= NOT \Input[32]~input_o\;
\ALT_INV_Input[38]~input_o\ <= NOT \Input[38]~input_o\;
\ALT_INV_Input[4]~input_o\ <= NOT \Input[4]~input_o\;
\ALT_INV_Input[8]~input_o\ <= NOT \Input[8]~input_o\;
\ALT_INV_Input[3]~input_o\ <= NOT \Input[3]~input_o\;
\ALT_INV_Input[31]~input_o\ <= NOT \Input[31]~input_o\;
\ALT_INV_Input[33]~input_o\ <= NOT \Input[33]~input_o\;
\ALT_INV_Input[40]~input_o\ <= NOT \Input[40]~input_o\;
\ALT_INV_Input[36]~input_o\ <= NOT \Input[36]~input_o\;
\ALT_INV_Input[11]~input_o\ <= NOT \Input[11]~input_o\;
\ALT_INV_Input[34]~input_o\ <= NOT \Input[34]~input_o\;
\ALT_INV_Input[39]~input_o\ <= NOT \Input[39]~input_o\;

-- Location: IOOBUF_X89_Y37_N39
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~4_combout\,
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X62_Y0_N19
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~8_combout\,
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X52_Y0_N36
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~12_combout\,
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X68_Y0_N2
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~16_combout\,
	devoe => ww_devoe,
	o => ww_Output(3));

-- Location: IOOBUF_X89_Y36_N39
\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~19_combout\,
	devoe => ww_devoe,
	o => ww_Output(4));

-- Location: IOOBUF_X89_Y4_N96
\Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~22_combout\,
	devoe => ww_devoe,
	o => ww_Output(5));

-- Location: IOOBUF_X50_Y0_N93
\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~25_combout\,
	devoe => ww_devoe,
	o => ww_Output(6));

-- Location: IOOBUF_X89_Y8_N5
\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~30_combout\,
	devoe => ww_devoe,
	o => ww_Output(7));

-- Location: IOOBUF_X89_Y36_N5
\Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~33_combout\,
	devoe => ww_devoe,
	o => ww_Output(8));

-- Location: IOOBUF_X40_Y0_N19
\Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~36_combout\,
	devoe => ww_devoe,
	o => ww_Output(9));

-- Location: IOOBUF_X50_Y0_N42
\Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~39_combout\,
	devoe => ww_devoe,
	o => ww_Output(10));

-- Location: IOOBUF_X89_Y8_N56
\Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~218_combout\,
	devoe => ww_devoe,
	o => ww_Output(11));

-- Location: IOOBUF_X89_Y35_N62
\Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~214_combout\,
	devoe => ww_devoe,
	o => ww_Output(12));

-- Location: IOOBUF_X56_Y0_N19
\Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~210_combout\,
	devoe => ww_devoe,
	o => ww_Output(13));

-- Location: IOOBUF_X54_Y0_N2
\Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~206_combout\,
	devoe => ww_devoe,
	o => ww_Output(14));

-- Location: IOOBUF_X70_Y0_N36
\Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~47_combout\,
	devoe => ww_devoe,
	o => ww_Output(15));

-- Location: IOOBUF_X89_Y9_N5
\Output[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~52_combout\,
	devoe => ww_devoe,
	o => ww_Output(16));

-- Location: IOOBUF_X30_Y0_N53
\Output[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~55_combout\,
	devoe => ww_devoe,
	o => ww_Output(17));

-- Location: IOOBUF_X32_Y0_N36
\Output[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~58_combout\,
	devoe => ww_devoe,
	o => ww_Output(18));

-- Location: IOOBUF_X64_Y0_N36
\Output[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~61_combout\,
	devoe => ww_devoe,
	o => ww_Output(19));

-- Location: IOOBUF_X64_Y81_N53
\Output[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~64_combout\,
	devoe => ww_devoe,
	o => ww_Output(20));

-- Location: IOOBUF_X68_Y0_N19
\Output[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~67_combout\,
	devoe => ww_devoe,
	o => ww_Output(21));

-- Location: IOOBUF_X26_Y0_N59
\Output[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~70_combout\,
	devoe => ww_devoe,
	o => ww_Output(22));

-- Location: IOOBUF_X89_Y36_N22
\Output[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~202_combout\,
	devoe => ww_devoe,
	o => ww_Output(23));

-- Location: IOOBUF_X58_Y81_N42
\Output[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~76_combout\,
	devoe => ww_devoe,
	o => ww_Output(24));

-- Location: IOOBUF_X36_Y0_N19
\Output[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~198_combout\,
	devoe => ww_devoe,
	o => ww_Output(25));

-- Location: IOOBUF_X64_Y0_N19
\Output[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~194_combout\,
	devoe => ww_devoe,
	o => ww_Output(26));

-- Location: IOOBUF_X89_Y9_N22
\Output[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~80_combout\,
	devoe => ww_devoe,
	o => ww_Output(27));

-- Location: IOOBUF_X56_Y81_N36
\Output[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~83_combout\,
	devoe => ww_devoe,
	o => ww_Output(28));

-- Location: IOOBUF_X58_Y0_N93
\Output[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~85_combout\,
	devoe => ww_devoe,
	o => ww_Output(29));

-- Location: IOOBUF_X36_Y0_N53
\Output[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~88_combout\,
	devoe => ww_devoe,
	o => ww_Output(30));

-- Location: IOOBUF_X62_Y0_N53
\Output[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~90_combout\,
	devoe => ww_devoe,
	o => ww_Output(31));

-- Location: IOOBUF_X89_Y36_N56
\Output[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~95_combout\,
	devoe => ww_devoe,
	o => ww_Output(32));

-- Location: IOOBUF_X60_Y0_N2
\Output[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~98_combout\,
	devoe => ww_devoe,
	o => ww_Output(33));

-- Location: IOOBUF_X50_Y81_N42
\Output[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~101_combout\,
	devoe => ww_devoe,
	o => ww_Output(34));

-- Location: IOOBUF_X89_Y4_N45
\Output[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~104_combout\,
	devoe => ww_devoe,
	o => ww_Output(35));

-- Location: IOOBUF_X66_Y81_N76
\Output[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~107_combout\,
	devoe => ww_devoe,
	o => ww_Output(36));

-- Location: IOOBUF_X60_Y0_N36
\Output[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~110_combout\,
	devoe => ww_devoe,
	o => ww_Output(37));

-- Location: IOOBUF_X26_Y0_N76
\Output[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~113_combout\,
	devoe => ww_devoe,
	o => ww_Output(38));

-- Location: IOOBUF_X68_Y81_N36
\Output[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~186_combout\,
	devoe => ww_devoe,
	o => ww_Output(39));

-- Location: IOOBUF_X62_Y81_N53
\Output[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~117_combout\,
	devoe => ww_devoe,
	o => ww_Output(40));

-- Location: IOOBUF_X58_Y0_N42
\Output[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~120_combout\,
	devoe => ww_devoe,
	o => ww_Output(41));

-- Location: IOOBUF_X28_Y0_N53
\Output[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~123_combout\,
	devoe => ww_devoe,
	o => ww_Output(42));

-- Location: IOOBUF_X89_Y8_N39
\Output[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~125_combout\,
	devoe => ww_devoe,
	o => ww_Output(43));

-- Location: IOOBUF_X89_Y35_N96
\Output[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~127_combout\,
	devoe => ww_devoe,
	o => ww_Output(44));

-- Location: IOOBUF_X60_Y0_N19
\Output[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~129_combout\,
	devoe => ww_devoe,
	o => ww_Output(45));

-- Location: IOOBUF_X34_Y0_N76
\Output[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~131_combout\,
	devoe => ww_devoe,
	o => ww_Output(46));

-- Location: IOOBUF_X89_Y6_N22
\Output[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~133_combout\,
	devoe => ww_devoe,
	o => ww_Output(47));

-- Location: IOOBUF_X64_Y81_N2
\Output[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~136_combout\,
	devoe => ww_devoe,
	o => ww_Output(48));

-- Location: IOOBUF_X26_Y0_N93
\Output[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~139_combout\,
	devoe => ww_devoe,
	o => ww_Output(49));

-- Location: IOOBUF_X34_Y0_N93
\Output[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~142_combout\,
	devoe => ww_devoe,
	o => ww_Output(50));

-- Location: IOOBUF_X56_Y0_N53
\Output[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~145_combout\,
	devoe => ww_devoe,
	o => ww_Output(51));

-- Location: IOOBUF_X62_Y81_N2
\Output[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~148_combout\,
	devoe => ww_devoe,
	o => ww_Output(52));

-- Location: IOOBUF_X62_Y0_N2
\Output[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~151_combout\,
	devoe => ww_devoe,
	o => ww_Output(53));

-- Location: IOOBUF_X38_Y0_N2
\Output[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~154_combout\,
	devoe => ww_devoe,
	o => ww_Output(54));

-- Location: IOOBUF_X62_Y81_N36
\Output[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~157_combout\,
	devoe => ww_devoe,
	o => ww_Output(55));

-- Location: IOOBUF_X56_Y81_N53
\Output[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~160_combout\,
	devoe => ww_devoe,
	o => ww_Output(56));

-- Location: IOOBUF_X89_Y8_N22
\Output[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~163_combout\,
	devoe => ww_devoe,
	o => ww_Output(57));

-- Location: IOOBUF_X40_Y0_N53
\Output[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~166_combout\,
	devoe => ww_devoe,
	o => ww_Output(58));

-- Location: IOOBUF_X58_Y81_N93
\Output[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~169_combout\,
	devoe => ww_devoe,
	o => ww_Output(59));

-- Location: IOOBUF_X62_Y81_N19
\Output[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~173_combout\,
	devoe => ww_devoe,
	o => ww_Output(60));

-- Location: IOOBUF_X38_Y0_N53
\Output[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~182_combout\,
	devoe => ww_devoe,
	o => ww_Output(61));

-- Location: IOOBUF_X38_Y0_N36
\Output[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~180_combout\,
	devoe => ww_devoe,
	o => ww_Output(62));

-- Location: IOOBUF_X28_Y0_N19
\Output[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~181_combout\,
	devoe => ww_devoe,
	o => ww_Output(63));

-- Location: IOIBUF_X58_Y0_N75
\ShiftCount[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(3),
	o => \ShiftCount[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\Input[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(51),
	o => \Input[51]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\ShiftFN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\Input[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(19),
	o => \Input[19]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\ExtWord~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X56_Y4_N48
\sravals[0][51]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][51]~3_combout\ = ( \Input[19]~input_o\ & ( \ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\) # (\Input[51]~input_o\) ) ) ) # ( !\Input[19]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[51]~input_o\ & !\ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Input[19]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[51]~input_o\ ) ) ) # ( !\Input[19]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[51]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[51]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Input[19]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][51]~3_combout\);

-- Location: IOIBUF_X64_Y0_N52
\Input[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(50),
	o => \Input[50]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\Input[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(18),
	o => \Input[18]~input_o\);

-- Location: LABCELL_X56_Y4_N12
\sravals[0][50]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][50]~2_combout\ = ( \Input[18]~input_o\ & ( ((\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (\Input[50]~input_o\) ) ) # ( !\Input[18]~input_o\ & ( (\Input[50]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101110101011101010100010101000101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[50]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Input[18]~input_o\,
	combout => \sravals[0][50]~2_combout\);

-- Location: IOIBUF_X54_Y0_N18
\ShiftCount[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(0),
	o => \ShiftCount[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\ShiftCount[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(1),
	o => \ShiftCount[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\Input[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(48),
	o => \Input[48]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\Input[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(16),
	o => \Input[16]~input_o\);

-- Location: LABCELL_X56_Y4_N3
\sravals[0][48]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][48]~0_combout\ = ( \Input[16]~input_o\ & ( \ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\) # (\Input[48]~input_o\) ) ) ) # ( !\Input[16]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[48]~input_o\ & !\ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Input[16]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[48]~input_o\ ) ) ) # ( !\Input[16]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[48]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[48]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Input[16]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][48]~0_combout\);

-- Location: IOIBUF_X6_Y0_N1
\Input[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(49),
	o => \Input[49]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\Input[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(17),
	o => \Input[17]~input_o\);

-- Location: LABCELL_X56_Y4_N39
\sravals[0][49]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][49]~1_combout\ = ( \Input[17]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[49]~input_o\) ) ) # ( !\Input[17]~input_o\ & ( (\Input[49]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_Input[17]~input_o\,
	combout => \sravals[0][49]~1_combout\);

-- Location: LABCELL_X55_Y4_N30
\sravals[2][48]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][48]~4_combout\ = ( \sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\sravals[0][50]~2_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\))) ) ) ) # ( 
-- !\sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][51]~3_combout\))) ) ) ) # ( 
-- \sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][50]~2_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\ & ((\ShiftCount[1]~input_o\)))) ) ) ) # ( 
-- !\sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][50]~2_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][51]~3_combout\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sravals[2][48]~4_combout\);

-- Location: IOIBUF_X56_Y0_N35
\ShiftCount[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(2),
	o => \ShiftCount[2]~input_o\);

-- Location: IOIBUF_X60_Y81_N1
\Input[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(62),
	o => \Input[62]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\Input[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(30),
	o => \Input[30]~input_o\);

-- Location: LABCELL_X60_Y6_N36
\sravals[0][62]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][62]~17_combout\ = ( \Input[30]~input_o\ & ( ((\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (\Input[62]~input_o\) ) ) # ( !\Input[30]~input_o\ & ( (\Input[62]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_Input[30]~input_o\,
	combout => \sravals[0][62]~17_combout\);

-- Location: IOIBUF_X54_Y81_N18
\Input[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(28),
	o => \Input[28]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\Input[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(60),
	o => \Input[60]~input_o\);

-- Location: LABCELL_X55_Y6_N24
\sravals[0][60]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][60]~15_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[60]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[28]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[60]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[28]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Input[60]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][60]~15_combout\);

-- Location: IOIBUF_X66_Y0_N58
\Input[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(31),
	o => \Input[31]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\Input[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(63),
	o => \Input[63]~input_o\);

-- Location: LABCELL_X61_Y7_N30
\y2[63]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2[63]~0_combout\ = ( \Input[63]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[31]~input_o\)) ) ) # ( !\Input[63]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[31]~input_o\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \y2[63]~0_combout\);

-- Location: IOIBUF_X89_Y6_N38
\Input[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(29),
	o => \Input[29]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\Input[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(61),
	o => \Input[61]~input_o\);

-- Location: LABCELL_X60_Y6_N33
\sravals[0][61]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][61]~16_combout\ = ( \Input[61]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[29]~input_o\)) ) ) # ( !\Input[61]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[29]~input_o\,
	dataf => \ALT_INV_Input[61]~input_o\,
	combout => \sravals[0][61]~16_combout\);

-- Location: LABCELL_X60_Y6_N42
\sravals[2][60]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][60]~18_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\) # (\y2[63]~0_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][60]~15_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][61]~16_combout\ & ( (\ShiftCount[1]~input_o\ & \y2[63]~0_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][60]~15_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][62]~17_combout\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \sravals[2][60]~18_combout\);

-- Location: IOIBUF_X36_Y0_N1
\Input[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(54),
	o => \Input[54]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\Input[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(22),
	o => \Input[22]~input_o\);

-- Location: LABCELL_X53_Y4_N45
\sravals[0][54]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][54]~7_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[54]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[22]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[54]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[54]~input_o\,
	datac => \ALT_INV_Input[22]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][54]~7_combout\);

-- Location: IOIBUF_X4_Y0_N35
\Input[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(23),
	o => \Input[23]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Input[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(55),
	o => \Input[55]~input_o\);

-- Location: LABCELL_X53_Y4_N48
\sravals[0][55]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][55]~8_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[55]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[23]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[55]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[23]~input_o\,
	datac => \ALT_INV_Input[55]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][55]~8_combout\);

-- Location: IOIBUF_X30_Y0_N1
\Input[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(20),
	o => \Input[20]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\Input[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(52),
	o => \Input[52]~input_o\);

-- Location: LABCELL_X53_Y4_N30
\sravals[0][52]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][52]~5_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[52]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[20]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[52]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[20]~input_o\,
	datad => \ALT_INV_Input[52]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][52]~5_combout\);

-- Location: IOIBUF_X30_Y0_N35
\Input[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(53),
	o => \Input[53]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\Input[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(21),
	o => \Input[21]~input_o\);

-- Location: LABCELL_X53_Y4_N6
\sravals[0][53]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][53]~6_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[53]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[21]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[53]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datad => \ALT_INV_Input[21]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][53]~6_combout\);

-- Location: LABCELL_X53_Y4_N24
\sravals[2][52]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][52]~9_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][54]~7_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][55]~8_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][53]~6_combout\ & ( (\sravals[0][52]~5_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][54]~7_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][55]~8_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][52]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_sravals[0][55]~8_combout\,
	datad => \ALT_INV_sravals[0][52]~5_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sravals[2][52]~9_combout\);

-- Location: IOIBUF_X32_Y0_N52
\Input[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(24),
	o => \Input[24]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Input[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(56),
	o => \Input[56]~input_o\);

-- Location: LABCELL_X55_Y6_N3
\sravals[0][56]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][56]~10_combout\ = ( \Input[56]~input_o\ & ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\Input[24]~input_o\) ) ) ) # ( !\Input[56]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[24]~input_o\ & \ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Input[56]~input_o\ & ( !\ExtWord~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[24]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][56]~10_combout\);

-- Location: IOIBUF_X56_Y81_N1
\Input[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(25),
	o => \Input[25]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\Input[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(57),
	o => \Input[57]~input_o\);

-- Location: LABCELL_X55_Y6_N6
\sravals[0][57]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][57]~11_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[57]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[25]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[57]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[25]~input_o\,
	datab => \ALT_INV_Input[57]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][57]~11_combout\);

-- Location: IOIBUF_X54_Y81_N35
\Input[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(59),
	o => \Input[59]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\Input[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(27),
	o => \Input[27]~input_o\);

-- Location: LABCELL_X55_Y6_N48
\sravals[0][59]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][59]~13_combout\ = ( \Input[27]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[59]~input_o\) ) ) # ( !\Input[27]~input_o\ & ( (\Input[59]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[59]~input_o\,
	dataf => \ALT_INV_Input[27]~input_o\,
	combout => \sravals[0][59]~13_combout\);

-- Location: IOIBUF_X32_Y0_N1
\Input[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(26),
	o => \Input[26]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\Input[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(58),
	o => \Input[58]~input_o\);

-- Location: LABCELL_X55_Y6_N12
\sravals[0][58]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][58]~12_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[58]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[26]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[58]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[26]~input_o\,
	datac => \ALT_INV_Input[58]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][58]~12_combout\);

-- Location: MLABCELL_X59_Y6_N30
\sravals[2][56]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][56]~14_combout\ = ( \sravals[0][58]~12_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][59]~13_combout\) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][59]~13_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][58]~12_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) ) # ( !\sravals[0][58]~12_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][56]~10_combout\,
	datab => \ALT_INV_sravals[0][57]~11_combout\,
	datac => \ALT_INV_sravals[0][59]~13_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][58]~12_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][56]~14_combout\);

-- Location: MLABCELL_X59_Y9_N30
\sravals[4][48]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][48]~19_combout\ = ( \sravals[2][52]~9_combout\ & ( \sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][48]~4_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # 
-- (\sravals[2][60]~18_combout\)))) ) ) ) # ( !\sravals[2][52]~9_combout\ & ( \sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][48]~4_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # 
-- (\sravals[2][60]~18_combout\)))) ) ) ) # ( \sravals[2][52]~9_combout\ & ( !\sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][48]~4_combout\))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & 
-- \sravals[2][60]~18_combout\)))) ) ) ) # ( !\sravals[2][52]~9_combout\ & ( !\sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][48]~4_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & 
-- \sravals[2][60]~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][48]~4_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][60]~18_combout\,
	datae => \ALT_INV_sravals[2][52]~9_combout\,
	dataf => \ALT_INV_sravals[2][56]~14_combout\,
	combout => \sravals[4][48]~19_combout\);

-- Location: IOIBUF_X70_Y0_N18
\Input[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(38),
	o => \Input[38]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\Input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: LABCELL_X63_Y5_N57
\sravals[0][38]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][38]~27_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[38]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & (\Input[38]~input_o\)) # (\ExtWord~input_o\ & ((\Input[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_Input[6]~input_o\,
	combout => \sravals[0][38]~27_combout\);

-- Location: IOIBUF_X66_Y0_N75
\Input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\Input[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(39),
	o => \Input[39]~input_o\);

-- Location: LABCELL_X63_Y5_N33
\sravals[0][39]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][39]~28_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\Input[39]~input_o\))) # (\ExtWord~input_o\ & (\Input[7]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[39]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[7]~input_o\,
	datad => \ALT_INV_Input[39]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][39]~28_combout\);

-- Location: IOIBUF_X72_Y0_N35
\Input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\Input[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(37),
	o => \Input[37]~input_o\);

-- Location: LABCELL_X63_Y5_N51
\sravals[0][37]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][37]~26_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\Input[37]~input_o\))) # (\ExtWord~input_o\ & (\Input[5]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[37]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[5]~input_o\,
	datad => \ALT_INV_Input[37]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][37]~26_combout\);

-- Location: IOIBUF_X66_Y81_N92
\Input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\Input[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(36),
	o => \Input[36]~input_o\);

-- Location: LABCELL_X63_Y5_N15
\sravals[0][36]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][36]~25_combout\ = ( \Input[36]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[4]~input_o\)) ) ) # ( !\Input[36]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[4]~input_o\,
	dataf => \ALT_INV_Input[36]~input_o\,
	combout => \sravals[0][36]~25_combout\);

-- Location: LABCELL_X63_Y7_N36
\sravals[2][36]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][36]~29_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][39]~28_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][37]~26_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][39]~28_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][36]~25_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][37]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][38]~27_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][39]~28_combout\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sravals[2][36]~29_combout\);

-- Location: IOIBUF_X6_Y0_N35
\Input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\Input[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(34),
	o => \Input[34]~input_o\);

-- Location: LABCELL_X63_Y5_N0
\sravals[0][34]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][34]~22_combout\ = ( \Input[34]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[2]~input_o\)) ) ) # ( !\Input[34]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[2]~input_o\,
	dataf => \ALT_INV_Input[34]~input_o\,
	combout => \sravals[0][34]~22_combout\);

-- Location: IOIBUF_X89_Y9_N55
\Input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\Input[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(32),
	o => \Input[32]~input_o\);

-- Location: LABCELL_X61_Y7_N6
\sravals[0][32]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][32]~20_combout\ = ( \Input[32]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[0]~input_o\)) ) ) # ( !\Input[32]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_Input[32]~input_o\,
	combout => \sravals[0][32]~20_combout\);

-- Location: IOIBUF_X68_Y0_N52
\Input[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(35),
	o => \Input[35]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\Input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: LABCELL_X63_Y5_N9
\sravals[0][35]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][35]~23_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[35]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[3]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[35]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[35]~input_o\,
	datad => \ALT_INV_Input[3]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][35]~23_combout\);

-- Location: IOIBUF_X62_Y0_N35
\Input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\Input[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(33),
	o => \Input[33]~input_o\);

-- Location: LABCELL_X61_Y5_N30
\sravals[0][33]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][33]~21_combout\ = ( \Input[33]~input_o\ & ( ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)) # (\Input[1]~input_o\) ) ) # ( !\Input[33]~input_o\ & ( (\Input[1]~input_o\ & (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[1]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Input[33]~input_o\,
	combout => \sravals[0][33]~21_combout\);

-- Location: LABCELL_X63_Y7_N30
\sravals[2][32]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][32]~24_combout\ = ( \sravals[0][35]~23_combout\ & ( \sravals[0][33]~21_combout\ & ( ((!\ShiftCount[1]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][34]~22_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # 
-- ( !\sravals[0][35]~23_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][32]~20_combout\)) # (\ShiftCount[0]~input_o\))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\))) ) ) ) # 
-- ( \sravals[0][35]~23_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\)))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][34]~22_combout\)) # (\ShiftCount[0]~input_o\))) ) ) ) 
-- # ( !\sravals[0][35]~23_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][34]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][34]~22_combout\,
	datad => \ALT_INV_sravals[0][32]~20_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_sravals[0][33]~21_combout\,
	combout => \sravals[2][32]~24_combout\);

-- Location: IOIBUF_X64_Y0_N1
\Input[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(45),
	o => \Input[45]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\Input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(13),
	o => \Input[13]~input_o\);

-- Location: LABCELL_X64_Y4_N36
\sravals[0][45]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][45]~36_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\Input[45]~input_o\)) # (\ExtWord~input_o\ & ((\Input[13]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[45]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[45]~input_o\,
	datab => \ALT_INV_Input[13]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][45]~36_combout\);

-- Location: IOIBUF_X50_Y0_N75
\Input[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(46),
	o => \Input[46]~input_o\);

-- Location: IOIBUF_X56_Y81_N18
\Input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(14),
	o => \Input[14]~input_o\);

-- Location: LABCELL_X56_Y4_N57
\sravals[0][46]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][46]~37_combout\ = ( \Input[14]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[46]~input_o\) ) ) # ( !\Input[14]~input_o\ & ( (\Input[46]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	dataf => \ALT_INV_Input[14]~input_o\,
	combout => \sravals[0][46]~37_combout\);

-- Location: IOIBUF_X70_Y0_N1
\Input[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(44),
	o => \Input[44]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\Input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(12),
	o => \Input[12]~input_o\);

-- Location: LABCELL_X64_Y4_N0
\sravals[0][44]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][44]~35_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\Input[44]~input_o\)) # (\ExtWord~input_o\ & ((\Input[12]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[44]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[44]~input_o\,
	datab => \ALT_INV_Input[12]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][44]~35_combout\);

-- Location: IOIBUF_X32_Y0_N18
\Input[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(47),
	o => \Input[47]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(15),
	o => \Input[15]~input_o\);

-- Location: LABCELL_X56_Y4_N33
\sravals[0][47]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][47]~38_combout\ = ( \Input[15]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[47]~input_o\) ) ) # ( !\Input[15]~input_o\ & ( (\Input[47]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[47]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sravals[0][47]~38_combout\);

-- Location: LABCELL_X64_Y4_N42
\sravals[2][44]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][44]~39_combout\ = ( \sravals[0][44]~35_combout\ & ( \sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][45]~36_combout\))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\) # 
-- (\sravals[0][46]~37_combout\)))) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( \sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\ & ((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\) # 
-- (\sravals[0][46]~37_combout\)))) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][45]~36_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (((\sravals[0][46]~37_combout\ & !\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( !\sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\ & ((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & 
-- (((\sravals[0][46]~37_combout\ & !\ShiftCount[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][45]~36_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][46]~37_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_sravals[0][47]~38_combout\,
	combout => \sravals[2][44]~39_combout\);

-- Location: IOIBUF_X40_Y0_N1
\Input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(10),
	o => \Input[10]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\Input[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(42),
	o => \Input[42]~input_o\);

-- Location: LABCELL_X63_Y5_N21
\sravals[0][42]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][42]~32_combout\ = ( \Input[42]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[10]~input_o\)) ) ) # ( !\Input[42]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[10]~input_o\,
	dataf => \ALT_INV_Input[42]~input_o\,
	combout => \sravals[0][42]~32_combout\);

-- Location: IOIBUF_X64_Y81_N35
\Input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(8),
	o => \Input[8]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\Input[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(40),
	o => \Input[40]~input_o\);

-- Location: LABCELL_X63_Y5_N39
\sravals[0][40]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][40]~30_combout\ = ( \Input[40]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[8]~input_o\)) ) ) # ( !\Input[40]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[8]~input_o\,
	dataf => \ALT_INV_Input[40]~input_o\,
	combout => \sravals[0][40]~30_combout\);

-- Location: IOIBUF_X68_Y81_N18
\Input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(9),
	o => \Input[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\Input[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(41),
	o => \Input[41]~input_o\);

-- Location: LABCELL_X63_Y5_N45
\sravals[0][41]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][41]~31_combout\ = ( \Input[41]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[9]~input_o\)) ) ) # ( !\Input[41]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[9]~input_o\,
	dataf => \ALT_INV_Input[41]~input_o\,
	combout => \sravals[0][41]~31_combout\);

-- Location: IOIBUF_X72_Y0_N1
\Input[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(43),
	o => \Input[43]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\Input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(11),
	o => \Input[11]~input_o\);

-- Location: LABCELL_X64_Y3_N33
\sravals[0][43]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][43]~33_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[43]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[11]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[43]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100101111100001111000011110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[43]~input_o\,
	datad => \ALT_INV_Input[11]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][43]~33_combout\);

-- Location: LABCELL_X64_Y5_N30
\sravals[2][40]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][40]~34_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][43]~33_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][41]~31_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( 
-- !\ShiftCount[0]~input_o\ & ( \sravals[0][42]~32_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sravals[0][40]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][42]~32_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][40]~34_combout\);

-- Location: MLABCELL_X59_Y9_N36
\sravals[4][32]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][32]~40_combout\ = ( \sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( ((!\ShiftCount[2]~input_o\ & ((\sravals[2][32]~24_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][36]~29_combout\))) # (\ShiftCount[3]~input_o\) ) ) ) # 
-- ( !\sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sravals[2][32]~24_combout\)))) # (\ShiftCount[2]~input_o\ & (\sravals[2][36]~29_combout\ & ((!\ShiftCount[3]~input_o\)))) ) ) ) 
-- # ( \sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sravals[2][32]~24_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)) # (\sravals[2][36]~29_combout\))) ) ) 
-- ) # ( !\sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][32]~24_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][36]~29_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][36]~29_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][32]~24_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sravals[2][44]~39_combout\,
	dataf => \ALT_INV_sravals[2][40]~34_combout\,
	combout => \sravals[4][32]~40_combout\);

-- Location: IOIBUF_X54_Y0_N52
\ShiftCount[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(5),
	o => \ShiftCount[5]~input_o\);

-- Location: LABCELL_X61_Y9_N39
\Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~0_combout\ = ( \ShiftCount[5]~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~0_combout\);

-- Location: LABCELL_X63_Y5_N24
\sravals[0][10]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][10]~73_combout\ = ( \Input[42]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[10]~input_o\) ) ) # ( !\Input[42]~input_o\ & ( (\Input[10]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[10]~input_o\,
	dataf => \ALT_INV_Input[42]~input_o\,
	combout => \sravals[0][10]~73_combout\);

-- Location: LABCELL_X63_Y5_N27
\sravals[0][11]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][11]~74_combout\ = ( \Input[11]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[43]~input_o\)) ) ) # ( !\Input[11]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[43]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[43]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \sravals[0][11]~74_combout\);

-- Location: LABCELL_X63_Y5_N18
\sravals[0][9]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][9]~72_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[9]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & ((\Input[9]~input_o\))) # (\ExtWord~input_o\ & (\Input[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[9]~input_o\,
	combout => \sravals[0][9]~72_combout\);

-- Location: LABCELL_X63_Y5_N42
\sravals[0][8]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][8]~71_combout\ = ( \Input[40]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[8]~input_o\) ) ) # ( !\Input[40]~input_o\ & ( (\Input[8]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[8]~input_o\,
	dataf => \ALT_INV_Input[40]~input_o\,
	combout => \sravals[0][8]~71_combout\);

-- Location: LABCELL_X60_Y5_N30
\sravals[2][8]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][8]~75_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][10]~73_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][11]~74_combout\)) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][8]~71_combout\ & ( (\sravals[0][10]~73_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_sravals[0][9]~72_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][8]~71_combout\,
	combout => \sravals[2][8]~75_combout\);

-- Location: LABCELL_X56_Y4_N18
\sravals[0][14]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][14]~78_combout\ = ( \Input[46]~input_o\ & ( \ExtWord~input_o\ & ( (\ShiftFN[1]~input_o\) # (\Input[14]~input_o\) ) ) ) # ( !\Input[46]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[14]~input_o\ & !\ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Input[46]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[14]~input_o\ ) ) ) # ( !\Input[46]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[14]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Input[46]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][14]~78_combout\);

-- Location: LABCELL_X64_Y4_N39
\sravals[0][13]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][13]~77_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\Input[13]~input_o\))) # (\ExtWord~input_o\ & (\Input[45]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[45]~input_o\,
	datac => \ALT_INV_Input[13]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][13]~77_combout\);

-- Location: LABCELL_X56_Y4_N36
\sravals[0][15]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][15]~79_combout\ = ( \Input[15]~input_o\ & ( (!\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\) # (\Input[47]~input_o\)) ) ) # ( !\Input[15]~input_o\ & ( (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \Input[47]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Input[47]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sravals[0][15]~79_combout\);

-- Location: LABCELL_X64_Y4_N3
\sravals[0][12]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][12]~76_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\Input[12]~input_o\))) # (\ExtWord~input_o\ & (\Input[44]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[44]~input_o\,
	datac => \ALT_INV_Input[12]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][12]~76_combout\);

-- Location: LABCELL_X60_Y5_N36
\sravals[2][12]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][12]~80_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][15]~79_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][14]~78_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][15]~79_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][14]~78_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][14]~78_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][13]~77_combout\,
	datad => \ALT_INV_sravals[0][15]~79_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sravals[2][12]~80_combout\);

-- Location: LABCELL_X61_Y5_N33
\sravals[0][1]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][1]~63_combout\ = ( \Input[33]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[1]~input_o\) ) ) # ( !\Input[33]~input_o\ & ( (\Input[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[1]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Input[33]~input_o\,
	combout => \sravals[0][1]~63_combout\);

-- Location: LABCELL_X61_Y5_N39
\sravals[0][2]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][2]~64_combout\ = ( \Input[34]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[2]~input_o\) ) ) # ( !\Input[34]~input_o\ & ( (\Input[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[2]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Input[34]~input_o\,
	combout => \sravals[0][2]~64_combout\);

-- Location: LABCELL_X61_Y7_N9
\sravals[0][0]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][0]~62_combout\ = ( \Input[32]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[0]~input_o\) ) ) # ( !\Input[32]~input_o\ & ( (\Input[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_Input[32]~input_o\,
	combout => \sravals[0][0]~62_combout\);

-- Location: LABCELL_X63_Y5_N12
\sravals[0][3]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][3]~65_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & (\Input[3]~input_o\)) # (\ExtWord~input_o\ & ((\Input[35]~input_o\))) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[3]~input_o\,
	datad => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][3]~65_combout\);

-- Location: LABCELL_X61_Y5_N12
\Output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~1_combout\ = ( \sravals[0][0]~62_combout\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][2]~64_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][1]~63_combout\))) ) ) ) # ( !\sravals[0][0]~62_combout\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][2]~64_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][1]~63_combout\))) ) ) ) # ( \sravals[0][0]~62_combout\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][2]~64_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\ & 
-- ((!\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][0]~62_combout\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][2]~64_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\ & 
-- ((!\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][1]~63_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \Output~1_combout\);

-- Location: LABCELL_X63_Y5_N54
\sravals[0][5]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][5]~67_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[5]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & ((\Input[5]~input_o\))) # (\ExtWord~input_o\ & (\Input[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[37]~input_o\,
	datad => \ALT_INV_Input[5]~input_o\,
	combout => \sravals[0][5]~67_combout\);

-- Location: LABCELL_X63_Y5_N30
\sravals[0][6]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][6]~68_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[6]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & (\Input[6]~input_o\)) # (\ExtWord~input_o\ & ((\Input[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[6]~input_o\,
	datad => \ALT_INV_Input[38]~input_o\,
	combout => \sravals[0][6]~68_combout\);

-- Location: LABCELL_X63_Y5_N48
\sravals[0][4]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][4]~66_combout\ = ( \Input[36]~input_o\ & ( ((\ShiftFN[1]~input_o\ & \ExtWord~input_o\)) # (\Input[4]~input_o\) ) ) # ( !\Input[36]~input_o\ & ( (\Input[4]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[4]~input_o\,
	dataf => \ALT_INV_Input[36]~input_o\,
	combout => \sravals[0][4]~66_combout\);

-- Location: LABCELL_X63_Y5_N36
\sravals[0][7]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][7]~69_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\ExtWord~input_o\ & ((\Input[7]~input_o\))) # (\ExtWord~input_o\ & (\Input[39]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Input[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	datad => \ALT_INV_Input[7]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \sravals[0][7]~69_combout\);

-- Location: LABCELL_X62_Y5_N30
\sravals[2][4]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][4]~70_combout\ = ( \sravals[0][7]~69_combout\ & ( \ShiftCount[0]~input_o\ & ( (\sravals[0][5]~67_combout\) # (\ShiftCount[1]~input_o\) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & 
-- \sravals[0][5]~67_combout\) ) ) ) # ( \sravals[0][7]~69_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][4]~66_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][6]~68_combout\)) ) ) ) # ( !\sravals[0][7]~69_combout\ 
-- & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][4]~66_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][6]~68_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][5]~67_combout\,
	datac => \ALT_INV_sravals[0][6]~68_combout\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_sravals[0][7]~69_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][4]~70_combout\);

-- Location: LABCELL_X60_Y9_N30
\Output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~2_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][4]~70_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sravals[2][12]~80_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][4]~70_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\Output~1_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][8]~75_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][4]~70_combout\ & ( (\sravals[2][12]~80_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- !\sravals[2][4]~70_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\Output~1_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][8]~75_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][8]~75_combout\,
	datab => \ALT_INV_sravals[2][12]~80_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_Output~1_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][4]~70_combout\,
	combout => \Output~2_combout\);

-- Location: LABCELL_X61_Y7_N42
\sllvals[2][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][0]~0_combout\ = ( \Input[0]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[32]~input_o\)))) ) ) ) # ( !\Input[0]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (\ShiftFN[1]~input_o\ & (!\ShiftCount[0]~input_o\ & (\Input[32]~input_o\ & \ExtWord~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110011001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_Input[32]~input_o\,
	datad => \ALT_INV_ExtWord~input_o\,
	datae => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][0]~0_combout\);

-- Location: LABCELL_X56_Y6_N9
\sllvals[4][4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][4]~1_combout\ = ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][4]~1_combout\);

-- Location: LABCELL_X62_Y9_N30
\sllvals[4][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][0]~2_combout\ = ( \sllvals[4][4]~1_combout\ & ( \sllvals[2][0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sllvals[2][0]~0_combout\,
	dataf => \ALT_INV_sllvals[4][4]~1_combout\,
	combout => \sllvals[4][0]~2_combout\);

-- Location: LABCELL_X61_Y7_N18
\sravals[0][31]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][31]~59_combout\ = ( \Input[63]~input_o\ & ( ((\ExtWord~input_o\ & \ShiftFN[1]~input_o\)) # (\Input[31]~input_o\) ) ) # ( !\Input[63]~input_o\ & ( (\Input[31]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \sravals[0][31]~59_combout\);

-- Location: LABCELL_X55_Y6_N27
\sravals[0][28]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][28]~56_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[28]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[60]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[28]~input_o\,
	datad => \ALT_INV_Input[60]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][28]~56_combout\);

-- Location: LABCELL_X60_Y6_N30
\sravals[0][29]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][29]~57_combout\ = ( \Input[29]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[61]~input_o\)) ) ) # ( !\Input[29]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[61]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[61]~input_o\,
	dataf => \ALT_INV_Input[29]~input_o\,
	combout => \sravals[0][29]~57_combout\);

-- Location: LABCELL_X61_Y7_N33
\sravals[0][30]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][30]~58_combout\ = ( \Input[30]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[62]~input_o\)) ) ) # ( !\Input[30]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[62]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_Input[30]~input_o\,
	combout => \sravals[0][30]~58_combout\);

-- Location: MLABCELL_X59_Y7_N36
\sravals[2][28]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][28]~60_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][31]~59_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][28]~56_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][30]~58_combout\ & ( (\sravals[0][31]~59_combout\ & \ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][28]~56_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sravals[2][28]~60_combout\);

-- Location: LABCELL_X56_Y4_N45
\sravals[0][19]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][19]~44_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[19]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[51]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[19]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[51]~input_o\,
	datad => \ALT_INV_Input[19]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][19]~44_combout\);

-- Location: LABCELL_X56_Y4_N6
\sravals[0][17]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][17]~42_combout\ = ( \Input[49]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[17]~input_o\) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Input[49]~input_o\ & ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & \Input[17]~input_o\) ) ) ) # ( 
-- \Input[49]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[17]~input_o\ ) ) ) # ( !\Input[49]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[17]~input_o\,
	datae => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][17]~42_combout\);

-- Location: LABCELL_X56_Y4_N54
\sravals[0][18]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][18]~43_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[18]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & ((\Input[18]~input_o\))) # (\ExtWord~input_o\ & (\Input[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[50]~input_o\,
	datad => \ALT_INV_Input[18]~input_o\,
	combout => \sravals[0][18]~43_combout\);

-- Location: LABCELL_X56_Y4_N30
\sravals[0][16]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][16]~41_combout\ = (!\ShiftFN[1]~input_o\ & (((\Input[16]~input_o\)))) # (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\ & ((\Input[16]~input_o\))) # (\ExtWord~input_o\ & (\Input[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Input[48]~input_o\,
	datad => \ALT_INV_Input[16]~input_o\,
	combout => \sravals[0][16]~41_combout\);

-- Location: MLABCELL_X59_Y5_N30
\sravals[2][16]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][16]~45_combout\ = ( \sravals[0][16]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][19]~44_combout\)) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][19]~44_combout\)) ) ) ) # ( \sravals[0][16]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][17]~42_combout\) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][17]~42_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][19]~44_combout\,
	datab => \ALT_INV_sravals[0][17]~42_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][18]~43_combout\,
	datae => \ALT_INV_sravals[0][16]~41_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][16]~45_combout\);

-- Location: LABCELL_X53_Y4_N42
\sravals[0][22]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][22]~48_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[22]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[54]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[54]~input_o\,
	datad => \ALT_INV_Input[22]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][22]~48_combout\);

-- Location: LABCELL_X53_Y4_N51
\sravals[0][23]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][23]~49_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[23]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[55]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[23]~input_o\,
	datad => \ALT_INV_Input[55]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][23]~49_combout\);

-- Location: LABCELL_X53_Y4_N9
\sravals[0][21]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][21]~47_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[21]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[53]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Input[21]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][21]~47_combout\);

-- Location: LABCELL_X53_Y4_N33
\sravals[0][20]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][20]~46_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[20]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[52]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[20]~input_o\,
	datac => \ALT_INV_Input[52]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][20]~46_combout\);

-- Location: LABCELL_X53_Y5_N30
\sravals[2][20]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][20]~50_combout\ = ( \sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][23]~49_combout\))) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][23]~49_combout\))) ) ) ) # ( \sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][22]~48_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_sravals[0][21]~47_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][20]~46_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][20]~50_combout\);

-- Location: LABCELL_X55_Y6_N39
\sravals[0][25]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][25]~52_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Input[25]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Input[57]~input_o\)) ) ) # ( !\ExtWord~input_o\ & ( \Input[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[57]~input_o\,
	datad => \ALT_INV_Input[25]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][25]~52_combout\);

-- Location: LABCELL_X55_Y6_N30
\sravals[0][24]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][24]~51_combout\ = ( \Input[56]~input_o\ & ( \ExtWord~input_o\ & ( (\Input[24]~input_o\) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Input[56]~input_o\ & ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & \Input[24]~input_o\) ) ) ) # ( 
-- \Input[56]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[24]~input_o\ ) ) ) # ( !\Input[56]~input_o\ & ( !\ExtWord~input_o\ & ( \Input[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Input[24]~input_o\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][24]~51_combout\);

-- Location: LABCELL_X55_Y6_N51
\sravals[0][27]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][27]~54_combout\ = ( \Input[27]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\ExtWord~input_o\) # (\Input[59]~input_o\)) ) ) # ( !\Input[27]~input_o\ & ( (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \Input[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Input[59]~input_o\,
	dataf => \ALT_INV_Input[27]~input_o\,
	combout => \sravals[0][27]~54_combout\);

-- Location: LABCELL_X55_Y6_N15
\sravals[0][26]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[0][26]~53_combout\ = ( \ExtWord~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Input[26]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Input[58]~input_o\))) ) ) # ( !\ExtWord~input_o\ & ( \Input[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Input[26]~input_o\,
	datad => \ALT_INV_Input[58]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \sravals[0][26]~53_combout\);

-- Location: MLABCELL_X59_Y7_N0
\sravals[2][24]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][24]~55_combout\ = ( \sravals[0][27]~54_combout\ & ( \sravals[0][26]~53_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][27]~54_combout\ & ( \sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][24]~51_combout\) # (\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\ & (!\ShiftCount[1]~input_o\))) ) ) ) # 
-- ( \sravals[0][27]~54_combout\ & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\ & \sravals[0][24]~51_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][25]~52_combout\))) ) ) ) 
-- # ( !\sravals[0][27]~54_combout\ & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][25]~52_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sravals[0][24]~51_combout\,
	datae => \ALT_INV_sravals[0][27]~54_combout\,
	dataf => \ALT_INV_sravals[0][26]~53_combout\,
	combout => \sravals[2][24]~55_combout\);

-- Location: MLABCELL_X59_Y9_N12
\sravals[4][16]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][16]~61_combout\ = ( \sravals[2][20]~50_combout\ & ( \sravals[2][24]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][16]~45_combout\) # (\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # 
-- (\sravals[2][28]~60_combout\))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( \sravals[2][24]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sravals[2][16]~45_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) 
-- # (\sravals[2][28]~60_combout\))) ) ) ) # ( \sravals[2][20]~50_combout\ & ( !\sravals[2][24]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][16]~45_combout\) # (\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][28]~60_combout\ & (\ShiftCount[2]~input_o\))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( !\sravals[2][24]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sravals[2][16]~45_combout\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][28]~60_combout\ & (\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][28]~60_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][16]~45_combout\,
	datae => \ALT_INV_sravals[2][20]~50_combout\,
	dataf => \ALT_INV_sravals[2][24]~55_combout\,
	combout => \sravals[4][16]~61_combout\);

-- Location: IOIBUF_X66_Y0_N41
\ShiftCount[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(4),
	o => \ShiftCount[4]~input_o\);

-- Location: LABCELL_X62_Y9_N36
\Output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~3_combout\ = ( \sravals[4][16]~61_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & !\ShiftCount[5]~input_o\) ) ) ) # ( \sravals[4][16]~61_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ 
-- & ((\sllvals[4][0]~2_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~2_combout\)))) ) ) ) # ( !\sravals[4][16]~61_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\sllvals[4][0]~2_combout\))) # 
-- (\ShiftFN[1]~input_o\ & (\Output~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~2_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][0]~2_combout\,
	datae => \ALT_INV_sravals[4][16]~61_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~3_combout\);

-- Location: LABCELL_X62_Y9_N45
\Output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~4_combout\ = ( \ShiftCount[4]~input_o\ & ( ((\sravals[4][48]~19_combout\ & \Output~0_combout\)) # (\Output~3_combout\) ) ) # ( !\ShiftCount[4]~input_o\ & ( ((\sravals[4][32]~40_combout\ & \Output~0_combout\)) # (\Output~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][48]~19_combout\,
	datab => \ALT_INV_sravals[4][32]~40_combout\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Output~3_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~4_combout\);

-- Location: LABCELL_X64_Y4_N18
\sravals[2][45]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][45]~89_combout\ = ( \sravals[0][45]~36_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][46]~37_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][48]~0_combout\)) ) ) ) # ( !\sravals[0][45]~36_combout\ & ( 
-- \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][46]~37_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][48]~0_combout\)) ) ) ) # ( \sravals[0][45]~36_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][47]~38_combout\) ) ) ) # ( !\sravals[0][45]~36_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\sravals[0][47]~38_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][48]~0_combout\,
	datac => \ALT_INV_sravals[0][46]~37_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][45]~36_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][45]~89_combout\);

-- Location: LABCELL_X63_Y7_N42
\sravals[2][33]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][33]~86_combout\ = ( \sravals[0][35]~23_combout\ & ( \sravals[0][36]~25_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][35]~23_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (\ShiftCount[0]~input_o\)) ) ) ) # ( \sravals[0][35]~23_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)))) # 
-- (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\)) ) ) ) # ( !\sravals[0][35]~23_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][34]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][34]~22_combout\,
	datad => \ALT_INV_sravals[0][33]~21_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sravals[2][33]~86_combout\);

-- Location: LABCELL_X64_Y5_N42
\sravals[2][41]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][41]~88_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][44]~35_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][42]~32_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( 
-- !\ShiftCount[0]~input_o\ & ( \sravals[0][43]~33_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sravals[0][41]~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][42]~32_combout\,
	datab => \ALT_INV_sravals[0][43]~33_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_sravals[0][44]~35_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][41]~88_combout\);

-- Location: LABCELL_X64_Y5_N6
\sravals[2][37]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][37]~87_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][39]~28_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][38]~27_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][39]~28_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][40]~30_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][37]~26_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][38]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][39]~28_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][38]~27_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][37]~26_combout\,
	combout => \sravals[2][37]~87_combout\);

-- Location: LABCELL_X63_Y4_N0
\sravals[4][33]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][33]~90_combout\ = ( \sravals[2][41]~88_combout\ & ( \sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # (\sravals[2][33]~86_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # 
-- (\sravals[2][45]~89_combout\))) ) ) ) # ( !\sravals[2][41]~88_combout\ & ( \sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # (\sravals[2][33]~86_combout\)))) # (\ShiftCount[3]~input_o\ & (\sravals[2][45]~89_combout\ 
-- & ((\ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][41]~88_combout\ & ( !\sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][33]~86_combout\ & !\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) 
-- # (\sravals[2][45]~89_combout\))) ) ) ) # ( !\sravals[2][41]~88_combout\ & ( !\sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][33]~86_combout\ & !\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][45]~89_combout\ & ((\ShiftCount[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][45]~89_combout\,
	datac => \ALT_INV_sravals[2][33]~86_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][41]~88_combout\,
	dataf => \ALT_INV_sravals[2][37]~87_combout\,
	combout => \sravals[4][33]~90_combout\);

-- Location: LABCELL_X53_Y4_N0
\sravals[2][53]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][53]~82_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][55]~8_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][56]~10_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][54]~7_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][55]~8_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][56]~10_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][54]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_sravals[0][55]~8_combout\,
	datad => \ALT_INV_sravals[0][56]~10_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sravals[2][53]~82_combout\);

-- Location: LABCELL_X55_Y4_N6
\sravals[2][49]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][49]~81_combout\ = ( \sravals[0][51]~3_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\) # ((!\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\)))) ) ) ) # ( 
-- !\sravals[0][51]~3_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][52]~5_combout\))))) ) ) ) # ( \sravals[0][51]~3_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)) # 
-- (\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\))))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( !\sravals[0][49]~1_combout\ & ( (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][52]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_sravals[0][52]~5_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][51]~3_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sravals[2][49]~81_combout\);

-- Location: LABCELL_X60_Y6_N48
\sravals[2][61]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][61]~84_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) # (\ShiftCount[1]~input_o\ & ((\y2[63]~0_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\) # (\y2[63]~0_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\y2[63]~0_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][61]~16_combout\ & ( (\y2[63]~0_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001111110011111100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][62]~17_combout\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \sravals[2][61]~84_combout\);

-- Location: MLABCELL_X59_Y6_N6
\sravals[2][57]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][57]~83_combout\ = ( \sravals[0][58]~12_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][59]~13_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][60]~15_combout\))) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][59]~13_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][60]~15_combout\))) ) ) ) # ( \sravals[0][58]~12_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][57]~11_combout\) # 
-- (\ShiftCount[0]~input_o\) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][57]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][59]~13_combout\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][57]~11_combout\,
	datae => \ALT_INV_sravals[0][58]~12_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][57]~83_combout\);

-- Location: LABCELL_X61_Y4_N30
\sravals[4][49]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][49]~85_combout\ = ( \sravals[2][57]~83_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][53]~82_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][61]~84_combout\))) ) ) ) # ( !\sravals[2][57]~83_combout\ & ( 
-- \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][53]~82_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][61]~84_combout\))) ) ) ) # ( \sravals[2][57]~83_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\sravals[2][49]~81_combout\) # 
-- (\ShiftCount[3]~input_o\) ) ) ) # ( !\sravals[2][57]~83_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & \sravals[2][49]~81_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][53]~82_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sravals[2][49]~81_combout\,
	datad => \ALT_INV_sravals[2][61]~84_combout\,
	datae => \ALT_INV_sravals[2][57]~83_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][49]~85_combout\);

-- Location: MLABCELL_X59_Y5_N12
\sravals[2][13]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][13]~98_combout\ = ( \sravals[0][16]~41_combout\ & ( \sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][14]~78_combout\))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][15]~79_combout\) # 
-- (\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( \sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][14]~78_combout\))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\ & 
-- \sravals[0][15]~79_combout\)))) ) ) ) # ( \sravals[0][16]~41_combout\ & ( !\sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][14]~78_combout\ & (\ShiftCount[0]~input_o\))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][15]~79_combout\) 
-- # (\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( !\sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][14]~78_combout\ & (\ShiftCount[0]~input_o\))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\ & 
-- \sravals[0][15]~79_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][15]~79_combout\,
	datae => \ALT_INV_sravals[0][16]~41_combout\,
	dataf => \ALT_INV_sravals[0][13]~77_combout\,
	combout => \sravals[2][13]~98_combout\);

-- Location: LABCELL_X60_Y5_N12
\sravals[2][9]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][9]~97_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (\ShiftCount[1]~input_o\) # (\sravals[0][10]~73_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][9]~72_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][10]~73_combout\ & !\ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ 
-- & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_sravals[0][9]~72_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sravals[2][9]~97_combout\);

-- Location: LABCELL_X61_Y5_N54
\Output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~5_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][4]~66_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][1]~63_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][4]~66_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][1]~63_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \Output~5_combout\);

-- Location: LABCELL_X62_Y5_N6
\sravals[2][5]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][5]~96_combout\ = ( \sravals[0][7]~69_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][5]~67_combout\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][8]~71_combout\)))) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][8]~71_combout\)))) ) ) ) # ( \sravals[0][7]~69_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][5]~67_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & 
-- \ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & 
-- \ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][5]~67_combout\,
	datac => \ALT_INV_sravals[0][8]~71_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][7]~69_combout\,
	dataf => \ALT_INV_sravals[0][6]~68_combout\,
	combout => \sravals[2][5]~96_combout\);

-- Location: LABCELL_X63_Y4_N42
\Output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~6_combout\ = ( \Output~5_combout\ & ( \sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & ((\sravals[2][9]~97_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\))) ) ) ) # ( 
-- !\Output~5_combout\ & ( \sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][9]~97_combout\))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][13]~98_combout\)))) ) ) ) # ( \Output~5_combout\ & ( !\sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][9]~97_combout\))) # 
-- (\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\)))) ) ) ) # ( !\Output~5_combout\ & ( !\sravals[2][5]~96_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][9]~97_combout\))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][13]~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][13]~98_combout\,
	datac => \ALT_INV_sravals[2][9]~97_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_Output~5_combout\,
	dataf => \ALT_INV_sravals[2][5]~96_combout\,
	combout => \Output~6_combout\);

-- Location: MLABCELL_X59_Y7_N42
\sravals[2][25]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][25]~93_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][28]~56_combout\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][27]~54_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][28]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][25]~52_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][26]~53_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][28]~56_combout\ & ( (\sravals[0][27]~54_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][28]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][26]~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][27]~54_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][25]~52_combout\,
	datad => \ALT_INV_sravals[0][26]~53_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][28]~56_combout\,
	combout => \sravals[2][25]~93_combout\);

-- Location: LABCELL_X61_Y7_N24
\sravals[2][29]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][29]~94_combout\ = ( \sravals[0][29]~57_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\)))) ) ) ) # 
-- ( !\sravals[0][29]~57_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][32]~20_combout\)))) ) ) ) 
-- # ( \sravals[0][29]~57_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][31]~59_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][32]~20_combout\ & \ShiftCount[1]~input_o\)))) ) ) 
-- ) # ( !\sravals[0][29]~57_combout\ & ( !\sravals[0][30]~58_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][32]~20_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][29]~57_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sravals[2][29]~94_combout\);

-- Location: LABCELL_X53_Y5_N6
\sravals[2][21]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][21]~92_combout\ = ( \sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) ) ) ) # ( !\sravals[0][22]~48_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) ) ) ) # ( \sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][21]~47_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_sravals[0][24]~51_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][22]~48_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][21]~92_combout\);

-- Location: MLABCELL_X59_Y5_N36
\sravals[2][17]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][17]~91_combout\ = ( \sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][20]~46_combout\) ) ) ) # ( !\sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][20]~46_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) ) ) ) # ( !\sravals[0][19]~44_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][20]~46_combout\,
	datab => \ALT_INV_sravals[0][18]~43_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][17]~42_combout\,
	datae => \ALT_INV_sravals[0][19]~44_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][17]~91_combout\);

-- Location: LABCELL_X63_Y4_N36
\sravals[4][17]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][17]~95_combout\ = ( \sravals[2][17]~91_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][21]~92_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][29]~94_combout\)) ) ) ) # ( !\sravals[2][17]~91_combout\ & ( 
-- \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][21]~92_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][29]~94_combout\)) ) ) ) # ( \sravals[2][17]~91_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # 
-- (\sravals[2][25]~93_combout\) ) ) ) # ( !\sravals[2][17]~91_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\ShiftCount[3]~input_o\ & \sravals[2][25]~93_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][25]~93_combout\,
	datac => \ALT_INV_sravals[2][29]~94_combout\,
	datad => \ALT_INV_sravals[2][21]~92_combout\,
	datae => \ALT_INV_sravals[2][17]~91_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][17]~95_combout\);

-- Location: LABCELL_X61_Y5_N21
\sllvals[4][1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][1]~3_combout\ = ( \sravals[0][1]~63_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sllvals[4][4]~1_combout\ & ((!\ShiftCount[0]~input_o\) # (\sravals[0][0]~62_combout\)))) ) ) # ( !\sravals[0][1]~63_combout\ & ( (\ShiftCount[0]~input_o\ & 
-- (!\ShiftCount[1]~input_o\ & (\sllvals[4][4]~1_combout\ & \sravals[0][0]~62_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sllvals[4][4]~1_combout\,
	datad => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sravals[0][1]~63_combout\,
	combout => \sllvals[4][1]~3_combout\);

-- Location: LABCELL_X61_Y4_N36
\Output~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~7_combout\ = ( \sllvals[4][1]~3_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & (!\ShiftCount[5]~input_o\ & \sravals[4][17]~95_combout\)) ) ) ) # ( !\sllvals[4][1]~3_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & 
-- (!\ShiftCount[5]~input_o\ & \sravals[4][17]~95_combout\)) ) ) ) # ( \sllvals[4][1]~3_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\Output~6_combout\))) ) ) ) # ( !\sllvals[4][1]~3_combout\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (\Output~6_combout\ & (\ShiftFN[1]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110100001101000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~6_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sravals[4][17]~95_combout\,
	datae => \ALT_INV_sllvals[4][1]~3_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~7_combout\);

-- Location: LABCELL_X61_Y4_N15
\Output~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~8_combout\ = ( \ShiftCount[4]~input_o\ & ( ((\Output~0_combout\ & \sravals[4][49]~85_combout\)) # (\Output~7_combout\) ) ) # ( !\ShiftCount[4]~input_o\ & ( ((\Output~0_combout\ & \sravals[4][33]~90_combout\)) # (\Output~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_sravals[4][33]~90_combout\,
	datac => \ALT_INV_sravals[4][49]~85_combout\,
	datad => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~8_combout\);

-- Location: LABCELL_X63_Y7_N48
\sravals[2][34]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][34]~104_combout\ = ( \sravals[0][34]~22_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\) # ((!\ShiftCount[1]~input_o\ & (\sravals[0][35]~23_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\)))) ) ) ) 
-- # ( !\sravals[0][34]~22_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][35]~23_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][37]~26_combout\))))) ) ) ) # ( \sravals[0][34]~22_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- (\sravals[0][35]~23_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\))))) ) ) ) # ( !\sravals[0][34]~22_combout\ & ( !\sravals[0][36]~25_combout\ & ( (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- (\sravals[0][35]~23_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][35]~23_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_sravals[0][34]~22_combout\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sravals[2][34]~104_combout\);

-- Location: LABCELL_X55_Y4_N48
\sravals[2][46]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][46]~107_combout\ = ( \sravals[0][48]~0_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][47]~38_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][49]~1_combout\))) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( 
-- \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][47]~38_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][49]~1_combout\))) ) ) ) # ( \sravals[0][48]~0_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\) # 
-- (\sravals[0][46]~37_combout\) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\sravals[0][46]~37_combout\ & !\ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][46]~37_combout\,
	datac => \ALT_INV_sravals[0][49]~1_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][46]~107_combout\);

-- Location: LABCELL_X64_Y5_N18
\sravals[2][38]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][38]~105_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][41]~31_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][39]~28_combout\ & ( (\sravals[0][38]~27_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][41]~31_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][38]~27_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][41]~31_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][38]~27_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][39]~28_combout\,
	combout => \sravals[2][38]~105_combout\);

-- Location: LABCELL_X64_Y4_N24
\sravals[2][42]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][42]~106_combout\ = ( \sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) ) ) ) # ( !\sravals[0][44]~35_combout\ & 
-- ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\sravals[0][42]~32_combout\) # 
-- (\ShiftCount[1]~input_o\) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \sravals[0][42]~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][45]~36_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][42]~32_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][42]~106_combout\);

-- Location: LABCELL_X56_Y5_N0
\sravals[4][34]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][34]~108_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][42]~106_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][38]~105_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][46]~107_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sravals[2][42]~106_combout\ & ( (\sravals[2][34]~104_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][38]~105_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][46]~107_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (!\ShiftCount[3]~input_o\ & \sravals[2][34]~104_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][34]~104_combout\,
	datac => \ALT_INV_sravals[2][46]~107_combout\,
	datad => \ALT_INV_sravals[2][38]~105_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][42]~106_combout\,
	combout => \sravals[4][34]~108_combout\);

-- Location: MLABCELL_X59_Y6_N42
\sravals[2][54]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][54]~100_combout\ = ( \sravals[0][54]~7_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) ) # ( !\sravals[0][54]~7_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) ) # ( \sravals[0][54]~7_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][55]~8_combout\) ) ) ) # ( !\sravals[0][54]~7_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][55]~8_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][56]~10_combout\,
	datab => \ALT_INV_sravals[0][55]~8_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][57]~11_combout\,
	datae => \ALT_INV_sravals[0][54]~7_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][54]~100_combout\);

-- Location: LABCELL_X60_Y6_N39
\sravals[2][62]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][62]~102_combout\ = ( \ShiftCount[0]~input_o\ & ( \y2[63]~0_combout\ ) ) # ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][62]~17_combout\))) # (\ShiftCount[1]~input_o\ & (\y2[63]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_sravals[0][62]~17_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][62]~102_combout\);

-- Location: LABCELL_X60_Y6_N24
\sravals[2][58]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][58]~101_combout\ = ( \sravals[0][58]~12_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][59]~13_combout\))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\) # 
-- (\sravals[0][60]~15_combout\)))) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][59]~13_combout\ & ((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\) # 
-- (\sravals[0][60]~15_combout\)))) ) ) ) # ( \sravals[0][58]~12_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # (\sravals[0][59]~13_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (((\sravals[0][60]~15_combout\ & !\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][59]~13_combout\ & ((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & 
-- (((\sravals[0][60]~15_combout\ & !\ShiftCount[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][59]~13_combout\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][58]~12_combout\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \sravals[2][58]~101_combout\);

-- Location: LABCELL_X55_Y4_N42
\sravals[2][50]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][50]~99_combout\ = ( \sravals[0][51]~3_combout\ & ( \sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][50]~2_combout\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][53]~6_combout\)))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( \sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][50]~2_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][53]~6_combout\ & 
-- \ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][51]~3_combout\ & ( !\sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][50]~2_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][53]~6_combout\)))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( !\sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][50]~2_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][53]~6_combout\ & 
-- \ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_sravals[0][53]~6_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][51]~3_combout\,
	dataf => \ALT_INV_sravals[0][52]~5_combout\,
	combout => \sravals[2][50]~99_combout\);

-- Location: LABCELL_X56_Y6_N12
\sravals[4][50]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][50]~103_combout\ = ( \sravals[2][50]~99_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][54]~100_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][62]~102_combout\))) ) ) ) # ( !\sravals[2][50]~99_combout\ 
-- & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][54]~100_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][62]~102_combout\))) ) ) ) # ( \sravals[2][50]~99_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # 
-- (\sravals[2][58]~101_combout\) ) ) ) # ( !\sravals[2][50]~99_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\ShiftCount[3]~input_o\ & \sravals[2][58]~101_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][54]~100_combout\,
	datac => \ALT_INV_sravals[2][62]~102_combout\,
	datad => \ALT_INV_sravals[2][58]~101_combout\,
	datae => \ALT_INV_sravals[2][50]~99_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][50]~103_combout\);

-- Location: LABCELL_X61_Y5_N0
\sllvals[4][2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][2]~4_combout\ = ( \sravals[0][0]~62_combout\ & ( \sllvals[4][4]~1_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\)))) # 
-- (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][0]~62_combout\ & ( \sllvals[4][4]~1_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][1]~63_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][1]~63_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][2]~64_combout\,
	datae => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sllvals[4][4]~1_combout\,
	combout => \sllvals[4][2]~4_combout\);

-- Location: LABCELL_X53_Y5_N12
\sravals[2][18]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][18]~109_combout\ = ( \sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][19]~44_combout\))) ) ) ) # ( !\sravals[0][20]~46_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][19]~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][21]~47_combout\,
	datab => \ALT_INV_sravals[0][18]~43_combout\,
	datac => \ALT_INV_sravals[0][19]~44_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][20]~46_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][18]~109_combout\);

-- Location: LABCELL_X61_Y7_N0
\sravals[2][30]~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][30]~112_combout\ = ( \sravals[0][32]~20_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\) # ((!\ShiftCount[1]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\)))) ) ) ) 
-- # ( !\sravals[0][32]~20_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][33]~21_combout\))))) ) ) ) # ( \sravals[0][32]~20_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- (\sravals[0][31]~59_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\))))) ) ) ) # ( !\sravals[0][32]~20_combout\ & ( !\sravals[0][30]~58_combout\ & ( (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- (\sravals[0][31]~59_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][33]~21_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][32]~20_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sravals[2][30]~112_combout\);

-- Location: LABCELL_X53_Y5_N18
\sravals[2][22]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][22]~110_combout\ = ( \sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][24]~51_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][25]~52_combout\))) ) ) ) # ( !\sravals[0][22]~48_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][24]~51_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][25]~52_combout\))) ) ) ) # ( \sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][23]~49_combout\) ) ) ) # ( !\sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][23]~49_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][24]~51_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][25]~52_combout\,
	datae => \ALT_INV_sravals[0][22]~48_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][22]~110_combout\);

-- Location: MLABCELL_X59_Y7_N48
\sravals[2][26]~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][26]~111_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][27]~54_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][29]~57_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][26]~53_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][27]~54_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][28]~56_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][27]~54_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][26]~53_combout\,
	combout => \sravals[2][26]~111_combout\);

-- Location: LABCELL_X56_Y5_N36
\sravals[4][18]~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][18]~113_combout\ = ( \sravals[2][22]~110_combout\ & ( \sravals[2][26]~111_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][18]~109_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # 
-- (\sravals[2][30]~112_combout\)))) ) ) ) # ( !\sravals[2][22]~110_combout\ & ( \sravals[2][26]~111_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][18]~109_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[2]~input_o\) # (\sravals[2][30]~112_combout\)))) ) ) ) # ( \sravals[2][22]~110_combout\ & ( !\sravals[2][26]~111_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][18]~109_combout\))) # 
-- (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sravals[2][30]~112_combout\)))) ) ) ) # ( !\sravals[2][22]~110_combout\ & ( !\sravals[2][26]~111_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][18]~109_combout\ & (!\ShiftCount[2]~input_o\))) 
-- # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sravals[2][30]~112_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][18]~109_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][30]~112_combout\,
	datae => \ALT_INV_sravals[2][22]~110_combout\,
	dataf => \ALT_INV_sravals[2][26]~111_combout\,
	combout => \sravals[4][18]~113_combout\);

-- Location: MLABCELL_X59_Y5_N48
\sravals[2][14]~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][14]~116_combout\ = ( \sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][16]~41_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) ) ) ) # ( !\sravals[0][15]~79_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][16]~41_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) ) ) ) # ( \sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][14]~78_combout\) ) ) ) # ( !\sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][14]~78_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][16]~41_combout\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][17]~42_combout\,
	datae => \ALT_INV_sravals[0][15]~79_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][14]~116_combout\);

-- Location: LABCELL_X60_Y5_N48
\sravals[2][10]~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][10]~115_combout\ = ( \sravals[0][13]~77_combout\ & ( \sravals[0][12]~76_combout\ & ( ((!\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][11]~74_combout\)))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][13]~77_combout\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][11]~74_combout\))))) # (\ShiftCount[1]~input_o\ & 
-- (((!\ShiftCount[0]~input_o\)))) ) ) ) # ( \sravals[0][13]~77_combout\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][11]~74_combout\))))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][13]~77_combout\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][10]~73_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][11]~74_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][13]~77_combout\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sravals[2][10]~115_combout\);

-- Location: LABCELL_X61_Y5_N6
\Output~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~9_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][4]~66_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][3]~65_combout\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][2]~64_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][4]~66_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][5]~67_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (\sravals[0][2]~64_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][5]~67_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \Output~9_combout\);

-- Location: LABCELL_X62_Y5_N42
\sravals[2][6]~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][6]~114_combout\ = ( \sravals[0][9]~72_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][8]~71_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][7]~69_combout\))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][8]~71_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][7]~69_combout\ & 
-- ((!\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][9]~72_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][7]~69_combout\))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][7]~69_combout\ & 
-- ((!\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][7]~69_combout\,
	datac => \ALT_INV_sravals[0][8]~71_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][9]~72_combout\,
	dataf => \ALT_INV_sravals[0][6]~68_combout\,
	combout => \sravals[2][6]~114_combout\);

-- Location: LABCELL_X56_Y5_N12
\Output~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~10_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sravals[2][14]~116_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\Output~9_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][10]~115_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][6]~114_combout\ & ( (\sravals[2][14]~116_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- !\sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\Output~9_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][10]~115_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][14]~116_combout\,
	datab => \ALT_INV_sravals[2][10]~115_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_Output~9_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][6]~114_combout\,
	combout => \Output~10_combout\);

-- Location: LABCELL_X55_Y5_N30
\Output~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~11_combout\ = ( \ShiftCount[4]~input_o\ & ( \Output~10_combout\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & \sravals[4][18]~113_combout\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \Output~10_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((\ShiftFN[1]~input_o\) # (\sllvals[4][2]~4_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\Output~10_combout\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & \sravals[4][18]~113_combout\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\Output~10_combout\ & ( (\sllvals[4][2]~4_combout\ & (!\ShiftCount[5]~input_o\ & !\ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000110001001100010011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][2]~4_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_sravals[4][18]~113_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Output~10_combout\,
	combout => \Output~11_combout\);

-- Location: LABCELL_X55_Y5_N9
\Output~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~12_combout\ = ( \Output~0_combout\ & ( ((!\ShiftCount[4]~input_o\ & (\sravals[4][34]~108_combout\)) # (\ShiftCount[4]~input_o\ & ((\sravals[4][50]~103_combout\)))) # (\Output~11_combout\) ) ) # ( !\Output~0_combout\ & ( \Output~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][34]~108_combout\,
	datab => \ALT_INV_sravals[4][50]~103_combout\,
	datac => \ALT_INV_Output~11_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Output~0_combout\,
	combout => \Output~12_combout\);

-- Location: LABCELL_X60_Y6_N0
\sravals[2][59]~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][59]~119_combout\ = ( \sravals[0][62]~17_combout\ & ( \sravals[0][61]~16_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][60]~15_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][62]~17_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][60]~15_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (((!\ShiftCount[0]~input_o\)))) ) ) ) # ( \sravals[0][62]~17_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][60]~15_combout\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)))) ) ) ) # ( !\sravals[0][62]~17_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][59]~13_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][60]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_sravals[0][59]~13_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][62]~17_combout\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \sravals[2][59]~119_combout\);

-- Location: MLABCELL_X59_Y6_N18
\sravals[2][55]~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][55]~118_combout\ = ( \sravals[0][56]~10_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][58]~12_combout\)) ) ) ) # ( !\sravals[0][56]~10_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][58]~12_combout\)) ) ) ) # ( \sravals[0][56]~10_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][55]~8_combout\) ) ) ) # ( !\sravals[0][56]~10_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][55]~8_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][58]~12_combout\,
	datab => \ALT_INV_sravals[0][55]~8_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][57]~11_combout\,
	datae => \ALT_INV_sravals[0][56]~10_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][55]~118_combout\);

-- Location: LABCELL_X53_Y4_N36
\sravals[2][51]~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][51]~117_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][54]~7_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][51]~3_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][52]~5_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (\sravals[0][54]~7_combout\ & \ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][52]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][51]~3_combout\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][52]~5_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sravals[2][51]~117_combout\);

-- Location: LABCELL_X62_Y6_N0
\sravals[4][51]~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][51]~120_combout\ = ( \y2[63]~0_combout\ & ( \ShiftCount[2]~input_o\ & ( (\ShiftCount[3]~input_o\) # (\sravals[2][55]~118_combout\) ) ) ) # ( !\y2[63]~0_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sravals[2][55]~118_combout\ & 
-- !\ShiftCount[3]~input_o\) ) ) ) # ( \y2[63]~0_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][51]~117_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][59]~119_combout\)) ) ) ) # ( !\y2[63]~0_combout\ & ( 
-- !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][51]~117_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][59]~119_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][59]~119_combout\,
	datab => \ALT_INV_sravals[2][55]~118_combout\,
	datac => \ALT_INV_sravals[2][51]~117_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_y2[63]~0_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][51]~120_combout\);

-- Location: LABCELL_X64_Y4_N30
\sravals[2][43]~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][43]~123_combout\ = ( \sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][46]~37_combout\) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (\sravals[0][46]~37_combout\ & 
-- \ShiftCount[1]~input_o\) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) ) ) ) # ( !\sravals[0][44]~35_combout\ 
-- & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][46]~37_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][45]~36_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sravals[2][43]~123_combout\);

-- Location: LABCELL_X55_Y4_N54
\sravals[2][47]~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][47]~124_combout\ = ( \sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][47]~38_combout\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][50]~2_combout\)))) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][47]~38_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ 
-- & \ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][47]~38_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][50]~2_combout\)))) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][47]~38_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ 
-- & \ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sravals[2][47]~124_combout\);

-- Location: LABCELL_X63_Y7_N24
\sravals[2][35]~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][35]~121_combout\ = ( \sravals[0][35]~23_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][37]~26_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) ) ) ) # ( !\sravals[0][35]~23_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][37]~26_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) ) ) ) # ( \sravals[0][35]~23_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][36]~25_combout\) ) ) ) # ( !\sravals[0][35]~23_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][36]~25_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][36]~25_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][38]~27_combout\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][35]~121_combout\);

-- Location: LABCELL_X64_Y5_N54
\sravals[2][39]~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][39]~122_combout\ = ( \sravals[0][42]~32_combout\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][41]~31_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][40]~30_combout\))) ) ) ) # ( !\sravals[0][42]~32_combout\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][41]~31_combout\)))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][40]~30_combout\ & ((!\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][42]~32_combout\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][41]~31_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & 
-- (((\ShiftCount[1]~input_o\)) # (\sravals[0][40]~30_combout\))) ) ) ) # ( !\sravals[0][42]~32_combout\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][41]~31_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ 
-- & (\sravals[0][40]~30_combout\ & ((!\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][42]~32_combout\,
	dataf => \ALT_INV_sravals[0][39]~28_combout\,
	combout => \sravals[2][39]~122_combout\);

-- Location: LABCELL_X62_Y7_N30
\sravals[4][35]~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][35]~125_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sravals[2][47]~124_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sravals[2][35]~121_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][43]~123_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][39]~122_combout\ & ( (\sravals[2][47]~124_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][35]~121_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][43]~123_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][43]~123_combout\,
	datab => \ALT_INV_sravals[2][47]~124_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][35]~121_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][39]~122_combout\,
	combout => \sravals[4][35]~125_combout\);

-- Location: LABCELL_X62_Y5_N24
\sravals[2][7]~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][7]~131_combout\ = ( \sravals[0][9]~72_combout\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][7]~69_combout\) # (\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][10]~73_combout\))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][7]~69_combout\) # (\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & (\sravals[0][10]~73_combout\ & 
-- (\ShiftCount[0]~input_o\))) ) ) ) # ( \sravals[0][9]~72_combout\ & ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\ & \sravals[0][7]~69_combout\)))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][10]~73_combout\))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\ & \sravals[0][7]~69_combout\)))) # (\ShiftCount[1]~input_o\ & (\sravals[0][10]~73_combout\ & 
-- (\ShiftCount[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][10]~73_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][7]~69_combout\,
	datae => \ALT_INV_sravals[0][9]~72_combout\,
	dataf => \ALT_INV_sravals[0][8]~71_combout\,
	combout => \sravals[2][7]~131_combout\);

-- Location: MLABCELL_X59_Y5_N54
\sravals[2][15]~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][15]~133_combout\ = ( \sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][17]~42_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) ) ) ) # ( !\sravals[0][15]~79_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][17]~42_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) ) ) ) # ( \sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][16]~41_combout\) ) ) ) # ( !\sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][16]~41_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][16]~41_combout\,
	datab => \ALT_INV_sravals[0][17]~42_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][18]~43_combout\,
	datae => \ALT_INV_sravals[0][15]~79_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][15]~133_combout\);

-- Location: LABCELL_X60_Y5_N24
\sravals[2][11]~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][11]~132_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][14]~78_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][11]~74_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][14]~78_combout\ & \ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ 
-- & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][11]~74_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][13]~77_combout\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sravals[2][11]~132_combout\);

-- Location: LABCELL_X62_Y5_N18
\Output~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~13_combout\ = ( \sravals[0][5]~67_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][4]~66_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][6]~68_combout\))) ) ) ) # ( !\sravals[0][5]~67_combout\ & ( 
-- \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][4]~66_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][6]~68_combout\))) ) ) ) # ( \sravals[0][5]~67_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\sravals[0][3]~65_combout\) # 
-- (\ShiftCount[1]~input_o\) ) ) ) # ( !\sravals[0][5]~67_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \sravals[0][3]~65_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][4]~66_combout\,
	datac => \ALT_INV_sravals[0][6]~68_combout\,
	datad => \ALT_INV_sravals[0][3]~65_combout\,
	datae => \ALT_INV_sravals[0][5]~67_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~13_combout\);

-- Location: LABCELL_X62_Y7_N12
\Output~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~14_combout\ = ( \sravals[2][11]~132_combout\ & ( \Output~13_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sravals[2][7]~131_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][15]~133_combout\)))) ) ) ) # ( 
-- !\sravals[2][11]~132_combout\ & ( \Output~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][7]~131_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sravals[2][15]~133_combout\))))) ) ) ) # ( \sravals[2][11]~132_combout\ & ( !\Output~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][7]~131_combout\)) # 
-- (\ShiftCount[3]~input_o\ & ((\sravals[2][15]~133_combout\))))) ) ) ) # ( !\sravals[2][11]~132_combout\ & ( !\Output~13_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][7]~131_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sravals[2][15]~133_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sravals[2][7]~131_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][15]~133_combout\,
	datae => \ALT_INV_sravals[2][11]~132_combout\,
	dataf => \ALT_INV_Output~13_combout\,
	combout => \Output~14_combout\);

-- Location: LABCELL_X61_Y5_N42
\sllvals[2][3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][3]~5_combout\ = ( \sravals[0][0]~62_combout\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][1]~63_combout\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][2]~64_combout\)))) ) ) ) # ( !\sravals[0][0]~62_combout\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][1]~63_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][2]~64_combout\ 
-- & !\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][0]~62_combout\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][2]~64_combout\)))) ) ) ) # ( !\sravals[0][0]~62_combout\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][2]~64_combout\ & 
-- !\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][1]~63_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \sllvals[2][3]~5_combout\);

-- Location: LABCELL_X61_Y6_N33
\sllvals[4][3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][3]~6_combout\ = ( \sllvals[4][4]~1_combout\ & ( \sllvals[2][3]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sllvals[2][3]~5_combout\,
	dataf => \ALT_INV_sllvals[4][4]~1_combout\,
	combout => \sllvals[4][3]~6_combout\);

-- Location: MLABCELL_X59_Y7_N54
\sravals[2][27]~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][27]~128_combout\ = ( \sravals[0][27]~54_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][28]~56_combout\)))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][29]~57_combout\)) # 
-- (\ShiftCount[0]~input_o\))) ) ) ) # ( !\sravals[0][27]~54_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][29]~57_combout\)) # 
-- (\ShiftCount[0]~input_o\))) ) ) ) # ( \sravals[0][27]~54_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][28]~56_combout\)))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][29]~57_combout\)))) ) ) ) # ( !\sravals[0][27]~54_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][29]~57_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][28]~56_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_sravals[0][27]~54_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sravals[2][27]~128_combout\);

-- Location: LABCELL_X53_Y5_N54
\sravals[2][19]~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][19]~126_combout\ = ( \sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][21]~47_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) ) ) ) # ( !\sravals[0][19]~44_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][21]~47_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) ) ) ) # ( \sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][20]~46_combout\) ) ) ) # ( !\sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][20]~46_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][22]~48_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][21]~47_combout\,
	datad => \ALT_INV_sravals[0][20]~46_combout\,
	datae => \ALT_INV_sravals[0][19]~44_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][19]~126_combout\);

-- Location: LABCELL_X55_Y6_N42
\sravals[2][23]~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][23]~127_combout\ = ( \sravals[0][25]~52_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][26]~53_combout\) ) ) ) # ( !\sravals[0][25]~52_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & 
-- \sravals[0][26]~53_combout\) ) ) ) # ( \sravals[0][25]~52_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) ) ) ) # ( 
-- !\sravals[0][25]~52_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][26]~53_combout\,
	datac => \ALT_INV_sravals[0][23]~49_combout\,
	datad => \ALT_INV_sravals[0][24]~51_combout\,
	datae => \ALT_INV_sravals[0][25]~52_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sravals[2][23]~127_combout\);

-- Location: LABCELL_X61_Y7_N36
\sravals[2][31]~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[2][31]~129_combout\ = ( \sravals[0][34]~22_combout\ & ( \sravals[0][33]~21_combout\ & ( ((!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\)))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][34]~22_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][31]~59_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][32]~20_combout\ & !\ShiftCount[1]~input_o\)))) ) ) ) 
-- # ( \sravals[0][34]~22_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][32]~20_combout\)))) ) ) 
-- ) # ( !\sravals[0][34]~22_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][32]~20_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][34]~22_combout\,
	dataf => \ALT_INV_sravals[0][33]~21_combout\,
	combout => \sravals[2][31]~129_combout\);

-- Location: LABCELL_X62_Y7_N36
\sravals[4][19]~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][19]~130_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][31]~129_combout\ & ( (\sravals[2][23]~127_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][31]~129_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sravals[2][19]~126_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][27]~128_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][31]~129_combout\ & ( (!\ShiftCount[3]~input_o\ & \sravals[2][23]~127_combout\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sravals[2][31]~129_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][19]~126_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][27]~128_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][27]~128_combout\,
	datab => \ALT_INV_sravals[2][19]~126_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][23]~127_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][31]~129_combout\,
	combout => \sravals[4][19]~130_combout\);

-- Location: LABCELL_X62_Y6_N6
\Output~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~15_combout\ = ( \sravals[4][19]~130_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \ShiftFN[1]~input_o\) ) ) ) # ( \sravals[4][19]~130_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftFN[1]~input_o\ & ((\sllvals[4][3]~6_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~14_combout\)))) ) ) ) # ( !\sravals[4][19]~130_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- ((\sllvals[4][3]~6_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~14_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_sllvals[4][3]~6_combout\,
	datae => \ALT_INV_sravals[4][19]~130_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~15_combout\);

-- Location: LABCELL_X62_Y4_N3
\Output~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~16_combout\ = ( \ShiftCount[4]~input_o\ & ( ((\sravals[4][51]~120_combout\ & \Output~0_combout\)) # (\Output~15_combout\) ) ) # ( !\ShiftCount[4]~input_o\ & ( ((\sravals[4][35]~125_combout\ & \Output~0_combout\)) # (\Output~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][51]~120_combout\,
	datab => \ALT_INV_sravals[4][35]~125_combout\,
	datac => \ALT_INV_Output~15_combout\,
	datad => \ALT_INV_Output~0_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~16_combout\);

-- Location: MLABCELL_X59_Y9_N48
\sravals[4][36]~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][36]~135_combout\ = ( \sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][36]~29_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # 
-- (\sravals[2][48]~4_combout\)))) ) ) ) # ( !\sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sravals[2][36]~29_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (((\sravals[2][48]~4_combout\ & \ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][36]~29_combout\ & ((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[2]~input_o\) # (\sravals[2][48]~4_combout\)))) ) ) ) # ( !\sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][36]~29_combout\ & ((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ 
-- & (((\sravals[2][48]~4_combout\ & \ShiftCount[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][36]~29_combout\,
	datab => \ALT_INV_sravals[2][48]~4_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][44]~39_combout\,
	dataf => \ALT_INV_sravals[2][40]~34_combout\,
	combout => \sravals[4][36]~135_combout\);

-- Location: MLABCELL_X59_Y9_N24
\sravals[4][20]~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][20]~136_combout\ = ( \sravals[2][20]~50_combout\ & ( \sravals[2][32]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][24]~55_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # 
-- (\sravals[2][28]~60_combout\))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( \sravals[2][32]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sravals[2][24]~55_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # 
-- (\sravals[2][28]~60_combout\))) ) ) ) # ( \sravals[2][20]~50_combout\ & ( !\sravals[2][32]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][24]~55_combout\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][28]~60_combout\ & (!\ShiftCount[2]~input_o\))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( !\sravals[2][32]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sravals[2][24]~55_combout\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][28]~60_combout\ & (!\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][28]~60_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][24]~55_combout\,
	datae => \ALT_INV_sravals[2][20]~50_combout\,
	dataf => \ALT_INV_sravals[2][32]~24_combout\,
	combout => \sravals[4][20]~136_combout\);

-- Location: LABCELL_X60_Y9_N12
\Output~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~17_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][4]~70_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][12]~80_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][16]~45_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sravals[2][4]~70_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sravals[2][8]~75_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][4]~70_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][12]~80_combout\))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][16]~45_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sravals[2][4]~70_combout\ & ( (\sravals[2][8]~75_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][16]~45_combout\,
	datab => \ALT_INV_sravals[2][12]~80_combout\,
	datac => \ALT_INV_sravals[2][8]~75_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][4]~70_combout\,
	combout => \Output~17_combout\);

-- Location: LABCELL_X61_Y5_N48
\sllvals[2][4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][4]~7_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][1]~63_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][3]~65_combout\ & ( (\sravals[0][4]~66_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][2]~64_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][1]~63_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][4]~66_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][1]~63_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \sllvals[2][4]~7_combout\);

-- Location: LABCELL_X60_Y9_N9
\sllvals[4][4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][4]~8_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][0]~0_combout\ & ( !\ShiftCount[3]~input_o\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][0]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & \sllvals[2][4]~7_combout\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sllvals[2][0]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & \sllvals[2][4]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000000000000000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][4]~7_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][0]~0_combout\,
	combout => \sllvals[4][4]~8_combout\);

-- Location: LABCELL_X61_Y9_N42
\Output~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~18_combout\ = ( \Output~17_combout\ & ( \sllvals[4][4]~8_combout\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\sravals[4][20]~136_combout\ & \ShiftFN[1]~input_o\)))) ) ) ) # ( !\Output~17_combout\ & ( \sllvals[4][4]~8_combout\ 
-- & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (\sravals[4][20]~136_combout\ & \ShiftCount[4]~input_o\)))) ) ) ) # ( \Output~17_combout\ & ( !\sllvals[4][4]~8_combout\ & ( 
-- (!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\sravals[4][20]~136_combout\)))) ) ) ) # ( !\Output~17_combout\ & ( !\sllvals[4][4]~8_combout\ & ( (\sravals[4][20]~136_combout\ & (!\ShiftCount[5]~input_o\ & 
-- (\ShiftFN[1]~input_o\ & \ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000011000000010011000000000001001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][20]~136_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Output~17_combout\,
	dataf => \ALT_INV_sllvals[4][4]~8_combout\,
	combout => \Output~18_combout\);

-- Location: LABCELL_X56_Y9_N30
\sravals[4][52]~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][52]~134_combout\ = ( \sravals[2][60]~18_combout\ & ( \sravals[2][52]~9_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sravals[2][56]~14_combout\)) # (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\)))) ) ) ) # ( 
-- !\sravals[2][60]~18_combout\ & ( \sravals[2][52]~9_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][56]~14_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\y2[63]~0_combout\))))) ) ) ) # ( \sravals[2][60]~18_combout\ & ( !\sravals[2][52]~9_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][56]~14_combout\)) # 
-- (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\))))) ) ) ) # ( !\sravals[2][60]~18_combout\ & ( !\sravals[2][52]~9_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][56]~14_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\y2[63]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][56]~14_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_sravals[2][60]~18_combout\,
	dataf => \ALT_INV_sravals[2][52]~9_combout\,
	combout => \sravals[4][52]~134_combout\);

-- Location: LABCELL_X61_Y9_N51
\Output~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~19_combout\ = ( \ShiftCount[4]~input_o\ & ( \Output~0_combout\ & ( (\sravals[4][52]~134_combout\) # (\Output~18_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \Output~0_combout\ & ( (\Output~18_combout\) # (\sravals[4][36]~135_combout\) ) ) ) # 
-- ( \ShiftCount[4]~input_o\ & ( !\Output~0_combout\ & ( \Output~18_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\Output~0_combout\ & ( \Output~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101110111011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][36]~135_combout\,
	datab => \ALT_INV_Output~18_combout\,
	datac => \ALT_INV_sravals[4][52]~134_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Output~0_combout\,
	combout => \Output~19_combout\);

-- Location: LABCELL_X61_Y4_N18
\sravals[4][53]~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][53]~137_combout\ = ( \sravals[2][53]~82_combout\ & ( \y2[63]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][57]~83_combout\))) # (\ShiftCount[3]~input_o\ & (((\sravals[2][61]~84_combout\) # 
-- (\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sravals[2][53]~82_combout\ & ( \y2[63]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][57]~83_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\sravals[2][61]~84_combout\) # 
-- (\ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][53]~82_combout\ & ( !\y2[63]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][57]~83_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sravals[2][61]~84_combout\)))) ) ) ) # ( !\sravals[2][53]~82_combout\ & ( !\y2[63]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][57]~83_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sravals[2][61]~84_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][57]~83_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][61]~84_combout\,
	datae => \ALT_INV_sravals[2][53]~82_combout\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \sravals[4][53]~137_combout\);

-- Location: LABCELL_X63_Y4_N48
\sravals[4][37]~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][37]~138_combout\ = ( \sravals[2][49]~81_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sravals[2][41]~88_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\sravals[2][49]~81_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & 
-- \sravals[2][41]~88_combout\) ) ) ) # ( \sravals[2][49]~81_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][37]~87_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][45]~89_combout\)) ) ) ) # ( 
-- !\sravals[2][49]~81_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][37]~87_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][45]~89_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][45]~89_combout\,
	datac => \ALT_INV_sravals[2][37]~87_combout\,
	datad => \ALT_INV_sravals[2][41]~88_combout\,
	datae => \ALT_INV_sravals[2][49]~81_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][37]~138_combout\);

-- Location: LABCELL_X63_Y4_N24
\sravals[4][21]~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][21]~139_combout\ = ( \sravals[2][21]~92_combout\ & ( \sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][25]~93_combout\))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # 
-- (\sravals[2][29]~94_combout\)))) ) ) ) # ( !\sravals[2][21]~92_combout\ & ( \sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][25]~93_combout\ & ((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # 
-- (\sravals[2][29]~94_combout\)))) ) ) ) # ( \sravals[2][21]~92_combout\ & ( !\sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][25]~93_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (((\sravals[2][29]~94_combout\ & !\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sravals[2][21]~92_combout\ & ( !\sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][25]~93_combout\ & ((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & 
-- (((\sravals[2][29]~94_combout\ & !\ShiftCount[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][25]~93_combout\,
	datac => \ALT_INV_sravals[2][29]~94_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][21]~92_combout\,
	dataf => \ALT_INV_sravals[2][33]~86_combout\,
	combout => \sravals[4][21]~139_combout\);

-- Location: LABCELL_X63_Y4_N30
\Output~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~20_combout\ = ( \sravals[2][9]~97_combout\ & ( \sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][17]~91_combout\)))) ) ) ) # ( 
-- !\sravals[2][9]~97_combout\ & ( \sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][17]~91_combout\))))) ) ) ) # ( \sravals[2][9]~97_combout\ & ( !\sravals[2][5]~96_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\)) 
-- # (\ShiftCount[2]~input_o\ & ((\sravals[2][17]~91_combout\))))) ) ) ) # ( !\sravals[2][9]~97_combout\ & ( !\sravals[2][5]~96_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][13]~98_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][17]~91_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][13]~98_combout\,
	datac => \ALT_INV_sravals[2][17]~91_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][9]~97_combout\,
	dataf => \ALT_INV_sravals[2][5]~96_combout\,
	combout => \Output~20_combout\);

-- Location: LABCELL_X61_Y5_N24
\sllvals[2][5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][5]~10_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][2]~64_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][5]~67_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][4]~66_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][3]~65_combout\ & ( (\sravals[0][2]~64_combout\ & \ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- !\sravals[0][3]~65_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][4]~66_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][5]~67_combout\,
	datab => \ALT_INV_sravals[0][2]~64_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][3]~65_combout\,
	combout => \sllvals[2][5]~10_combout\);

-- Location: LABCELL_X61_Y5_N36
\sllvals[2][1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][1]~9_combout\ = ( \sravals[0][1]~63_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # (\sravals[0][0]~62_combout\))) ) ) # ( !\sravals[0][1]~63_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & 
-- \sravals[0][0]~62_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sravals[0][1]~63_combout\,
	combout => \sllvals[2][1]~9_combout\);

-- Location: LABCELL_X60_Y4_N3
\sllvals[4][5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][5]~11_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][5]~10_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][1]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sllvals[2][5]~10_combout\,
	datad => \ALT_INV_sllvals[2][1]~9_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sllvals[4][5]~11_combout\);

-- Location: LABCELL_X62_Y4_N6
\Output~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~21_combout\ = ( \sllvals[4][5]~11_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\sravals[4][21]~139_combout\ & \ShiftFN[1]~input_o\)) ) ) ) # ( !\sllvals[4][5]~11_combout\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (\sravals[4][21]~139_combout\ & \ShiftFN[1]~input_o\)) ) ) ) # ( \sllvals[4][5]~11_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\Output~20_combout\))) ) ) ) # ( 
-- !\sllvals[4][5]~11_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Output~20_combout\ & \ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_sravals[4][21]~139_combout\,
	datac => \ALT_INV_Output~20_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_sllvals[4][5]~11_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~21_combout\);

-- Location: LABCELL_X62_Y4_N12
\Output~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~22_combout\ = ( \Output~21_combout\ ) # ( !\Output~21_combout\ & ( (\Output~0_combout\ & ((!\ShiftCount[4]~input_o\ & ((\sravals[4][37]~138_combout\))) # (\ShiftCount[4]~input_o\ & (\sravals[4][53]~137_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][53]~137_combout\,
	datab => \ALT_INV_sravals[4][37]~138_combout\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Output~0_combout\,
	dataf => \ALT_INV_Output~21_combout\,
	combout => \Output~22_combout\);

-- Location: LABCELL_X56_Y5_N48
\sravals[4][38]~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][38]~141_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][42]~106_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][46]~107_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][50]~99_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sravals[2][42]~106_combout\ & ( (\ShiftCount[2]~input_o\) # (\sravals[2][38]~105_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][46]~107_combout\))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][50]~99_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (\sravals[2][38]~105_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][50]~99_combout\,
	datab => \ALT_INV_sravals[2][38]~105_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][46]~107_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][42]~106_combout\,
	combout => \sravals[4][38]~141_combout\);

-- Location: LABCELL_X56_Y6_N48
\sravals[4][54]~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][54]~140_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \y2[63]~0_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sravals[2][58]~101_combout\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \sravals[2][62]~102_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \sravals[2][54]~100_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][62]~102_combout\,
	datab => \ALT_INV_sravals[2][54]~100_combout\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_sravals[2][58]~101_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][54]~140_combout\);

-- Location: LABCELL_X56_Y5_N30
\Output~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~23_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][10]~115_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][18]~109_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sravals[2][14]~116_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][6]~114_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][10]~115_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][18]~109_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sravals[2][6]~114_combout\ & ( (\sravals[2][14]~116_combout\ & \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][14]~116_combout\,
	datab => \ALT_INV_sravals[2][18]~109_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][10]~115_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][6]~114_combout\,
	combout => \Output~23_combout\);

-- Location: LABCELL_X56_Y5_N54
\sravals[4][22]~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][22]~142_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][34]~104_combout\ & ( (\ShiftCount[3]~input_o\) # (\sravals[2][26]~111_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][34]~104_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- (\sravals[2][22]~110_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][30]~112_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][34]~104_combout\ & ( (\sravals[2][26]~111_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sravals[2][34]~104_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][22]~110_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][30]~112_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][22]~110_combout\,
	datab => \ALT_INV_sravals[2][30]~112_combout\,
	datac => \ALT_INV_sravals[2][26]~111_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][34]~104_combout\,
	combout => \sravals[4][22]~142_combout\);

-- Location: LABCELL_X61_Y5_N18
\sllvals[2][2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][2]~12_combout\ = ( \sravals[0][2]~64_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\) # ((\sravals[0][0]~62_combout\)))) # (\ShiftCount[0]~input_o\ & (!\ShiftCount[1]~input_o\ & (\sravals[0][1]~63_combout\))) ) ) # ( 
-- !\sravals[0][2]~64_combout\ & ( (!\ShiftCount[0]~input_o\ & (\ShiftCount[1]~input_o\ & ((\sravals[0][0]~62_combout\)))) # (\ShiftCount[0]~input_o\ & (!\ShiftCount[1]~input_o\ & (\sravals[0][1]~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][1]~63_combout\,
	datad => \ALT_INV_sravals[0][0]~62_combout\,
	dataf => \ALT_INV_sravals[0][2]~64_combout\,
	combout => \sllvals[2][2]~12_combout\);

-- Location: LABCELL_X62_Y5_N0
\sllvals[2][6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][6]~13_combout\ = ( \sravals[0][5]~67_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][3]~65_combout\) ) ) ) # ( !\sravals[0][5]~67_combout\ & ( \ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\ & 
-- \sravals[0][3]~65_combout\) ) ) ) # ( \sravals[0][5]~67_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][6]~68_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][4]~66_combout\)) ) ) ) # ( !\sravals[0][5]~67_combout\ 
-- & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][6]~68_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][4]~66_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][4]~66_combout\,
	datac => \ALT_INV_sravals[0][6]~68_combout\,
	datad => \ALT_INV_sravals[0][3]~65_combout\,
	datae => \ALT_INV_sravals[0][5]~67_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][6]~13_combout\);

-- Location: LABCELL_X57_Y5_N0
\sllvals[4][6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][6]~14_combout\ = ( \sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sllvals[2][2]~12_combout\) ) ) ) # ( !\sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sllvals[2][2]~12_combout\ & 
-- \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][2]~12_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sllvals[2][6]~13_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sllvals[4][6]~14_combout\);

-- Location: LABCELL_X55_Y5_N42
\Output~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~24_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][6]~14_combout\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & \sravals[4][22]~142_combout\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][6]~14_combout\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\Output~23_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][6]~14_combout\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & \sravals[4][22]~142_combout\)) ) ) ) # ( 
-- !\ShiftCount[4]~input_o\ & ( !\sllvals[4][6]~14_combout\ & ( (\Output~23_combout\ & (!\ShiftCount[5]~input_o\ & \ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000110011000100110001000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~23_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_sravals[4][22]~142_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][6]~14_combout\,
	combout => \Output~24_combout\);

-- Location: LABCELL_X55_Y5_N48
\Output~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~25_combout\ = ( \Output~24_combout\ ) # ( !\Output~24_combout\ & ( (\Output~0_combout\ & ((!\ShiftCount[4]~input_o\ & (\sravals[4][38]~141_combout\)) # (\ShiftCount[4]~input_o\ & ((\sravals[4][54]~140_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_sravals[4][38]~141_combout\,
	datac => \ALT_INV_sravals[4][54]~140_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Output~24_combout\,
	combout => \Output~25_combout\);

-- Location: LABCELL_X56_Y9_N9
\Output~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~27_combout\ = ( !\ShiftCount[4]~input_o\ & ( \Output~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~0_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~27_combout\);

-- Location: LABCELL_X62_Y7_N54
\sravals[4][39]~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][39]~144_combout\ = ( \sravals[2][43]~123_combout\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & (\sravals[2][47]~124_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][51]~117_combout\)))) ) 
-- ) ) # ( !\sravals[2][43]~123_combout\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][47]~124_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][51]~117_combout\))))) ) ) ) # ( \sravals[2][43]~123_combout\ & ( !\sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][47]~124_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][51]~117_combout\))))) ) ) ) # ( !\sravals[2][43]~123_combout\ & ( !\sravals[2][39]~122_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][47]~124_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][51]~117_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][47]~124_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][51]~117_combout\,
	datae => \ALT_INV_sravals[2][43]~123_combout\,
	dataf => \ALT_INV_sravals[2][39]~122_combout\,
	combout => \sravals[4][39]~144_combout\);

-- Location: LABCELL_X62_Y5_N36
\sllvals[2][7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][7]~15_combout\ = ( \sravals[0][7]~69_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][6]~68_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][4]~66_combout\))) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( 
-- \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][6]~68_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][4]~66_combout\))) ) ) ) # ( \sravals[0][7]~69_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # 
-- (\sravals[0][5]~67_combout\) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\ & \sravals[0][5]~67_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][5]~67_combout\,
	datac => \ALT_INV_sravals[0][6]~68_combout\,
	datad => \ALT_INV_sravals[0][4]~66_combout\,
	datae => \ALT_INV_sravals[0][7]~69_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][7]~15_combout\);

-- Location: LABCELL_X62_Y8_N21
\sllvals[4][7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][7]~16_combout\ = (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sllvals[2][7]~15_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sllvals[2][3]~5_combout\,
	datad => \ALT_INV_sllvals[2][7]~15_combout\,
	combout => \sllvals[4][7]~16_combout\);

-- Location: LABCELL_X62_Y7_N0
\Output~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~28_combout\ = ( \sravals[2][11]~132_combout\ & ( \sravals[2][7]~131_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & ((\sravals[2][15]~133_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\))) ) ) ) # ( 
-- !\sravals[2][11]~132_combout\ & ( \sravals[2][7]~131_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sravals[2][15]~133_combout\)))) # (\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\ & (\ShiftCount[3]~input_o\))) ) ) ) # 
-- ( \sravals[2][11]~132_combout\ & ( !\sravals[2][7]~131_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sravals[2][15]~133_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][19]~126_combout\))) ) ) 
-- ) # ( !\sravals[2][11]~132_combout\ & ( !\sravals[2][7]~131_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][15]~133_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sravals[2][19]~126_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][15]~133_combout\,
	datae => \ALT_INV_sravals[2][11]~132_combout\,
	dataf => \ALT_INV_sravals[2][7]~131_combout\,
	combout => \Output~28_combout\);

-- Location: LABCELL_X62_Y8_N18
\sravals[4][55]~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][55]~145_combout\ = ( \sravals[2][59]~119_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][55]~118_combout\)) # (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\y2[63]~0_combout\)))) ) ) # ( !\sravals[2][59]~119_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (\sravals[2][55]~118_combout\))) # (\ShiftCount[3]~input_o\ & (((\y2[63]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][55]~118_combout\,
	datad => \ALT_INV_y2[63]~0_combout\,
	dataf => \ALT_INV_sravals[2][59]~119_combout\,
	combout => \sravals[4][55]~145_combout\);

-- Location: LABCELL_X62_Y8_N54
\Output~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~29_combout\ = ( \ShiftCount[4]~input_o\ & ( \sravals[4][55]~145_combout\ & ( (\ShiftFN[1]~input_o\ & \ShiftCount[5]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sravals[4][55]~145_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftFN[1]~input_o\ & (\sllvals[4][7]~16_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~28_combout\))))) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\sravals[4][55]~145_combout\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- (\sllvals[4][7]~16_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~28_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000000000000000000001000111000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][7]~16_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~28_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sravals[4][55]~145_combout\,
	combout => \Output~29_combout\);

-- Location: LABCELL_X62_Y7_N18
\sravals[4][23]~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][23]~143_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][31]~129_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][27]~128_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][35]~121_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sravals[2][31]~129_combout\ & ( (\ShiftCount[3]~input_o\) # (\sravals[2][23]~127_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][31]~129_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][27]~128_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sravals[2][35]~121_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sravals[2][31]~129_combout\ & ( (\sravals[2][23]~127_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][27]~128_combout\,
	datab => \ALT_INV_sravals[2][23]~127_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][35]~121_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][31]~129_combout\,
	combout => \sravals[4][23]~143_combout\);

-- Location: LABCELL_X62_Y8_N15
\Output~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~26_combout\ = ( !\ShiftCount[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & \ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~26_combout\);

-- Location: LABCELL_X62_Y8_N12
\Output~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~30_combout\ = ( \Output~26_combout\ & ( (((\Output~27_combout\ & \sravals[4][39]~144_combout\)) # (\sravals[4][23]~143_combout\)) # (\Output~29_combout\) ) ) # ( !\Output~26_combout\ & ( ((\Output~27_combout\ & \sravals[4][39]~144_combout\)) # 
-- (\Output~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~27_combout\,
	datab => \ALT_INV_sravals[4][39]~144_combout\,
	datac => \ALT_INV_Output~29_combout\,
	datad => \ALT_INV_sravals[4][23]~143_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~30_combout\);

-- Location: MLABCELL_X59_Y9_N0
\sravals[4][24]~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][24]~146_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][32]~24_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sravals[2][36]~29_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sravals[2][32]~24_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][24]~55_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][28]~60_combout\)) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][32]~24_combout\ & ( (\sravals[2][36]~29_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ 
-- & ( !\sravals[2][32]~24_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][24]~55_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][28]~60_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][36]~29_combout\,
	datab => \ALT_INV_sravals[2][28]~60_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][24]~55_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][32]~24_combout\,
	combout => \sravals[4][24]~146_combout\);

-- Location: LABCELL_X60_Y9_N24
\Output~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~31_combout\ = ( \sravals[2][20]~50_combout\ & ( \sravals[2][8]~75_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][16]~45_combout\))) # (\ShiftCount[2]~input_o\ & (((\sravals[2][12]~80_combout\) # 
-- (\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( \sravals[2][8]~75_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][16]~45_combout\))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & 
-- \sravals[2][12]~80_combout\)))) ) ) ) # ( \sravals[2][20]~50_combout\ & ( !\sravals[2][8]~75_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][16]~45_combout\ & (\ShiftCount[3]~input_o\))) # (\ShiftCount[2]~input_o\ & (((\sravals[2][12]~80_combout\) # 
-- (\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( !\sravals[2][8]~75_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][16]~45_combout\ & (\ShiftCount[3]~input_o\))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & 
-- \sravals[2][12]~80_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][16]~45_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][12]~80_combout\,
	datae => \ALT_INV_sravals[2][20]~50_combout\,
	dataf => \ALT_INV_sravals[2][8]~75_combout\,
	combout => \Output~31_combout\);

-- Location: LABCELL_X56_Y9_N42
\sravals[4][56]~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][56]~148_combout\ = ( \sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][60]~18_combout\)))) # (\ShiftCount[3]~input_o\ & (\y2[63]~0_combout\)) ) ) # ( !\sravals[2][56]~14_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (((\sravals[2][60]~18_combout\ & \ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (\y2[63]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_sravals[2][60]~18_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][56]~14_combout\,
	combout => \sravals[4][56]~148_combout\);

-- Location: LABCELL_X62_Y5_N12
\sllvals[2][8]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][8]~17_combout\ = ( \sravals[0][7]~69_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][8]~71_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][5]~67_combout\))) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][8]~71_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][7]~69_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][5]~67_combout\))) ) ) ) # ( !\sravals[0][7]~69_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][5]~67_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][5]~67_combout\,
	datac => \ALT_INV_sravals[0][8]~71_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][7]~69_combout\,
	dataf => \ALT_INV_sravals[0][6]~68_combout\,
	combout => \sllvals[2][8]~17_combout\);

-- Location: LABCELL_X60_Y9_N48
\sllvals[4][8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][8]~18_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (\sllvals[2][4]~7_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\) # 
-- (\sllvals[2][0]~0_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (\sllvals[2][4]~7_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (\sllvals[2][0]~0_combout\ & 
-- \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101000011110011111100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][4]~7_combout\,
	datab => \ALT_INV_sllvals[2][0]~0_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][8]~17_combout\,
	combout => \sllvals[4][8]~18_combout\);

-- Location: LABCELL_X56_Y9_N18
\Output~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~32_combout\ = ( \ShiftFN[1]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\sravals[4][56]~148_combout\ & \ShiftCount[5]~input_o\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\Output~31_combout\ & !\ShiftCount[5]~input_o\) ) ) ) # 
-- ( !\ShiftFN[1]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \sllvals[4][8]~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100000101000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~31_combout\,
	datab => \ALT_INV_sravals[4][56]~148_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][8]~18_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~32_combout\);

-- Location: MLABCELL_X59_Y9_N6
\sravals[4][40]~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][40]~147_combout\ = ( \sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & (\sravals[2][48]~4_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][52]~9_combout\)))) ) ) ) # 
-- ( !\sravals[2][44]~39_combout\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][48]~4_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][52]~9_combout\))))) ) ) ) # ( \sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][48]~4_combout\)) 
-- # (\ShiftCount[2]~input_o\ & ((\sravals[2][52]~9_combout\))))) ) ) ) # ( !\sravals[2][44]~39_combout\ & ( !\sravals[2][40]~34_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][48]~4_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][52]~9_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][48]~4_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][52]~9_combout\,
	datae => \ALT_INV_sravals[2][44]~39_combout\,
	dataf => \ALT_INV_sravals[2][40]~34_combout\,
	combout => \sravals[4][40]~147_combout\);

-- Location: LABCELL_X56_Y9_N6
\Output~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~33_combout\ = ( \Output~27_combout\ & ( (((\sravals[4][24]~146_combout\ & \Output~26_combout\)) # (\sravals[4][40]~147_combout\)) # (\Output~32_combout\) ) ) # ( !\Output~27_combout\ & ( ((\sravals[4][24]~146_combout\ & \Output~26_combout\)) # 
-- (\Output~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][24]~146_combout\,
	datab => \ALT_INV_Output~26_combout\,
	datac => \ALT_INV_Output~32_combout\,
	datad => \ALT_INV_sravals[4][40]~147_combout\,
	dataf => \ALT_INV_Output~27_combout\,
	combout => \Output~33_combout\);

-- Location: LABCELL_X62_Y5_N48
\sllvals[2][9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][9]~19_combout\ = ( \sravals[0][9]~72_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][7]~69_combout\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][8]~71_combout\)))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( \sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][7]~69_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][8]~71_combout\)))) ) ) ) # ( \sravals[0][9]~72_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][7]~69_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ 
-- & !\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( !\sravals[0][6]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][7]~69_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][8]~71_combout\ & 
-- !\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][7]~69_combout\,
	datac => \ALT_INV_sravals[0][8]~71_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][9]~72_combout\,
	dataf => \ALT_INV_sravals[0][6]~68_combout\,
	combout => \sllvals[2][9]~19_combout\);

-- Location: LABCELL_X60_Y4_N0
\sllvals[4][9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][9]~20_combout\ = ( \sllvals[2][9]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sllvals[2][1]~9_combout\)))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][5]~10_combout\ & (!\ShiftCount[3]~input_o\))) ) ) # ( 
-- !\sllvals[2][9]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sllvals[2][1]~9_combout\)))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][5]~10_combout\ & (!\ShiftCount[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000100000001101010110000101110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][5]~10_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][1]~9_combout\,
	dataf => \ALT_INV_sllvals[2][9]~19_combout\,
	combout => \sllvals[4][9]~20_combout\);

-- Location: MLABCELL_X59_Y4_N48
\sravals[4][57]~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][57]~151_combout\ = ( \y2[63]~0_combout\ & ( ((!\ShiftCount[2]~input_o\ & ((\sravals[2][57]~83_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][61]~84_combout\))) # (\ShiftCount[3]~input_o\) ) ) # ( !\y2[63]~0_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sravals[2][57]~83_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][61]~84_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][61]~84_combout\,
	datad => \ALT_INV_sravals[2][57]~83_combout\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \sravals[4][57]~151_combout\);

-- Location: LABCELL_X63_Y4_N12
\Output~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~34_combout\ = ( \sravals[2][17]~91_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][13]~98_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][21]~92_combout\))) ) ) ) # ( !\sravals[2][17]~91_combout\ & ( 
-- \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][13]~98_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][21]~92_combout\))) ) ) ) # ( \sravals[2][17]~91_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\sravals[2][9]~97_combout\) # 
-- (\ShiftCount[3]~input_o\) ) ) ) # ( !\sravals[2][17]~91_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & \sravals[2][9]~97_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][13]~98_combout\,
	datac => \ALT_INV_sravals[2][9]~97_combout\,
	datad => \ALT_INV_sravals[2][21]~92_combout\,
	datae => \ALT_INV_sravals[2][17]~91_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \Output~34_combout\);

-- Location: LABCELL_X57_Y4_N42
\Output~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~35_combout\ = ( \ShiftFN[1]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\sravals[4][57]~151_combout\ & \ShiftCount[5]~input_o\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Output~34_combout\) ) ) ) # 
-- ( !\ShiftFN[1]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\sllvals[4][9]~20_combout\ & !\ShiftCount[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000001111000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][9]~20_combout\,
	datab => \ALT_INV_sravals[4][57]~151_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~34_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~35_combout\);

-- Location: LABCELL_X63_Y4_N6
\sravals[4][25]~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][25]~149_combout\ = ( \sravals[2][25]~93_combout\ & ( \sravals[2][33]~86_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sravals[2][29]~94_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][37]~87_combout\)))) ) ) ) 
-- # ( !\sravals[2][25]~93_combout\ & ( \sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & (\sravals[2][29]~94_combout\))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][37]~87_combout\)))) ) ) ) 
-- # ( \sravals[2][25]~93_combout\ & ( !\sravals[2][33]~86_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][29]~94_combout\)))) # (\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & ((\sravals[2][37]~87_combout\)))) ) ) 
-- ) # ( !\sravals[2][25]~93_combout\ & ( !\sravals[2][33]~86_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][29]~94_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][37]~87_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][29]~94_combout\,
	datad => \ALT_INV_sravals[2][37]~87_combout\,
	datae => \ALT_INV_sravals[2][25]~93_combout\,
	dataf => \ALT_INV_sravals[2][33]~86_combout\,
	combout => \sravals[4][25]~149_combout\);

-- Location: LABCELL_X61_Y4_N54
\sravals[4][41]~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][41]~150_combout\ = ( \sravals[2][53]~82_combout\ & ( \sravals[2][45]~89_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sravals[2][41]~88_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][49]~81_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # 
-- ( !\sravals[2][53]~82_combout\ & ( \sravals[2][45]~89_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sravals[2][41]~88_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][49]~81_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (!\ShiftCount[3]~input_o\)) ) ) ) # ( \sravals[2][53]~82_combout\ & ( !\sravals[2][45]~89_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sravals[2][41]~88_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][49]~81_combout\)))) 
-- # (\ShiftCount[2]~input_o\ & (\ShiftCount[3]~input_o\)) ) ) ) # ( !\sravals[2][53]~82_combout\ & ( !\sravals[2][45]~89_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sravals[2][41]~88_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][49]~81_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sravals[2][49]~81_combout\,
	datad => \ALT_INV_sravals[2][41]~88_combout\,
	datae => \ALT_INV_sravals[2][53]~82_combout\,
	dataf => \ALT_INV_sravals[2][45]~89_combout\,
	combout => \sravals[4][41]~150_combout\);

-- Location: LABCELL_X57_Y4_N51
\Output~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~36_combout\ = ( \sravals[4][41]~150_combout\ & ( (((\Output~26_combout\ & \sravals[4][25]~149_combout\)) # (\Output~35_combout\)) # (\Output~27_combout\) ) ) # ( !\sravals[4][41]~150_combout\ & ( ((\Output~26_combout\ & 
-- \sravals[4][25]~149_combout\)) # (\Output~35_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~27_combout\,
	datab => \ALT_INV_Output~26_combout\,
	datac => \ALT_INV_Output~35_combout\,
	datad => \ALT_INV_sravals[4][25]~149_combout\,
	dataf => \ALT_INV_sravals[4][41]~150_combout\,
	combout => \Output~36_combout\);

-- Location: LABCELL_X56_Y5_N42
\Output~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~37_combout\ = ( \sravals[2][14]~116_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][18]~109_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][22]~110_combout\)) ) ) ) # ( !\sravals[2][14]~116_combout\ & ( 
-- \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][18]~109_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][22]~110_combout\)) ) ) ) # ( \sravals[2][14]~116_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sravals[2][10]~115_combout\) # 
-- (\ShiftCount[2]~input_o\) ) ) ) # ( !\sravals[2][14]~116_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sravals[2][10]~115_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][22]~110_combout\,
	datab => \ALT_INV_sravals[2][18]~109_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][10]~115_combout\,
	datae => \ALT_INV_sravals[2][14]~116_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \Output~37_combout\);

-- Location: LABCELL_X62_Y5_N54
\sllvals[2][10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][10]~21_combout\ = ( \sravals[0][9]~72_combout\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # (\sravals[0][10]~73_combout\))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][7]~69_combout\)))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][10]~73_combout\ & (!\ShiftCount[0]~input_o\))) # (\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # 
-- (\sravals[0][7]~69_combout\)))) ) ) ) # ( \sravals[0][9]~72_combout\ & ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # (\sravals[0][10]~73_combout\))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\ & 
-- \sravals[0][7]~69_combout\)))) ) ) ) # ( !\sravals[0][9]~72_combout\ & ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][10]~73_combout\ & (!\ShiftCount[0]~input_o\))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\ & 
-- \sravals[0][7]~69_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][10]~73_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][7]~69_combout\,
	datae => \ALT_INV_sravals[0][9]~72_combout\,
	dataf => \ALT_INV_sravals[0][8]~71_combout\,
	combout => \sllvals[2][10]~21_combout\);

-- Location: LABCELL_X57_Y5_N39
\sllvals[4][10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][10]~22_combout\ = ( \sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][2]~12_combout\) ) ) ) # ( !\sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][2]~12_combout\) ) ) ) # ( \sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sllvals[2][10]~21_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][10]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sllvals[2][10]~21_combout\,
	datad => \ALT_INV_sllvals[2][2]~12_combout\,
	datae => \ALT_INV_sllvals[2][6]~13_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sllvals[4][10]~22_combout\);

-- Location: LABCELL_X57_Y5_N12
\sravals[4][58]~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][58]~154_combout\ = ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][62]~102_combout\)) # (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\))) ) ) # ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & 
-- (\sravals[2][58]~101_combout\)) # (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101111100110000001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][62]~102_combout\,
	datab => \ALT_INV_sravals[2][58]~101_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][58]~154_combout\);

-- Location: LABCELL_X57_Y4_N54
\Output~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~38_combout\ = ( \sravals[4][58]~154_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftCount[5]~input_o\ & \ShiftFN[1]~input_o\) ) ) ) # ( \sravals[4][58]~154_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftFN[1]~input_o\ & ((\sllvals[4][10]~22_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~37_combout\)))) ) ) ) # ( !\sravals[4][58]~154_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- ((\sllvals[4][10]~22_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~37_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~37_combout\,
	datab => \ALT_INV_sllvals[4][10]~22_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_sravals[4][58]~154_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~38_combout\);

-- Location: LABCELL_X56_Y5_N6
\sravals[4][26]~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][26]~152_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][38]~105_combout\ & ( (\ShiftCount[3]~input_o\) # (\sravals[2][30]~112_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sravals[2][38]~105_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- (\sravals[2][26]~111_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][34]~104_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][38]~105_combout\ & ( (\sravals[2][30]~112_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sravals[2][38]~105_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][26]~111_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][34]~104_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][26]~111_combout\,
	datab => \ALT_INV_sravals[2][30]~112_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][34]~104_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][38]~105_combout\,
	combout => \sravals[4][26]~152_combout\);

-- Location: LABCELL_X56_Y6_N24
\sravals[4][42]~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][42]~153_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][42]~106_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][50]~99_combout\))) # (\ShiftCount[2]~input_o\ & (\sravals[2][54]~100_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sravals[2][42]~106_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sravals[2][46]~107_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sravals[2][50]~99_combout\))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][54]~100_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sravals[2][42]~106_combout\ & ( (\sravals[2][46]~107_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][46]~107_combout\,
	datab => \ALT_INV_sravals[2][54]~100_combout\,
	datac => \ALT_INV_sravals[2][50]~99_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][42]~106_combout\,
	combout => \sravals[4][42]~153_combout\);

-- Location: LABCELL_X57_Y4_N48
\Output~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~39_combout\ = ( \sravals[4][42]~153_combout\ & ( (((\Output~26_combout\ & \sravals[4][26]~152_combout\)) # (\Output~38_combout\)) # (\Output~27_combout\) ) ) # ( !\sravals[4][42]~153_combout\ & ( ((\Output~26_combout\ & 
-- \sravals[4][26]~152_combout\)) # (\Output~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~27_combout\,
	datab => \ALT_INV_Output~26_combout\,
	datac => \ALT_INV_Output~38_combout\,
	datad => \ALT_INV_sravals[4][26]~152_combout\,
	dataf => \ALT_INV_sravals[4][42]~153_combout\,
	combout => \Output~39_combout\);

-- Location: LABCELL_X60_Y5_N0
\sllvals[2][11]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][11]~23_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][8]~71_combout\ & ( (\ShiftCount[1]~input_o\) # (\sravals[0][10]~73_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- (\sravals[0][11]~74_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][8]~71_combout\ & ( (\sravals[0][10]~73_combout\ & !\ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & 
-- ( !\sravals[0][8]~71_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_sravals[0][9]~72_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][8]~71_combout\,
	combout => \sllvals[2][11]~23_combout\);

-- Location: LABCELL_X61_Y6_N6
\sllvals[4][11]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][11]~24_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][7]~15_combout\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][3]~5_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][7]~15_combout\ & ( (\ShiftCount[2]~input_o\) # 
-- (\sllvals[2][11]~23_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][7]~15_combout\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][3]~5_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sllvals[2][7]~15_combout\ & ( (\sllvals[2][11]~23_combout\ 
-- & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000001111000000111111001111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[2][11]~23_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][3]~5_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][7]~15_combout\,
	combout => \sllvals[4][11]~24_combout\);

-- Location: LABCELL_X62_Y8_N30
\sravals[4][43]~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][43]~156_combout\ = ( \sravals[2][55]~118_combout\ & ( \sravals[2][43]~123_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][47]~124_combout\)))) # (\ShiftCount[3]~input_o\ & (((\sravals[2][51]~117_combout\)) 
-- # (\ShiftCount[2]~input_o\))) ) ) ) # ( !\sravals[2][55]~118_combout\ & ( \sravals[2][43]~123_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][47]~124_combout\)))) # (\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ 
-- & ((\sravals[2][51]~117_combout\)))) ) ) ) # ( \sravals[2][55]~118_combout\ & ( !\sravals[2][43]~123_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & (\sravals[2][47]~124_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (((\sravals[2][51]~117_combout\)) # (\ShiftCount[2]~input_o\))) ) ) ) # ( !\sravals[2][55]~118_combout\ & ( !\sravals[2][43]~123_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & (\sravals[2][47]~124_combout\))) # 
-- (\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & ((\sravals[2][51]~117_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][47]~124_combout\,
	datad => \ALT_INV_sravals[2][51]~117_combout\,
	datae => \ALT_INV_sravals[2][55]~118_combout\,
	dataf => \ALT_INV_sravals[2][43]~123_combout\,
	combout => \sravals[4][43]~156_combout\);

-- Location: LABCELL_X61_Y8_N6
\sravals[5][43]~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][43]~157_combout\ = ( \ShiftCount[4]~input_o\ & ( \sravals[4][43]~156_combout\ & ( (!\sllvals[4][4]~1_combout\ & ((\y2[63]~0_combout\))) # (\sllvals[4][4]~1_combout\ & (\sravals[2][59]~119_combout\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- \sravals[4][43]~156_combout\ ) ) # ( \ShiftCount[4]~input_o\ & ( !\sravals[4][43]~156_combout\ & ( (!\sllvals[4][4]~1_combout\ & ((\y2[63]~0_combout\))) # (\sllvals[4][4]~1_combout\ & (\sravals[2][59]~119_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111111111111111111110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][4]~1_combout\,
	datac => \ALT_INV_sravals[2][59]~119_combout\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sravals[4][43]~156_combout\,
	combout => \sravals[5][43]~157_combout\);

-- Location: LABCELL_X62_Y7_N42
\Output~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~41_combout\ = ( \sravals[2][11]~132_combout\ & ( \sravals[2][15]~133_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][23]~127_combout\)))) ) ) ) # ( 
-- !\sravals[2][11]~132_combout\ & ( \sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\ & (\ShiftCount[3]~input_o\))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sravals[2][23]~127_combout\)))) ) ) ) 
-- # ( \sravals[2][11]~132_combout\ & ( !\sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][19]~126_combout\))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sravals[2][23]~127_combout\)))) 
-- ) ) ) # ( !\sravals[2][11]~132_combout\ & ( !\sravals[2][15]~133_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][23]~127_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sravals[2][19]~126_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][23]~127_combout\,
	datae => \ALT_INV_sravals[2][11]~132_combout\,
	dataf => \ALT_INV_sravals[2][15]~133_combout\,
	combout => \Output~41_combout\);

-- Location: LABCELL_X62_Y7_N6
\sravals[4][27]~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][27]~155_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][39]~122_combout\ & ( (\ShiftCount[2]~input_o\) # (\sravals[2][35]~121_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][27]~128_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][31]~129_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][39]~122_combout\ & ( (\sravals[2][35]~121_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sravals[2][39]~122_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][27]~128_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][31]~129_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][27]~128_combout\,
	datab => \ALT_INV_sravals[2][35]~121_combout\,
	datac => \ALT_INV_sravals[2][31]~129_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][39]~122_combout\,
	combout => \sravals[4][27]~155_combout\);

-- Location: LABCELL_X61_Y8_N0
\Output~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~218_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][11]~24_combout\ & (!\ShiftCount[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Output~41_combout\)) # (\ShiftCount[4]~input_o\ & 
-- ((\sravals[4][27]~155_combout\)))))) ) ) # ( \ShiftCount[5]~input_o\ & ( ((\ShiftFN[1]~input_o\ & (\sravals[5][43]~157_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000001110000000000110000001101000011011100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][11]~24_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sravals[5][43]~157_combout\,
	datad => \ALT_INV_Output~41_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sravals[4][27]~155_combout\,
	datag => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~218_combout\);

-- Location: LABCELL_X60_Y5_N6
\sllvals[2][12]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][12]~25_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][9]~72_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][10]~73_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][11]~74_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][9]~72_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][10]~73_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_sravals[0][9]~72_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sllvals[2][12]~25_combout\);

-- Location: LABCELL_X60_Y9_N0
\sllvals[4][12]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][12]~26_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][0]~0_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][12]~25_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][4]~7_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (\ShiftCount[3]~input_o\ & \sllvals[2][0]~0_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- !\sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][12]~25_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][4]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][4]~7_combout\,
	datab => \ALT_INV_sllvals[2][12]~25_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][0]~0_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][8]~17_combout\,
	combout => \sllvals[4][12]~26_combout\);

-- Location: MLABCELL_X59_Y9_N18
\sravals[4][44]~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][44]~159_combout\ = ( \sravals[2][44]~39_combout\ & ( \sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][48]~4_combout\))) # (\ShiftCount[3]~input_o\ & (((\sravals[2][52]~9_combout\) # 
-- (\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sravals[2][44]~39_combout\ & ( \sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][48]~4_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\sravals[2][52]~9_combout\) # 
-- (\ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][44]~39_combout\ & ( !\sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][48]~4_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sravals[2][52]~9_combout\)))) ) ) ) # ( !\sravals[2][44]~39_combout\ & ( !\sravals[2][56]~14_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][48]~4_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sravals[2][52]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][48]~4_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sravals[2][52]~9_combout\,
	datae => \ALT_INV_sravals[2][44]~39_combout\,
	dataf => \ALT_INV_sravals[2][56]~14_combout\,
	combout => \sravals[4][44]~159_combout\);

-- Location: LABCELL_X56_Y9_N45
\sravals[5][44]~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][44]~160_combout\ = ( \ShiftCount[4]~input_o\ & ( (!\sllvals[4][4]~1_combout\ & (\y2[63]~0_combout\)) # (\sllvals[4][4]~1_combout\ & ((\sravals[2][60]~18_combout\))) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sravals[4][44]~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_sravals[2][60]~18_combout\,
	datac => \ALT_INV_sllvals[4][4]~1_combout\,
	datad => \ALT_INV_sravals[4][44]~159_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sravals[5][44]~160_combout\);

-- Location: MLABCELL_X59_Y9_N54
\Output~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~42_combout\ = ( \sravals[2][20]~50_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][16]~45_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][24]~55_combout\)) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( 
-- \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][16]~45_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][24]~55_combout\)) ) ) ) # ( \sravals[2][20]~50_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\sravals[2][12]~80_combout\) # 
-- (\ShiftCount[3]~input_o\) ) ) ) # ( !\sravals[2][20]~50_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & \sravals[2][12]~80_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][24]~55_combout\,
	datac => \ALT_INV_sravals[2][12]~80_combout\,
	datad => \ALT_INV_sravals[2][16]~45_combout\,
	datae => \ALT_INV_sravals[2][20]~50_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \Output~42_combout\);

-- Location: MLABCELL_X59_Y9_N42
\sravals[4][28]~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][28]~158_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][40]~34_combout\ & ( (\ShiftCount[2]~input_o\) # (\sravals[2][36]~29_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sravals[2][40]~34_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][28]~60_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][32]~24_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][40]~34_combout\ & ( (\sravals[2][36]~29_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ 
-- & ( !\sravals[2][40]~34_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][28]~60_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][32]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][36]~29_combout\,
	datab => \ALT_INV_sravals[2][28]~60_combout\,
	datac => \ALT_INV_sravals[2][32]~24_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][40]~34_combout\,
	combout => \sravals[4][28]~158_combout\);

-- Location: LABCELL_X61_Y9_N0
\Output~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~214_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][12]~26_combout\ & (!\ShiftCount[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Output~42_combout\)) # (\ShiftCount[4]~input_o\ & 
-- ((\sravals[4][28]~158_combout\)))))) ) ) # ( \ShiftCount[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & (((\sravals[5][44]~160_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000001110000000001010000010100100101011101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sllvals[4][12]~26_combout\,
	datac => \ALT_INV_sravals[5][44]~160_combout\,
	datad => \ALT_INV_Output~42_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sravals[4][28]~158_combout\,
	datag => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~214_combout\);

-- Location: LABCELL_X60_Y5_N42
\sllvals[2][13]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][13]~27_combout\ = ( \sravals[0][13]~77_combout\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\sravals[0][11]~74_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\))) ) ) ) # 
-- ( !\sravals[0][13]~77_combout\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][11]~74_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][10]~73_combout\)))) ) ) ) # ( \sravals[0][13]~77_combout\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][11]~74_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\)))) ) ) ) # ( !\sravals[0][13]~77_combout\ & ( !\sravals[0][12]~76_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][11]~74_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][10]~73_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][10]~73_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][13]~77_combout\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sllvals[2][13]~27_combout\);

-- Location: LABCELL_X60_Y4_N6
\sllvals[4][13]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][13]~28_combout\ = ( \sllvals[2][1]~9_combout\ & ( \sllvals[2][9]~19_combout\ & ( ((!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][5]~10_combout\)))) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\sllvals[2][1]~9_combout\ & ( \sllvals[2][9]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][5]~10_combout\))))) # (\ShiftCount[2]~input_o\ & 
-- (((!\ShiftCount[3]~input_o\)))) ) ) ) # ( \sllvals[2][1]~9_combout\ & ( !\sllvals[2][9]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][5]~10_combout\))))) 
-- # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sllvals[2][1]~9_combout\ & ( !\sllvals[2][9]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][5]~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][13]~27_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][5]~10_combout\,
	datae => \ALT_INV_sllvals[2][1]~9_combout\,
	dataf => \ALT_INV_sllvals[2][9]~19_combout\,
	combout => \sllvals[4][13]~28_combout\);

-- Location: LABCELL_X63_Y4_N18
\sravals[4][29]~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][29]~161_combout\ = ( \sravals[2][29]~94_combout\ & ( \sravals[2][37]~87_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sravals[2][33]~86_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][41]~88_combout\))) ) ) ) 
-- # ( !\sravals[2][29]~94_combout\ & ( \sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][33]~86_combout\ & \ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sravals[2][41]~88_combout\))) ) ) 
-- ) # ( \sravals[2][29]~94_combout\ & ( !\sravals[2][37]~87_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][33]~86_combout\)))) # (\ShiftCount[3]~input_o\ & (\sravals[2][41]~88_combout\ & ((\ShiftCount[2]~input_o\)))) ) 
-- ) ) # ( !\sravals[2][29]~94_combout\ & ( !\sravals[2][37]~87_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sravals[2][33]~86_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][41]~88_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sravals[2][41]~88_combout\,
	datac => \ALT_INV_sravals[2][33]~86_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][29]~94_combout\,
	dataf => \ALT_INV_sravals[2][37]~87_combout\,
	combout => \sravals[4][29]~161_combout\);

-- Location: LABCELL_X61_Y4_N0
\sravals[4][45]~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][45]~162_combout\ = ( \sravals[2][57]~83_combout\ & ( \sravals[2][45]~89_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][49]~81_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # 
-- (\sravals[2][53]~82_combout\))) ) ) ) # ( !\sravals[2][57]~83_combout\ & ( \sravals[2][45]~89_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sravals[2][49]~81_combout\)))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][53]~82_combout\ & ((!\ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][57]~83_combout\ & ( !\sravals[2][45]~89_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][49]~81_combout\ & \ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & 
-- (((\ShiftCount[2]~input_o\)) # (\sravals[2][53]~82_combout\))) ) ) ) # ( !\sravals[2][57]~83_combout\ & ( !\sravals[2][45]~89_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sravals[2][49]~81_combout\ & \ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ 
-- & (\sravals[2][53]~82_combout\ & ((!\ShiftCount[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][53]~82_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sravals[2][49]~81_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][57]~83_combout\,
	dataf => \ALT_INV_sravals[2][45]~89_combout\,
	combout => \sravals[4][45]~162_combout\);

-- Location: MLABCELL_X59_Y4_N24
\sravals[5][45]~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][45]~163_combout\ = ( \y2[63]~0_combout\ & ( (!\ShiftCount[4]~input_o\ & (((\sravals[4][45]~162_combout\)))) # (\ShiftCount[4]~input_o\ & ((!\sllvals[4][4]~1_combout\) # ((\sravals[2][61]~84_combout\)))) ) ) # ( !\y2[63]~0_combout\ & ( 
-- (!\ShiftCount[4]~input_o\ & (((\sravals[4][45]~162_combout\)))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][4]~1_combout\ & ((\sravals[2][61]~84_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011101011110011001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][4]~1_combout\,
	datab => \ALT_INV_sravals[4][45]~162_combout\,
	datac => \ALT_INV_sravals[2][61]~84_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \sravals[5][45]~163_combout\);

-- Location: LABCELL_X63_Y4_N54
\Output~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~43_combout\ = ( \sravals[2][21]~92_combout\ & ( \sravals[2][13]~98_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sravals[2][17]~91_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][25]~93_combout\)))) ) ) ) # ( 
-- !\sravals[2][21]~92_combout\ & ( \sravals[2][13]~98_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][17]~91_combout\)))) # (\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & ((\sravals[2][25]~93_combout\)))) ) ) ) # 
-- ( \sravals[2][21]~92_combout\ & ( !\sravals[2][13]~98_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & (\sravals[2][17]~91_combout\))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sravals[2][25]~93_combout\)))) ) ) ) # 
-- ( !\sravals[2][21]~92_combout\ & ( !\sravals[2][13]~98_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sravals[2][17]~91_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][25]~93_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][17]~91_combout\,
	datad => \ALT_INV_sravals[2][25]~93_combout\,
	datae => \ALT_INV_sravals[2][21]~92_combout\,
	dataf => \ALT_INV_sravals[2][13]~98_combout\,
	combout => \Output~43_combout\);

-- Location: MLABCELL_X59_Y4_N42
\Output~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~210_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftFN[1]~input_o\ & (\sllvals[4][13]~28_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~43_combout\)))))) # (\ShiftCount[4]~input_o\ & (((\sravals[4][29]~161_combout\ 
-- & (\ShiftFN[1]~input_o\))))) ) ) # ( \ShiftCount[5]~input_o\ & ( (((\sravals[5][45]~163_combout\ & (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000000000011000000000000111101010000111100110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][13]~28_combout\,
	datab => \ALT_INV_sravals[4][29]~161_combout\,
	datac => \ALT_INV_sravals[5][45]~163_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Output~43_combout\,
	datag => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~210_combout\);

-- Location: LABCELL_X60_Y5_N18
\sllvals[2][14]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][14]~29_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][11]~74_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][12]~76_combout\ & ( (\ShiftCount[1]~input_o\) # (\sravals[0][14]~78_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][11]~74_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][14]~78_combout\ & !\ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][13]~77_combout\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_sravals[0][11]~74_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sllvals[2][14]~29_combout\);

-- Location: LABCELL_X57_Y5_N18
\sllvals[4][14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][14]~30_combout\ = ( \sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sllvals[2][2]~12_combout\) ) ) ) # ( !\sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sllvals[2][2]~12_combout\ & 
-- \ShiftCount[2]~input_o\) ) ) ) # ( \sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][14]~29_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][10]~21_combout\))) ) ) ) # ( !\sllvals[2][6]~13_combout\ & 
-- ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][14]~29_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][10]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][2]~12_combout\,
	datab => \ALT_INV_sllvals[2][14]~29_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][10]~21_combout\,
	datae => \ALT_INV_sllvals[2][6]~13_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sllvals[4][14]~30_combout\);

-- Location: LABCELL_X56_Y6_N30
\sravals[4][46]~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][46]~165_combout\ = ( \ShiftCount[3]~input_o\ & ( \sravals[2][58]~101_combout\ & ( (\ShiftCount[2]~input_o\) # (\sravals[2][54]~100_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sravals[2][58]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][46]~107_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][50]~99_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sravals[2][58]~101_combout\ & ( (\sravals[2][54]~100_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sravals[2][58]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][46]~107_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][50]~99_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][46]~107_combout\,
	datab => \ALT_INV_sravals[2][54]~100_combout\,
	datac => \ALT_INV_sravals[2][50]~99_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sravals[2][58]~101_combout\,
	combout => \sravals[4][46]~165_combout\);

-- Location: LABCELL_X56_Y6_N36
\sravals[5][46]~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][46]~166_combout\ = ( \y2[63]~0_combout\ & ( (!\ShiftCount[4]~input_o\ & (((\sravals[4][46]~165_combout\)))) # (\ShiftCount[4]~input_o\ & (((!\sllvals[4][4]~1_combout\)) # (\sravals[2][62]~102_combout\))) ) ) # ( !\y2[63]~0_combout\ & ( 
-- (!\ShiftCount[4]~input_o\ & (((\sravals[4][46]~165_combout\)))) # (\ShiftCount[4]~input_o\ & (\sravals[2][62]~102_combout\ & ((\sllvals[4][4]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][62]~102_combout\,
	datab => \ALT_INV_sravals[4][46]~165_combout\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_sllvals[4][4]~1_combout\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \sravals[5][46]~166_combout\);

-- Location: LABCELL_X56_Y5_N24
\Output~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~44_combout\ = ( \sravals[2][14]~116_combout\ & ( \sravals[2][26]~111_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][22]~110_combout\))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # 
-- (\sravals[2][18]~109_combout\)))) ) ) ) # ( !\sravals[2][14]~116_combout\ & ( \sravals[2][26]~111_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][22]~110_combout\ & ((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & 
-- (((\ShiftCount[3]~input_o\) # (\sravals[2][18]~109_combout\)))) ) ) ) # ( \sravals[2][14]~116_combout\ & ( !\sravals[2][26]~111_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sravals[2][22]~110_combout\))) # 
-- (\ShiftCount[2]~input_o\ & (((\sravals[2][18]~109_combout\ & !\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sravals[2][14]~116_combout\ & ( !\sravals[2][26]~111_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sravals[2][22]~110_combout\ & 
-- ((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((\sravals[2][18]~109_combout\ & !\ShiftCount[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][22]~110_combout\,
	datab => \ALT_INV_sravals[2][18]~109_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sravals[2][14]~116_combout\,
	dataf => \ALT_INV_sravals[2][26]~111_combout\,
	combout => \Output~44_combout\);

-- Location: LABCELL_X56_Y5_N18
\sravals[4][30]~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][30]~164_combout\ = ( \ShiftCount[2]~input_o\ & ( \sravals[2][38]~105_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][34]~104_combout\))) # (\ShiftCount[3]~input_o\ & (\sravals[2][42]~106_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sravals[2][38]~105_combout\ & ( (\ShiftCount[3]~input_o\) # (\sravals[2][30]~112_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sravals[2][38]~105_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sravals[2][34]~104_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sravals[2][42]~106_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sravals[2][38]~105_combout\ & ( (\sravals[2][30]~112_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][42]~106_combout\,
	datab => \ALT_INV_sravals[2][30]~112_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][34]~104_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sravals[2][38]~105_combout\,
	combout => \sravals[4][30]~164_combout\);

-- Location: LABCELL_X56_Y6_N0
\Output~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~206_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][14]~30_combout\ & (!\ShiftCount[4]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Output~44_combout\)) # (\ShiftCount[4]~input_o\ & 
-- ((\sravals[4][30]~164_combout\)))))) ) ) # ( \ShiftCount[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & (((\sravals[5][46]~166_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000001110000000001010000010100100101011101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sllvals[4][14]~30_combout\,
	datac => \ALT_INV_sravals[5][46]~166_combout\,
	datad => \ALT_INV_Output~44_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sravals[4][30]~164_combout\,
	datag => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~206_combout\);

-- Location: LABCELL_X62_Y6_N18
\sravals[4][47]~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][47]~167_combout\ = ( \sravals[2][51]~117_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # (\sravals[2][59]~119_combout\) ) ) ) # ( !\sravals[2][51]~117_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sravals[2][59]~119_combout\ 
-- & \ShiftCount[3]~input_o\) ) ) ) # ( \sravals[2][51]~117_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][47]~124_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][55]~118_combout\))) ) ) ) # ( 
-- !\sravals[2][51]~117_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][47]~124_combout\)) # (\ShiftCount[3]~input_o\ & ((\sravals[2][55]~118_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][59]~119_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sravals[2][47]~124_combout\,
	datad => \ALT_INV_sravals[2][55]~118_combout\,
	datae => \ALT_INV_sravals[2][51]~117_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sravals[4][47]~167_combout\);

-- Location: LABCELL_X60_Y5_N54
\sllvals[2][15]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][15]~31_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (\ShiftCount[1]~input_o\) # (\sravals[0][14]~78_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][15]~79_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][12]~76_combout\ & ( (\sravals[0][14]~78_combout\ & !\ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ 
-- & ( !\sravals[0][12]~76_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][15]~79_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][13]~77_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][14]~78_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][13]~77_combout\,
	datad => \ALT_INV_sravals[0][15]~79_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][12]~76_combout\,
	combout => \sllvals[2][15]~31_combout\);

-- Location: LABCELL_X61_Y6_N12
\sllvals[4][15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][15]~32_combout\ = ( \sllvals[2][3]~5_combout\ & ( \sllvals[2][7]~15_combout\ & ( ((!\ShiftCount[2]~input_o\ & (\sllvals[2][15]~31_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][11]~23_combout\)))) # (\ShiftCount[3]~input_o\) ) ) ) # ( 
-- !\sllvals[2][3]~5_combout\ & ( \sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sllvals[2][15]~31_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][11]~23_combout\))))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[2]~input_o\)))) ) ) ) # ( \sllvals[2][3]~5_combout\ & ( !\sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sllvals[2][15]~31_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][11]~23_combout\))))) 
-- # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sllvals[2][3]~5_combout\ & ( !\sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sllvals[2][15]~31_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][11]~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][15]~31_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][11]~23_combout\,
	datae => \ALT_INV_sllvals[2][3]~5_combout\,
	dataf => \ALT_INV_sllvals[2][7]~15_combout\,
	combout => \sllvals[4][15]~32_combout\);

-- Location: LABCELL_X62_Y7_N24
\Output~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~45_combout\ = ( \sravals[2][27]~128_combout\ & ( \sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sravals[2][23]~127_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)) # 
-- (\sravals[2][19]~126_combout\))) ) ) ) # ( !\sravals[2][27]~128_combout\ & ( \sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sravals[2][23]~127_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (\sravals[2][19]~126_combout\ & (!\ShiftCount[3]~input_o\))) ) ) ) # ( \sravals[2][27]~128_combout\ & ( !\sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sravals[2][23]~127_combout\)))) # (\ShiftCount[2]~input_o\ 
-- & (((\ShiftCount[3]~input_o\)) # (\sravals[2][19]~126_combout\))) ) ) ) # ( !\sravals[2][27]~128_combout\ & ( !\sravals[2][15]~133_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sravals[2][23]~127_combout\)))) # 
-- (\ShiftCount[2]~input_o\ & (\sravals[2][19]~126_combout\ & (!\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sravals[2][19]~126_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sravals[2][23]~127_combout\,
	datae => \ALT_INV_sravals[2][27]~128_combout\,
	dataf => \ALT_INV_sravals[2][15]~133_combout\,
	combout => \Output~45_combout\);

-- Location: LABCELL_X62_Y7_N48
\sravals[4][31]~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[4][31]~168_combout\ = ( \sravals[2][43]~123_combout\ & ( \sravals[2][39]~122_combout\ & ( ((!\ShiftCount[2]~input_o\ & (\sravals[2][31]~129_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][35]~121_combout\)))) # (\ShiftCount[3]~input_o\) ) ) 
-- ) # ( !\sravals[2][43]~123_combout\ & ( \sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][31]~129_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][35]~121_combout\))))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[2]~input_o\)))) ) ) ) # ( \sravals[2][43]~123_combout\ & ( !\sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][31]~129_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sravals[2][35]~121_combout\))))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sravals[2][43]~123_combout\ & ( !\sravals[2][39]~122_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & 
-- (\sravals[2][31]~129_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][35]~121_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][31]~129_combout\,
	datab => \ALT_INV_sravals[2][35]~121_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sravals[2][43]~123_combout\,
	dataf => \ALT_INV_sravals[2][39]~122_combout\,
	combout => \sravals[4][31]~168_combout\);

-- Location: LABCELL_X62_Y6_N54
\Output~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~46_combout\ = ( \sravals[4][31]~168_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & !\ShiftCount[5]~input_o\) ) ) ) # ( \sravals[4][31]~168_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftFN[1]~input_o\ & (\sllvals[4][15]~32_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~45_combout\))))) ) ) ) # ( !\sravals[4][31]~168_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & 
-- (\sllvals[4][15]~32_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~45_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][15]~32_combout\,
	datab => \ALT_INV_Output~45_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sravals[4][31]~168_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~46_combout\);

-- Location: LABCELL_X62_Y6_N15
\Output~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~40_combout\ = ( \ShiftFN[1]~input_o\ & ( \ShiftCount[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~40_combout\);

-- Location: LABCELL_X62_Y6_N33
\Output~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~47_combout\ = ( \Output~40_combout\ & ( ((!\ShiftCount[4]~input_o\ & (\sravals[4][47]~167_combout\)) # (\ShiftCount[4]~input_o\ & ((\y2[63]~0_combout\)))) # (\Output~46_combout\) ) ) # ( !\Output~40_combout\ & ( \Output~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111111111110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][47]~167_combout\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_Output~46_combout\,
	dataf => \ALT_INV_Output~40_combout\,
	combout => \Output~47_combout\);

-- Location: MLABCELL_X59_Y5_N0
\sllvals[2][16]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][16]~33_combout\ = ( \sravals[0][16]~41_combout\ & ( \sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][15]~79_combout\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][14]~78_combout\))) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( \sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\ & \sravals[0][15]~79_combout\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][14]~78_combout\))) ) ) ) # ( \sravals[0][16]~41_combout\ & ( !\sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][15]~79_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][14]~78_combout\ & (!\ShiftCount[0]~input_o\))) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( !\sravals[0][13]~77_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\ & \sravals[0][15]~79_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][14]~78_combout\ & (!\ShiftCount[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][15]~79_combout\,
	datae => \ALT_INV_sravals[0][16]~41_combout\,
	dataf => \ALT_INV_sravals[0][13]~77_combout\,
	combout => \sllvals[2][16]~33_combout\);

-- Location: LABCELL_X60_Y9_N36
\sllvals[4][16]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][16]~34_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][12]~25_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][4]~7_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][8]~17_combout\ & ( (\ShiftCount[3]~input_o\) # (\sllvals[2][16]~33_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][12]~25_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][4]~7_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (\sllvals[2][16]~33_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][4]~7_combout\,
	datab => \ALT_INV_sllvals[2][16]~33_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][12]~25_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][8]~17_combout\,
	combout => \sllvals[4][16]~34_combout\);

-- Location: LABCELL_X62_Y8_N9
\Output~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~49_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~49_combout\);

-- Location: LABCELL_X62_Y9_N42
\Output~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~50_combout\ = ( \sllvals[4][0]~2_combout\ & ( ((\sravals[4][32]~40_combout\ & \Output~26_combout\)) # (\Output~49_combout\) ) ) # ( !\sllvals[4][0]~2_combout\ & ( (\sravals[4][32]~40_combout\ & \Output~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][32]~40_combout\,
	datac => \ALT_INV_Output~49_combout\,
	datad => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_sllvals[4][0]~2_combout\,
	combout => \Output~50_combout\);

-- Location: MLABCELL_X59_Y4_N33
\Output~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~48_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ShiftCount[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~48_combout\);

-- Location: LABCELL_X62_Y9_N48
\Output~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~51_combout\ = ( \sravals[4][16]~61_combout\ & ( \sravals[4][48]~19_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][16]~61_combout\ & ( 
-- \sravals[4][48]~19_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][16]~61_combout\ & ( !\sravals[4][48]~19_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\))) # (\ShiftCount[4]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][16]~61_combout\ & ( !\sravals[4][48]~19_combout\ & ( (\y2[63]~0_combout\ & 
-- (\ShiftFN[1]~input_o\ & (\ShiftCount[4]~input_o\ & \ShiftCount[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100000000000100000000001100010011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sravals[4][16]~61_combout\,
	dataf => \ALT_INV_sravals[4][48]~19_combout\,
	combout => \Output~51_combout\);

-- Location: LABCELL_X62_Y9_N27
\Output~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~52_combout\ = ( \Output~51_combout\ ) # ( !\Output~51_combout\ & ( ((\sllvals[4][16]~34_combout\ & \Output~48_combout\)) # (\Output~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][16]~34_combout\,
	datac => \ALT_INV_Output~50_combout\,
	datad => \ALT_INV_Output~48_combout\,
	dataf => \ALT_INV_Output~51_combout\,
	combout => \Output~52_combout\);

-- Location: MLABCELL_X59_Y5_N6
\sllvals[2][17]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][17]~35_combout\ = ( \sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][14]~78_combout\) ) ) ) # ( !\sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][14]~78_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][16]~41_combout\)) ) ) ) # ( !\sravals[0][15]~79_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][16]~41_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][16]~41_combout\,
	datab => \ALT_INV_sravals[0][14]~78_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][17]~42_combout\,
	datae => \ALT_INV_sravals[0][15]~79_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][17]~35_combout\);

-- Location: LABCELL_X60_Y4_N42
\sllvals[4][17]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][17]~36_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][9]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][5]~10_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][9]~19_combout\ & ( (\ShiftCount[3]~input_o\) # (\sllvals[2][17]~35_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][9]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][13]~27_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][5]~10_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][9]~19_combout\ & ( (\sllvals[2][17]~35_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][17]~35_combout\,
	datab => \ALT_INV_sllvals[2][13]~27_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][5]~10_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][9]~19_combout\,
	combout => \sllvals[4][17]~36_combout\);

-- Location: LABCELL_X61_Y4_N12
\Output~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~53_combout\ = ( \Output~26_combout\ & ( ((\sllvals[4][1]~3_combout\ & \Output~49_combout\)) # (\sravals[4][33]~90_combout\) ) ) # ( !\Output~26_combout\ & ( (\sllvals[4][1]~3_combout\ & \Output~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][33]~90_combout\,
	datac => \ALT_INV_sllvals[4][1]~3_combout\,
	datad => \ALT_INV_Output~49_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~53_combout\);

-- Location: LABCELL_X62_Y6_N39
\Output~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~54_combout\ = ( \sravals[4][17]~95_combout\ & ( \sravals[4][49]~85_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][17]~95_combout\ & ( 
-- \sravals[4][49]~85_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][17]~95_combout\ & ( !\sravals[4][49]~85_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\))) # (\ShiftCount[4]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][17]~95_combout\ & ( !\sravals[4][49]~85_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- (\y2[63]~0_combout\ & (\ShiftCount[4]~input_o\ & \ShiftCount[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010100000000000100000000010100010101000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sravals[4][17]~95_combout\,
	dataf => \ALT_INV_sravals[4][49]~85_combout\,
	combout => \Output~54_combout\);

-- Location: LABCELL_X61_Y4_N9
\Output~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~55_combout\ = ( \Output~54_combout\ ) # ( !\Output~54_combout\ & ( ((\sllvals[4][17]~36_combout\ & \Output~48_combout\)) # (\Output~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][17]~36_combout\,
	datac => \ALT_INV_Output~53_combout\,
	datad => \ALT_INV_Output~48_combout\,
	dataf => \ALT_INV_Output~54_combout\,
	combout => \Output~55_combout\);

-- Location: MLABCELL_X59_Y5_N42
\sllvals[2][18]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][18]~37_combout\ = ( \sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][16]~41_combout\) ) ) ) # ( !\sravals[0][15]~79_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][16]~41_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][17]~42_combout\)) ) ) ) # ( 
-- !\sravals[0][15]~79_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][17]~42_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][16]~41_combout\,
	datab => \ALT_INV_sravals[0][17]~42_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][18]~43_combout\,
	datae => \ALT_INV_sravals[0][15]~79_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][18]~37_combout\);

-- Location: LABCELL_X57_Y5_N54
\sllvals[4][18]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][18]~38_combout\ = ( \sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sllvals[2][10]~21_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sllvals[2][6]~13_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][10]~21_combout\) ) ) ) # ( \sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][18]~37_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][14]~29_combout\))) ) ) ) # ( 
-- !\sllvals[2][6]~13_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][18]~37_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][14]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][18]~37_combout\,
	datab => \ALT_INV_sllvals[2][14]~29_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][10]~21_combout\,
	datae => \ALT_INV_sllvals[2][6]~13_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sllvals[4][18]~38_combout\);

-- Location: LABCELL_X55_Y5_N6
\Output~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~56_combout\ = ( \Output~49_combout\ & ( ((\sravals[4][34]~108_combout\ & \Output~26_combout\)) # (\sllvals[4][2]~4_combout\) ) ) # ( !\Output~49_combout\ & ( (\sravals[4][34]~108_combout\ & \Output~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][34]~108_combout\,
	datac => \ALT_INV_sllvals[4][2]~4_combout\,
	datad => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~56_combout\);

-- Location: LABCELL_X55_Y5_N24
\Output~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~57_combout\ = ( \sravals[4][18]~113_combout\ & ( \sravals[4][50]~103_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\ShiftCount[5]~input_o\ & \y2[63]~0_combout\)))) ) ) ) # ( !\sravals[4][18]~113_combout\ & ( 
-- \sravals[4][50]~103_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][18]~113_combout\ & ( !\sravals[4][50]~103_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\))) # (\ShiftCount[5]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[4]~input_o\)))) ) ) ) # ( !\sravals[4][18]~113_combout\ & ( !\sravals[4][50]~103_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- (\ShiftCount[5]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010001000000000100010001000000010101010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sravals[4][18]~113_combout\,
	dataf => \ALT_INV_sravals[4][50]~103_combout\,
	combout => \Output~57_combout\);

-- Location: LABCELL_X55_Y5_N3
\Output~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~58_combout\ = ( \Output~57_combout\ ) # ( !\Output~57_combout\ & ( ((\sllvals[4][18]~38_combout\ & \Output~48_combout\)) # (\Output~56_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][18]~38_combout\,
	datac => \ALT_INV_Output~56_combout\,
	datad => \ALT_INV_Output~48_combout\,
	dataf => \ALT_INV_Output~57_combout\,
	combout => \Output~58_combout\);

-- Location: MLABCELL_X59_Y5_N18
\sllvals[2][19]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][19]~39_combout\ = ( \sravals[0][16]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][17]~42_combout\) ) ) ) # ( !\sravals[0][16]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][17]~42_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][16]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][19]~44_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) ) ) ) # ( 
-- !\sravals[0][16]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][19]~44_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][18]~43_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][19]~44_combout\,
	datab => \ALT_INV_sravals[0][17]~42_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][18]~43_combout\,
	datae => \ALT_INV_sravals[0][16]~41_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][19]~39_combout\);

-- Location: LABCELL_X61_Y6_N18
\sllvals[4][19]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][19]~40_combout\ = ( \sllvals[2][11]~23_combout\ & ( \sllvals[2][7]~15_combout\ & ( ((!\ShiftCount[2]~input_o\ & (\sllvals[2][19]~39_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][15]~31_combout\)))) # (\ShiftCount[3]~input_o\) ) ) ) # ( 
-- !\sllvals[2][11]~23_combout\ & ( \sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sllvals[2][19]~39_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][15]~31_combout\))))) # (\ShiftCount[3]~input_o\ & 
-- (((\ShiftCount[2]~input_o\)))) ) ) ) # ( \sllvals[2][11]~23_combout\ & ( !\sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sllvals[2][19]~39_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][15]~31_combout\))))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sllvals[2][11]~23_combout\ & ( !\sllvals[2][7]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & 
-- (\sllvals[2][19]~39_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][15]~31_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][19]~39_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][15]~31_combout\,
	datae => \ALT_INV_sllvals[2][11]~23_combout\,
	dataf => \ALT_INV_sllvals[2][7]~15_combout\,
	combout => \sllvals[4][19]~40_combout\);

-- Location: LABCELL_X62_Y6_N36
\Output~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~60_combout\ = ( \sravals[4][19]~130_combout\ & ( \sravals[4][51]~120_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][19]~130_combout\ & ( 
-- \sravals[4][51]~120_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][19]~130_combout\ & ( !\sravals[4][51]~120_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\))) # (\ShiftCount[5]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[4]~input_o\)))) ) ) ) # ( !\sravals[4][19]~130_combout\ & ( !\sravals[4][51]~120_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- (\y2[63]~0_combout\ & (\ShiftCount[5]~input_o\ & \ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010100000000000100000101000000010101010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sravals[4][19]~130_combout\,
	dataf => \ALT_INV_sravals[4][51]~120_combout\,
	combout => \Output~60_combout\);

-- Location: LABCELL_X62_Y4_N0
\Output~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~59_combout\ = ( \Output~49_combout\ & ( ((\sravals[4][35]~125_combout\ & \Output~26_combout\)) # (\sllvals[4][3]~6_combout\) ) ) # ( !\Output~49_combout\ & ( (\sravals[4][35]~125_combout\ & \Output~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][35]~125_combout\,
	datac => \ALT_INV_sllvals[4][3]~6_combout\,
	datad => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~59_combout\);

-- Location: LABCELL_X62_Y4_N21
\Output~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~61_combout\ = ( \Output~59_combout\ ) # ( !\Output~59_combout\ & ( ((\sllvals[4][19]~40_combout\ & \Output~48_combout\)) # (\Output~60_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][19]~40_combout\,
	datac => \ALT_INV_Output~48_combout\,
	datad => \ALT_INV_Output~60_combout\,
	dataf => \ALT_INV_Output~59_combout\,
	combout => \Output~61_combout\);

-- Location: MLABCELL_X59_Y5_N24
\sllvals[2][20]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][20]~41_combout\ = ( \sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) ) ) ) # ( !\sravals[0][19]~44_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][17]~42_combout\))) ) ) ) # ( \sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][20]~46_combout\) ) ) ) # ( !\sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][20]~46_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][20]~46_combout\,
	datab => \ALT_INV_sravals[0][18]~43_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][17]~42_combout\,
	datae => \ALT_INV_sravals[0][19]~44_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][20]~41_combout\);

-- Location: LABCELL_X60_Y9_N42
\sllvals[4][20]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][20]~42_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (\ShiftCount[3]~input_o\) # (\sllvals[2][16]~33_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][20]~41_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][12]~25_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][8]~17_combout\ & ( (\sllvals[2][16]~33_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ 
-- & ( !\sllvals[2][8]~17_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][20]~41_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][12]~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][20]~41_combout\,
	datab => \ALT_INV_sllvals[2][16]~33_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][12]~25_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][8]~17_combout\,
	combout => \sllvals[4][20]~42_combout\);

-- Location: LABCELL_X61_Y9_N27
\Output~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~62_combout\ = ( \Output~26_combout\ & ( ((\sllvals[4][4]~8_combout\ & \Output~49_combout\)) # (\sravals[4][36]~135_combout\) ) ) # ( !\Output~26_combout\ & ( (\sllvals[4][4]~8_combout\ & \Output~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][36]~135_combout\,
	datac => \ALT_INV_sllvals[4][4]~8_combout\,
	datad => \ALT_INV_Output~49_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~62_combout\);

-- Location: LABCELL_X62_Y9_N51
\Output~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~63_combout\ = ( \sravals[4][20]~136_combout\ & ( \sravals[4][52]~134_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sravals[4][20]~136_combout\ & ( 
-- \sravals[4][52]~134_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][20]~136_combout\ & ( !\sravals[4][52]~134_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\))) # (\ShiftCount[5]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[4]~input_o\)))) ) ) ) # ( !\sravals[4][20]~136_combout\ & ( !\sravals[4][52]~134_combout\ & ( (\y2[63]~0_combout\ & 
-- (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & \ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100000000000100000011000000010011001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sravals[4][20]~136_combout\,
	dataf => \ALT_INV_sravals[4][52]~134_combout\,
	combout => \Output~63_combout\);

-- Location: LABCELL_X61_Y9_N24
\Output~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~64_combout\ = ( \Output~63_combout\ ) # ( !\Output~63_combout\ & ( ((\Output~48_combout\ & \sllvals[4][20]~42_combout\)) # (\Output~62_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~48_combout\,
	datac => \ALT_INV_sllvals[4][20]~42_combout\,
	datad => \ALT_INV_Output~62_combout\,
	dataf => \ALT_INV_Output~63_combout\,
	combout => \Output~64_combout\);

-- Location: LABCELL_X62_Y4_N57
\Output~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~65_combout\ = (!\Output~26_combout\ & (\Output~49_combout\ & ((\sllvals[4][5]~11_combout\)))) # (\Output~26_combout\ & (((\Output~49_combout\ & \sllvals[4][5]~11_combout\)) # (\sravals[4][37]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~26_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_sravals[4][37]~138_combout\,
	datad => \ALT_INV_sllvals[4][5]~11_combout\,
	combout => \Output~65_combout\);

-- Location: LABCELL_X61_Y4_N42
\Output~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~66_combout\ = ( \ShiftCount[5]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & \y2[63]~0_combout\) ) ) ) # ( \ShiftCount[5]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\sravals[4][53]~137_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( 
-- !\ShiftCount[5]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftFN[1]~input_o\ & \sravals[4][21]~139_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100010001000100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][53]~137_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_sravals[4][21]~139_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~66_combout\);

-- Location: LABCELL_X53_Y5_N0
\sllvals[2][21]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][21]~43_combout\ = ( \sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][19]~44_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][19]~44_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][18]~43_combout\)) ) ) ) # ( \sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][21]~47_combout\,
	datab => \ALT_INV_sravals[0][18]~43_combout\,
	datac => \ALT_INV_sravals[0][19]~44_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][20]~46_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][21]~43_combout\);

-- Location: LABCELL_X60_Y4_N48
\sllvals[4][21]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][21]~44_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][9]~19_combout\ & ( (\ShiftCount[3]~input_o\) # (\sllvals[2][17]~35_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][9]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][21]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][13]~27_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][9]~19_combout\ & ( (\sllvals[2][17]~35_combout\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ 
-- & ( !\sllvals[2][9]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][13]~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][17]~35_combout\,
	datab => \ALT_INV_sllvals[2][21]~43_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][13]~27_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][9]~19_combout\,
	combout => \sllvals[4][21]~44_combout\);

-- Location: LABCELL_X62_Y4_N33
\Output~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~67_combout\ = ( \sllvals[4][21]~44_combout\ & ( ((\Output~66_combout\) # (\Output~65_combout\)) # (\Output~48_combout\) ) ) # ( !\sllvals[4][21]~44_combout\ & ( (\Output~66_combout\) # (\Output~65_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~48_combout\,
	datac => \ALT_INV_Output~65_combout\,
	datad => \ALT_INV_Output~66_combout\,
	dataf => \ALT_INV_sllvals[4][21]~44_combout\,
	combout => \Output~67_combout\);

-- Location: LABCELL_X53_Y5_N36
\sllvals[2][22]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][22]~45_combout\ = ( \sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][20]~46_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\sravals[0][19]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- \sravals[0][20]~46_combout\) ) ) ) # ( \sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][21]~47_combout\))) ) ) ) # ( 
-- !\sravals[0][19]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][21]~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][22]~48_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][21]~47_combout\,
	datad => \ALT_INV_sravals[0][20]~46_combout\,
	datae => \ALT_INV_sravals[0][19]~44_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][22]~45_combout\);

-- Location: LABCELL_X57_Y5_N30
\sllvals[4][22]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][22]~46_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][22]~45_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][18]~37_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][10]~21_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][22]~45_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][14]~29_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][22]~45_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][18]~37_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][10]~21_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][22]~45_combout\ & ( (\ShiftCount[3]~input_o\ & \sllvals[2][14]~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][14]~29_combout\,
	datac => \ALT_INV_sllvals[2][18]~37_combout\,
	datad => \ALT_INV_sllvals[2][10]~21_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][22]~45_combout\,
	combout => \sllvals[4][22]~46_combout\);

-- Location: LABCELL_X57_Y5_N9
\Output~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~68_combout\ = ( \sravals[4][38]~141_combout\ & ( \Output~26_combout\ ) ) # ( !\sravals[4][38]~141_combout\ & ( \Output~26_combout\ & ( (\sllvals[4][6]~14_combout\ & \Output~49_combout\) ) ) ) # ( \sravals[4][38]~141_combout\ & ( 
-- !\Output~26_combout\ & ( (\sllvals[4][6]~14_combout\ & \Output~49_combout\) ) ) ) # ( !\sravals[4][38]~141_combout\ & ( !\Output~26_combout\ & ( (\sllvals[4][6]~14_combout\ & \Output~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][6]~14_combout\,
	datac => \ALT_INV_Output~49_combout\,
	datae => \ALT_INV_sravals[4][38]~141_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~68_combout\);

-- Location: LABCELL_X55_Y5_N27
\Output~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~69_combout\ = ( \sravals[4][22]~142_combout\ & ( \sravals[4][54]~140_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\ShiftCount[5]~input_o\ & \y2[63]~0_combout\)))) ) ) ) # ( !\sravals[4][22]~142_combout\ & ( 
-- \sravals[4][54]~140_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sravals[4][22]~142_combout\ & ( !\sravals[4][54]~140_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- ((!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\)) # (\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & \y2[63]~0_combout\)))) ) ) ) # ( !\sravals[4][22]~142_combout\ & ( !\sravals[4][54]~140_combout\ & ( (\ShiftFN[1]~input_o\ & 
-- (\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & \y2[63]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010000000100000100010000000100010101000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_sravals[4][22]~142_combout\,
	dataf => \ALT_INV_sravals[4][54]~140_combout\,
	combout => \Output~69_combout\);

-- Location: LABCELL_X55_Y5_N39
\Output~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~70_combout\ = ( \Output~48_combout\ & ( ((\Output~69_combout\) # (\Output~68_combout\)) # (\sllvals[4][22]~46_combout\) ) ) # ( !\Output~48_combout\ & ( (\Output~69_combout\) # (\Output~68_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][22]~46_combout\,
	datac => \ALT_INV_Output~68_combout\,
	datad => \ALT_INV_Output~69_combout\,
	dataf => \ALT_INV_Output~48_combout\,
	combout => \Output~70_combout\);

-- Location: LABCELL_X53_Y5_N42
\sllvals[2][23]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][23]~47_combout\ = ( \sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][20]~46_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][23]~49_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) ) ) ) # ( 
-- !\sravals[0][20]~46_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][23]~49_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][22]~48_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][22]~48_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_sravals[0][21]~47_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][20]~46_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][23]~47_combout\);

-- Location: LABCELL_X61_Y6_N24
\sllvals[4][23]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][23]~48_combout\ = ( \sllvals[2][11]~23_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sllvals[2][19]~39_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\sllvals[2][11]~23_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & 
-- \sllvals[2][19]~39_combout\) ) ) ) # ( \sllvals[2][11]~23_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][23]~47_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][15]~31_combout\))) ) ) ) # ( 
-- !\sllvals[2][11]~23_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][23]~47_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][15]~31_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][19]~39_combout\,
	datac => \ALT_INV_sllvals[2][23]~47_combout\,
	datad => \ALT_INV_sllvals[2][15]~31_combout\,
	datae => \ALT_INV_sllvals[2][11]~23_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][23]~48_combout\);

-- Location: LABCELL_X62_Y8_N42
\Output~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~73_combout\ = ( \sllvals[4][7]~16_combout\ & ( \sravals[4][55]~145_combout\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & ((!\ShiftFN[1]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # 
-- (\y2[63]~0_combout\)))) ) ) ) # ( !\sllvals[4][7]~16_combout\ & ( \sravals[4][55]~145_combout\ & ( (\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sllvals[4][7]~16_combout\ & ( 
-- !\sravals[4][55]~145_combout\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\))) # (\ShiftCount[5]~input_o\ & (\y2[63]~0_combout\ & \ShiftFN[1]~input_o\)))) ) ) ) # ( !\sllvals[4][7]~16_combout\ & ( 
-- !\sravals[4][55]~145_combout\ & ( (\ShiftCount[4]~input_o\ & (\y2[63]~0_combout\ & (\ShiftCount[5]~input_o\ & \ShiftFN[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010100000000000100000000000010110101000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_sllvals[4][7]~16_combout\,
	dataf => \ALT_INV_sravals[4][55]~145_combout\,
	combout => \Output~73_combout\);

-- Location: LABCELL_X62_Y8_N36
\Output~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~202_combout\ = ( !\ShiftCount[4]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\sllvals[4][23]~48_combout\)) # (\ShiftFN[1]~input_o\ & ((\sravals[4][23]~143_combout\)))))) # (\Output~73_combout\) ) ) # ( 
-- \ShiftCount[4]~input_o\ & ( (((\ShiftFN[1]~input_o\ & (\sravals[4][39]~144_combout\ & !\ShiftCount[5]~input_o\))) # (\Output~73_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011111111111000000111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][23]~48_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sravals[4][39]~144_combout\,
	datad => \ALT_INV_Output~73_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	datag => \ALT_INV_sravals[4][23]~143_combout\,
	combout => \Output~202_combout\);

-- Location: LABCELL_X56_Y9_N54
\Output~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~74_combout\ = ( \ShiftFN[1]~input_o\ & ( \y2[63]~0_combout\ & ( (!\ShiftCount[5]~input_o\ & (\sravals[4][24]~146_combout\ & ((!\ShiftCount[4]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\) # (\sravals[4][56]~148_combout\)))) 
-- ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\y2[63]~0_combout\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\sravals[4][24]~146_combout\)) # (\ShiftCount[5]~input_o\ & ((\sravals[4][56]~148_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110000000000000000000000000101001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][24]~146_combout\,
	datab => \ALT_INV_sravals[4][56]~148_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \Output~74_combout\);

-- Location: LABCELL_X53_Y5_N48
\sllvals[2][24]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][24]~49_combout\ = ( \sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][21]~47_combout\) ) ) ) # ( !\sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][21]~47_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) ) ) ) # ( !\sravals[0][22]~48_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][21]~47_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_sravals[0][24]~51_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][22]~48_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][24]~49_combout\);

-- Location: LABCELL_X60_Y9_N18
\sllvals[4][24]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][24]~50_combout\ = ( \sllvals[2][24]~49_combout\ & ( \sllvals[2][12]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sllvals[2][16]~33_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)) # 
-- (\sllvals[2][20]~41_combout\))) ) ) ) # ( !\sllvals[2][24]~49_combout\ & ( \sllvals[2][12]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sllvals[2][16]~33_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)) # 
-- (\sllvals[2][20]~41_combout\))) ) ) ) # ( \sllvals[2][24]~49_combout\ & ( !\sllvals[2][12]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sllvals[2][16]~33_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (\sllvals[2][20]~41_combout\ & (!\ShiftCount[3]~input_o\))) ) ) ) # ( !\sllvals[2][24]~49_combout\ & ( !\sllvals[2][12]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\ & \sllvals[2][16]~33_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (\sllvals[2][20]~41_combout\ & (!\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][20]~41_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][16]~33_combout\,
	datae => \ALT_INV_sllvals[2][24]~49_combout\,
	dataf => \ALT_INV_sllvals[2][12]~25_combout\,
	combout => \sllvals[4][24]~50_combout\);

-- Location: LABCELL_X56_Y9_N3
\Output~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~75_combout\ = ( \Output~49_combout\ & ( ((\sravals[4][40]~147_combout\ & \Output~26_combout\)) # (\sllvals[4][8]~18_combout\) ) ) # ( !\Output~49_combout\ & ( (\sravals[4][40]~147_combout\ & \Output~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][40]~147_combout\,
	datac => \ALT_INV_sllvals[4][8]~18_combout\,
	datad => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~75_combout\);

-- Location: LABCELL_X56_Y9_N39
\Output~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~76_combout\ = ( \Output~48_combout\ & ( ((\Output~75_combout\) # (\sllvals[4][24]~50_combout\)) # (\Output~74_combout\) ) ) # ( !\Output~48_combout\ & ( (\Output~75_combout\) # (\Output~74_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~74_combout\,
	datac => \ALT_INV_sllvals[4][24]~50_combout\,
	datad => \ALT_INV_Output~75_combout\,
	dataf => \ALT_INV_Output~48_combout\,
	combout => \Output~76_combout\);

-- Location: LABCELL_X62_Y8_N45
\Output~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~77_combout\ = ( \sllvals[4][9]~20_combout\ & ( \sravals[4][57]~151_combout\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # 
-- (\y2[63]~0_combout\)))) ) ) ) # ( !\sllvals[4][9]~20_combout\ & ( \sravals[4][57]~151_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \sllvals[4][9]~20_combout\ & ( 
-- !\sravals[4][57]~151_combout\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((!\ShiftCount[5]~input_o\))) # (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\ & \ShiftCount[5]~input_o\)))) ) ) ) # ( !\sllvals[4][9]~20_combout\ & ( 
-- !\sravals[4][57]~151_combout\ & ( (\ShiftCount[4]~input_o\ & (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & \ShiftCount[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010100000000000100000000000010110101000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sllvals[4][9]~20_combout\,
	dataf => \ALT_INV_sravals[4][57]~151_combout\,
	combout => \Output~77_combout\);

-- Location: LABCELL_X53_Y5_N24
\sllvals[2][25]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][25]~51_combout\ = ( \sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][23]~49_combout\) ) ) ) # ( !\sravals[0][22]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][23]~49_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][25]~52_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][24]~51_combout\)) ) ) ) # ( 
-- !\sravals[0][22]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][25]~52_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][24]~51_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][24]~51_combout\,
	datab => \ALT_INV_sravals[0][23]~49_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][25]~52_combout\,
	datae => \ALT_INV_sravals[0][22]~48_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][25]~51_combout\);

-- Location: LABCELL_X60_Y4_N24
\sllvals[4][25]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][25]~52_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][17]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][13]~27_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][17]~35_combout\ & ( (\sllvals[2][25]~51_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][17]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][13]~27_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][17]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & \sllvals[2][25]~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][21]~43_combout\,
	datac => \ALT_INV_sllvals[2][25]~51_combout\,
	datad => \ALT_INV_sllvals[2][13]~27_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][17]~35_combout\,
	combout => \sllvals[4][25]~52_combout\);

-- Location: LABCELL_X57_Y4_N6
\Output~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~198_combout\ = ( !\ShiftCount[4]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\sllvals[4][25]~52_combout\))) # (\ShiftFN[1]~input_o\ & (\sravals[4][25]~149_combout\))))) # (\Output~77_combout\) ) ) # ( 
-- \ShiftCount[4]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & (\sravals[4][41]~150_combout\ & ((\ShiftFN[1]~input_o\))))) # (\Output~77_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001110111011001100110011001100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Output~77_combout\,
	datac => \ALT_INV_sravals[4][41]~150_combout\,
	datad => \ALT_INV_sllvals[4][25]~52_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_sravals[4][25]~149_combout\,
	combout => \Output~198_combout\);

-- Location: LABCELL_X57_Y4_N0
\Output~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~78_combout\ = ( \y2[63]~0_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftCount[5]~input_o\ & \sllvals[4][10]~22_combout\)) # (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\)) ) ) ) # ( !\y2[63]~0_combout\ & ( 
-- \ShiftCount[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftCount[5]~input_o\ & \sllvals[4][10]~22_combout\)) ) ) ) # ( \y2[63]~0_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\sravals[4][58]~154_combout\ & (\ShiftFN[1]~input_o\ & \ShiftCount[5]~input_o\)) 
-- ) ) ) # ( !\y2[63]~0_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\sravals[4][58]~154_combout\ & (\ShiftFN[1]~input_o\ & \ShiftCount[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000110000000000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][58]~154_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][10]~22_combout\,
	datae => \ALT_INV_y2[63]~0_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~78_combout\);

-- Location: LABCELL_X55_Y6_N18
\sllvals[2][26]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][26]~53_combout\ = ( \sravals[0][25]~52_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) ) ) ) # ( !\sravals[0][25]~52_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][23]~49_combout\)) ) ) ) # ( \sravals[0][25]~52_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][26]~53_combout\) # 
-- (\ShiftCount[0]~input_o\) ) ) ) # ( !\sravals[0][25]~52_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][26]~53_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][26]~53_combout\,
	datac => \ALT_INV_sravals[0][23]~49_combout\,
	datad => \ALT_INV_sravals[0][24]~51_combout\,
	datae => \ALT_INV_sravals[0][25]~52_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][26]~53_combout\);

-- Location: LABCELL_X57_Y5_N42
\sllvals[4][26]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][26]~54_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][18]~37_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sllvals[2][14]~29_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][18]~37_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][26]~53_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][22]~45_combout\)) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][18]~37_combout\ & ( (\sllvals[2][14]~29_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ 
-- & ( !\sllvals[2][18]~37_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sllvals[2][26]~53_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][22]~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][22]~45_combout\,
	datab => \ALT_INV_sllvals[2][14]~29_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][26]~53_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][18]~37_combout\,
	combout => \sllvals[4][26]~54_combout\);

-- Location: LABCELL_X57_Y4_N30
\Output~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~194_combout\ = ( !\ShiftCount[4]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\sllvals[4][26]~54_combout\))) # (\ShiftFN[1]~input_o\ & (\sravals[4][26]~152_combout\))))) # (\Output~78_combout\) ) ) # ( 
-- \ShiftCount[4]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & (\sravals[4][42]~153_combout\)))) # (\Output~78_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111000000101111111110001010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sravals[4][42]~153_combout\,
	datad => \ALT_INV_Output~78_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][26]~54_combout\,
	datag => \ALT_INV_sravals[4][26]~152_combout\,
	combout => \Output~194_combout\);

-- Location: LABCELL_X61_Y8_N42
\Output~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~71_combout\ = ( !\ShiftCount[5]~input_o\ & ( \ShiftFN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~71_combout\);

-- Location: LABCELL_X61_Y8_N51
\Output~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~72_combout\ = (\Output~71_combout\ & !\ShiftCount[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~71_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~72_combout\);

-- Location: LABCELL_X61_Y8_N57
\sravals[5][59]~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][59]~169_combout\ = ( \ShiftCount[4]~input_o\ & ( \y2[63]~0_combout\ ) ) # ( !\ShiftCount[4]~input_o\ & ( (!\sllvals[4][4]~1_combout\ & (\y2[63]~0_combout\)) # (\sllvals[4][4]~1_combout\ & ((\sravals[2][59]~119_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_sllvals[4][4]~1_combout\,
	datad => \ALT_INV_sravals[2][59]~119_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sravals[5][59]~169_combout\);

-- Location: LABCELL_X61_Y8_N30
\Output~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~79_combout\ = ( \ShiftCount[4]~input_o\ & ( \sravals[4][43]~156_combout\ & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][11]~24_combout\ & (!\ShiftCount[5]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\) # 
-- (\sravals[5][59]~169_combout\)))) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sravals[4][43]~156_combout\ & ( (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & \sravals[5][59]~169_combout\)) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sravals[4][43]~156_combout\ 
-- & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][11]~24_combout\ & (!\ShiftCount[5]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\ShiftCount[5]~input_o\ & \sravals[5][59]~169_combout\)))) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\sravals[4][43]~156_combout\ & ( 
-- (\ShiftFN[1]~input_o\ & (\ShiftCount[5]~input_o\ & \sravals[5][59]~169_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010000000100001100000000000000110111000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][11]~24_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sravals[5][59]~169_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sravals[4][43]~156_combout\,
	combout => \Output~79_combout\);

-- Location: MLABCELL_X59_Y7_N30
\sllvals[2][27]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][27]~55_combout\ = ( \sravals[0][27]~54_combout\ & ( \sravals[0][26]~53_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\)))) ) ) ) # 
-- ( !\sravals[0][27]~54_combout\ & ( \sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\ & (\ShiftCount[1]~input_o\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][24]~51_combout\)))) ) ) ) # 
-- ( \sravals[0][27]~54_combout\ & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][25]~52_combout\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\ & \sravals[0][24]~51_combout\)))) ) ) ) 
-- # ( !\sravals[0][27]~54_combout\ & ( !\sravals[0][26]~53_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][24]~51_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][25]~52_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sravals[0][24]~51_combout\,
	datae => \ALT_INV_sravals[0][27]~54_combout\,
	dataf => \ALT_INV_sravals[0][26]~53_combout\,
	combout => \sllvals[2][27]~55_combout\);

-- Location: LABCELL_X61_Y6_N0
\sllvals[4][27]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][27]~56_combout\ = ( \sllvals[2][23]~47_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][15]~31_combout\) ) ) ) # ( !\sllvals[2][23]~47_combout\ & ( \ShiftCount[2]~input_o\ & ( (\ShiftCount[3]~input_o\ & 
-- \sllvals[2][15]~31_combout\) ) ) ) # ( \sllvals[2][23]~47_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][27]~55_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][19]~39_combout\)) ) ) ) # ( 
-- !\sllvals[2][23]~47_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][27]~55_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][19]~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][19]~39_combout\,
	datac => \ALT_INV_sllvals[2][15]~31_combout\,
	datad => \ALT_INV_sllvals[2][27]~55_combout\,
	datae => \ALT_INV_sllvals[2][23]~47_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][27]~56_combout\);

-- Location: LABCELL_X61_Y8_N36
\Output~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~80_combout\ = ( \sllvals[4][27]~56_combout\ & ( \sravals[4][27]~155_combout\ & ( ((\Output~79_combout\) # (\Output~72_combout\)) # (\Output~48_combout\) ) ) ) # ( !\sllvals[4][27]~56_combout\ & ( \sravals[4][27]~155_combout\ & ( 
-- (\Output~79_combout\) # (\Output~72_combout\) ) ) ) # ( \sllvals[4][27]~56_combout\ & ( !\sravals[4][27]~155_combout\ & ( (\Output~79_combout\) # (\Output~48_combout\) ) ) ) # ( !\sllvals[4][27]~56_combout\ & ( !\sravals[4][27]~155_combout\ & ( 
-- \Output~79_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100111111111100001111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~48_combout\,
	datac => \ALT_INV_Output~72_combout\,
	datad => \ALT_INV_Output~79_combout\,
	datae => \ALT_INV_sllvals[4][27]~56_combout\,
	dataf => \ALT_INV_sravals[4][27]~155_combout\,
	combout => \Output~80_combout\);

-- Location: MLABCELL_X59_Y7_N6
\sllvals[2][28]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][28]~57_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][28]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][26]~53_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][25]~52_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][28]~56_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][27]~54_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][28]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][26]~53_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][25]~52_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][28]~56_combout\ & ( (\sravals[0][27]~54_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][27]~54_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][25]~52_combout\,
	datad => \ALT_INV_sravals[0][26]~53_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][28]~56_combout\,
	combout => \sllvals[2][28]~57_combout\);

-- Location: LABCELL_X60_Y7_N30
\sllvals[4][28]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][28]~58_combout\ = ( \sllvals[2][28]~57_combout\ & ( \sllvals[2][20]~41_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][24]~49_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][16]~33_combout\))) ) ) ) # 
-- ( !\sllvals[2][28]~57_combout\ & ( \sllvals[2][20]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][24]~49_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][16]~33_combout\)))) ) ) ) # ( \sllvals[2][28]~57_combout\ & ( !\sllvals[2][20]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][24]~49_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][16]~33_combout\)))) ) ) ) # ( !\sllvals[2][28]~57_combout\ & ( !\sllvals[2][20]~41_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][24]~49_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][16]~33_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][16]~33_combout\,
	datac => \ALT_INV_sllvals[2][24]~49_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sllvals[2][28]~57_combout\,
	dataf => \ALT_INV_sllvals[2][20]~41_combout\,
	combout => \sllvals[4][28]~58_combout\);

-- Location: LABCELL_X61_Y9_N9
\Output~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~82_combout\ = ( \Output~26_combout\ & ( ((\sllvals[4][12]~26_combout\ & \Output~49_combout\)) # (\sravals[4][44]~159_combout\) ) ) # ( !\Output~26_combout\ & ( (\sllvals[4][12]~26_combout\ & \Output~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][12]~26_combout\,
	datac => \ALT_INV_sravals[4][44]~159_combout\,
	datad => \ALT_INV_Output~49_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~82_combout\);

-- Location: LABCELL_X56_Y9_N36
\sravals[5][60]~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][60]~170_combout\ = ( \ShiftCount[4]~input_o\ & ( \y2[63]~0_combout\ ) ) # ( !\ShiftCount[4]~input_o\ & ( (!\sllvals[4][4]~1_combout\ & (\y2[63]~0_combout\)) # (\sllvals[4][4]~1_combout\ & ((\sravals[2][60]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][4]~1_combout\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_sravals[2][60]~18_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sravals[5][60]~170_combout\);

-- Location: LABCELL_X61_Y9_N30
\Output~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~81_combout\ = ( \ShiftCount[4]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\ShiftCount[5]~input_o\ & \sravals[5][60]~170_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\sravals[4][28]~158_combout\)) # (\ShiftCount[5]~input_o\ & ((\sravals[5][60]~170_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000111010001110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][28]~158_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sravals[5][60]~170_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~81_combout\);

-- Location: LABCELL_X61_Y9_N15
\Output~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~83_combout\ = ( \Output~81_combout\ ) # ( !\Output~81_combout\ & ( ((\sllvals[4][28]~58_combout\ & \Output~48_combout\)) # (\Output~82_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][28]~58_combout\,
	datac => \ALT_INV_Output~48_combout\,
	datad => \ALT_INV_Output~82_combout\,
	dataf => \ALT_INV_Output~81_combout\,
	combout => \Output~83_combout\);

-- Location: MLABCELL_X59_Y7_N12
\sllvals[2][29]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][29]~59_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][26]~53_combout\ & ( (\sravals[0][27]~54_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][29]~57_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][27]~54_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][26]~53_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][28]~56_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][27]~54_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][26]~53_combout\,
	combout => \sllvals[2][29]~59_combout\);

-- Location: MLABCELL_X59_Y4_N6
\sllvals[4][29]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][29]~60_combout\ = ( \sllvals[2][17]~35_combout\ & ( \sllvals[2][25]~51_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # 
-- ( !\sllvals[2][17]~35_combout\ & ( \sllvals[2][25]~51_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (((!\ShiftCount[3]~input_o\)))) ) ) ) # ( \sllvals[2][17]~35_combout\ & ( !\sllvals[2][25]~51_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][21]~43_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sllvals[2][17]~35_combout\ & ( !\sllvals[2][25]~51_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][21]~43_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][29]~59_combout\,
	datae => \ALT_INV_sllvals[2][17]~35_combout\,
	dataf => \ALT_INV_sllvals[2][25]~51_combout\,
	combout => \sllvals[4][29]~60_combout\);

-- Location: MLABCELL_X59_Y4_N27
\Output~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~84_combout\ = ( \Output~26_combout\ & ( ((\Output~49_combout\ & \sllvals[4][13]~28_combout\)) # (\sravals[4][45]~162_combout\) ) ) # ( !\Output~26_combout\ & ( (\Output~49_combout\ & \sllvals[4][13]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][45]~162_combout\,
	datac => \ALT_INV_Output~49_combout\,
	datad => \ALT_INV_sllvals[4][13]~28_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~84_combout\);

-- Location: MLABCELL_X59_Y4_N36
\Output~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~190_combout\ = ( !\ShiftCount[5]~input_o\ & ( ((\ShiftFN[1]~input_o\ & (\sravals[4][29]~161_combout\ & (!\ShiftCount[4]~input_o\)))) ) ) # ( \ShiftCount[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\sllvals[4][4]~1_combout\ & 
-- (((\y2[63]~0_combout\)))) # (\sllvals[4][4]~1_combout\ & ((!\ShiftCount[4]~input_o\ & (\sravals[2][61]~84_combout\)) # (\ShiftCount[4]~input_o\ & ((\y2[63]~0_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000000000000010000000000000011000000000011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][61]~84_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_sllvals[4][4]~1_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	datag => \ALT_INV_sravals[4][29]~161_combout\,
	combout => \Output~190_combout\);

-- Location: MLABCELL_X59_Y4_N15
\Output~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~85_combout\ = ( \Output~48_combout\ & ( ((\Output~190_combout\) # (\Output~84_combout\)) # (\sllvals[4][29]~60_combout\) ) ) # ( !\Output~48_combout\ & ( (\Output~190_combout\) # (\Output~84_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][29]~60_combout\,
	datac => \ALT_INV_Output~84_combout\,
	datad => \ALT_INV_Output~190_combout\,
	dataf => \ALT_INV_Output~48_combout\,
	combout => \Output~85_combout\);

-- Location: MLABCELL_X59_Y7_N18
\sllvals[2][30]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][30]~61_combout\ = ( \sravals[0][27]~54_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][29]~57_combout\)))) # (\ShiftCount[1]~input_o\ & (((\sravals[0][28]~56_combout\)) # 
-- (\ShiftCount[0]~input_o\))) ) ) ) # ( !\sravals[0][27]~54_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][29]~57_combout\)))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][28]~56_combout\))) ) ) ) # ( \sravals[0][27]~54_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (((\sravals[0][28]~56_combout\)) # (\ShiftCount[0]~input_o\))) ) ) ) # ( !\sravals[0][27]~54_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\)))) # (\ShiftCount[1]~input_o\ 
-- & (!\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][28]~56_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_sravals[0][27]~54_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sllvals[2][30]~61_combout\);

-- Location: LABCELL_X57_Y6_N0
\sllvals[4][30]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][30]~62_combout\ = ( \sllvals[2][30]~61_combout\ & ( \sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][18]~37_combout\)))) ) ) ) # 
-- ( !\sllvals[2][30]~61_combout\ & ( \sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][18]~37_combout\))))) ) ) ) # ( \sllvals[2][30]~61_combout\ & ( !\sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][26]~53_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][18]~37_combout\))))) ) ) ) # ( !\sllvals[2][30]~61_combout\ & ( !\sllvals[2][22]~45_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][26]~53_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][18]~37_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][26]~53_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][18]~37_combout\,
	datae => \ALT_INV_sllvals[2][30]~61_combout\,
	dataf => \ALT_INV_sllvals[2][22]~45_combout\,
	combout => \sllvals[4][30]~62_combout\);

-- Location: LABCELL_X60_Y6_N6
\sravals[5][62]~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \sravals[5][62]~171_combout\ = ( \sravals[0][62]~17_combout\ & ( \ShiftCount[4]~input_o\ & ( \y2[63]~0_combout\ ) ) ) # ( !\sravals[0][62]~17_combout\ & ( \ShiftCount[4]~input_o\ & ( \y2[63]~0_combout\ ) ) ) # ( \sravals[0][62]~17_combout\ & ( 
-- !\ShiftCount[4]~input_o\ & ( ((!\ShiftCount[1]~input_o\ & (\sllvals[4][4]~1_combout\ & !\ShiftCount[0]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\sravals[0][62]~17_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\y2[63]~0_combout\ & 
-- (((!\sllvals[4][4]~1_combout\) # (\ShiftCount[0]~input_o\)) # (\ShiftCount[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110011001110110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_sllvals[4][4]~1_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][62]~17_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sravals[5][62]~171_combout\);

-- Location: LABCELL_X56_Y6_N42
\Output~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~86_combout\ = ( \sravals[4][30]~164_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\))) # (\ShiftCount[5]~input_o\ & (\sravals[5][62]~171_combout\)))) ) ) # ( !\sravals[4][30]~164_combout\ & ( 
-- (\ShiftFN[1]~input_o\ & (\sravals[5][62]~171_combout\ & \ShiftCount[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010000000100010101000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sravals[5][62]~171_combout\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sravals[4][30]~164_combout\,
	combout => \Output~86_combout\);

-- Location: LABCELL_X56_Y6_N39
\Output~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~87_combout\ = ( \Output~49_combout\ & ( ((\sravals[4][46]~165_combout\ & \Output~26_combout\)) # (\sllvals[4][14]~30_combout\) ) ) # ( !\Output~49_combout\ & ( (\sravals[4][46]~165_combout\ & \Output~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][46]~165_combout\,
	datac => \ALT_INV_sllvals[4][14]~30_combout\,
	datad => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~87_combout\);

-- Location: LABCELL_X56_Y6_N18
\Output~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~88_combout\ = ( \Output~87_combout\ ) # ( !\Output~87_combout\ & ( ((\sllvals[4][30]~62_combout\ & \Output~48_combout\)) # (\Output~86_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][30]~62_combout\,
	datac => \ALT_INV_Output~48_combout\,
	datad => \ALT_INV_Output~86_combout\,
	dataf => \ALT_INV_Output~87_combout\,
	combout => \Output~88_combout\);

-- Location: MLABCELL_X59_Y7_N24
\sllvals[2][31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][31]~63_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][28]~56_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][30]~58_combout\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][31]~59_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][29]~57_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][28]~56_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][30]~58_combout\ & ( (\sravals[0][31]~59_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][28]~56_combout\,
	datad => \ALT_INV_sravals[0][29]~57_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sllvals[2][31]~63_combout\);

-- Location: LABCELL_X61_Y6_N36
\sllvals[4][31]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][31]~64_combout\ = ( \sllvals[2][23]~47_combout\ & ( \sllvals[2][27]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sllvals[2][31]~63_combout\) # (\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # 
-- (\sllvals[2][19]~39_combout\))) ) ) ) # ( !\sllvals[2][23]~47_combout\ & ( \sllvals[2][27]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sllvals[2][31]~63_combout\) # (\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][19]~39_combout\ 
-- & (\ShiftCount[2]~input_o\))) ) ) ) # ( \sllvals[2][23]~47_combout\ & ( !\sllvals[2][27]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sllvals[2][31]~63_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # 
-- (\sllvals[2][19]~39_combout\))) ) ) ) # ( !\sllvals[2][23]~47_combout\ & ( !\sllvals[2][27]~55_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sllvals[2][31]~63_combout\)))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][19]~39_combout\ 
-- & (\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][19]~39_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][31]~63_combout\,
	datae => \ALT_INV_sllvals[2][23]~47_combout\,
	dataf => \ALT_INV_sllvals[2][27]~55_combout\,
	combout => \sllvals[4][31]~64_combout\);

-- Location: LABCELL_X62_Y6_N42
\Output~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~89_combout\ = ( \ShiftCount[5]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \y2[63]~0_combout\ ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\sllvals[4][31]~64_combout\))) # (\ShiftCount[4]~input_o\ & 
-- (\sllvals[4][15]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][15]~32_combout\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_sllvals[4][31]~64_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~89_combout\);

-- Location: LABCELL_X62_Y6_N30
\Output~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~90_combout\ = ( \Output~89_combout\ ) # ( !\Output~89_combout\ & ( (\Output~71_combout\ & ((!\ShiftCount[4]~input_o\ & ((\sravals[4][31]~168_combout\))) # (\ShiftCount[4]~input_o\ & (\sravals[4][47]~167_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][47]~167_combout\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_sravals[4][31]~168_combout\,
	datad => \ALT_INV_Output~71_combout\,
	dataf => \ALT_INV_Output~89_combout\,
	combout => \Output~90_combout\);

-- Location: MLABCELL_X59_Y4_N51
\Output~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~91_combout\ = (!\ShiftFN[1]~input_o\ & !\ShiftCount[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~91_combout\);

-- Location: LABCELL_X61_Y7_N12
\sllvals[2][32]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][32]~65_combout\ = ( \sravals[0][29]~57_combout\ & ( \sravals[0][30]~58_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # 
-- ( !\sravals[0][29]~57_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][32]~20_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\ & ((!\ShiftCount[1]~input_o\)))) ) ) ) 
-- # ( \sravals[0][29]~57_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][32]~20_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][31]~59_combout\))) ) ) 
-- ) # ( !\sravals[0][29]~57_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][32]~20_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][29]~57_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sllvals[2][32]~65_combout\);

-- Location: LABCELL_X60_Y7_N36
\sllvals[4][32]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][32]~66_combout\ = ( \sllvals[2][28]~57_combout\ & ( \sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sllvals[2][32]~65_combout\)) # (\ShiftCount[3]~input_o\))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\) # 
-- ((\sllvals[2][20]~41_combout\)))) ) ) ) # ( !\sllvals[2][28]~57_combout\ & ( \sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sllvals[2][32]~65_combout\)) # (\ShiftCount[3]~input_o\))) # (\ShiftCount[2]~input_o\ & (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][20]~41_combout\))) ) ) ) # ( \sllvals[2][28]~57_combout\ & ( !\sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (!\ShiftCount[3]~input_o\ & ((\sllvals[2][32]~65_combout\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\) # 
-- ((\sllvals[2][20]~41_combout\)))) ) ) ) # ( !\sllvals[2][28]~57_combout\ & ( !\sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (!\ShiftCount[3]~input_o\ & ((\sllvals[2][32]~65_combout\)))) # (\ShiftCount[2]~input_o\ & (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][20]~41_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sllvals[2][20]~41_combout\,
	datad => \ALT_INV_sllvals[2][32]~65_combout\,
	datae => \ALT_INV_sllvals[2][28]~57_combout\,
	dataf => \ALT_INV_sllvals[2][24]~49_combout\,
	combout => \sllvals[4][32]~66_combout\);

-- Location: LABCELL_X62_Y9_N0
\Output~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~92_combout\ = ( \sllvals[4][32]~66_combout\ & ( (\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][0]~2_combout\))) ) ) # ( !\sllvals[4][32]~66_combout\ & ( (\sllvals[4][0]~2_combout\ & (\ShiftCount[5]~input_o\ & 
-- \Output~91_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][0]~2_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_sllvals[4][32]~66_combout\,
	combout => \Output~92_combout\);

-- Location: LABCELL_X61_Y7_N21
\Output~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~93_combout\ = ( \Input[63]~input_o\ & ( (\ShiftCount[5]~input_o\ & (\ShiftFN[1]~input_o\ & ((!\ExtWord~input_o\) # (\Input[31]~input_o\)))) ) ) # ( !\Input[63]~input_o\ & ( (\Input[31]~input_o\ & (\ExtWord~input_o\ & (\ShiftCount[5]~input_o\ & 
-- \ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000011010000000000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[31]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \Output~93_combout\);

-- Location: LABCELL_X62_Y9_N24
\Output~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~94_combout\ = ( \Output~26_combout\ & ( (!\sravals[4][48]~19_combout\ & (!\Output~93_combout\ & ((!\sllvals[4][16]~34_combout\) # (!\Output~49_combout\)))) ) ) # ( !\Output~26_combout\ & ( (!\Output~93_combout\ & ((!\sllvals[4][16]~34_combout\) # 
-- (!\Output~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][16]~34_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_sravals[4][48]~19_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~94_combout\);

-- Location: LABCELL_X62_Y9_N3
\Output~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~95_combout\ = ( \Output~94_combout\ & ( ((\sravals[4][32]~40_combout\ & \Output~72_combout\)) # (\Output~92_combout\) ) ) # ( !\Output~94_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~92_combout\,
	datac => \ALT_INV_sravals[4][32]~40_combout\,
	datad => \ALT_INV_Output~72_combout\,
	dataf => \ALT_INV_Output~94_combout\,
	combout => \Output~95_combout\);

-- Location: LABCELL_X61_Y7_N48
\sllvals[2][33]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][33]~67_combout\ = ( \sravals[0][32]~20_combout\ & ( \sravals[0][30]~58_combout\ & ( ((!\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][31]~59_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # 
-- ( !\sravals[0][32]~20_combout\ & ( \sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][31]~59_combout\)))) # (\ShiftCount[0]~input_o\ & 
-- (((\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][32]~20_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][33]~21_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][31]~59_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][32]~20_combout\ & ( !\sravals[0][30]~58_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][33]~21_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][31]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][33]~21_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][32]~20_combout\,
	dataf => \ALT_INV_sravals[0][30]~58_combout\,
	combout => \sllvals[2][33]~67_combout\);

-- Location: LABCELL_X60_Y4_N30
\sllvals[4][33]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][33]~68_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][21]~43_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][25]~51_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][29]~59_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][21]~43_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][33]~67_combout\ & ( (\ShiftCount[3]~input_o\ & \sllvals[2][25]~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][21]~43_combout\,
	datac => \ALT_INV_sllvals[2][25]~51_combout\,
	datad => \ALT_INV_sllvals[2][29]~59_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][33]~67_combout\,
	combout => \sllvals[4][33]~68_combout\);

-- Location: LABCELL_X61_Y4_N48
\Output~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~96_combout\ = ( \ShiftCount[5]~input_o\ & ( (\Output~91_combout\ & \sllvals[4][1]~3_combout\) ) ) # ( !\ShiftCount[5]~input_o\ & ( (\Output~91_combout\ & \sllvals[4][33]~68_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~91_combout\,
	datac => \ALT_INV_sllvals[4][33]~68_combout\,
	datad => \ALT_INV_sllvals[4][1]~3_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~96_combout\);

-- Location: LABCELL_X61_Y4_N6
\Output~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~97_combout\ = ( \sravals[4][49]~85_combout\ & ( (!\Output~93_combout\ & (!\Output~26_combout\ & ((!\sllvals[4][17]~36_combout\) # (!\Output~49_combout\)))) ) ) # ( !\sravals[4][49]~85_combout\ & ( (!\Output~93_combout\ & 
-- ((!\sllvals[4][17]~36_combout\) # (!\Output~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~93_combout\,
	datab => \ALT_INV_sllvals[4][17]~36_combout\,
	datac => \ALT_INV_Output~26_combout\,
	datad => \ALT_INV_Output~49_combout\,
	dataf => \ALT_INV_sravals[4][49]~85_combout\,
	combout => \Output~97_combout\);

-- Location: LABCELL_X61_Y4_N51
\Output~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~98_combout\ = ( \sravals[4][33]~90_combout\ & ( ((!\Output~97_combout\) # (\Output~72_combout\)) # (\Output~96_combout\) ) ) # ( !\sravals[4][33]~90_combout\ & ( (!\Output~97_combout\) # (\Output~96_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~96_combout\,
	datac => \ALT_INV_Output~97_combout\,
	datad => \ALT_INV_Output~72_combout\,
	dataf => \ALT_INV_sravals[4][33]~90_combout\,
	combout => \Output~98_combout\);

-- Location: LABCELL_X55_Y5_N0
\Output~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~100_combout\ = ( \Output~49_combout\ & ( (!\sllvals[4][18]~38_combout\ & (!\Output~93_combout\ & ((!\sravals[4][50]~103_combout\) # (!\Output~26_combout\)))) ) ) # ( !\Output~49_combout\ & ( (!\Output~93_combout\ & ((!\sravals[4][50]~103_combout\) 
-- # (!\Output~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][18]~38_combout\,
	datab => \ALT_INV_sravals[4][50]~103_combout\,
	datac => \ALT_INV_Output~26_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~100_combout\);

-- Location: LABCELL_X61_Y7_N54
\sllvals[2][34]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][34]~69_combout\ = ( \sravals[0][34]~22_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\))) ) ) ) # 
-- ( !\sravals[0][34]~22_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][32]~20_combout\ & \ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][31]~59_combout\))) ) ) ) 
-- # ( \sravals[0][34]~22_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sravals[0][32]~20_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\ & ((\ShiftCount[1]~input_o\)))) ) ) 
-- ) # ( !\sravals[0][34]~22_combout\ & ( !\sravals[0][33]~21_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][31]~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][31]~59_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][32]~20_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][34]~22_combout\,
	dataf => \ALT_INV_sravals[0][33]~21_combout\,
	combout => \sllvals[2][34]~69_combout\);

-- Location: LABCELL_X57_Y6_N6
\sllvals[4][34]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][34]~70_combout\ = ( \sllvals[2][30]~61_combout\ & ( \sllvals[2][22]~45_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # 
-- ( !\sllvals[2][30]~61_combout\ & ( \sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (((\ShiftCount[3]~input_o\)))) ) ) ) # ( \sllvals[2][30]~61_combout\ & ( !\sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][26]~53_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sllvals[2][30]~61_combout\ & ( !\sllvals[2][22]~45_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][26]~53_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][34]~69_combout\,
	datae => \ALT_INV_sllvals[2][30]~61_combout\,
	dataf => \ALT_INV_sllvals[2][22]~45_combout\,
	combout => \sllvals[4][34]~70_combout\);

-- Location: LABCELL_X55_Y5_N12
\Output~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~99_combout\ = ( \sllvals[4][34]~70_combout\ & ( (\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][2]~4_combout\))) ) ) # ( !\sllvals[4][34]~70_combout\ & ( (\ShiftCount[5]~input_o\ & (\sllvals[4][2]~4_combout\ & 
-- \Output~91_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sllvals[4][2]~4_combout\,
	datad => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_sllvals[4][34]~70_combout\,
	combout => \Output~99_combout\);

-- Location: LABCELL_X55_Y5_N15
\Output~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~101_combout\ = ( \Output~72_combout\ & ( (!\Output~100_combout\) # ((\sravals[4][34]~108_combout\) # (\Output~99_combout\)) ) ) # ( !\Output~72_combout\ & ( (!\Output~100_combout\) # (\Output~99_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~100_combout\,
	datac => \ALT_INV_Output~99_combout\,
	datad => \ALT_INV_sravals[4][34]~108_combout\,
	dataf => \ALT_INV_Output~72_combout\,
	combout => \Output~101_combout\);

-- Location: LABCELL_X62_Y4_N18
\Output~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~103_combout\ = ( \Output~49_combout\ & ( (!\Output~93_combout\ & (!\sllvals[4][19]~40_combout\ & ((!\Output~26_combout\) # (!\sravals[4][51]~120_combout\)))) ) ) # ( !\Output~49_combout\ & ( (!\Output~93_combout\ & ((!\Output~26_combout\) # 
-- (!\sravals[4][51]~120_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~93_combout\,
	datab => \ALT_INV_sllvals[4][19]~40_combout\,
	datac => \ALT_INV_Output~26_combout\,
	datad => \ALT_INV_sravals[4][51]~120_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~103_combout\);

-- Location: LABCELL_X63_Y7_N0
\sllvals[2][35]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][35]~71_combout\ = ( \sravals[0][35]~23_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[0]~input_o\) # ((!\ShiftCount[1]~input_o\ & (\sravals[0][34]~22_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][32]~20_combout\)))) ) ) ) # 
-- ( !\sravals[0][35]~23_combout\ & ( \sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\))) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][32]~20_combout\)))) ) ) ) # 
-- ( \sravals[0][35]~23_combout\ & ( !\sravals[0][33]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sravals[0][34]~22_combout\)))) # (\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & ((\sravals[0][32]~20_combout\)))) ) ) ) 
-- # ( !\sravals[0][35]~23_combout\ & ( !\sravals[0][33]~21_combout\ & ( (\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sravals[0][34]~22_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][32]~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][34]~22_combout\,
	datad => \ALT_INV_sravals[0][32]~20_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_sravals[0][33]~21_combout\,
	combout => \sllvals[2][35]~71_combout\);

-- Location: LABCELL_X61_Y6_N42
\sllvals[4][35]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][35]~72_combout\ = ( \sllvals[2][23]~47_combout\ & ( \sllvals[2][35]~71_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sllvals[2][31]~63_combout\))) # (\ShiftCount[3]~input_o\ & (((\sllvals[2][27]~55_combout\) # 
-- (\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sllvals[2][23]~47_combout\ & ( \sllvals[2][35]~71_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sllvals[2][31]~63_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][27]~55_combout\)))) ) ) ) # ( \sllvals[2][23]~47_combout\ & ( !\sllvals[2][35]~71_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][31]~63_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\sllvals[2][27]~55_combout\) 
-- # (\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sllvals[2][23]~47_combout\ & ( !\sllvals[2][35]~71_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][31]~63_combout\ & (\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][27]~55_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][31]~63_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][27]~55_combout\,
	datae => \ALT_INV_sllvals[2][23]~47_combout\,
	dataf => \ALT_INV_sllvals[2][35]~71_combout\,
	combout => \sllvals[4][35]~72_combout\);

-- Location: LABCELL_X62_Y4_N39
\Output~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~102_combout\ = ( \ShiftCount[5]~input_o\ & ( (\sllvals[4][3]~6_combout\ & \Output~91_combout\) ) ) # ( !\ShiftCount[5]~input_o\ & ( (\sllvals[4][35]~72_combout\ & \Output~91_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][3]~6_combout\,
	datac => \ALT_INV_sllvals[4][35]~72_combout\,
	datad => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~102_combout\);

-- Location: LABCELL_X62_Y4_N36
\Output~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~104_combout\ = ( \Output~102_combout\ ) # ( !\Output~102_combout\ & ( (!\Output~103_combout\) # ((\Output~72_combout\ & \sravals[4][35]~125_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~72_combout\,
	datac => \ALT_INV_Output~103_combout\,
	datad => \ALT_INV_sravals[4][35]~125_combout\,
	dataf => \ALT_INV_Output~102_combout\,
	combout => \Output~104_combout\);

-- Location: LABCELL_X62_Y9_N33
\Output~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~106_combout\ = ( \sravals[4][52]~134_combout\ & ( (!\Output~26_combout\ & (!\Output~93_combout\ & ((!\Output~49_combout\) # (!\sllvals[4][20]~42_combout\)))) ) ) # ( !\sravals[4][52]~134_combout\ & ( (!\Output~93_combout\ & ((!\Output~49_combout\) 
-- # (!\sllvals[4][20]~42_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000111011100000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~49_combout\,
	datab => \ALT_INV_sllvals[4][20]~42_combout\,
	datac => \ALT_INV_Output~26_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_sravals[4][52]~134_combout\,
	combout => \Output~106_combout\);

-- Location: LABCELL_X63_Y7_N6
\sllvals[2][36]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][36]~73_combout\ = ( \sravals[0][35]~23_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\)))) ) ) ) # 
-- ( !\sravals[0][35]~23_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\)) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][33]~21_combout\))))) ) ) ) # ( \sravals[0][35]~23_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\)) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)) # 
-- (\ShiftCount[0]~input_o\ & ((\sravals[0][33]~21_combout\))))) ) ) ) # ( !\sravals[0][35]~23_combout\ & ( !\sravals[0][36]~25_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][34]~22_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][33]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][34]~22_combout\,
	datad => \ALT_INV_sravals[0][33]~21_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sllvals[2][36]~73_combout\);

-- Location: LABCELL_X60_Y7_N42
\sllvals[4][36]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][36]~74_combout\ = ( \sllvals[2][28]~57_combout\ & ( \sllvals[2][24]~49_combout\ & ( ((!\ShiftCount[2]~input_o\ & ((\sllvals[2][36]~73_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][32]~65_combout\))) # (\ShiftCount[3]~input_o\) ) ) ) # 
-- ( !\sllvals[2][28]~57_combout\ & ( \sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sllvals[2][36]~73_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)) # (\sllvals[2][32]~65_combout\))) ) ) ) 
-- # ( \sllvals[2][28]~57_combout\ & ( !\sllvals[2][24]~49_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sllvals[2][36]~73_combout\)))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][32]~65_combout\ & ((!\ShiftCount[3]~input_o\)))) ) ) 
-- ) # ( !\sllvals[2][28]~57_combout\ & ( !\sllvals[2][24]~49_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sllvals[2][36]~73_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][32]~65_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][32]~65_combout\,
	datac => \ALT_INV_sllvals[2][36]~73_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sllvals[2][28]~57_combout\,
	dataf => \ALT_INV_sllvals[2][24]~49_combout\,
	combout => \sllvals[4][36]~74_combout\);

-- Location: LABCELL_X62_Y9_N6
\Output~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~105_combout\ = ( \sllvals[4][4]~8_combout\ & ( (\Output~91_combout\ & ((\ShiftCount[5]~input_o\) # (\sllvals[4][36]~74_combout\))) ) ) # ( !\sllvals[4][4]~8_combout\ & ( (\sllvals[4][36]~74_combout\ & (!\ShiftCount[5]~input_o\ & 
-- \Output~91_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][36]~74_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_sllvals[4][4]~8_combout\,
	combout => \Output~105_combout\);

-- Location: LABCELL_X62_Y9_N9
\Output~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~107_combout\ = ( \Output~105_combout\ ) # ( !\Output~105_combout\ & ( (!\Output~106_combout\) # ((\sravals[4][36]~135_combout\ & \Output~72_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~106_combout\,
	datac => \ALT_INV_sravals[4][36]~135_combout\,
	datad => \ALT_INV_Output~72_combout\,
	dataf => \ALT_INV_Output~105_combout\,
	combout => \Output~107_combout\);

-- Location: LABCELL_X62_Y4_N54
\Output~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~109_combout\ = ( \sllvals[4][21]~44_combout\ & ( (!\Output~49_combout\ & (!\Output~93_combout\ & ((!\Output~26_combout\) # (!\sravals[4][53]~137_combout\)))) ) ) # ( !\sllvals[4][21]~44_combout\ & ( (!\Output~93_combout\ & ((!\Output~26_combout\) 
-- # (!\sravals[4][53]~137_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~26_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_Output~93_combout\,
	datad => \ALT_INV_sravals[4][53]~137_combout\,
	dataf => \ALT_INV_sllvals[4][21]~44_combout\,
	combout => \Output~109_combout\);

-- Location: LABCELL_X63_Y7_N12
\sllvals[2][37]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][37]~75_combout\ = ( \sravals[0][34]~22_combout\ & ( \sravals[0][36]~25_combout\ & ( ((!\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][35]~23_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # 
-- ( !\sravals[0][34]~22_combout\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][35]~23_combout\)))) # (\ShiftCount[0]~input_o\ & 
-- (((!\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][34]~22_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][37]~26_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][35]~23_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][34]~22_combout\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][37]~26_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][35]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][35]~23_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_sravals[0][34]~22_combout\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sllvals[2][37]~75_combout\);

-- Location: LABCELL_X60_Y4_N36
\sllvals[4][37]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][37]~76_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][25]~51_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][37]~75_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][29]~59_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][33]~67_combout\ & ( (\ShiftCount[3]~input_o\ & \sllvals[2][25]~51_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ 
-- & ( !\sllvals[2][33]~67_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][37]~75_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][29]~59_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][29]~59_combout\,
	datac => \ALT_INV_sllvals[2][25]~51_combout\,
	datad => \ALT_INV_sllvals[2][37]~75_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][33]~67_combout\,
	combout => \sllvals[4][37]~76_combout\);

-- Location: LABCELL_X62_Y4_N30
\Output~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~108_combout\ = ( \sllvals[4][37]~76_combout\ & ( (\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][5]~11_combout\))) ) ) # ( !\sllvals[4][37]~76_combout\ & ( (\sllvals[4][5]~11_combout\ & (\ShiftCount[5]~input_o\ & 
-- \Output~91_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][5]~11_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_sllvals[4][37]~76_combout\,
	combout => \Output~108_combout\);

-- Location: LABCELL_X62_Y4_N15
\Output~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~110_combout\ = ( \Output~108_combout\ ) # ( !\Output~108_combout\ & ( (!\Output~109_combout\) # ((\sravals[4][37]~138_combout\ & \Output~72_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][37]~138_combout\,
	datac => \ALT_INV_Output~72_combout\,
	datad => \ALT_INV_Output~109_combout\,
	dataf => \ALT_INV_Output~108_combout\,
	combout => \Output~110_combout\);

-- Location: LABCELL_X63_Y7_N18
\sllvals[2][38]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][38]~77_combout\ = ( \sravals[0][35]~23_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][36]~25_combout\) ) ) ) # ( !\sravals[0][35]~23_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][36]~25_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][35]~23_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][37]~26_combout\))) ) ) ) # ( 
-- !\sravals[0][35]~23_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][37]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][36]~25_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][38]~27_combout\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_sravals[0][35]~23_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][38]~77_combout\);

-- Location: LABCELL_X57_Y6_N12
\sllvals[4][38]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][38]~78_combout\ = ( \sllvals[2][38]~77_combout\ & ( \sllvals[2][30]~61_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\))) ) ) ) # 
-- ( !\sllvals[2][38]~77_combout\ & ( \sllvals[2][30]~61_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][26]~53_combout\)))) ) ) ) # ( \sllvals[2][38]~77_combout\ & ( !\sllvals[2][30]~61_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)))) ) ) ) # ( !\sllvals[2][38]~77_combout\ & ( !\sllvals[2][30]~61_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][34]~69_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][26]~53_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][26]~53_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][34]~69_combout\,
	datae => \ALT_INV_sllvals[2][38]~77_combout\,
	dataf => \ALT_INV_sllvals[2][30]~61_combout\,
	combout => \sllvals[4][38]~78_combout\);

-- Location: LABCELL_X56_Y4_N42
\Output~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~111_combout\ = ( \Output~91_combout\ & ( (!\ShiftCount[5]~input_o\ & ((\sllvals[4][38]~78_combout\))) # (\ShiftCount[5]~input_o\ & (\sllvals[4][6]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sllvals[4][6]~14_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][38]~78_combout\,
	dataf => \ALT_INV_Output~91_combout\,
	combout => \Output~111_combout\);

-- Location: LABCELL_X55_Y5_N36
\Output~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~112_combout\ = ( \Output~49_combout\ & ( (!\sllvals[4][22]~46_combout\ & (!\Output~93_combout\ & ((!\sravals[4][54]~140_combout\) # (!\Output~26_combout\)))) ) ) # ( !\Output~49_combout\ & ( (!\Output~93_combout\ & ((!\sravals[4][54]~140_combout\) 
-- # (!\Output~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][54]~140_combout\,
	datab => \ALT_INV_sllvals[4][22]~46_combout\,
	datac => \ALT_INV_Output~26_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~112_combout\);

-- Location: LABCELL_X55_Y5_N51
\Output~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~113_combout\ = ( \Output~72_combout\ & ( ((!\Output~112_combout\) # (\Output~111_combout\)) # (\sravals[4][38]~141_combout\) ) ) # ( !\Output~72_combout\ & ( (!\Output~112_combout\) # (\Output~111_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sravals[4][38]~141_combout\,
	datac => \ALT_INV_Output~111_combout\,
	datad => \ALT_INV_Output~112_combout\,
	dataf => \ALT_INV_Output~72_combout\,
	combout => \Output~113_combout\);

-- Location: LABCELL_X63_Y7_N54
\sllvals[2][39]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][39]~79_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][36]~25_combout\ & ( (\sravals[0][37]~26_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][39]~28_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][37]~26_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][36]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][39]~28_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][38]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][38]~27_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sravals[0][39]~28_combout\,
	datad => \ALT_INV_sravals[0][37]~26_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][36]~25_combout\,
	combout => \sllvals[2][39]~79_combout\);

-- Location: LABCELL_X61_Y6_N48
\sllvals[4][39]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][39]~80_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][35]~71_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][31]~63_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][27]~55_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sllvals[2][35]~71_combout\ & ( (\ShiftCount[2]~input_o\) # (\sllvals[2][39]~79_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][35]~71_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][31]~63_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][27]~55_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sllvals[2][35]~71_combout\ & ( (\sllvals[2][39]~79_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][39]~79_combout\,
	datab => \ALT_INV_sllvals[2][31]~63_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][27]~55_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][35]~71_combout\,
	combout => \sllvals[4][39]~80_combout\);

-- Location: LABCELL_X62_Y8_N6
\Output~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~114_combout\ = ( \sllvals[4][39]~80_combout\ & ( ((\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][7]~16_combout\)))) # (\Output~93_combout\) ) ) # ( !\sllvals[4][39]~80_combout\ & ( ((\ShiftCount[5]~input_o\ & 
-- (\Output~91_combout\ & \sllvals[4][7]~16_combout\))) # (\Output~93_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100100011111111110010001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Output~91_combout\,
	datac => \ALT_INV_sllvals[4][7]~16_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_sllvals[4][39]~80_combout\,
	combout => \Output~114_combout\);

-- Location: LABCELL_X62_Y8_N0
\Output~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~186_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((\ShiftCount[4]~input_o\ & (\sllvals[4][23]~48_combout\ & !\ShiftCount[5]~input_o\))) # (\Output~114_combout\)) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & 
-- (\sravals[4][39]~144_combout\)) # (\ShiftCount[4]~input_o\ & ((\sravals[4][55]~145_combout\)))))) # (\Output~114_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010111111111001001111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_sravals[4][39]~144_combout\,
	datac => \ALT_INV_sravals[4][55]~145_combout\,
	datad => \ALT_INV_Output~114_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	datag => \ALT_INV_sllvals[4][23]~48_combout\,
	combout => \Output~186_combout\);

-- Location: LABCELL_X64_Y5_N0
\sllvals[2][40]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][40]~81_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][37]~26_combout\ & ( (\sravals[0][38]~27_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][39]~28_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][38]~27_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][37]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][39]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][39]~28_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][38]~27_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][37]~26_combout\,
	combout => \sllvals[2][40]~81_combout\);

-- Location: LABCELL_X60_Y7_N48
\sllvals[4][40]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][40]~82_combout\ = ( \sllvals[2][36]~73_combout\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & ((\sllvals[2][32]~65_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][28]~57_combout\))) ) ) ) # 
-- ( !\sllvals[2][36]~73_combout\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\) # (\sllvals[2][32]~65_combout\)))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][28]~57_combout\ & ((\ShiftCount[3]~input_o\)))) ) ) ) 
-- # ( \sllvals[2][36]~73_combout\ & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sllvals[2][32]~65_combout\ & \ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sllvals[2][28]~57_combout\))) ) ) 
-- ) # ( !\sllvals[2][36]~73_combout\ & ( !\sllvals[2][40]~81_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sllvals[2][32]~65_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][28]~57_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][28]~57_combout\,
	datab => \ALT_INV_sllvals[2][32]~65_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sllvals[2][36]~73_combout\,
	dataf => \ALT_INV_sllvals[2][40]~81_combout\,
	combout => \sllvals[4][40]~82_combout\);

-- Location: LABCELL_X56_Y9_N15
\Output~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~115_combout\ = ( \sllvals[4][40]~82_combout\ & ( (\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][8]~18_combout\))) ) ) # ( !\sllvals[4][40]~82_combout\ & ( (\ShiftCount[5]~input_o\ & (\Output~91_combout\ & 
-- \sllvals[4][8]~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Output~91_combout\,
	datad => \ALT_INV_sllvals[4][8]~18_combout\,
	dataf => \ALT_INV_sllvals[4][40]~82_combout\,
	combout => \Output~115_combout\);

-- Location: LABCELL_X56_Y9_N12
\Output~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~116_combout\ = ( \sravals[4][56]~148_combout\ & ( ((\Output~49_combout\ & \sllvals[4][24]~50_combout\)) # (\Output~26_combout\) ) ) # ( !\sravals[4][56]~148_combout\ & ( (\Output~49_combout\ & \sllvals[4][24]~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~26_combout\,
	datac => \ALT_INV_Output~49_combout\,
	datad => \ALT_INV_sllvals[4][24]~50_combout\,
	dataf => \ALT_INV_sravals[4][56]~148_combout\,
	combout => \Output~116_combout\);

-- Location: LABCELL_X56_Y9_N0
\Output~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~117_combout\ = ( \Output~116_combout\ ) # ( !\Output~116_combout\ & ( (((\sravals[4][40]~147_combout\ & \Output~72_combout\)) # (\Output~93_combout\)) # (\Output~115_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[4][40]~147_combout\,
	datab => \ALT_INV_Output~72_combout\,
	datac => \ALT_INV_Output~115_combout\,
	datad => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_Output~116_combout\,
	combout => \Output~117_combout\);

-- Location: LABCELL_X64_Y5_N36
\sllvals[2][41]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][41]~83_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][38]~27_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][41]~31_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][39]~28_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][38]~27_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ 
-- & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][41]~31_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][40]~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][41]~31_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][38]~27_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][39]~28_combout\,
	combout => \sllvals[2][41]~83_combout\);

-- Location: LABCELL_X60_Y4_N12
\sllvals[4][41]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][41]~84_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][37]~75_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][29]~59_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][33]~67_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][37]~75_combout\))) # (\ShiftCount[3]~input_o\ & 
-- (\sllvals[2][29]~59_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][41]~83_combout\ & ( (\sllvals[2][33]~67_combout\ & \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][33]~67_combout\,
	datab => \ALT_INV_sllvals[2][29]~59_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][37]~75_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][41]~83_combout\,
	combout => \sllvals[4][41]~84_combout\);

-- Location: MLABCELL_X59_Y4_N18
\Output~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~118_combout\ = ( \Output~26_combout\ & ( \y2[63]~0_combout\ & ( ((!\ShiftCount[2]~input_o\ & (\sravals[2][57]~83_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][61]~84_combout\)))) # (\ShiftCount[3]~input_o\) ) ) ) # ( \Output~26_combout\ & 
-- ( !\y2[63]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sravals[2][57]~83_combout\)) # (\ShiftCount[2]~input_o\ & ((\sravals[2][61]~84_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110000000000000000000000000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][57]~83_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sravals[2][61]~84_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_Output~26_combout\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \Output~118_combout\);

-- Location: LABCELL_X61_Y8_N12
\Output~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~119_combout\ = ( \Output~91_combout\ & ( !\Output~93_combout\ & ( (!\Output~118_combout\ & ((!\ShiftCount[5]~input_o\ & (!\sllvals[4][41]~84_combout\)) # (\ShiftCount[5]~input_o\ & ((!\sllvals[4][9]~20_combout\))))) ) ) ) # ( !\Output~91_combout\ 
-- & ( !\Output~93_combout\ & ( !\Output~118_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][41]~84_combout\,
	datab => \ALT_INV_Output~118_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][9]~20_combout\,
	datae => \ALT_INV_Output~91_combout\,
	dataf => \ALT_INV_Output~93_combout\,
	combout => \Output~119_combout\);

-- Location: LABCELL_X57_Y4_N39
\Output~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~120_combout\ = ( \sravals[4][41]~150_combout\ & ( ((!\Output~119_combout\) # ((\Output~49_combout\ & \sllvals[4][25]~52_combout\))) # (\Output~72_combout\) ) ) # ( !\sravals[4][41]~150_combout\ & ( (!\Output~119_combout\) # ((\Output~49_combout\ & 
-- \sllvals[4][25]~52_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~72_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_sllvals[4][25]~52_combout\,
	datad => \ALT_INV_Output~119_combout\,
	dataf => \ALT_INV_sravals[4][41]~150_combout\,
	combout => \Output~120_combout\);

-- Location: LABCELL_X57_Y5_N48
\Output~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~121_combout\ = ( \ShiftCount[2]~input_o\ & ( \Output~26_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sravals[2][62]~102_combout\)) # (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \Output~26_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sravals[2][58]~101_combout\)) # (\ShiftCount[3]~input_o\ & ((\y2[63]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[2][62]~102_combout\,
	datab => \ALT_INV_sravals[2][58]~101_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~121_combout\);

-- Location: LABCELL_X64_Y5_N12
\sllvals[2][42]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][42]~85_combout\ = ( \sravals[0][42]~32_combout\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][41]~31_combout\)))) ) ) ) # ( !\sravals[0][42]~32_combout\ & ( \sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][40]~30_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # 
-- (\sravals[0][41]~31_combout\)))) ) ) ) # ( \sravals[0][42]~32_combout\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sravals[0][40]~30_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (((\sravals[0][41]~31_combout\ & !\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][42]~32_combout\ & ( !\sravals[0][39]~28_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][40]~30_combout\ & ((\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & 
-- (((\sravals[0][41]~31_combout\ & !\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][42]~32_combout\,
	dataf => \ALT_INV_sravals[0][39]~28_combout\,
	combout => \sllvals[2][42]~85_combout\);

-- Location: LABCELL_X57_Y6_N48
\sllvals[4][42]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][42]~86_combout\ = ( \sllvals[2][38]~77_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][30]~61_combout\) ) ) ) # ( !\sllvals[2][38]~77_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sllvals[2][30]~61_combout\ & 
-- \ShiftCount[3]~input_o\) ) ) ) # ( \sllvals[2][38]~77_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][42]~85_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][34]~69_combout\)) ) ) ) # ( !\sllvals[2][38]~77_combout\ 
-- & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][42]~85_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][34]~69_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][30]~61_combout\,
	datab => \ALT_INV_sllvals[2][34]~69_combout\,
	datac => \ALT_INV_sllvals[2][42]~85_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sllvals[2][38]~77_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][42]~86_combout\);

-- Location: LABCELL_X57_Y4_N12
\Output~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~122_combout\ = ( !\Output~93_combout\ & ( \Output~91_combout\ & ( (!\Output~121_combout\ & ((!\ShiftCount[5]~input_o\ & ((!\sllvals[4][42]~86_combout\))) # (\ShiftCount[5]~input_o\ & (!\sllvals[4][10]~22_combout\)))) ) ) ) # ( !\Output~93_combout\ 
-- & ( !\Output~91_combout\ & ( !\Output~121_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010100000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~121_combout\,
	datab => \ALT_INV_sllvals[4][10]~22_combout\,
	datac => \ALT_INV_sllvals[4][42]~86_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Output~93_combout\,
	dataf => \ALT_INV_Output~91_combout\,
	combout => \Output~122_combout\);

-- Location: LABCELL_X57_Y4_N36
\Output~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~123_combout\ = ( \Output~122_combout\ & ( (!\Output~72_combout\ & (\Output~49_combout\ & (\sllvals[4][26]~54_combout\))) # (\Output~72_combout\ & (((\Output~49_combout\ & \sllvals[4][26]~54_combout\)) # (\sravals[4][42]~153_combout\))) ) ) # ( 
-- !\Output~122_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~72_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_sllvals[4][26]~54_combout\,
	datad => \ALT_INV_sravals[4][42]~153_combout\,
	dataf => \ALT_INV_Output~122_combout\,
	combout => \Output~123_combout\);

-- Location: LABCELL_X64_Y5_N48
\sllvals[2][43]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][43]~87_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][40]~30_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][42]~32_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( 
-- !\ShiftCount[0]~input_o\ & ( \sravals[0][41]~31_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sravals[0][43]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][42]~32_combout\,
	datab => \ALT_INV_sravals[0][40]~30_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][43]~87_combout\);

-- Location: LABCELL_X63_Y6_N0
\sllvals[4][43]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][43]~88_combout\ = ( \sllvals[2][39]~79_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][31]~63_combout\) ) ) ) # ( !\sllvals[2][39]~79_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sllvals[2][31]~63_combout\ & 
-- \ShiftCount[3]~input_o\) ) ) ) # ( \sllvals[2][39]~79_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][43]~87_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][35]~71_combout\)) ) ) ) # ( !\sllvals[2][39]~79_combout\ 
-- & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][43]~87_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][35]~71_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][31]~63_combout\,
	datab => \ALT_INV_sllvals[2][35]~71_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][43]~87_combout\,
	datae => \ALT_INV_sllvals[2][39]~79_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][43]~88_combout\);

-- Location: LABCELL_X61_Y8_N45
\Output~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~124_combout\ = ( \sllvals[4][43]~88_combout\ & ( (!\Output~93_combout\ & ((!\Output~91_combout\) # ((\ShiftCount[5]~input_o\ & !\sllvals[4][11]~24_combout\)))) ) ) # ( !\sllvals[4][43]~88_combout\ & ( (!\Output~93_combout\ & 
-- ((!\ShiftCount[5]~input_o\) # ((!\Output~91_combout\) # (!\sllvals[4][11]~24_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010100010101000001010001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~93_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Output~91_combout\,
	datad => \ALT_INV_sllvals[4][11]~24_combout\,
	dataf => \ALT_INV_sllvals[4][43]~88_combout\,
	combout => \Output~124_combout\);

-- Location: LABCELL_X61_Y8_N48
\Output~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~125_combout\ = ( \Output~49_combout\ & ( ((!\Output~124_combout\) # ((\Output~71_combout\ & \sravals[5][43]~157_combout\))) # (\sllvals[4][27]~56_combout\) ) ) # ( !\Output~49_combout\ & ( (!\Output~124_combout\) # ((\Output~71_combout\ & 
-- \sravals[5][43]~157_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][27]~56_combout\,
	datab => \ALT_INV_Output~71_combout\,
	datac => \ALT_INV_sravals[5][43]~157_combout\,
	datad => \ALT_INV_Output~124_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~125_combout\);

-- Location: LABCELL_X64_Y5_N24
\sllvals[2][44]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][44]~89_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][41]~31_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sravals[0][43]~33_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( 
-- !\ShiftCount[0]~input_o\ & ( \sravals[0][42]~32_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sravals[0][44]~35_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][42]~32_combout\,
	datab => \ALT_INV_sravals[0][43]~33_combout\,
	datac => \ALT_INV_sravals[0][41]~31_combout\,
	datad => \ALT_INV_sravals[0][44]~35_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][44]~89_combout\);

-- Location: LABCELL_X60_Y7_N54
\sllvals[4][44]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][44]~90_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][36]~73_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][32]~65_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sllvals[2][40]~81_combout\ & ( (\sllvals[2][44]~89_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][36]~73_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][32]~65_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][44]~89_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][36]~73_combout\,
	datab => \ALT_INV_sllvals[2][32]~65_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][44]~89_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][40]~81_combout\,
	combout => \sllvals[4][44]~90_combout\);

-- Location: LABCELL_X61_Y9_N6
\Output~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~126_combout\ = ( !\Output~93_combout\ & ( (!\Output~91_combout\) # ((!\ShiftCount[5]~input_o\ & ((!\sllvals[4][44]~90_combout\))) # (\ShiftCount[5]~input_o\ & (!\sllvals[4][12]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101110111110101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~91_combout\,
	datab => \ALT_INV_sllvals[4][12]~26_combout\,
	datac => \ALT_INV_sllvals[4][44]~90_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Output~93_combout\,
	combout => \Output~126_combout\);

-- Location: LABCELL_X61_Y9_N12
\Output~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~127_combout\ = ( \Output~49_combout\ & ( ((!\Output~126_combout\) # ((\sravals[5][44]~160_combout\ & \Output~71_combout\))) # (\sllvals[4][28]~58_combout\) ) ) # ( !\Output~49_combout\ & ( (!\Output~126_combout\) # ((\sravals[5][44]~160_combout\ & 
-- \Output~71_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000101111111110000010111111111001101111111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[5][44]~160_combout\,
	datab => \ALT_INV_sllvals[4][28]~58_combout\,
	datac => \ALT_INV_Output~71_combout\,
	datad => \ALT_INV_Output~126_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~127_combout\);

-- Location: LABCELL_X64_Y4_N6
\sllvals[2][45]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][45]~91_combout\ = ( \sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][42]~32_combout\) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\ & 
-- \sravals[0][42]~32_combout\) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) ) ) ) # ( 
-- !\sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][45]~36_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][42]~32_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][45]~91_combout\);

-- Location: LABCELL_X60_Y4_N18
\sllvals[4][45]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][45]~92_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][33]~67_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][45]~91_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][37]~75_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][41]~83_combout\ & ( (\sllvals[2][33]~67_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ 
-- & ( !\sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][45]~91_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][37]~75_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][33]~67_combout\,
	datab => \ALT_INV_sllvals[2][37]~75_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][45]~91_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][41]~83_combout\,
	combout => \sllvals[4][45]~92_combout\);

-- Location: MLABCELL_X59_Y4_N30
\Output~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~128_combout\ = ( \sllvals[4][45]~92_combout\ & ( (!\Output~93_combout\ & ((!\Output~91_combout\) # ((\ShiftCount[5]~input_o\ & !\sllvals[4][13]~28_combout\)))) ) ) # ( !\sllvals[4][45]~92_combout\ & ( (!\Output~93_combout\ & 
-- ((!\Output~91_combout\) # ((!\ShiftCount[5]~input_o\) # (!\sllvals[4][13]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000010110000101000001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~91_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Output~93_combout\,
	datad => \ALT_INV_sllvals[4][13]~28_combout\,
	dataf => \ALT_INV_sllvals[4][45]~92_combout\,
	combout => \Output~128_combout\);

-- Location: MLABCELL_X59_Y4_N12
\Output~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~129_combout\ = ( \Output~49_combout\ & ( (!\Output~128_combout\) # (((\sravals[5][45]~163_combout\ & \Output~71_combout\)) # (\sllvals[4][29]~60_combout\)) ) ) # ( !\Output~49_combout\ & ( (!\Output~128_combout\) # ((\sravals[5][45]~163_combout\ & 
-- \Output~71_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110111011101111111011101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~128_combout\,
	datab => \ALT_INV_sllvals[4][29]~60_combout\,
	datac => \ALT_INV_sravals[5][45]~163_combout\,
	datad => \ALT_INV_Output~71_combout\,
	dataf => \ALT_INV_Output~49_combout\,
	combout => \Output~129_combout\);

-- Location: LABCELL_X64_Y4_N12
\sllvals[2][46]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][46]~93_combout\ = ( \sravals[0][44]~35_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( 
-- \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][45]~36_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][43]~33_combout\))) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\) # 
-- (\sravals[0][46]~37_combout\) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( !\ShiftCount[0]~input_o\ & ( (\sravals[0][46]~37_combout\ & !\ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][46]~37_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][45]~36_combout\,
	datad => \ALT_INV_sravals[0][43]~33_combout\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][46]~93_combout\);

-- Location: LABCELL_X57_Y6_N24
\sllvals[4][46]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][46]~94_combout\ = ( \sllvals[2][42]~85_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][34]~69_combout\) ) ) ) # ( !\sllvals[2][42]~85_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sllvals[2][34]~69_combout\ & 
-- \ShiftCount[3]~input_o\) ) ) ) # ( \sllvals[2][42]~85_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][46]~93_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][38]~77_combout\)) ) ) ) # ( !\sllvals[2][42]~85_combout\ 
-- & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][46]~93_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][38]~77_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][38]~77_combout\,
	datab => \ALT_INV_sllvals[2][34]~69_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][46]~93_combout\,
	datae => \ALT_INV_sllvals[2][42]~85_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][46]~94_combout\);

-- Location: LABCELL_X56_Y6_N6
\Output~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~130_combout\ = ( \Output~91_combout\ & ( (!\Output~93_combout\ & ((!\ShiftCount[5]~input_o\ & (!\sllvals[4][46]~94_combout\)) # (\ShiftCount[5]~input_o\ & ((!\sllvals[4][14]~30_combout\))))) ) ) # ( !\Output~91_combout\ & ( !\Output~93_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000100000001011000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][46]~94_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Output~93_combout\,
	datad => \ALT_INV_sllvals[4][14]~30_combout\,
	dataf => \ALT_INV_Output~91_combout\,
	combout => \Output~130_combout\);

-- Location: LABCELL_X56_Y6_N21
\Output~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~131_combout\ = ( \Output~71_combout\ & ( (!\Output~130_combout\) # (((\sllvals[4][30]~62_combout\ & \Output~49_combout\)) # (\sravals[5][46]~166_combout\)) ) ) # ( !\Output~71_combout\ & ( (!\Output~130_combout\) # ((\sllvals[4][30]~62_combout\ & 
-- \Output~49_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111111111111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][30]~62_combout\,
	datab => \ALT_INV_Output~49_combout\,
	datac => \ALT_INV_Output~130_combout\,
	datad => \ALT_INV_sravals[5][46]~166_combout\,
	dataf => \ALT_INV_Output~71_combout\,
	combout => \Output~131_combout\);

-- Location: LABCELL_X62_Y6_N48
\Output~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~132_combout\ = ( \ShiftCount[5]~input_o\ & ( \sravals[4][47]~167_combout\ & ( (\y2[63]~0_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \sravals[4][47]~167_combout\ & ( (!\ShiftFN[1]~input_o\ & (\sllvals[4][31]~64_combout\ 
-- & ((\ShiftCount[4]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\y2[63]~0_combout\)))) ) ) ) # ( \ShiftCount[5]~input_o\ & ( !\sravals[4][47]~167_combout\ & ( (\y2[63]~0_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( 
-- !\ShiftCount[5]~input_o\ & ( !\sravals[4][47]~167_combout\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\sllvals[4][31]~64_combout\)) # (\ShiftFN[1]~input_o\ & ((\y2[63]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000110000001100001111010100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][31]~64_combout\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sravals[4][47]~167_combout\,
	combout => \Output~132_combout\);

-- Location: LABCELL_X64_Y4_N48
\sllvals[2][47]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][47]~95_combout\ = ( \sravals[0][44]~35_combout\ & ( \sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][46]~37_combout\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][45]~36_combout\))) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( \sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][46]~37_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][45]~36_combout\ & ((!\ShiftCount[0]~input_o\)))) ) ) ) # ( \sravals[0][44]~35_combout\ & ( !\sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][46]~37_combout\ & \ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & 
-- (((\ShiftCount[0]~input_o\)) # (\sravals[0][45]~36_combout\))) ) ) ) # ( !\sravals[0][44]~35_combout\ & ( !\sravals[0][47]~38_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][46]~37_combout\ & \ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ 
-- & (\sravals[0][45]~36_combout\ & ((!\ShiftCount[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][45]~36_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sravals[0][46]~37_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][44]~35_combout\,
	dataf => \ALT_INV_sravals[0][47]~38_combout\,
	combout => \sllvals[2][47]~95_combout\);

-- Location: LABCELL_X63_Y6_N36
\sllvals[4][47]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][47]~96_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][35]~71_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][43]~87_combout\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \sllvals[2][39]~79_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][47]~95_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][39]~79_combout\,
	datab => \ALT_INV_sllvals[2][35]~71_combout\,
	datac => \ALT_INV_sllvals[2][47]~95_combout\,
	datad => \ALT_INV_sllvals[2][43]~87_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][47]~96_combout\);

-- Location: LABCELL_X62_Y6_N12
\Output~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~133_combout\ = ( \sllvals[4][47]~96_combout\ & ( ((\Output~91_combout\ & ((!\ShiftCount[5]~input_o\) # (\sllvals[4][15]~32_combout\)))) # (\Output~132_combout\) ) ) # ( !\sllvals[4][47]~96_combout\ & ( ((\ShiftCount[5]~input_o\ & 
-- (\Output~91_combout\ & \sllvals[4][15]~32_combout\))) # (\Output~132_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101011101011101010111110101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~132_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Output~91_combout\,
	datad => \ALT_INV_sllvals[4][15]~32_combout\,
	dataf => \ALT_INV_sllvals[4][47]~96_combout\,
	combout => \Output~133_combout\);

-- Location: LABCELL_X64_Y4_N54
\sllvals[2][48]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][48]~97_combout\ = ( \sravals[0][45]~36_combout\ & ( \ShiftCount[0]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\sravals[0][47]~38_combout\) ) ) ) # ( !\sravals[0][45]~36_combout\ & ( \ShiftCount[0]~input_o\ & ( (\sravals[0][47]~38_combout\ & 
-- !\ShiftCount[1]~input_o\) ) ) ) # ( \sravals[0][45]~36_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][48]~0_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][46]~37_combout\))) ) ) ) # ( !\sravals[0][45]~36_combout\ 
-- & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][48]~0_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][46]~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][48]~0_combout\,
	datac => \ALT_INV_sravals[0][46]~37_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][45]~36_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][48]~97_combout\);

-- Location: LABCELL_X60_Y7_N0
\Output~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~134_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sllvals[2][36]~73_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\sllvals[2][48]~97_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][44]~89_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][40]~81_combout\ & ( (\sllvals[2][36]~73_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ 
-- & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][48]~97_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][44]~89_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][36]~73_combout\,
	datab => \ALT_INV_sllvals[2][48]~97_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][44]~89_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][40]~81_combout\,
	combout => \Output~134_combout\);

-- Location: LABCELL_X62_Y9_N12
\Output~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~135_combout\ = ( \Output~134_combout\ & ( \sllvals[4][32]~66_combout\ & ( (!\ShiftCount[5]~input_o\) # ((!\ShiftCount[4]~input_o\ & (\sllvals[4][16]~34_combout\)) # (\ShiftCount[4]~input_o\ & ((\sllvals[4][0]~2_combout\)))) ) ) ) # ( 
-- !\Output~134_combout\ & ( \sllvals[4][32]~66_combout\ & ( (!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & (\sllvals[4][16]~34_combout\))) # (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\) # ((\sllvals[4][0]~2_combout\)))) ) ) ) # ( 
-- \Output~134_combout\ & ( !\sllvals[4][32]~66_combout\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\) # ((\sllvals[4][16]~34_combout\)))) # (\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & ((\sllvals[4][0]~2_combout\)))) ) ) ) # ( 
-- !\Output~134_combout\ & ( !\sllvals[4][32]~66_combout\ & ( (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\sllvals[4][16]~34_combout\)) # (\ShiftCount[4]~input_o\ & ((\sllvals[4][0]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sllvals[4][16]~34_combout\,
	datad => \ALT_INV_sllvals[4][0]~2_combout\,
	datae => \ALT_INV_Output~134_combout\,
	dataf => \ALT_INV_sllvals[4][32]~66_combout\,
	combout => \Output~135_combout\);

-- Location: LABCELL_X62_Y9_N18
\Output~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~136_combout\ = ( \Output~135_combout\ & ( \sravals[4][48]~19_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\Output~135_combout\ & ( \sravals[4][48]~19_combout\ & 
-- ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~135_combout\ & ( !\sravals[4][48]~19_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) # 
-- (\ShiftCount[5]~input_o\)))) ) ) ) # ( !\Output~135_combout\ & ( !\sravals[4][48]~19_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101111111110001010100000000110101011111111111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Output~135_combout\,
	dataf => \ALT_INV_sravals[4][48]~19_combout\,
	combout => \Output~136_combout\);

-- Location: LABCELL_X55_Y4_N0
\sllvals[2][49]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][49]~98_combout\ = ( \sravals[0][48]~0_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\sravals[0][46]~37_combout\) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( \ShiftCount[0]~input_o\ & ( (\sravals[0][46]~37_combout\ & 
-- \ShiftCount[1]~input_o\) ) ) ) # ( \sravals[0][48]~0_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][49]~1_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][47]~38_combout\)) ) ) ) # ( !\sravals[0][48]~0_combout\ & 
-- ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sravals[0][49]~1_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][47]~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][46]~37_combout\,
	datac => \ALT_INV_sravals[0][49]~1_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sllvals[2][49]~98_combout\);

-- Location: LABCELL_X60_Y4_N54
\Output~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~137_combout\ = ( \ShiftCount[2]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \sllvals[2][37]~75_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \sllvals[2][41]~83_combout\ ) ) ) # ( \ShiftCount[2]~input_o\ & ( 
-- !\ShiftCount[3]~input_o\ & ( \sllvals[2][45]~91_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][49]~98_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][41]~83_combout\,
	datab => \ALT_INV_sllvals[2][45]~91_combout\,
	datac => \ALT_INV_sllvals[2][49]~98_combout\,
	datad => \ALT_INV_sllvals[2][37]~75_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \Output~137_combout\);

-- Location: LABCELL_X61_Y4_N24
\Output~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~138_combout\ = ( \sllvals[4][17]~36_combout\ & ( \ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\) # (\sllvals[4][1]~3_combout\) ) ) ) # ( !\sllvals[4][17]~36_combout\ & ( \ShiftCount[5]~input_o\ & ( (\ShiftCount[4]~input_o\ & 
-- \sllvals[4][1]~3_combout\) ) ) ) # ( \sllvals[4][17]~36_combout\ & ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Output~137_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][33]~68_combout\)) ) ) ) # ( !\sllvals[4][17]~36_combout\ & ( 
-- !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Output~137_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][33]~68_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][33]~68_combout\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Output~137_combout\,
	datad => \ALT_INV_sllvals[4][1]~3_combout\,
	datae => \ALT_INV_sllvals[4][17]~36_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~138_combout\);

-- Location: LABCELL_X57_Y4_N21
\Output~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~139_combout\ = ( \sravals[4][49]~85_combout\ & ( \Output~138_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\sravals[4][49]~85_combout\ & ( \Output~138_combout\ & 
-- ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) ) # ( \sravals[4][49]~85_combout\ & ( !\Output~138_combout\ & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & 
-- !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( !\sravals[4][49]~85_combout\ & ( !\Output~138_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000001011001111111111000100111111111110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_sravals[4][49]~85_combout\,
	dataf => \ALT_INV_Output~138_combout\,
	combout => \Output~139_combout\);

-- Location: LABCELL_X55_Y4_N36
\sllvals[2][50]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][50]~99_combout\ = ( \sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][50]~2_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][47]~38_combout\))) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][47]~38_combout\))) ) ) ) # ( \sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][50]~2_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][47]~38_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][47]~38_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][47]~38_combout\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sllvals[2][50]~99_combout\);

-- Location: LABCELL_X57_Y6_N30
\Output~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~140_combout\ = ( \sllvals[2][38]~77_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sllvals[2][42]~85_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sllvals[2][38]~77_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][42]~85_combout\) ) ) ) # ( \sllvals[2][38]~77_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sllvals[2][50]~99_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][46]~93_combout\)) ) ) ) # ( 
-- !\sllvals[2][38]~77_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sllvals[2][50]~99_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][46]~93_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][46]~93_combout\,
	datac => \ALT_INV_sllvals[2][42]~85_combout\,
	datad => \ALT_INV_sllvals[2][50]~99_combout\,
	datae => \ALT_INV_sllvals[2][38]~77_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \Output~140_combout\);

-- Location: LABCELL_X55_Y5_N18
\Output~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~141_combout\ = ( \sllvals[4][2]~4_combout\ & ( \sllvals[4][34]~70_combout\ & ( ((!\ShiftCount[5]~input_o\ & (\Output~140_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][18]~38_combout\)))) # (\ShiftCount[4]~input_o\) ) ) ) # ( 
-- !\sllvals[4][2]~4_combout\ & ( \sllvals[4][34]~70_combout\ & ( (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Output~140_combout\))) # (\ShiftCount[5]~input_o\ & (((\sllvals[4][18]~38_combout\ & !\ShiftCount[4]~input_o\)))) ) ) ) # ( 
-- \sllvals[4][2]~4_combout\ & ( !\sllvals[4][34]~70_combout\ & ( (!\ShiftCount[5]~input_o\ & (\Output~140_combout\ & ((!\ShiftCount[4]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\) # (\sllvals[4][18]~38_combout\)))) ) ) ) # ( 
-- !\sllvals[4][2]~4_combout\ & ( !\sllvals[4][34]~70_combout\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Output~140_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][18]~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~140_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sllvals[4][18]~38_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sllvals[4][2]~4_combout\,
	dataf => \ALT_INV_sllvals[4][34]~70_combout\,
	combout => \Output~141_combout\);

-- Location: LABCELL_X55_Y5_N54
\Output~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~142_combout\ = ( \Output~141_combout\ & ( \sravals[4][50]~103_combout\ & ( (!\ShiftFN[1]~input_o\) # (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\)) ) ) ) # ( !\Output~141_combout\ & ( \sravals[4][50]~103_combout\ 
-- & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~141_combout\ & ( !\sravals[4][50]~103_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) 
-- # (\ShiftCount[5]~input_o\)))) ) ) ) # ( !\Output~141_combout\ & ( !\sravals[4][50]~103_combout\ & ( (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101101010111010111101000101000001011110111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Output~141_combout\,
	dataf => \ALT_INV_sravals[4][50]~103_combout\,
	combout => \Output~142_combout\);

-- Location: LABCELL_X55_Y4_N12
\sllvals[2][51]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][51]~100_combout\ = ( \sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( ((!\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][50]~2_combout\)))) # (\ShiftCount[1]~input_o\) ) ) ) # ( 
-- !\sravals[0][48]~0_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sravals[0][51]~3_combout\))) # (\ShiftCount[0]~input_o\ & (((\sravals[0][50]~2_combout\ & !\ShiftCount[1]~input_o\)))) ) ) ) # ( 
-- \sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][50]~2_combout\)))) ) ) ) # ( 
-- !\sravals[0][48]~0_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][50]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][51]~3_combout\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][48]~0_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sllvals[2][51]~100_combout\);

-- Location: LABCELL_X63_Y6_N12
\Output~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~143_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][39]~79_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][47]~95_combout\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \sllvals[2][43]~87_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][51]~100_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][39]~79_combout\,
	datab => \ALT_INV_sllvals[2][51]~100_combout\,
	datac => \ALT_INV_sllvals[2][47]~95_combout\,
	datad => \ALT_INV_sllvals[2][43]~87_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \Output~143_combout\);

-- Location: LABCELL_X62_Y4_N42
\Output~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~144_combout\ = ( \ShiftCount[5]~input_o\ & ( \sllvals[4][35]~72_combout\ & ( (!\ShiftCount[4]~input_o\ & ((\sllvals[4][19]~40_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][3]~6_combout\)) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( 
-- \sllvals[4][35]~72_combout\ & ( (\Output~143_combout\) # (\ShiftCount[4]~input_o\) ) ) ) # ( \ShiftCount[5]~input_o\ & ( !\sllvals[4][35]~72_combout\ & ( (!\ShiftCount[4]~input_o\ & ((\sllvals[4][19]~40_combout\))) # (\ShiftCount[4]~input_o\ & 
-- (\sllvals[4][3]~6_combout\)) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\sllvals[4][35]~72_combout\ & ( (!\ShiftCount[4]~input_o\ & \Output~143_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Output~143_combout\,
	datac => \ALT_INV_sllvals[4][3]~6_combout\,
	datad => \ALT_INV_sllvals[4][19]~40_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_sllvals[4][35]~72_combout\,
	combout => \Output~144_combout\);

-- Location: LABCELL_X62_Y4_N48
\Output~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~145_combout\ = ( \sravals[4][51]~120_combout\ & ( \Output~144_combout\ & ( (!\ShiftFN[1]~input_o\) # (((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\)) ) ) ) # ( !\sravals[4][51]~120_combout\ & ( \Output~144_combout\ 
-- & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) ) # ( \sravals[4][51]~120_combout\ & ( !\Output~144_combout\ & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & 
-- !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( !\sravals[4][51]~120_combout\ & ( !\Output~144_combout\ & ( (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011001000000011001111001100110111111110110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_sravals[4][51]~120_combout\,
	dataf => \ALT_INV_Output~144_combout\,
	combout => \Output~145_combout\);

-- Location: LABCELL_X55_Y4_N18
\sllvals[2][52]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][52]~101_combout\ = ( \sravals[0][51]~3_combout\ & ( \sravals[0][49]~1_combout\ & ( ((!\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # ( 
-- !\sravals[0][51]~3_combout\ & ( \sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)))) # (\ShiftCount[0]~input_o\ & 
-- (((\ShiftCount[1]~input_o\)))) ) ) ) # ( \sravals[0][51]~3_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[1]~input_o\ & (\sravals[0][50]~2_combout\)))) # 
-- (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( !\sravals[0][49]~1_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][50]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_sravals[0][52]~5_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][51]~3_combout\,
	dataf => \ALT_INV_sravals[0][49]~1_combout\,
	combout => \sllvals[2][52]~101_combout\);

-- Location: LABCELL_X60_Y7_N6
\Output~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~146_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][40]~81_combout\ & ( (\sllvals[2][44]~89_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][52]~101_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][48]~97_combout\)) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][44]~89_combout\) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sllvals[2][40]~81_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sllvals[2][52]~101_combout\))) # (\ShiftCount[2]~input_o\ & (\sllvals[2][48]~97_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][48]~97_combout\,
	datac => \ALT_INV_sllvals[2][52]~101_combout\,
	datad => \ALT_INV_sllvals[2][44]~89_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][40]~81_combout\,
	combout => \Output~146_combout\);

-- Location: LABCELL_X62_Y9_N54
\Output~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~147_combout\ = ( \Output~146_combout\ & ( \sllvals[4][36]~74_combout\ & ( (!\ShiftCount[5]~input_o\) # ((!\ShiftCount[4]~input_o\ & ((\sllvals[4][20]~42_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][4]~8_combout\))) ) ) ) # ( 
-- !\Output~146_combout\ & ( \sllvals[4][36]~74_combout\ & ( (!\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\ & \sllvals[4][20]~42_combout\)))) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\sllvals[4][4]~8_combout\))) ) ) ) # ( 
-- \Output~146_combout\ & ( !\sllvals[4][36]~74_combout\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\) # (\sllvals[4][20]~42_combout\)))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][4]~8_combout\ & (\ShiftCount[5]~input_o\))) ) ) ) # ( 
-- !\Output~146_combout\ & ( !\sllvals[4][36]~74_combout\ & ( (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\sllvals[4][20]~42_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][4]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_sllvals[4][4]~8_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][20]~42_combout\,
	datae => \ALT_INV_Output~146_combout\,
	dataf => \ALT_INV_sllvals[4][36]~74_combout\,
	combout => \Output~147_combout\);

-- Location: LABCELL_X62_Y9_N21
\Output~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~148_combout\ = ( \Output~147_combout\ & ( \sravals[4][52]~134_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\Output~147_combout\ & ( \sravals[4][52]~134_combout\ 
-- & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~147_combout\ & ( !\sravals[4][52]~134_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) 
-- # (\ShiftCount[5]~input_o\)))) ) ) ) # ( !\Output~147_combout\ & ( !\sravals[4][52]~134_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101111100011111010100001101000001011111110111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y2[63]~0_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Output~147_combout\,
	dataf => \ALT_INV_sravals[4][52]~134_combout\,
	combout => \Output~148_combout\);

-- Location: LABCELL_X55_Y4_N24
\sllvals[2][53]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][53]~102_combout\ = ( \sravals[0][51]~3_combout\ & ( \sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][53]~6_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][50]~2_combout\))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( \sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][53]~6_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # 
-- (\sravals[0][50]~2_combout\))) ) ) ) # ( \sravals[0][51]~3_combout\ & ( !\sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\sravals[0][53]~6_combout\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][50]~2_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) ) # ( !\sravals[0][51]~3_combout\ & ( !\sravals[0][52]~5_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\sravals[0][53]~6_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\sravals[0][50]~2_combout\ & 
-- ((\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][50]~2_combout\,
	datac => \ALT_INV_sravals[0][53]~6_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sravals[0][51]~3_combout\,
	dataf => \ALT_INV_sravals[0][52]~5_combout\,
	combout => \sllvals[2][53]~102_combout\);

-- Location: MLABCELL_X59_Y6_N24
\Output~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~149_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][41]~83_combout\ & ( (\sllvals[2][49]~98_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][53]~102_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][45]~91_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & \sllvals[2][49]~98_combout\) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sllvals[2][41]~83_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][53]~102_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][45]~91_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][45]~91_combout\,
	datab => \ALT_INV_sllvals[2][53]~102_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][49]~98_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][41]~83_combout\,
	combout => \Output~149_combout\);

-- Location: LABCELL_X62_Y4_N24
\Output~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~150_combout\ = ( \sllvals[4][5]~11_combout\ & ( \ShiftCount[5]~input_o\ & ( (\ShiftCount[4]~input_o\) # (\sllvals[4][21]~44_combout\) ) ) ) # ( !\sllvals[4][5]~11_combout\ & ( \ShiftCount[5]~input_o\ & ( (\sllvals[4][21]~44_combout\ & 
-- !\ShiftCount[4]~input_o\) ) ) ) # ( \sllvals[4][5]~11_combout\ & ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Output~149_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][37]~76_combout\)) ) ) ) # ( !\sllvals[4][5]~11_combout\ & ( 
-- !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Output~149_combout\))) # (\ShiftCount[4]~input_o\ & (\sllvals[4][37]~76_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][21]~44_combout\,
	datab => \ALT_INV_sllvals[4][37]~76_combout\,
	datac => \ALT_INV_Output~149_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sllvals[4][5]~11_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~150_combout\);

-- Location: LABCELL_X62_Y4_N51
\Output~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~151_combout\ = ( \sravals[4][53]~137_combout\ & ( \Output~150_combout\ & ( (!\ShiftFN[1]~input_o\) # (((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\)) ) ) ) # ( !\sravals[4][53]~137_combout\ & ( \Output~150_combout\ 
-- & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) ) # ( \sravals[4][53]~137_combout\ & ( !\Output~150_combout\ & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & 
-- !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( !\sravals[4][53]~137_combout\ & ( !\Output~150_combout\ & ( (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011001000110000001111001101110011111110111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sravals[4][53]~137_combout\,
	dataf => \ALT_INV_Output~150_combout\,
	combout => \Output~151_combout\);

-- Location: LABCELL_X53_Y4_N12
\sllvals[2][54]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][54]~103_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][51]~3_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- \sravals[0][53]~6_combout\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][54]~7_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][52]~5_combout\))) # (\ShiftCount[0]~input_o\ & 
-- (\sravals[0][51]~3_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (\sravals[0][54]~7_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][51]~3_combout\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][52]~5_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sllvals[2][54]~103_combout\);

-- Location: LABCELL_X57_Y6_N36
\Output~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~152_combout\ = ( \sllvals[2][42]~85_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sllvals[2][46]~93_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sllvals[2][42]~85_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- \sllvals[2][46]~93_combout\) ) ) ) # ( \sllvals[2][42]~85_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][54]~103_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][50]~99_combout\))) ) ) ) # ( 
-- !\sllvals[2][42]~85_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][54]~103_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][50]~99_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][54]~103_combout\,
	datab => \ALT_INV_sllvals[2][50]~99_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][46]~93_combout\,
	datae => \ALT_INV_sllvals[2][42]~85_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \Output~152_combout\);

-- Location: LABCELL_X56_Y4_N24
\Output~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~153_combout\ = ( \sllvals[4][38]~78_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\sllvals[4][6]~14_combout\) ) ) ) # ( !\sllvals[4][38]~78_combout\ & ( \ShiftCount[4]~input_o\ & ( (\sllvals[4][6]~14_combout\ & 
-- \ShiftCount[5]~input_o\) ) ) ) # ( \sllvals[4][38]~78_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Output~152_combout\))) # (\ShiftCount[5]~input_o\ & (\sllvals[4][22]~46_combout\)) ) ) ) # ( !\sllvals[4][38]~78_combout\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Output~152_combout\))) # (\ShiftCount[5]~input_o\ & (\sllvals[4][22]~46_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][22]~46_combout\,
	datab => \ALT_INV_sllvals[4][6]~14_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~152_combout\,
	datae => \ALT_INV_sllvals[4][38]~78_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~153_combout\);

-- Location: LABCELL_X55_Y5_N57
\Output~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~154_combout\ = ( \Output~153_combout\ & ( \sravals[4][54]~140_combout\ & ( (!\ShiftFN[1]~input_o\) # (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\)) ) ) ) # ( !\Output~153_combout\ & ( \sravals[4][54]~140_combout\ 
-- & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~153_combout\ & ( !\sravals[4][54]~140_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) 
-- # (\ShiftCount[5]~input_o\)))) ) ) ) # ( !\Output~153_combout\ & ( !\sravals[4][54]~140_combout\ & ( (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101101010101011111101000000010101011110101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_Output~153_combout\,
	dataf => \ALT_INV_sravals[4][54]~140_combout\,
	combout => \Output~154_combout\);

-- Location: LABCELL_X53_Y4_N18
\sllvals[2][55]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][55]~104_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][52]~5_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][55]~8_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][54]~7_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (\ShiftCount[0]~input_o\ & \sravals[0][52]~5_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][55]~8_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][54]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_sravals[0][55]~8_combout\,
	datad => \ALT_INV_sravals[0][52]~5_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sllvals[2][55]~104_combout\);

-- Location: LABCELL_X63_Y6_N18
\Output~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~155_combout\ = ( \sllvals[2][43]~87_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sllvals[2][51]~100_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\sllvals[2][43]~87_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & 
-- \sllvals[2][51]~100_combout\) ) ) ) # ( \sllvals[2][43]~87_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][55]~104_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][47]~95_combout\)) ) ) ) # ( 
-- !\sllvals[2][43]~87_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\sllvals[2][55]~104_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][47]~95_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][47]~95_combout\,
	datab => \ALT_INV_sllvals[2][55]~104_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][51]~100_combout\,
	datae => \ALT_INV_sllvals[2][43]~87_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \Output~155_combout\);

-- Location: LABCELL_X62_Y8_N48
\Output~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~156_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][39]~80_combout\ & ( (!\ShiftCount[5]~input_o\) # (\sllvals[4][7]~16_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][39]~80_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((\Output~155_combout\))) # (\ShiftCount[5]~input_o\ & (\sllvals[4][23]~48_combout\)) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][39]~80_combout\ & ( (\sllvals[4][7]~16_combout\ & \ShiftCount[5]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\sllvals[4][39]~80_combout\ & ( (!\ShiftCount[5]~input_o\ & ((\Output~155_combout\))) # (\ShiftCount[5]~input_o\ & (\sllvals[4][23]~48_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][23]~48_combout\,
	datab => \ALT_INV_Output~155_combout\,
	datac => \ALT_INV_sllvals[4][7]~16_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][39]~80_combout\,
	combout => \Output~156_combout\);

-- Location: LABCELL_X62_Y8_N24
\Output~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~157_combout\ = ( \Output~156_combout\ & ( \sravals[4][55]~145_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\Output~156_combout\ & ( \sravals[4][55]~145_combout\ 
-- & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~156_combout\ & ( !\sravals[4][55]~145_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) 
-- # (\ShiftCount[4]~input_o\)))) ) ) ) # ( !\Output~156_combout\ & ( !\sravals[4][55]~145_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011111111110001001100000000101100111111111110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Output~156_combout\,
	dataf => \ALT_INV_sravals[4][55]~145_combout\,
	combout => \Output~157_combout\);

-- Location: LABCELL_X53_Y4_N54
\sllvals[2][56]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][56]~105_combout\ = ( \ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (\sravals[0][54]~7_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][56]~10_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][55]~8_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & \sravals[0][54]~7_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & 
-- ( !\sravals[0][53]~6_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][56]~10_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][55]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_sravals[0][54]~7_combout\,
	datac => \ALT_INV_sravals[0][55]~8_combout\,
	datad => \ALT_INV_sravals[0][56]~10_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sravals[0][53]~6_combout\,
	combout => \sllvals[2][56]~105_combout\);

-- Location: LABCELL_X60_Y7_N12
\Output~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~158_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][48]~97_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][44]~89_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- \sllvals[2][52]~101_combout\ & ( (\sllvals[2][56]~105_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sllvals[2][48]~97_combout\)) # (\ShiftCount[2]~input_o\ & 
-- ((\sllvals[2][44]~89_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & \sllvals[2][56]~105_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sllvals[2][48]~97_combout\,
	datac => \ALT_INV_sllvals[2][56]~105_combout\,
	datad => \ALT_INV_sllvals[2][44]~89_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][52]~101_combout\,
	combout => \Output~158_combout\);

-- Location: LABCELL_X56_Y9_N48
\Output~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~159_combout\ = ( \sllvals[4][8]~18_combout\ & ( \ShiftCount[4]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\sllvals[4][40]~82_combout\) ) ) ) # ( !\sllvals[4][8]~18_combout\ & ( \ShiftCount[4]~input_o\ & ( (\sllvals[4][40]~82_combout\ & 
-- !\ShiftCount[5]~input_o\) ) ) ) # ( \sllvals[4][8]~18_combout\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Output~158_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][24]~50_combout\))) ) ) ) # ( !\sllvals[4][8]~18_combout\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Output~158_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][24]~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~158_combout\,
	datab => \ALT_INV_sllvals[4][40]~82_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][24]~50_combout\,
	datae => \ALT_INV_sllvals[4][8]~18_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~159_combout\);

-- Location: LABCELL_X56_Y9_N24
\Output~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~160_combout\ = ( \ShiftFN[1]~input_o\ & ( \y2[63]~0_combout\ & ( ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)) # (\sravals[4][56]~148_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \y2[63]~0_combout\ & ( \Output~159_combout\ ) ) ) # ( 
-- \ShiftFN[1]~input_o\ & ( !\y2[63]~0_combout\ & ( (\sravals[4][56]~148_combout\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\y2[63]~0_combout\ & ( \Output~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100000000000001010101010101010011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~159_combout\,
	datab => \ALT_INV_sravals[4][56]~148_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \Output~160_combout\);

-- Location: MLABCELL_X59_Y6_N0
\sllvals[2][57]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][57]~106_combout\ = ( \sravals[0][54]~7_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sravals[0][55]~8_combout\) ) ) ) # ( !\sravals[0][54]~7_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][55]~8_combout\ & 
-- !\ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][54]~7_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) ) ) ) # ( !\sravals[0][54]~7_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][56]~10_combout\,
	datab => \ALT_INV_sravals[0][55]~8_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][57]~11_combout\,
	datae => \ALT_INV_sravals[0][54]~7_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][57]~106_combout\);

-- Location: MLABCELL_X59_Y6_N36
\Output~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~161_combout\ = ( \ShiftCount[2]~input_o\ & ( \sllvals[2][49]~98_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][53]~102_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][45]~91_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \sllvals[2][49]~98_combout\ & ( (\ShiftCount[3]~input_o\) # (\sllvals[2][57]~106_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sllvals[2][49]~98_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][53]~102_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][45]~91_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sllvals[2][49]~98_combout\ & ( (\sllvals[2][57]~106_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][57]~106_combout\,
	datab => \ALT_INV_sllvals[2][53]~102_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][45]~91_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sllvals[2][49]~98_combout\,
	combout => \Output~161_combout\);

-- Location: LABCELL_X61_Y8_N18
\Output~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~162_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][9]~20_combout\ & ( (\ShiftCount[5]~input_o\) # (\sllvals[4][41]~84_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][9]~20_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Output~161_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][25]~52_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][9]~20_combout\ & ( (\sllvals[4][41]~84_combout\ & !\ShiftCount[5]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\sllvals[4][9]~20_combout\ & ( (!\ShiftCount[5]~input_o\ & (\Output~161_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][25]~52_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][41]~84_combout\,
	datab => \ALT_INV_Output~161_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_sllvals[4][25]~52_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][9]~20_combout\,
	combout => \Output~162_combout\);

-- Location: LABCELL_X62_Y8_N27
\Output~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~163_combout\ = ( \Output~162_combout\ & ( \sravals[4][57]~151_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\Output~162_combout\ & ( \sravals[4][57]~151_combout\ 
-- & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( \Output~162_combout\ & ( !\sravals[4][57]~151_combout\ & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[5]~input_o\) 
-- # (\ShiftCount[4]~input_o\)))) ) ) ) # ( !\Output~162_combout\ & ( !\sravals[4][57]~151_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011111100011111001100001011000000111111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Output~162_combout\,
	dataf => \ALT_INV_sravals[4][57]~151_combout\,
	combout => \Output~163_combout\);

-- Location: MLABCELL_X59_Y6_N12
\sllvals[2][58]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][58]~107_combout\ = ( \sravals[0][56]~10_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sravals[0][55]~8_combout\) ) ) ) # ( !\sravals[0][56]~10_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sravals[0][55]~8_combout\ & 
-- \ShiftCount[0]~input_o\) ) ) ) # ( \sravals[0][56]~10_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][58]~12_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) ) # ( !\sravals[0][56]~10_combout\ 
-- & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sravals[0][58]~12_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][58]~12_combout\,
	datab => \ALT_INV_sravals[0][55]~8_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][57]~11_combout\,
	datae => \ALT_INV_sravals[0][56]~10_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][58]~107_combout\);

-- Location: LABCELL_X57_Y6_N42
\Output~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~164_combout\ = ( \sllvals[2][54]~103_combout\ & ( \sllvals[2][46]~93_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][58]~107_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\sllvals[2][54]~103_combout\ & ( \sllvals[2][46]~93_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sllvals[2][58]~107_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sllvals[2][50]~99_combout\))) ) ) ) 
-- # ( \sllvals[2][54]~103_combout\ & ( !\sllvals[2][46]~93_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sllvals[2][58]~107_combout\) # (\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\ & (!\ShiftCount[2]~input_o\))) ) ) 
-- ) # ( !\sllvals[2][54]~103_combout\ & ( !\sllvals[2][46]~93_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][58]~107_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][50]~99_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][58]~107_combout\,
	datae => \ALT_INV_sllvals[2][54]~103_combout\,
	dataf => \ALT_INV_sllvals[2][46]~93_combout\,
	combout => \Output~164_combout\);

-- Location: LABCELL_X57_Y4_N24
\Output~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~165_combout\ = ( \ShiftCount[4]~input_o\ & ( \ShiftCount[5]~input_o\ & ( \sllvals[4][10]~22_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \ShiftCount[5]~input_o\ & ( \sllvals[4][26]~54_combout\ ) ) ) # ( \ShiftCount[4]~input_o\ & ( 
-- !\ShiftCount[5]~input_o\ & ( \sllvals[4][42]~86_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\ShiftCount[5]~input_o\ & ( \Output~164_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~164_combout\,
	datab => \ALT_INV_sllvals[4][10]~22_combout\,
	datac => \ALT_INV_sllvals[4][42]~86_combout\,
	datad => \ALT_INV_sllvals[4][26]~54_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~165_combout\);

-- Location: LABCELL_X57_Y4_N18
\Output~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~166_combout\ = ( \sravals[4][58]~154_combout\ & ( \Output~165_combout\ & ( ((!\ShiftFN[1]~input_o\) # ((!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) # (\y2[63]~0_combout\) ) ) ) # ( !\sravals[4][58]~154_combout\ & ( \Output~165_combout\ 
-- & ( (!\ShiftFN[1]~input_o\) # ((\y2[63]~0_combout\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) ) # ( \sravals[4][58]~154_combout\ & ( !\Output~165_combout\ & ( (\ShiftFN[1]~input_o\ & (((!\ShiftCount[5]~input_o\ & 
-- !\ShiftCount[4]~input_o\)) # (\y2[63]~0_combout\))) ) ) ) # ( !\sravals[4][58]~154_combout\ & ( !\Output~165_combout\ & ( (\y2[63]~0_combout\ & (\ShiftFN[1]~input_o\ & ((\ShiftCount[4]~input_o\) # (\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000010110000001111110001111100111111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_sravals[4][58]~154_combout\,
	dataf => \ALT_INV_Output~165_combout\,
	combout => \Output~166_combout\);

-- Location: MLABCELL_X59_Y6_N48
\sllvals[2][59]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][59]~108_combout\ = ( \sravals[0][58]~12_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) ) ) ) # ( !\sravals[0][58]~12_combout\ & 
-- ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][57]~11_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][56]~10_combout\)) ) ) ) # ( \sravals[0][58]~12_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][59]~13_combout\) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][59]~13_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][56]~10_combout\,
	datab => \ALT_INV_sravals[0][57]~11_combout\,
	datac => \ALT_INV_sravals[0][59]~13_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][58]~12_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sllvals[2][59]~108_combout\);

-- Location: LABCELL_X63_Y6_N24
\Output~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~167_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][47]~95_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][55]~104_combout\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \sllvals[2][51]~100_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][59]~108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][59]~108_combout\,
	datab => \ALT_INV_sllvals[2][55]~104_combout\,
	datac => \ALT_INV_sllvals[2][47]~95_combout\,
	datad => \ALT_INV_sllvals[2][51]~100_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \Output~167_combout\);

-- Location: LABCELL_X61_Y8_N24
\Output~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~168_combout\ = ( \ShiftCount[4]~input_o\ & ( \ShiftCount[5]~input_o\ & ( \sllvals[4][11]~24_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \ShiftCount[5]~input_o\ & ( \sllvals[4][27]~56_combout\ ) ) ) # ( \ShiftCount[4]~input_o\ & ( 
-- !\ShiftCount[5]~input_o\ & ( \sllvals[4][43]~88_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\ShiftCount[5]~input_o\ & ( \Output~167_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][11]~24_combout\,
	datab => \ALT_INV_sllvals[4][43]~88_combout\,
	datac => \ALT_INV_Output~167_combout\,
	datad => \ALT_INV_sllvals[4][27]~56_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~168_combout\);

-- Location: LABCELL_X61_Y8_N54
\Output~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~169_combout\ = ( \ShiftCount[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Output~168_combout\))) # (\ShiftFN[1]~input_o\ & (\y2[63]~0_combout\)) ) ) # ( !\ShiftCount[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~168_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\sravals[5][59]~169_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_y2[63]~0_combout\,
	datac => \ALT_INV_Output~168_combout\,
	datad => \ALT_INV_sravals[5][59]~169_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~169_combout\);

-- Location: LABCELL_X55_Y6_N54
\Output~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~170_combout\ = ( \sravals[0][59]~13_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][58]~12_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][57]~11_combout\)) ) ) ) # ( !\sravals[0][59]~13_combout\ & ( 
-- \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sravals[0][58]~12_combout\))) # (\ShiftCount[0]~input_o\ & (\sravals[0][57]~11_combout\)) ) ) ) # ( \sravals[0][59]~13_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # 
-- (\sravals[0][60]~15_combout\) ) ) ) # ( !\sravals[0][59]~13_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sravals[0][60]~15_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][60]~15_combout\,
	datab => \ALT_INV_sravals[0][57]~11_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sravals[0][58]~12_combout\,
	datae => \ALT_INV_sravals[0][59]~13_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~170_combout\);

-- Location: LABCELL_X60_Y7_N18
\Output~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~171_combout\ = ( \ShiftCount[3]~input_o\ & ( \sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sllvals[2][48]~97_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\Output~170_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][56]~105_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sllvals[2][52]~101_combout\ & ( (\ShiftCount[2]~input_o\ & \sllvals[2][48]~97_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( 
-- !\sllvals[2][52]~101_combout\ & ( (!\ShiftCount[2]~input_o\ & (\Output~170_combout\)) # (\ShiftCount[2]~input_o\ & ((\sllvals[2][56]~105_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_Output~170_combout\,
	datac => \ALT_INV_sllvals[2][56]~105_combout\,
	datad => \ALT_INV_sllvals[2][48]~97_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sllvals[2][52]~101_combout\,
	combout => \Output~171_combout\);

-- Location: LABCELL_X61_Y9_N18
\Output~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~172_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][12]~26_combout\ & ( (\sllvals[4][44]~90_combout\) # (\ShiftCount[5]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][12]~26_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Output~171_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][28]~58_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][12]~26_combout\ & ( (!\ShiftCount[5]~input_o\ & \sllvals[4][44]~90_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\sllvals[4][12]~26_combout\ & ( (!\ShiftCount[5]~input_o\ & (\Output~171_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][28]~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Output~171_combout\,
	datac => \ALT_INV_sllvals[4][44]~90_combout\,
	datad => \ALT_INV_sllvals[4][28]~58_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][12]~26_combout\,
	combout => \Output~172_combout\);

-- Location: LABCELL_X61_Y9_N57
\Output~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~173_combout\ = ( \ShiftCount[5]~input_o\ & ( \Output~172_combout\ & ( (!\ShiftFN[1]~input_o\) # (\y2[63]~0_combout\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Output~172_combout\ & ( (!\ShiftFN[1]~input_o\) # (\sravals[5][60]~170_combout\) ) ) ) # ( 
-- \ShiftCount[5]~input_o\ & ( !\Output~172_combout\ & ( (\ShiftFN[1]~input_o\ & \y2[63]~0_combout\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\Output~172_combout\ & ( (\ShiftFN[1]~input_o\ & \sravals[5][60]~170_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000001010000010110101010111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_y2[63]~0_combout\,
	datad => \ALT_INV_sravals[5][60]~170_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Output~172_combout\,
	combout => \Output~173_combout\);

-- Location: LABCELL_X60_Y6_N12
\Output~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~174_combout\ = ( \sravals[0][58]~12_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][60]~15_combout\)))) # (\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)) # 
-- (\sravals[0][59]~13_combout\))) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\) # (\sravals[0][60]~15_combout\)))) # (\ShiftCount[1]~input_o\ & 
-- (\sravals[0][59]~13_combout\ & ((!\ShiftCount[0]~input_o\)))) ) ) ) # ( \sravals[0][58]~12_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][60]~15_combout\ & \ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & 
-- (((\ShiftCount[0]~input_o\)) # (\sravals[0][59]~13_combout\))) ) ) ) # ( !\sravals[0][58]~12_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\sravals[0][60]~15_combout\ & \ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ 
-- & (\sravals[0][59]~13_combout\ & ((!\ShiftCount[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][59]~13_combout\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][58]~12_combout\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \Output~174_combout\);

-- Location: MLABCELL_X59_Y6_N54
\Output~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~175_combout\ = ( \ShiftCount[2]~input_o\ & ( \Output~174_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][57]~106_combout\)) # (\ShiftCount[3]~input_o\ & ((\sllvals[2][49]~98_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- \Output~174_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sllvals[2][53]~102_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\Output~174_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sllvals[2][57]~106_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sllvals[2][49]~98_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\Output~174_combout\ & ( (\sllvals[2][53]~102_combout\ & \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][57]~106_combout\,
	datab => \ALT_INV_sllvals[2][53]~102_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sllvals[2][49]~98_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Output~174_combout\,
	combout => \Output~175_combout\);

-- Location: MLABCELL_X59_Y4_N54
\Output~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~176_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][45]~92_combout\ & ( (!\ShiftCount[5]~input_o\) # (\sllvals[4][13]~28_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][45]~92_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Output~175_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][29]~60_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][45]~92_combout\ & ( (\ShiftCount[5]~input_o\ & \sllvals[4][13]~28_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\sllvals[4][45]~92_combout\ & ( (!\ShiftCount[5]~input_o\ & (\Output~175_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][29]~60_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~175_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sllvals[4][13]~28_combout\,
	datad => \ALT_INV_sllvals[4][29]~60_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][45]~92_combout\,
	combout => \Output~176_combout\);

-- Location: MLABCELL_X59_Y4_N0
\Output~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~182_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((\Output~176_combout\))) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\sllvals[4][4]~1_combout\ & ((((\y2[63]~0_combout\))))) # (\sllvals[4][4]~1_combout\ & ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ 
-- & (\sravals[2][61]~84_combout\)) # (\ShiftCount[4]~input_o\ & ((\y2[63]~0_combout\))))) # (\ShiftCount[5]~input_o\ & (((\y2[63]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000001000000000000001111000011111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][4]~1_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sravals[2][61]~84_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	datag => \ALT_INV_Output~176_combout\,
	combout => \Output~182_combout\);

-- Location: LABCELL_X60_Y6_N18
\Output~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~177_combout\ = ( \sravals[0][62]~17_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & (\sravals[0][60]~15_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\)))) ) ) ) # ( 
-- !\sravals[0][62]~17_combout\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sravals[0][60]~15_combout\)) # (\ShiftCount[0]~input_o\ & 
-- ((\sravals[0][59]~13_combout\))))) ) ) ) # ( \sravals[0][62]~17_combout\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (((!\ShiftCount[0]~input_o\)))) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][60]~15_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\))))) ) ) ) # ( !\sravals[0][62]~17_combout\ & ( !\sravals[0][61]~16_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & 
-- (\sravals[0][60]~15_combout\)) # (\ShiftCount[0]~input_o\ & ((\sravals[0][59]~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_sravals[0][59]~13_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sravals[0][62]~17_combout\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \Output~177_combout\);

-- Location: LABCELL_X57_Y6_N18
\Output~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~178_combout\ = ( \sllvals[2][54]~103_combout\ & ( \Output~177_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][58]~107_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\))) ) ) ) # ( 
-- !\sllvals[2][54]~103_combout\ & ( \Output~177_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sllvals[2][58]~107_combout\)))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\ & (\ShiftCount[2]~input_o\))) ) ) ) # ( 
-- \sllvals[2][54]~103_combout\ & ( !\Output~177_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sllvals[2][58]~107_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sllvals[2][50]~99_combout\))) ) ) ) # ( 
-- !\sllvals[2][54]~103_combout\ & ( !\Output~177_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sllvals[2][58]~107_combout\))) # (\ShiftCount[3]~input_o\ & (\sllvals[2][50]~99_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sllvals[2][50]~99_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sllvals[2][58]~107_combout\,
	datae => \ALT_INV_sllvals[2][54]~103_combout\,
	dataf => \ALT_INV_Output~177_combout\,
	combout => \Output~178_combout\);

-- Location: LABCELL_X56_Y6_N54
\Output~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~179_combout\ = ( \ShiftCount[4]~input_o\ & ( \sllvals[4][46]~94_combout\ & ( (!\ShiftCount[5]~input_o\) # (\sllvals[4][14]~30_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sllvals[4][46]~94_combout\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Output~178_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][30]~62_combout\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\sllvals[4][46]~94_combout\ & ( (\ShiftCount[5]~input_o\ & \sllvals[4][14]~30_combout\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( 
-- !\sllvals[4][46]~94_combout\ & ( (!\ShiftCount[5]~input_o\ & (\Output~178_combout\)) # (\ShiftCount[5]~input_o\ & ((\sllvals[4][30]~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~178_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_sllvals[4][30]~62_combout\,
	datad => \ALT_INV_sllvals[4][14]~30_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sllvals[4][46]~94_combout\,
	combout => \Output~179_combout\);

-- Location: LABCELL_X56_Y6_N45
\Output~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~180_combout\ = ( \y2[63]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Output~179_combout\)))) # (\ShiftFN[1]~input_o\ & (((\ShiftCount[5]~input_o\)) # (\sravals[5][62]~171_combout\))) ) ) # ( !\y2[63]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\Output~179_combout\)))) # (\ShiftFN[1]~input_o\ & (\sravals[5][62]~171_combout\ & (!\ShiftCount[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_sravals[5][62]~171_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Output~179_combout\,
	dataf => \ALT_INV_y2[63]~0_combout\,
	combout => \Output~180_combout\);

-- Location: LABCELL_X60_Y6_N54
\sllvals[2][63]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[2][63]~109_combout\ = ( \ShiftCount[0]~input_o\ & ( \sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) # (\ShiftCount[1]~input_o\ & ((\sravals[0][60]~15_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- \sravals[0][61]~16_combout\ & ( (\y2[63]~0_combout\) # (\ShiftCount[1]~input_o\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sravals[0][62]~17_combout\)) # (\ShiftCount[1]~input_o\ & 
-- ((\sravals[0][60]~15_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sravals[0][61]~16_combout\ & ( (!\ShiftCount[1]~input_o\ & \y2[63]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sravals[0][62]~17_combout\,
	datab => \ALT_INV_sravals[0][60]~15_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_y2[63]~0_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sravals[0][61]~16_combout\,
	combout => \sllvals[2][63]~109_combout\);

-- Location: LABCELL_X63_Y6_N30
\sllvals[4][63]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[4][63]~110_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][51]~100_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \sllvals[2][59]~108_combout\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \sllvals[2][55]~104_combout\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \sllvals[2][63]~109_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[2][59]~108_combout\,
	datab => \ALT_INV_sllvals[2][55]~104_combout\,
	datac => \ALT_INV_sllvals[2][63]~109_combout\,
	datad => \ALT_INV_sllvals[2][51]~100_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sllvals[4][63]~110_combout\);

-- Location: LABCELL_X62_Y6_N24
\sllvals[6][63]~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllvals[6][63]~111_combout\ = ( \sllvals[4][15]~32_combout\ & ( \sllvals[4][63]~110_combout\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\sllvals[4][31]~64_combout\))) # (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\) # 
-- (\sllvals[4][47]~96_combout\)))) ) ) ) # ( !\sllvals[4][15]~32_combout\ & ( \sllvals[4][63]~110_combout\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\sllvals[4][31]~64_combout\))) # (\ShiftCount[4]~input_o\ & 
-- (((\sllvals[4][47]~96_combout\ & !\ShiftCount[5]~input_o\)))) ) ) ) # ( \sllvals[4][15]~32_combout\ & ( !\sllvals[4][63]~110_combout\ & ( (!\ShiftCount[4]~input_o\ & (\sllvals[4][31]~64_combout\ & ((\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ & 
-- (((\ShiftCount[5]~input_o\) # (\sllvals[4][47]~96_combout\)))) ) ) ) # ( !\sllvals[4][15]~32_combout\ & ( !\sllvals[4][63]~110_combout\ & ( (!\ShiftCount[4]~input_o\ & (\sllvals[4][31]~64_combout\ & ((\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ 
-- & (((\sllvals[4][47]~96_combout\ & !\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sllvals[4][31]~64_combout\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_sllvals[4][47]~96_combout\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_sllvals[4][15]~32_combout\,
	dataf => \ALT_INV_sllvals[4][63]~110_combout\,
	combout => \sllvals[6][63]~111_combout\);

-- Location: LABCELL_X56_Y3_N30
\Output~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~181_combout\ = ( \y2[63]~0_combout\ & ( \sllvals[6][63]~111_combout\ ) ) # ( !\y2[63]~0_combout\ & ( \sllvals[6][63]~111_combout\ & ( !\ShiftFN[1]~input_o\ ) ) ) # ( \y2[63]~0_combout\ & ( !\sllvals[6][63]~111_combout\ & ( \ShiftFN[1]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_y2[63]~0_combout\,
	dataf => \ALT_INV_sllvals[6][63]~111_combout\,
	combout => \Output~181_combout\);

-- Location: IOIBUF_X88_Y81_N2
\Arith[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(0),
	o => \Arith[0]~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\Arith[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(1),
	o => \Arith[1]~input_o\);

-- Location: IOIBUF_X76_Y81_N18
\Arith[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(2),
	o => \Arith[2]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\Arith[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(3),
	o => \Arith[3]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\Arith[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(4),
	o => \Arith[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\Arith[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(5),
	o => \Arith[5]~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\Arith[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(6),
	o => \Arith[6]~input_o\);

-- Location: IOIBUF_X28_Y81_N52
\Arith[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(7),
	o => \Arith[7]~input_o\);

-- Location: IOIBUF_X86_Y81_N1
\Arith[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(8),
	o => \Arith[8]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\Arith[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(9),
	o => \Arith[9]~input_o\);

-- Location: IOIBUF_X82_Y81_N58
\Arith[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(10),
	o => \Arith[10]~input_o\);

-- Location: IOIBUF_X84_Y81_N1
\Arith[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(11),
	o => \Arith[11]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\Arith[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(12),
	o => \Arith[12]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\Arith[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(13),
	o => \Arith[13]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\Arith[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(14),
	o => \Arith[14]~input_o\);

-- Location: IOIBUF_X68_Y81_N52
\Arith[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(15),
	o => \Arith[15]~input_o\);

-- Location: IOIBUF_X50_Y81_N58
\Arith[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(16),
	o => \Arith[16]~input_o\);

-- Location: IOIBUF_X66_Y81_N41
\Arith[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(17),
	o => \Arith[17]~input_o\);

-- Location: IOIBUF_X84_Y81_N18
\Arith[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(18),
	o => \Arith[18]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\Arith[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(19),
	o => \Arith[19]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\Arith[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(20),
	o => \Arith[20]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\Arith[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(21),
	o => \Arith[21]~input_o\);

-- Location: IOIBUF_X54_Y81_N1
\Arith[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(22),
	o => \Arith[22]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\Arith[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(23),
	o => \Arith[23]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\Arith[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(24),
	o => \Arith[24]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\Arith[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(25),
	o => \Arith[25]~input_o\);

-- Location: IOIBUF_X70_Y81_N18
\Arith[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(26),
	o => \Arith[26]~input_o\);

-- Location: IOIBUF_X74_Y81_N58
\Arith[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(27),
	o => \Arith[27]~input_o\);

-- Location: IOIBUF_X86_Y81_N18
\Arith[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(28),
	o => \Arith[28]~input_o\);

-- Location: IOIBUF_X60_Y81_N35
\Arith[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(29),
	o => \Arith[29]~input_o\);

-- Location: IOIBUF_X82_Y81_N75
\Arith[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(30),
	o => \Arith[30]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\Arith[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(31),
	o => \Arith[31]~input_o\);

-- Location: IOIBUF_X60_Y81_N52
\Arith[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(32),
	o => \Arith[32]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\Arith[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(33),
	o => \Arith[33]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\Arith[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(34),
	o => \Arith[34]~input_o\);

-- Location: IOIBUF_X72_Y81_N18
\Arith[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(35),
	o => \Arith[35]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\Arith[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(36),
	o => \Arith[36]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\Arith[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(37),
	o => \Arith[37]~input_o\);

-- Location: IOIBUF_X80_Y81_N1
\Arith[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(38),
	o => \Arith[38]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\Arith[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(39),
	o => \Arith[39]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\Arith[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(40),
	o => \Arith[40]~input_o\);

-- Location: IOIBUF_X80_Y81_N18
\Arith[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(41),
	o => \Arith[41]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\Arith[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(42),
	o => \Arith[42]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\Arith[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(43),
	o => \Arith[43]~input_o\);

-- Location: IOIBUF_X84_Y81_N35
\Arith[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(44),
	o => \Arith[44]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\Arith[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(45),
	o => \Arith[45]~input_o\);

-- Location: IOIBUF_X74_Y81_N92
\Arith[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(46),
	o => \Arith[46]~input_o\);

-- Location: IOIBUF_X74_Y81_N75
\Arith[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(47),
	o => \Arith[47]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\Arith[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(48),
	o => \Arith[48]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\Arith[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(49),
	o => \Arith[49]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\Arith[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(50),
	o => \Arith[50]~input_o\);

-- Location: IOIBUF_X68_Y81_N1
\Arith[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(51),
	o => \Arith[51]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\Arith[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(52),
	o => \Arith[52]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\Arith[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(53),
	o => \Arith[53]~input_o\);

-- Location: IOIBUF_X58_Y81_N58
\Arith[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(54),
	o => \Arith[54]~input_o\);

-- Location: IOIBUF_X72_Y81_N52
\Arith[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(55),
	o => \Arith[55]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\Arith[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(56),
	o => \Arith[56]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\Arith[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(57),
	o => \Arith[57]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\Arith[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(58),
	o => \Arith[58]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\Arith[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(59),
	o => \Arith[59]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\Arith[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(60),
	o => \Arith[60]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\Arith[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(61),
	o => \Arith[61]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\Arith[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(62),
	o => \Arith[62]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\Arith[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(63),
	o => \Arith[63]~input_o\);

-- Location: IOIBUF_X58_Y81_N75
\ShiftFN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X35_Y45_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


