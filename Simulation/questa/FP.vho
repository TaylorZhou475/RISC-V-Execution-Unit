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

-- DATE "11/29/2025 16:04:32"

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

ENTITY 	ShiftSeparate222222 IS
    PORT (
	Input : IN std_logic_vector(63 DOWNTO 0);
	Arith : IN std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	ShiftCount : IN std_logic_vector(6 DOWNTO 0);
	Output : OUT std_logic_vector(63 DOWNTO 0)
	);
END ShiftSeparate222222;

-- Design Ports Information
-- ExtWord	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[12]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[13]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[16]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[18]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[20]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[21]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[22]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[23]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[24]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[25]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[27]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[28]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[29]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[31]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[32]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[33]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[34]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[35]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[36]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[37]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[38]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[39]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[40]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[41]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[42]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[43]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[44]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[45]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[46]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[47]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[48]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[49]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[50]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[51]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[52]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[53]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[54]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[55]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[56]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[57]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[58]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[59]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[60]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[61]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[62]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[63]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[32]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[48]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[16]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[40]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[8]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[56]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[24]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[36]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[52]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[20]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[44]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[60]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[28]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[34]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[50]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[42]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[58]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[38]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[54]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[22]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[46]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[62]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[33]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[49]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[41]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[57]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[25]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[37]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[53]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[21]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[45]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[61]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[29]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[35]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[51]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[19]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[43]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[59]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[27]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[39]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[55]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[23]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[47]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[15]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[63]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[31]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[9]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[11]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[14]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[15]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[17]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[18]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[19]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[20]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[21]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[23]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[24]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[25]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[26]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[27]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[28]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[29]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[30]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[31]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[32]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[33]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[34]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[35]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[36]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[37]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[38]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[39]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[40]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[41]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[42]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[43]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[44]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[45]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[46]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[47]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[48]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[49]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[50]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[51]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[52]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[53]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[54]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[55]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[56]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[57]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[58]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[59]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[60]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[61]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[62]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Arith[63]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftSeparate222222 IS
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
SIGNAL ww_ShiftCount : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(63 DOWNTO 0);
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \ShiftCount[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Arith[0]~input_o\ : std_logic;
SIGNAL \ShiftCount[0]~input_o\ : std_logic;
SIGNAL \ShiftCount[1]~input_o\ : std_logic;
SIGNAL \Output~0_combout\ : std_logic;
SIGNAL \ShiftCount[4]~input_o\ : std_logic;
SIGNAL \Input[16]~input_o\ : std_logic;
SIGNAL \ShiftCount[3]~input_o\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \ShiftCount[2]~input_o\ : std_logic;
SIGNAL \Input[8]~input_o\ : std_logic;
SIGNAL \sra2[0]~1_combout\ : std_logic;
SIGNAL \sra2[0]~0_combout\ : std_logic;
SIGNAL \Input[32]~input_o\ : std_logic;
SIGNAL \ShiftCount[5]~input_o\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \srl32[0]~0_combout\ : std_logic;
SIGNAL \sra2[0]~2_combout\ : std_logic;
SIGNAL \Input[48]~input_o\ : std_logic;
SIGNAL \srl32[16]~1_combout\ : std_logic;
SIGNAL \Input[56]~input_o\ : std_logic;
SIGNAL \Input[24]~input_o\ : std_logic;
SIGNAL \srl32[24]~3_combout\ : std_logic;
SIGNAL \Input[40]~input_o\ : std_logic;
SIGNAL \srl32[8]~2_combout\ : std_logic;
SIGNAL \srl8[0]~0_combout\ : std_logic;
SIGNAL \Input[20]~input_o\ : std_logic;
SIGNAL \Input[52]~input_o\ : std_logic;
SIGNAL \srl32[20]~5_combout\ : std_logic;
SIGNAL \Input[36]~input_o\ : std_logic;
SIGNAL \srl32[4]~4_combout\ : std_logic;
SIGNAL \Input[28]~input_o\ : std_logic;
SIGNAL \Input[60]~input_o\ : std_logic;
SIGNAL \srl32[28]~7_combout\ : std_logic;
SIGNAL \Input[44]~input_o\ : std_logic;
SIGNAL \Input[12]~input_o\ : std_logic;
SIGNAL \srl32[12]~6_combout\ : std_logic;
SIGNAL \srl8[4]~1_combout\ : std_logic;
SIGNAL \Input[10]~input_o\ : std_logic;
SIGNAL \Input[42]~input_o\ : std_logic;
SIGNAL \srl32[10]~10_combout\ : std_logic;
SIGNAL \Input[34]~input_o\ : std_logic;
SIGNAL \srl32[2]~8_combout\ : std_logic;
SIGNAL \Input[58]~input_o\ : std_logic;
SIGNAL \Input[26]~input_o\ : std_logic;
SIGNAL \srl32[26]~11_combout\ : std_logic;
SIGNAL \Input[18]~input_o\ : std_logic;
SIGNAL \Input[50]~input_o\ : std_logic;
SIGNAL \srl32[18]~9_combout\ : std_logic;
SIGNAL \srl8[2]~2_combout\ : std_logic;
SIGNAL \Input[30]~input_o\ : std_logic;
SIGNAL \Input[62]~input_o\ : std_logic;
SIGNAL \srl32[30]~15_combout\ : std_logic;
SIGNAL \Input[22]~input_o\ : std_logic;
SIGNAL \Input[54]~input_o\ : std_logic;
SIGNAL \srl32[22]~13_combout\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \Input[38]~input_o\ : std_logic;
SIGNAL \srl32[6]~12_combout\ : std_logic;
SIGNAL \Input[46]~input_o\ : std_logic;
SIGNAL \Input[14]~input_o\ : std_logic;
SIGNAL \srl32[14]~14_combout\ : std_logic;
SIGNAL \srl8[6]~3_combout\ : std_logic;
SIGNAL \srl2[0]~0_combout\ : std_logic;
SIGNAL \Input[41]~input_o\ : std_logic;
SIGNAL \Input[9]~input_o\ : std_logic;
SIGNAL \srl32[9]~18_combout\ : std_logic;
SIGNAL \Input[49]~input_o\ : std_logic;
SIGNAL \Input[17]~input_o\ : std_logic;
SIGNAL \srl32[17]~17_combout\ : std_logic;
SIGNAL \Input[57]~input_o\ : std_logic;
SIGNAL \Input[25]~input_o\ : std_logic;
SIGNAL \srl32[25]~19_combout\ : std_logic;
SIGNAL \Input[33]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \srl32[1]~16_combout\ : std_logic;
SIGNAL \srl8[1]~4_combout\ : std_logic;
SIGNAL \Input[27]~input_o\ : std_logic;
SIGNAL \Input[59]~input_o\ : std_logic;
SIGNAL \srl32[27]~27_combout\ : std_logic;
SIGNAL \Input[19]~input_o\ : std_logic;
SIGNAL \Input[51]~input_o\ : std_logic;
SIGNAL \srl32[19]~25_combout\ : std_logic;
SIGNAL \Input[43]~input_o\ : std_logic;
SIGNAL \Input[11]~input_o\ : std_logic;
SIGNAL \srl32[11]~26_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \Input[35]~input_o\ : std_logic;
SIGNAL \srl32[3]~24_combout\ : std_logic;
SIGNAL \srl8[3]~6_combout\ : std_logic;
SIGNAL \Input[55]~input_o\ : std_logic;
SIGNAL \Input[23]~input_o\ : std_logic;
SIGNAL \srl32[23]~29_combout\ : std_logic;
SIGNAL \Input[63]~input_o\ : std_logic;
SIGNAL \Input[31]~input_o\ : std_logic;
SIGNAL \srl32[31]~31_combout\ : std_logic;
SIGNAL \Input[47]~input_o\ : std_logic;
SIGNAL \Input[15]~input_o\ : std_logic;
SIGNAL \srl32[15]~30_combout\ : std_logic;
SIGNAL \Input[39]~input_o\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \srl32[7]~28_combout\ : std_logic;
SIGNAL \srl8[7]~7_combout\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \Input[37]~input_o\ : std_logic;
SIGNAL \srl32[5]~20_combout\ : std_logic;
SIGNAL \Input[53]~input_o\ : std_logic;
SIGNAL \Input[21]~input_o\ : std_logic;
SIGNAL \srl32[21]~21_combout\ : std_logic;
SIGNAL \Input[13]~input_o\ : std_logic;
SIGNAL \Input[45]~input_o\ : std_logic;
SIGNAL \srl32[13]~22_combout\ : std_logic;
SIGNAL \Input[29]~input_o\ : std_logic;
SIGNAL \Input[61]~input_o\ : std_logic;
SIGNAL \srl32[29]~23_combout\ : std_logic;
SIGNAL \srl8[5]~5_combout\ : std_logic;
SIGNAL \srl2[1]~1_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \y2[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \sll4[0]~0_combout\ : std_logic;
SIGNAL \Output~1_combout\ : std_logic;
SIGNAL \Output~2_combout\ : std_logic;
SIGNAL \sll4[2]~1_combout\ : std_logic;
SIGNAL \Output~3_combout\ : std_logic;
SIGNAL \srl8[8]~156_combout\ : std_logic;
SIGNAL \srl2[2]~2_combout\ : std_logic;
SIGNAL \sra2[1]~3_combout\ : std_logic;
SIGNAL \sra2[1]~4_combout\ : std_logic;
SIGNAL \y2[1]~1_combout\ : std_logic;
SIGNAL \Arith[1]~input_o\ : std_logic;
SIGNAL \Output~4_combout\ : std_logic;
SIGNAL \srl8[9]~152_combout\ : std_logic;
SIGNAL \srl2[3]~3_combout\ : std_logic;
SIGNAL \sra2[2]~5_combout\ : std_logic;
SIGNAL \sra2[2]~6_combout\ : std_logic;
SIGNAL \y2[2]~2_combout\ : std_logic;
SIGNAL \sll4[2]~3_combout\ : std_logic;
SIGNAL \sll4[1]~2_combout\ : std_logic;
SIGNAL \Output~5_combout\ : std_logic;
SIGNAL \Arith[2]~input_o\ : std_logic;
SIGNAL \Output~6_combout\ : std_logic;
SIGNAL \sll4[3]~4_combout\ : std_logic;
SIGNAL \Output~11_combout\ : std_logic;
SIGNAL \Arith[3]~input_o\ : std_logic;
SIGNAL \Output~7_combout\ : std_logic;
SIGNAL \Output~8_combout\ : std_logic;
SIGNAL \Output~9_combout\ : std_logic;
SIGNAL \srl8[10]~148_combout\ : std_logic;
SIGNAL \srl2[4]~4_combout\ : std_logic;
SIGNAL \Output~10_combout\ : std_logic;
SIGNAL \Output~12_combout\ : std_logic;
SIGNAL \sll4[4]~5_combout\ : std_logic;
SIGNAL \Output~16_combout\ : std_logic;
SIGNAL \srl8[11]~144_combout\ : std_logic;
SIGNAL \srl2[5]~5_combout\ : std_logic;
SIGNAL \Output~13_combout\ : std_logic;
SIGNAL \Output~14_combout\ : std_logic;
SIGNAL \Output~15_combout\ : std_logic;
SIGNAL \Arith[4]~input_o\ : std_logic;
SIGNAL \Output~17_combout\ : std_logic;
SIGNAL \sll4[5]~6_combout\ : std_logic;
SIGNAL \Output~21_combout\ : std_logic;
SIGNAL \Arith[5]~input_o\ : std_logic;
SIGNAL \Output~18_combout\ : std_logic;
SIGNAL \Output~19_combout\ : std_logic;
SIGNAL \srl8[12]~140_combout\ : std_logic;
SIGNAL \srl2[6]~6_combout\ : std_logic;
SIGNAL \Output~20_combout\ : std_logic;
SIGNAL \Output~22_combout\ : std_logic;
SIGNAL \Output~23_combout\ : std_logic;
SIGNAL \Output~24_combout\ : std_logic;
SIGNAL \srl8[13]~136_combout\ : std_logic;
SIGNAL \srl2[7]~7_combout\ : std_logic;
SIGNAL \Output~25_combout\ : std_logic;
SIGNAL \Arith[6]~input_o\ : std_logic;
SIGNAL \sll4[6]~7_combout\ : std_logic;
SIGNAL \Output~26_combout\ : std_logic;
SIGNAL \Output~27_combout\ : std_logic;
SIGNAL \sll4[7]~8_combout\ : std_logic;
SIGNAL \Output~31_combout\ : std_logic;
SIGNAL \Output~28_combout\ : std_logic;
SIGNAL \Output~29_combout\ : std_logic;
SIGNAL \srl8[14]~132_combout\ : std_logic;
SIGNAL \srl2[8]~8_combout\ : std_logic;
SIGNAL \Output~30_combout\ : std_logic;
SIGNAL \Arith[7]~input_o\ : std_logic;
SIGNAL \Output~32_combout\ : std_logic;
SIGNAL \Output~33_combout\ : std_logic;
SIGNAL \Output~34_combout\ : std_logic;
SIGNAL \srl8[15]~128_combout\ : std_logic;
SIGNAL \srl2[9]~9_combout\ : std_logic;
SIGNAL \Output~35_combout\ : std_logic;
SIGNAL \Arith[8]~input_o\ : std_logic;
SIGNAL \sll16[4]~1_combout\ : std_logic;
SIGNAL \sll16[8]~2_combout\ : std_logic;
SIGNAL \sll16[0]~0_combout\ : std_logic;
SIGNAL \sll4[8]~9_combout\ : std_logic;
SIGNAL \Output~36_combout\ : std_logic;
SIGNAL \Output~37_combout\ : std_logic;
SIGNAL \Arith[9]~input_o\ : std_logic;
SIGNAL \Output~38_combout\ : std_logic;
SIGNAL \Output~39_combout\ : std_logic;
SIGNAL \srl8[16]~124_combout\ : std_logic;
SIGNAL \srl2[10]~10_combout\ : std_logic;
SIGNAL \Output~40_combout\ : std_logic;
SIGNAL \sll16[9]~5_combout\ : std_logic;
SIGNAL \sll16[1]~3_combout\ : std_logic;
SIGNAL \sll16[5]~4_combout\ : std_logic;
SIGNAL \sll4[9]~10_combout\ : std_logic;
SIGNAL \Output~41_combout\ : std_logic;
SIGNAL \Output~42_combout\ : std_logic;
SIGNAL \Arith[10]~input_o\ : std_logic;
SIGNAL \sll16[10]~8_combout\ : std_logic;
SIGNAL \sll16[6]~7_combout\ : std_logic;
SIGNAL \sll16[2]~6_combout\ : std_logic;
SIGNAL \sll4[10]~11_combout\ : std_logic;
SIGNAL \Output~46_combout\ : std_logic;
SIGNAL \Output~43_combout\ : std_logic;
SIGNAL \Output~44_combout\ : std_logic;
SIGNAL \srl8[17]~120_combout\ : std_logic;
SIGNAL \srl2[11]~11_combout\ : std_logic;
SIGNAL \Output~45_combout\ : std_logic;
SIGNAL \Output~47_combout\ : std_logic;
SIGNAL \srl8[18]~116_combout\ : std_logic;
SIGNAL \srl2[12]~12_combout\ : std_logic;
SIGNAL \Output~48_combout\ : std_logic;
SIGNAL \Output~49_combout\ : std_logic;
SIGNAL \Output~50_combout\ : std_logic;
SIGNAL \Arith[11]~input_o\ : std_logic;
SIGNAL \sll16[3]~9_combout\ : std_logic;
SIGNAL \sll16[11]~11_combout\ : std_logic;
SIGNAL \sll16[7]~10_combout\ : std_logic;
SIGNAL \sll4[11]~12_combout\ : std_logic;
SIGNAL \Output~51_combout\ : std_logic;
SIGNAL \Output~52_combout\ : std_logic;
SIGNAL \Arith[12]~input_o\ : std_logic;
SIGNAL \sll16[12]~12_combout\ : std_logic;
SIGNAL \sll4[12]~13_combout\ : std_logic;
SIGNAL \Output~56_combout\ : std_logic;
SIGNAL \srl8[19]~112_combout\ : std_logic;
SIGNAL \srl2[13]~13_combout\ : std_logic;
SIGNAL \Output~53_combout\ : std_logic;
SIGNAL \Output~54_combout\ : std_logic;
SIGNAL \Output~55_combout\ : std_logic;
SIGNAL \Output~57_combout\ : std_logic;
SIGNAL \srl8[20]~108_combout\ : std_logic;
SIGNAL \srl2[14]~14_combout\ : std_logic;
SIGNAL \Output~58_combout\ : std_logic;
SIGNAL \Output~59_combout\ : std_logic;
SIGNAL \Output~60_combout\ : std_logic;
SIGNAL \sll16[13]~13_combout\ : std_logic;
SIGNAL \sll4[13]~14_combout\ : std_logic;
SIGNAL \Output~61_combout\ : std_logic;
SIGNAL \Arith[13]~input_o\ : std_logic;
SIGNAL \Output~62_combout\ : std_logic;
SIGNAL \Arith[14]~input_o\ : std_logic;
SIGNAL \srl8[21]~104_combout\ : std_logic;
SIGNAL \srl2[15]~15_combout\ : std_logic;
SIGNAL \Output~63_combout\ : std_logic;
SIGNAL \Output~64_combout\ : std_logic;
SIGNAL \Output~65_combout\ : std_logic;
SIGNAL \sll16[14]~14_combout\ : std_logic;
SIGNAL \sll4[14]~15_combout\ : std_logic;
SIGNAL \Output~66_combout\ : std_logic;
SIGNAL \Output~67_combout\ : std_logic;
SIGNAL \srl8[22]~100_combout\ : std_logic;
SIGNAL \srl2[16]~16_combout\ : std_logic;
SIGNAL \Output~68_combout\ : std_logic;
SIGNAL \Output~69_combout\ : std_logic;
SIGNAL \Output~70_combout\ : std_logic;
SIGNAL \sll16[15]~15_combout\ : std_logic;
SIGNAL \sll4[15]~16_combout\ : std_logic;
SIGNAL \Output~71_combout\ : std_logic;
SIGNAL \Arith[15]~input_o\ : std_logic;
SIGNAL \Output~72_combout\ : std_logic;
SIGNAL \Output~73_combout\ : std_logic;
SIGNAL \Output~74_combout\ : std_logic;
SIGNAL \srl8[23]~96_combout\ : std_logic;
SIGNAL \srl2[17]~17_combout\ : std_logic;
SIGNAL \Output~75_combout\ : std_logic;
SIGNAL \sll16[16]~16_combout\ : std_logic;
SIGNAL \sll4[16]~17_combout\ : std_logic;
SIGNAL \Output~76_combout\ : std_logic;
SIGNAL \Arith[16]~input_o\ : std_logic;
SIGNAL \Output~77_combout\ : std_logic;
SIGNAL \sll16[17]~17_combout\ : std_logic;
SIGNAL \sll4[17]~18_combout\ : std_logic;
SIGNAL \Output~81_combout\ : std_logic;
SIGNAL \Arith[17]~input_o\ : std_logic;
SIGNAL \Output~78_combout\ : std_logic;
SIGNAL \Output~79_combout\ : std_logic;
SIGNAL \srl8[24]~92_combout\ : std_logic;
SIGNAL \srl2[18]~18_combout\ : std_logic;
SIGNAL \Output~80_combout\ : std_logic;
SIGNAL \Output~82_combout\ : std_logic;
SIGNAL \sll16[18]~18_combout\ : std_logic;
SIGNAL \sll4[18]~19_combout\ : std_logic;
SIGNAL \Output~86_combout\ : std_logic;
SIGNAL \srl8[25]~88_combout\ : std_logic;
SIGNAL \srl2[19]~19_combout\ : std_logic;
SIGNAL \Output~83_combout\ : std_logic;
SIGNAL \Output~84_combout\ : std_logic;
SIGNAL \Output~85_combout\ : std_logic;
SIGNAL \Arith[18]~input_o\ : std_logic;
SIGNAL \Output~87_combout\ : std_logic;
SIGNAL \Output~88_combout\ : std_logic;
SIGNAL \Output~89_combout\ : std_logic;
SIGNAL \srl8[26]~84_combout\ : std_logic;
SIGNAL \srl2[20]~20_combout\ : std_logic;
SIGNAL \Output~90_combout\ : std_logic;
SIGNAL \Arith[19]~input_o\ : std_logic;
SIGNAL \sll16[19]~19_combout\ : std_logic;
SIGNAL \sll4[19]~20_combout\ : std_logic;
SIGNAL \Output~91_combout\ : std_logic;
SIGNAL \Output~92_combout\ : std_logic;
SIGNAL \sll16[20]~20_combout\ : std_logic;
SIGNAL \sll4[20]~21_combout\ : std_logic;
SIGNAL \Output~96_combout\ : std_logic;
SIGNAL \srl8[27]~80_combout\ : std_logic;
SIGNAL \srl2[21]~21_combout\ : std_logic;
SIGNAL \Output~93_combout\ : std_logic;
SIGNAL \Output~94_combout\ : std_logic;
SIGNAL \Output~95_combout\ : std_logic;
SIGNAL \Arith[20]~input_o\ : std_logic;
SIGNAL \Output~97_combout\ : std_logic;
SIGNAL \Output~98_combout\ : std_logic;
SIGNAL \Output~99_combout\ : std_logic;
SIGNAL \srl8[28]~76_combout\ : std_logic;
SIGNAL \srl2[22]~22_combout\ : std_logic;
SIGNAL \Output~100_combout\ : std_logic;
SIGNAL \Arith[21]~input_o\ : std_logic;
SIGNAL \sll16[21]~21_combout\ : std_logic;
SIGNAL \sll4[21]~22_combout\ : std_logic;
SIGNAL \Output~101_combout\ : std_logic;
SIGNAL \Output~102_combout\ : std_logic;
SIGNAL \Output~103_combout\ : std_logic;
SIGNAL \Output~104_combout\ : std_logic;
SIGNAL \srl8[29]~72_combout\ : std_logic;
SIGNAL \srl2[23]~23_combout\ : std_logic;
SIGNAL \Output~105_combout\ : std_logic;
SIGNAL \Arith[22]~input_o\ : std_logic;
SIGNAL \sll16[22]~22_combout\ : std_logic;
SIGNAL \sll4[22]~23_combout\ : std_logic;
SIGNAL \Output~106_combout\ : std_logic;
SIGNAL \Output~107_combout\ : std_logic;
SIGNAL \sll16[23]~23_combout\ : std_logic;
SIGNAL \sll4[23]~24_combout\ : std_logic;
SIGNAL \Output~111_combout\ : std_logic;
SIGNAL \srl8[30]~68_combout\ : std_logic;
SIGNAL \srl2[24]~24_combout\ : std_logic;
SIGNAL \Output~108_combout\ : std_logic;
SIGNAL \Output~109_combout\ : std_logic;
SIGNAL \Output~110_combout\ : std_logic;
SIGNAL \Arith[23]~input_o\ : std_logic;
SIGNAL \Output~112_combout\ : std_logic;
SIGNAL \Arith[24]~input_o\ : std_logic;
SIGNAL \Output~113_combout\ : std_logic;
SIGNAL \Output~114_combout\ : std_logic;
SIGNAL \srl8[31]~64_combout\ : std_logic;
SIGNAL \srl2[25]~25_combout\ : std_logic;
SIGNAL \Output~115_combout\ : std_logic;
SIGNAL \sll16[24]~24_combout\ : std_logic;
SIGNAL \sll4[24]~25_combout\ : std_logic;
SIGNAL \Output~116_combout\ : std_logic;
SIGNAL \Output~117_combout\ : std_logic;
SIGNAL \srl8[32]~60_combout\ : std_logic;
SIGNAL \srl2[26]~26_combout\ : std_logic;
SIGNAL \Output~118_combout\ : std_logic;
SIGNAL \Output~119_combout\ : std_logic;
SIGNAL \Output~120_combout\ : std_logic;
SIGNAL \sll16[25]~25_combout\ : std_logic;
SIGNAL \sll4[25]~26_combout\ : std_logic;
SIGNAL \Output~121_combout\ : std_logic;
SIGNAL \Arith[25]~input_o\ : std_logic;
SIGNAL \Output~122_combout\ : std_logic;
SIGNAL \Output~123_combout\ : std_logic;
SIGNAL \Output~124_combout\ : std_logic;
SIGNAL \srl8[33]~56_combout\ : std_logic;
SIGNAL \srl2[27]~27_combout\ : std_logic;
SIGNAL \Output~125_combout\ : std_logic;
SIGNAL \Arith[26]~input_o\ : std_logic;
SIGNAL \sll16[26]~26_combout\ : std_logic;
SIGNAL \sll4[26]~27_combout\ : std_logic;
SIGNAL \Output~126_combout\ : std_logic;
SIGNAL \Output~127_combout\ : std_logic;
SIGNAL \Arith[27]~input_o\ : std_logic;
SIGNAL \sll16[27]~27_combout\ : std_logic;
SIGNAL \sll4[27]~28_combout\ : std_logic;
SIGNAL \Output~131_combout\ : std_logic;
SIGNAL \srl8[34]~52_combout\ : std_logic;
SIGNAL \srl2[28]~28_combout\ : std_logic;
SIGNAL \Output~128_combout\ : std_logic;
SIGNAL \Output~129_combout\ : std_logic;
SIGNAL \Output~130_combout\ : std_logic;
SIGNAL \Output~132_combout\ : std_logic;
SIGNAL \sll16[28]~28_combout\ : std_logic;
SIGNAL \sll4[28]~29_combout\ : std_logic;
SIGNAL \Output~136_combout\ : std_logic;
SIGNAL \Arith[28]~input_o\ : std_logic;
SIGNAL \Output~133_combout\ : std_logic;
SIGNAL \Output~134_combout\ : std_logic;
SIGNAL \srl8[35]~48_combout\ : std_logic;
SIGNAL \srl2[29]~29_combout\ : std_logic;
SIGNAL \Output~135_combout\ : std_logic;
SIGNAL \Output~137_combout\ : std_logic;
SIGNAL \srl8[36]~44_combout\ : std_logic;
SIGNAL \srl2[30]~30_combout\ : std_logic;
SIGNAL \Output~138_combout\ : std_logic;
SIGNAL \Output~139_combout\ : std_logic;
SIGNAL \Output~140_combout\ : std_logic;
SIGNAL \sll16[29]~29_combout\ : std_logic;
SIGNAL \sll4[29]~30_combout\ : std_logic;
SIGNAL \Output~141_combout\ : std_logic;
SIGNAL \Arith[29]~input_o\ : std_logic;
SIGNAL \Output~142_combout\ : std_logic;
SIGNAL \sll16[30]~30_combout\ : std_logic;
SIGNAL \sll4[30]~31_combout\ : std_logic;
SIGNAL \Output~146_combout\ : std_logic;
SIGNAL \Output~143_combout\ : std_logic;
SIGNAL \Output~144_combout\ : std_logic;
SIGNAL \srl8[37]~40_combout\ : std_logic;
SIGNAL \srl2[31]~31_combout\ : std_logic;
SIGNAL \Output~145_combout\ : std_logic;
SIGNAL \Arith[30]~input_o\ : std_logic;
SIGNAL \Output~147_combout\ : std_logic;
SIGNAL \Output~148_combout\ : std_logic;
SIGNAL \Output~149_combout\ : std_logic;
SIGNAL \srl8[38]~36_combout\ : std_logic;
SIGNAL \srl2[32]~32_combout\ : std_logic;
SIGNAL \Output~150_combout\ : std_logic;
SIGNAL \sll16[31]~31_combout\ : std_logic;
SIGNAL \sll4[31]~32_combout\ : std_logic;
SIGNAL \Output~151_combout\ : std_logic;
SIGNAL \Arith[31]~input_o\ : std_logic;
SIGNAL \Output~152_combout\ : std_logic;
SIGNAL \Arith[32]~input_o\ : std_logic;
SIGNAL \sll16[32]~32_combout\ : std_logic;
SIGNAL \sll4[32]~33_combout\ : std_logic;
SIGNAL \Output~153_combout\ : std_logic;
SIGNAL \srl8[39]~32_combout\ : std_logic;
SIGNAL \srl2[33]~33_combout\ : std_logic;
SIGNAL \Output~154_combout\ : std_logic;
SIGNAL \Output~156_combout\ : std_logic;
SIGNAL \Output~155_combout\ : std_logic;
SIGNAL \Output~157_combout\ : std_logic;
SIGNAL \Output~158_combout\ : std_logic;
SIGNAL \Output~159_combout\ : std_logic;
SIGNAL \Output~160_combout\ : std_logic;
SIGNAL \srl8[40]~8_combout\ : std_logic;
SIGNAL \srl2[34]~34_combout\ : std_logic;
SIGNAL \Output~162_combout\ : std_logic;
SIGNAL \sll16[33]~33_combout\ : std_logic;
SIGNAL \sll4[33]~34_combout\ : std_logic;
SIGNAL \Output~161_combout\ : std_logic;
SIGNAL \Output~163_combout\ : std_logic;
SIGNAL \Output~164_combout\ : std_logic;
SIGNAL \Arith[33]~input_o\ : std_logic;
SIGNAL \Output~165_combout\ : std_logic;
SIGNAL \srl8[41]~9_combout\ : std_logic;
SIGNAL \srl2[35]~35_combout\ : std_logic;
SIGNAL \Output~167_combout\ : std_logic;
SIGNAL \sll16[34]~34_combout\ : std_logic;
SIGNAL \sll4[34]~35_combout\ : std_logic;
SIGNAL \Output~166_combout\ : std_logic;
SIGNAL \Output~168_combout\ : std_logic;
SIGNAL \Output~169_combout\ : std_logic;
SIGNAL \Arith[34]~input_o\ : std_logic;
SIGNAL \Output~170_combout\ : std_logic;
SIGNAL \sll16[35]~35_combout\ : std_logic;
SIGNAL \sll4[35]~36_combout\ : std_logic;
SIGNAL \Output~171_combout\ : std_logic;
SIGNAL \srl8[42]~10_combout\ : std_logic;
SIGNAL \srl2[36]~36_combout\ : std_logic;
SIGNAL \Output~172_combout\ : std_logic;
SIGNAL \Output~173_combout\ : std_logic;
SIGNAL \Output~174_combout\ : std_logic;
SIGNAL \Arith[35]~input_o\ : std_logic;
SIGNAL \Output~175_combout\ : std_logic;
SIGNAL \sll16[36]~36_combout\ : std_logic;
SIGNAL \sll4[36]~37_combout\ : std_logic;
SIGNAL \Output~176_combout\ : std_logic;
SIGNAL \srl8[43]~11_combout\ : std_logic;
SIGNAL \srl2[37]~37_combout\ : std_logic;
SIGNAL \Output~177_combout\ : std_logic;
SIGNAL \Output~178_combout\ : std_logic;
SIGNAL \Output~179_combout\ : std_logic;
SIGNAL \Arith[36]~input_o\ : std_logic;
SIGNAL \Output~180_combout\ : std_logic;
SIGNAL \sll16[37]~37_combout\ : std_logic;
SIGNAL \sll4[37]~38_combout\ : std_logic;
SIGNAL \Output~181_combout\ : std_logic;
SIGNAL \Arith[37]~input_o\ : std_logic;
SIGNAL \srl8[44]~12_combout\ : std_logic;
SIGNAL \srl2[38]~38_combout\ : std_logic;
SIGNAL \Output~182_combout\ : std_logic;
SIGNAL \Output~183_combout\ : std_logic;
SIGNAL \Output~184_combout\ : std_logic;
SIGNAL \Output~185_combout\ : std_logic;
SIGNAL \Output~188_combout\ : std_logic;
SIGNAL \Output~189_combout\ : std_logic;
SIGNAL \Arith[38]~input_o\ : std_logic;
SIGNAL \sll16[38]~38_combout\ : std_logic;
SIGNAL \sll4[38]~39_combout\ : std_logic;
SIGNAL \Output~186_combout\ : std_logic;
SIGNAL \srl8[45]~13_combout\ : std_logic;
SIGNAL \srl2[39]~39_combout\ : std_logic;
SIGNAL \Output~187_combout\ : std_logic;
SIGNAL \Output~190_combout\ : std_logic;
SIGNAL \srl8[46]~14_combout\ : std_logic;
SIGNAL \srl2[40]~40_combout\ : std_logic;
SIGNAL \Output~192_combout\ : std_logic;
SIGNAL \Arith[39]~input_o\ : std_logic;
SIGNAL \Output~193_combout\ : std_logic;
SIGNAL \Output~194_combout\ : std_logic;
SIGNAL \sll16[39]~39_combout\ : std_logic;
SIGNAL \sll4[39]~40_combout\ : std_logic;
SIGNAL \Output~191_combout\ : std_logic;
SIGNAL \Output~195_combout\ : std_logic;
SIGNAL \sll16[40]~40_combout\ : std_logic;
SIGNAL \sll4[40]~41_combout\ : std_logic;
SIGNAL \Output~196_combout\ : std_logic;
SIGNAL \srl8[47]~15_combout\ : std_logic;
SIGNAL \srl2[41]~41_combout\ : std_logic;
SIGNAL \Output~197_combout\ : std_logic;
SIGNAL \Output~198_combout\ : std_logic;
SIGNAL \Output~199_combout\ : std_logic;
SIGNAL \Arith[40]~input_o\ : std_logic;
SIGNAL \Output~200_combout\ : std_logic;
SIGNAL \Output~203_combout\ : std_logic;
SIGNAL \Output~204_combout\ : std_logic;
SIGNAL \srl8[48]~16_combout\ : std_logic;
SIGNAL \srl2[42]~42_combout\ : std_logic;
SIGNAL \Output~202_combout\ : std_logic;
SIGNAL \Arith[41]~input_o\ : std_logic;
SIGNAL \sll16[41]~41_combout\ : std_logic;
SIGNAL \sll4[41]~42_combout\ : std_logic;
SIGNAL \Output~201_combout\ : std_logic;
SIGNAL \Output~205_combout\ : std_logic;
SIGNAL \srl8[49]~17_combout\ : std_logic;
SIGNAL \srl2[43]~43_combout\ : std_logic;
SIGNAL \Output~207_combout\ : std_logic;
SIGNAL \sll16[42]~42_combout\ : std_logic;
SIGNAL \sll4[42]~43_combout\ : std_logic;
SIGNAL \Output~206_combout\ : std_logic;
SIGNAL \Arith[42]~input_o\ : std_logic;
SIGNAL \Output~208_combout\ : std_logic;
SIGNAL \Output~209_combout\ : std_logic;
SIGNAL \Output~210_combout\ : std_logic;
SIGNAL \sll16[43]~43_combout\ : std_logic;
SIGNAL \sll4[43]~44_combout\ : std_logic;
SIGNAL \Output~211_combout\ : std_logic;
SIGNAL \Arith[43]~input_o\ : std_logic;
SIGNAL \srl8[50]~18_combout\ : std_logic;
SIGNAL \srl2[44]~44_combout\ : std_logic;
SIGNAL \Output~212_combout\ : std_logic;
SIGNAL \Output~213_combout\ : std_logic;
SIGNAL \Output~214_combout\ : std_logic;
SIGNAL \Output~215_combout\ : std_logic;
SIGNAL \srl8[51]~19_combout\ : std_logic;
SIGNAL \srl2[45]~45_combout\ : std_logic;
SIGNAL \Output~217_combout\ : std_logic;
SIGNAL \Output~218_combout\ : std_logic;
SIGNAL \Output~219_combout\ : std_logic;
SIGNAL \Arith[44]~input_o\ : std_logic;
SIGNAL \sll16[44]~44_combout\ : std_logic;
SIGNAL \sll4[44]~45_combout\ : std_logic;
SIGNAL \Output~216_combout\ : std_logic;
SIGNAL \Output~220_combout\ : std_logic;
SIGNAL \srl8[52]~20_combout\ : std_logic;
SIGNAL \srl2[46]~46_combout\ : std_logic;
SIGNAL \Output~222_combout\ : std_logic;
SIGNAL \sll16[45]~45_combout\ : std_logic;
SIGNAL \sll4[45]~46_combout\ : std_logic;
SIGNAL \Output~221_combout\ : std_logic;
SIGNAL \Arith[45]~input_o\ : std_logic;
SIGNAL \Output~223_combout\ : std_logic;
SIGNAL \Output~224_combout\ : std_logic;
SIGNAL \Output~225_combout\ : std_logic;
SIGNAL \sll16[46]~46_combout\ : std_logic;
SIGNAL \sll4[46]~47_combout\ : std_logic;
SIGNAL \Output~226_combout\ : std_logic;
SIGNAL \Output~228_combout\ : std_logic;
SIGNAL \Output~229_combout\ : std_logic;
SIGNAL \srl8[53]~21_combout\ : std_logic;
SIGNAL \srl2[47]~47_combout\ : std_logic;
SIGNAL \Output~227_combout\ : std_logic;
SIGNAL \Arith[46]~input_o\ : std_logic;
SIGNAL \Output~230_combout\ : std_logic;
SIGNAL \Output~231_combout\ : std_logic;
SIGNAL \Output~232_combout\ : std_logic;
SIGNAL \Output~233_combout\ : std_logic;
SIGNAL \srl8[54]~22_combout\ : std_logic;
SIGNAL \srl2[48]~48_combout\ : std_logic;
SIGNAL \Output~234_combout\ : std_logic;
SIGNAL \sll16[47]~47_combout\ : std_logic;
SIGNAL \sll4[47]~48_combout\ : std_logic;
SIGNAL \Output~235_combout\ : std_logic;
SIGNAL \Arith[47]~input_o\ : std_logic;
SIGNAL \Output~236_combout\ : std_logic;
SIGNAL \srl8[55]~23_combout\ : std_logic;
SIGNAL \srl2[49]~49_combout\ : std_logic;
SIGNAL \Output~237_combout\ : std_logic;
SIGNAL \Output~238_combout\ : std_logic;
SIGNAL \Output~239_combout\ : std_logic;
SIGNAL \Arith[48]~input_o\ : std_logic;
SIGNAL \sll16[48]~48_combout\ : std_logic;
SIGNAL \sll4[48]~49_combout\ : std_logic;
SIGNAL \Output~240_combout\ : std_logic;
SIGNAL \Output~241_combout\ : std_logic;
SIGNAL \Arith[49]~input_o\ : std_logic;
SIGNAL \srl8[56]~24_combout\ : std_logic;
SIGNAL \srl2[50]~50_combout\ : std_logic;
SIGNAL \Output~242_combout\ : std_logic;
SIGNAL \Output~243_combout\ : std_logic;
SIGNAL \Output~244_combout\ : std_logic;
SIGNAL \sll16[49]~49_combout\ : std_logic;
SIGNAL \sll4[49]~50_combout\ : std_logic;
SIGNAL \Output~245_combout\ : std_logic;
SIGNAL \Output~246_combout\ : std_logic;
SIGNAL \Output~247_combout\ : std_logic;
SIGNAL \Output~248_combout\ : std_logic;
SIGNAL \srl8[57]~25_combout\ : std_logic;
SIGNAL \srl2[51]~51_combout\ : std_logic;
SIGNAL \Output~249_combout\ : std_logic;
SIGNAL \Arith[50]~input_o\ : std_logic;
SIGNAL \sll16[50]~50_combout\ : std_logic;
SIGNAL \sll4[50]~51_combout\ : std_logic;
SIGNAL \Output~250_combout\ : std_logic;
SIGNAL \Output~251_combout\ : std_logic;
SIGNAL \sll16[51]~51_combout\ : std_logic;
SIGNAL \sll4[51]~52_combout\ : std_logic;
SIGNAL \Output~255_combout\ : std_logic;
SIGNAL \Output~252_combout\ : std_logic;
SIGNAL \Output~253_combout\ : std_logic;
SIGNAL \srl8[58]~26_combout\ : std_logic;
SIGNAL \srl2[52]~52_combout\ : std_logic;
SIGNAL \Output~254_combout\ : std_logic;
SIGNAL \Arith[51]~input_o\ : std_logic;
SIGNAL \Output~256_combout\ : std_logic;
SIGNAL \Output~257_combout\ : std_logic;
SIGNAL \Output~258_combout\ : std_logic;
SIGNAL \srl8[59]~27_combout\ : std_logic;
SIGNAL \srl2[53]~53_combout\ : std_logic;
SIGNAL \Output~259_combout\ : std_logic;
SIGNAL \sll16[52]~52_combout\ : std_logic;
SIGNAL \sll4[52]~53_combout\ : std_logic;
SIGNAL \Output~260_combout\ : std_logic;
SIGNAL \Arith[52]~input_o\ : std_logic;
SIGNAL \Output~261_combout\ : std_logic;
SIGNAL \Arith[53]~input_o\ : std_logic;
SIGNAL \sll16[53]~53_combout\ : std_logic;
SIGNAL \sll4[53]~54_combout\ : std_logic;
SIGNAL \Output~265_combout\ : std_logic;
SIGNAL \Output~262_combout\ : std_logic;
SIGNAL \Output~263_combout\ : std_logic;
SIGNAL \srl8[60]~28_combout\ : std_logic;
SIGNAL \srl2[54]~54_combout\ : std_logic;
SIGNAL \Output~264_combout\ : std_logic;
SIGNAL \Output~266_combout\ : std_logic;
SIGNAL \Arith[54]~input_o\ : std_logic;
SIGNAL \sll16[54]~54_combout\ : std_logic;
SIGNAL \sll4[54]~55_combout\ : std_logic;
SIGNAL \Output~270_combout\ : std_logic;
SIGNAL \srl8[61]~29_combout\ : std_logic;
SIGNAL \srl2[55]~55_combout\ : std_logic;
SIGNAL \Output~267_combout\ : std_logic;
SIGNAL \Output~268_combout\ : std_logic;
SIGNAL \Output~269_combout\ : std_logic;
SIGNAL \Output~271_combout\ : std_logic;
SIGNAL \Output~272_combout\ : std_logic;
SIGNAL \srlout[63]~0_combout\ : std_logic;
SIGNAL \Output~273_combout\ : std_logic;
SIGNAL \srl8[62]~30_combout\ : std_logic;
SIGNAL \srl2[56]~56_combout\ : std_logic;
SIGNAL \Output~274_combout\ : std_logic;
SIGNAL \sll16[55]~55_combout\ : std_logic;
SIGNAL \sll4[55]~56_combout\ : std_logic;
SIGNAL \Output~275_combout\ : std_logic;
SIGNAL \Arith[55]~input_o\ : std_logic;
SIGNAL \Output~276_combout\ : std_logic;
SIGNAL \Arith[56]~input_o\ : std_logic;
SIGNAL \sll16[56]~56_combout\ : std_logic;
SIGNAL \sll4[56]~57_combout\ : std_logic;
SIGNAL \Output~279_combout\ : std_logic;
SIGNAL \Output~277_combout\ : std_logic;
SIGNAL \srl8[63]~31_combout\ : std_logic;
SIGNAL \srl2[57]~57_combout\ : std_logic;
SIGNAL \Output~278_combout\ : std_logic;
SIGNAL \Output~280_combout\ : std_logic;
SIGNAL \Arith[57]~input_o\ : std_logic;
SIGNAL \srl2[58]~58_combout\ : std_logic;
SIGNAL \Output~281_combout\ : std_logic;
SIGNAL \Output~282_combout\ : std_logic;
SIGNAL \sll16[57]~57_combout\ : std_logic;
SIGNAL \sll4[57]~58_combout\ : std_logic;
SIGNAL \Output~283_combout\ : std_logic;
SIGNAL \Output~284_combout\ : std_logic;
SIGNAL \Arith[58]~input_o\ : std_logic;
SIGNAL \srl2[59]~61_combout\ : std_logic;
SIGNAL \srl2[59]~59_combout\ : std_logic;
SIGNAL \srl2[59]~60_combout\ : std_logic;
SIGNAL \srl2[59]~62_combout\ : std_logic;
SIGNAL \Output~285_combout\ : std_logic;
SIGNAL \Output~286_combout\ : std_logic;
SIGNAL \sll16[58]~58_combout\ : std_logic;
SIGNAL \sll4[58]~59_combout\ : std_logic;
SIGNAL \Output~287_combout\ : std_logic;
SIGNAL \Output~288_combout\ : std_logic;
SIGNAL \sll16[59]~59_combout\ : std_logic;
SIGNAL \sll4[59]~60_combout\ : std_logic;
SIGNAL \Output~289_combout\ : std_logic;
SIGNAL \Arith[59]~input_o\ : std_logic;
SIGNAL \Output~291_combout\ : std_logic;
SIGNAL \Output~292_combout\ : std_logic;
SIGNAL \srl2[61]~64_combout\ : std_logic;
SIGNAL \srl2[60]~63_combout\ : std_logic;
SIGNAL \Output~290_combout\ : std_logic;
SIGNAL \Output~293_combout\ : std_logic;
SIGNAL \Output~296_combout\ : std_logic;
SIGNAL \Output~295_combout\ : std_logic;
SIGNAL \sll4[60]~61_combout\ : std_logic;
SIGNAL \sll4[60]~62_combout\ : std_logic;
SIGNAL \Output~294_combout\ : std_logic;
SIGNAL \Arith[60]~input_o\ : std_logic;
SIGNAL \Output~297_combout\ : std_logic;
SIGNAL \Arith[61]~input_o\ : std_logic;
SIGNAL \sll4[61]~64_combout\ : std_logic;
SIGNAL \sll4[61]~65_combout\ : std_logic;
SIGNAL \sllout[61]~0_combout\ : std_logic;
SIGNAL \sll4[4]~63_combout\ : std_logic;
SIGNAL \sra2[61]~7_combout\ : std_logic;
SIGNAL \srl2[61]~65_combout\ : std_logic;
SIGNAL \srl2[62]~66_combout\ : std_logic;
SIGNAL \y2[61]~3_combout\ : std_logic;
SIGNAL \Output~298_combout\ : std_logic;
SIGNAL \Arith[62]~input_o\ : std_logic;
SIGNAL \sraout[62]~0_combout\ : std_logic;
SIGNAL \srlout[62]~1_combout\ : std_logic;
SIGNAL \sll4[62]~66_combout\ : std_logic;
SIGNAL \sll4[62]~67_combout\ : std_logic;
SIGNAL \sllout[62]~1_combout\ : std_logic;
SIGNAL \Output~299_combout\ : std_logic;
SIGNAL \srlout[63]~2_combout\ : std_logic;
SIGNAL \sll16[63]~60_combout\ : std_logic;
SIGNAL \sll4[63]~68_combout\ : std_logic;
SIGNAL \sllout[63]~2_combout\ : std_logic;
SIGNAL \Arith[63]~input_o\ : std_logic;
SIGNAL \Output~300_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[25]~88_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[21]~104_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[28]~76_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[38]~36_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[20]~108_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[23]~96_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[19]~112_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[30]~68_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[15]~128_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[12]~140_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[24]~92_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[36]~44_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[16]~124_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[31]~64_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[27]~80_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[22]~100_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[18]~116_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[33]~56_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[17]~120_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[39]~32_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[14]~132_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[13]~136_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[35]~48_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[37]~40_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[29]~72_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[26]~84_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[34]~52_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[32]~60_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[30]~15_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[6]~12_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[11]~26_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[15]~30_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[11]~144_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[9]~18_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[23]~29_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[9]~152_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[7]~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[25]~19_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[13]~22_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[8]~156_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[24]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[26]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[5]~20_combout\ : std_logic;
SIGNAL \ALT_INV_y2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[22]~13_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Output~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[10]~148_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[28]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[18]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[21]~21_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[20]~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[1]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[16]~1_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[29]~23_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[3]~24_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_y2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Output~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[2]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[19]~25_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[8]~2_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[6]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl32[27]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~33_combout\ : std_logic;
SIGNAL \ALT_INV_Output~8_combout\ : std_logic;
SIGNAL \ALT_INV_Output~31_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[9]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Output~41_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Output~43_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Output~44_combout\ : std_logic;
SIGNAL \ALT_INV_Output~19_combout\ : std_logic;
SIGNAL \ALT_INV_Output~15_combout\ : std_logic;
SIGNAL \ALT_INV_Output~24_combout\ : std_logic;
SIGNAL \ALT_INV_Output~26_combout\ : std_logic;
SIGNAL \ALT_INV_Output~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Output~18_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Output~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Output~20_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Output~34_combout\ : std_logic;
SIGNAL \ALT_INV_Output~25_combout\ : std_logic;
SIGNAL \ALT_INV_Output~21_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Output~11_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Output~29_combout\ : std_logic;
SIGNAL \ALT_INV_Output~39_combout\ : std_logic;
SIGNAL \ALT_INV_Output~40_combout\ : std_logic;
SIGNAL \ALT_INV_Output~5_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Output~16_combout\ : std_logic;
SIGNAL \ALT_INV_Output~10_combout\ : std_logic;
SIGNAL \ALT_INV_Output~23_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[8]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Output~38_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_y2[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Output~9_combout\ : std_logic;
SIGNAL \ALT_INV_Output~14_combout\ : std_logic;
SIGNAL \ALT_INV_Output~30_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Output~36_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Output~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~35_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Output~76_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[7]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Output~51_combout\ : std_logic;
SIGNAL \ALT_INV_Output~56_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[16]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Output~81_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~49_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[15]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Output~58_combout\ : std_logic;
SIGNAL \ALT_INV_Output~75_combout\ : std_logic;
SIGNAL \ALT_INV_Output~71_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[13]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Output~73_combout\ : std_logic;
SIGNAL \ALT_INV_Output~80_combout\ : std_logic;
SIGNAL \ALT_INV_Output~74_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[12]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Output~68_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[17]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[12]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~66_combout\ : std_logic;
SIGNAL \ALT_INV_Output~55_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[10]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Output~45_combout\ : std_logic;
SIGNAL \ALT_INV_Output~59_combout\ : std_logic;
SIGNAL \ALT_INV_Output~64_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[15]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Output~46_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[14]~15_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~69_combout\ : std_logic;
SIGNAL \ALT_INV_Output~50_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Output~48_combout\ : std_logic;
SIGNAL \ALT_INV_Output~53_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Output~60_combout\ : std_logic;
SIGNAL \ALT_INV_Output~61_combout\ : std_logic;
SIGNAL \ALT_INV_Output~65_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Output~63_combout\ : std_logic;
SIGNAL \ALT_INV_Output~70_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[12]~12_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[16]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Output~78_combout\ : std_logic;
SIGNAL \ALT_INV_Output~54_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[16]~16_combout\ : std_logic;
SIGNAL \ALT_INV_Output~79_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[3]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Output~99_combout\ : std_logic;
SIGNAL \ALT_INV_Output~121_combout\ : std_logic;
SIGNAL \ALT_INV_Output~89_combout\ : std_logic;
SIGNAL \ALT_INV_Output~83_combout\ : std_logic;
SIGNAL \ALT_INV_Output~98_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[21]~21_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[20]~21_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[22]~22_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[24]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Output~113_combout\ : std_logic;
SIGNAL \ALT_INV_Output~84_combout\ : std_logic;
SIGNAL \ALT_INV_Output~96_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Output~90_combout\ : std_logic;
SIGNAL \ALT_INV_Output~109_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[24]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Output~118_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[23]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[23]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Output~100_combout\ : std_logic;
SIGNAL \ALT_INV_Output~120_combout\ : std_logic;
SIGNAL \ALT_INV_Output~105_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[19]~19_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[25]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Output~93_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[19]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Output~108_combout\ : std_logic;
SIGNAL \ALT_INV_Output~103_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[21]~21_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[20]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Output~115_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[25]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Output~106_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[22]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[23]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Output~114_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[22]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Output~91_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[19]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Output~85_combout\ : std_logic;
SIGNAL \ALT_INV_Output~94_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[20]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Output~110_combout\ : std_logic;
SIGNAL \ALT_INV_Output~111_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[18]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Output~86_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[25]~25_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[24]~24_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[21]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Output~88_combout\ : std_logic;
SIGNAL \ALT_INV_Output~116_combout\ : std_logic;
SIGNAL \ALT_INV_Output~95_combout\ : std_logic;
SIGNAL \ALT_INV_Output~101_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[26]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Output~104_combout\ : std_logic;
SIGNAL \ALT_INV_Output~119_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[28]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Output~148_combout\ : std_logic;
SIGNAL \ALT_INV_Output~129_combout\ : std_logic;
SIGNAL \ALT_INV_Output~135_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[30]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[29]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Output~141_combout\ : std_logic;
SIGNAL \ALT_INV_Output~138_combout\ : std_logic;
SIGNAL \ALT_INV_Output~125_combout\ : std_logic;
SIGNAL \ALT_INV_Output~136_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[29]~29_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[29]~30_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[32]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Output~149_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[26]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~151_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[32]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Output~153_combout\ : std_logic;
SIGNAL \ALT_INV_Output~155_combout\ : std_logic;
SIGNAL \ALT_INV_Output~156_combout\ : std_logic;
SIGNAL \ALT_INV_Output~157_combout\ : std_logic;
SIGNAL \ALT_INV_Output~133_combout\ : std_logic;
SIGNAL \ALT_INV_Output~130_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[27]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~158_combout\ : std_logic;
SIGNAL \ALT_INV_Output~159_combout\ : std_logic;
SIGNAL \ALT_INV_Output~140_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[32]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Output~123_combout\ : std_logic;
SIGNAL \ALT_INV_Output~131_combout\ : std_logic;
SIGNAL \ALT_INV_Output~144_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[31]~32_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[28]~28_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[30]~30_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[27]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Output~154_combout\ : std_logic;
SIGNAL \ALT_INV_Output~124_combout\ : std_logic;
SIGNAL \ALT_INV_Output~126_combout\ : std_logic;
SIGNAL \ALT_INV_Output~146_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[33]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Output~145_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[33]~34_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[27]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~139_combout\ : std_logic;
SIGNAL \ALT_INV_Output~161_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[40]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Output~150_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[28]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Output~134_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[33]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Output~143_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[30]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Output~128_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[26]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Output~179_combout\ : std_logic;
SIGNAL \ALT_INV_Output~196_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[38]~39_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[44]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Output~193_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[47]~15_combout\ : std_logic;
SIGNAL \ALT_INV_Output~176_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[38]~38_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[35]~35_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[41]~41_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[34]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Output~183_combout\ : std_logic;
SIGNAL \ALT_INV_Output~168_combout\ : std_logic;
SIGNAL \ALT_INV_Output~163_combout\ : std_logic;
SIGNAL \ALT_INV_Output~174_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[37]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Output~184_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[36]~36_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[45]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Output~178_combout\ : std_logic;
SIGNAL \ALT_INV_Output~187_combout\ : std_logic;
SIGNAL \ALT_INV_Output~189_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[39]~40_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[43]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Output~191_combout\ : std_logic;
SIGNAL \ALT_INV_Output~164_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[41]~9_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[34]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Output~167_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[35]~35_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[35]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Output~169_combout\ : std_logic;
SIGNAL \ALT_INV_Output~173_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[34]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Output~177_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[36]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Output~182_combout\ : std_logic;
SIGNAL \ALT_INV_Output~186_combout\ : std_logic;
SIGNAL \ALT_INV_Output~162_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[39]~39_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[37]~38_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[38]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Output~172_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[46]~14_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[40]~40_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[42]~10_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[39]~39_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[36]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Output~192_combout\ : std_logic;
SIGNAL \ALT_INV_Output~194_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[37]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Output~166_combout\ : std_logic;
SIGNAL \ALT_INV_Output~181_combout\ : std_logic;
SIGNAL \ALT_INV_Output~171_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[40]~40_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[40]~41_combout\ : std_logic;
SIGNAL \ALT_INV_Output~188_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[42]~42_combout\ : std_logic;
SIGNAL \ALT_INV_Output~219_combout\ : std_logic;
SIGNAL \ALT_INV_Output~201_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[42]~43_combout\ : std_logic;
SIGNAL \ALT_INV_Output~221_combout\ : std_logic;
SIGNAL \ALT_INV_Output~222_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[46]~46_combout\ : std_logic;
SIGNAL \ALT_INV_Output~208_combout\ : std_logic;
SIGNAL \ALT_INV_Output~228_combout\ : std_logic;
SIGNAL \ALT_INV_Output~229_combout\ : std_logic;
SIGNAL \ALT_INV_Output~211_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[45]~45_combout\ : std_logic;
SIGNAL \ALT_INV_Output~223_combout\ : std_logic;
SIGNAL \ALT_INV_Output~217_combout\ : std_logic;
SIGNAL \ALT_INV_Output~204_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[46]~47_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[45]~45_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[43]~44_combout\ : std_logic;
SIGNAL \ALT_INV_Output~199_combout\ : std_logic;
SIGNAL \ALT_INV_Output~207_combout\ : std_logic;
SIGNAL \ALT_INV_Output~224_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[48]~48_combout\ : std_logic;
SIGNAL \ALT_INV_Output~202_combout\ : std_logic;
SIGNAL \ALT_INV_Output~231_combout\ : std_logic;
SIGNAL \ALT_INV_Output~232_combout\ : std_logic;
SIGNAL \ALT_INV_Output~233_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[48]~16_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[53]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Output~203_combout\ : std_logic;
SIGNAL \ALT_INV_Output~234_combout\ : std_logic;
SIGNAL \ALT_INV_Output~198_combout\ : std_logic;
SIGNAL \ALT_INV_Output~206_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[49]~17_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[43]~43_combout\ : std_logic;
SIGNAL \ALT_INV_Output~213_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[44]~45_combout\ : std_logic;
SIGNAL \ALT_INV_Output~209_combout\ : std_logic;
SIGNAL \ALT_INV_Output~218_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[41]~42_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[43]~43_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[46]~46_combout\ : std_logic;
SIGNAL \ALT_INV_Output~216_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[51]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Output~226_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[47]~47_combout\ : std_logic;
SIGNAL \ALT_INV_Output~214_combout\ : std_logic;
SIGNAL \ALT_INV_Output~227_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[44]~44_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[54]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Output~212_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[42]~42_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[52]~20_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[44]~44_combout\ : std_logic;
SIGNAL \ALT_INV_Output~197_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[41]~41_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[50]~18_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[45]~46_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[52]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Output~264_combout\ : std_logic;
SIGNAL \ALT_INV_Output~248_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[59]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Output~265_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[47]~47_combout\ : std_logic;
SIGNAL \ALT_INV_Output~250_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[54]~54_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[60]~28_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[61]~29_combout\ : std_logic;
SIGNAL \ALT_INV_Output~240_combout\ : std_logic;
SIGNAL \ALT_INV_Output~245_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[48]~48_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[50]~51_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[53]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Output~255_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[52]~52_combout\ : std_logic;
SIGNAL \ALT_INV_Output~263_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[53]~54_combout\ : std_logic;
SIGNAL \ALT_INV_Output~238_combout\ : std_logic;
SIGNAL \ALT_INV_Output~237_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[55]~55_combout\ : std_logic;
SIGNAL \ALT_INV_Output~267_combout\ : std_logic;
SIGNAL \ALT_INV_Output~235_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[49]~49_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[53]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Output~242_combout\ : std_logic;
SIGNAL \ALT_INV_Output~254_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[51]~51_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[48]~49_combout\ : std_logic;
SIGNAL \ALT_INV_Output~268_combout\ : std_logic;
SIGNAL \ALT_INV_Output~249_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[56]~24_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[51]~51_combout\ : std_logic;
SIGNAL \ALT_INV_Output~262_combout\ : std_logic;
SIGNAL \ALT_INV_Output~269_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[54]~54_combout\ : std_logic;
SIGNAL \ALT_INV_Output~243_combout\ : std_logic;
SIGNAL \ALT_INV_Output~239_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[55]~23_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[50]~50_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[57]~25_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[50]~50_combout\ : std_logic;
SIGNAL \ALT_INV_Output~244_combout\ : std_logic;
SIGNAL \ALT_INV_Output~252_combout\ : std_logic;
SIGNAL \ALT_INV_Output~253_combout\ : std_logic;
SIGNAL \ALT_INV_Output~257_combout\ : std_logic;
SIGNAL \ALT_INV_Output~258_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[49]~50_combout\ : std_logic;
SIGNAL \ALT_INV_Output~247_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[47]~48_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[49]~49_combout\ : std_logic;
SIGNAL \ALT_INV_Output~259_combout\ : std_logic;
SIGNAL \ALT_INV_Output~260_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[58]~26_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[51]~52_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[52]~53_combout\ : std_logic;
SIGNAL \ALT_INV_Output~277_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[58]~59_combout\ : std_logic;
SIGNAL \ALT_INV_sllout[61]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Output~282_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[60]~61_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[57]~58_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[62]~66_combout\ : std_logic;
SIGNAL \ALT_INV_Output~279_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[59]~61_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[62]~67_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[55]~55_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[57]~57_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[59]~60_combout\ : std_logic;
SIGNAL \ALT_INV_Output~285_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[56]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Output~274_combout\ : std_logic;
SIGNAL \ALT_INV_Output~272_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[58]~58_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[57]~57_combout\ : std_logic;
SIGNAL \ALT_INV_Output~278_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[59]~59_combout\ : std_logic;
SIGNAL \ALT_INV_Output~273_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[63]~31_combout\ : std_logic;
SIGNAL \ALT_INV_Output~270_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[59]~62_combout\ : std_logic;
SIGNAL \ALT_INV_Output~287_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[59]~60_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[60]~63_combout\ : std_logic;
SIGNAL \ALT_INV_Output~286_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[61]~64_combout\ : std_logic;
SIGNAL \ALT_INV_Output~290_combout\ : std_logic;
SIGNAL \ALT_INV_Output~295_combout\ : std_logic;
SIGNAL \ALT_INV_srl8[62]~30_combout\ : std_logic;
SIGNAL \ALT_INV_srlout[63]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Output~275_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[56]~57_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[59]~59_combout\ : std_logic;
SIGNAL \ALT_INV_Output~283_combout\ : std_logic;
SIGNAL \ALT_INV_Output~292_combout\ : std_logic;
SIGNAL \ALT_INV_Output~294_combout\ : std_logic;
SIGNAL \ALT_INV_Output~291_combout\ : std_logic;
SIGNAL \ALT_INV_Output~296_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[55]~56_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[56]~56_combout\ : std_logic;
SIGNAL \ALT_INV_Output~289_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[60]~62_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[61]~65_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[4]~63_combout\ : std_logic;
SIGNAL \ALT_INV_y2[61]~3_combout\ : std_logic;
SIGNAL \ALT_INV_srl2[62]~66_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[61]~64_combout\ : std_logic;
SIGNAL \ALT_INV_Output~281_combout\ : std_logic;
SIGNAL \ALT_INV_sra2[61]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[61]~65_combout\ : std_logic;
SIGNAL \ALT_INV_sll16[58]~58_combout\ : std_logic;
SIGNAL \ALT_INV_sll4[54]~55_combout\ : std_logic;
SIGNAL \ALT_INV_Input[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_sll16[63]~60_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sraout[62]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Input[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_sllout[63]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Input[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_sllout[62]~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_srlout[62]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Input[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_srlout[63]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Input[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_sll4[63]~68_combout\ : std_logic;
SIGNAL \ALT_INV_Input[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftCount[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[32]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[44]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[39]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[42]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[48]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[61]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[53]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[50]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[60]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[46]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[51]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[47]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[57]~input_o\ : std_logic;
SIGNAL \ALT_INV_Arith[58]~input_o\ : std_logic;

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
\ALT_INV_srl8[25]~88_combout\ <= NOT \srl8[25]~88_combout\;
\ALT_INV_srl8[21]~104_combout\ <= NOT \srl8[21]~104_combout\;
\ALT_INV_srl8[28]~76_combout\ <= NOT \srl8[28]~76_combout\;
\ALT_INV_srl8[38]~36_combout\ <= NOT \srl8[38]~36_combout\;
\ALT_INV_srl8[20]~108_combout\ <= NOT \srl8[20]~108_combout\;
\ALT_INV_srl8[23]~96_combout\ <= NOT \srl8[23]~96_combout\;
\ALT_INV_srl8[19]~112_combout\ <= NOT \srl8[19]~112_combout\;
\ALT_INV_srl8[30]~68_combout\ <= NOT \srl8[30]~68_combout\;
\ALT_INV_srl8[15]~128_combout\ <= NOT \srl8[15]~128_combout\;
\ALT_INV_srl8[12]~140_combout\ <= NOT \srl8[12]~140_combout\;
\ALT_INV_srl8[24]~92_combout\ <= NOT \srl8[24]~92_combout\;
\ALT_INV_srl8[36]~44_combout\ <= NOT \srl8[36]~44_combout\;
\ALT_INV_srl8[16]~124_combout\ <= NOT \srl8[16]~124_combout\;
\ALT_INV_srl8[31]~64_combout\ <= NOT \srl8[31]~64_combout\;
\ALT_INV_srl8[27]~80_combout\ <= NOT \srl8[27]~80_combout\;
\ALT_INV_srl8[22]~100_combout\ <= NOT \srl8[22]~100_combout\;
\ALT_INV_srl8[18]~116_combout\ <= NOT \srl8[18]~116_combout\;
\ALT_INV_srl8[33]~56_combout\ <= NOT \srl8[33]~56_combout\;
\ALT_INV_srl8[17]~120_combout\ <= NOT \srl8[17]~120_combout\;
\ALT_INV_srl8[39]~32_combout\ <= NOT \srl8[39]~32_combout\;
\ALT_INV_srl8[14]~132_combout\ <= NOT \srl8[14]~132_combout\;
\ALT_INV_srl8[13]~136_combout\ <= NOT \srl8[13]~136_combout\;
\ALT_INV_srl8[35]~48_combout\ <= NOT \srl8[35]~48_combout\;
\ALT_INV_srl8[37]~40_combout\ <= NOT \srl8[37]~40_combout\;
\ALT_INV_srl8[29]~72_combout\ <= NOT \srl8[29]~72_combout\;
\ALT_INV_srl8[26]~84_combout\ <= NOT \srl8[26]~84_combout\;
\ALT_INV_srl8[34]~52_combout\ <= NOT \srl8[34]~52_combout\;
\ALT_INV_srl8[32]~60_combout\ <= NOT \srl8[32]~60_combout\;
\ALT_INV_srl32[4]~4_combout\ <= NOT \srl32[4]~4_combout\;
\ALT_INV_srl32[10]~10_combout\ <= NOT \srl32[10]~10_combout\;
\ALT_INV_srl32[30]~15_combout\ <= NOT \srl32[30]~15_combout\;
\ALT_INV_srl8[2]~2_combout\ <= NOT \srl8[2]~2_combout\;
\ALT_INV_srl32[6]~12_combout\ <= NOT \srl32[6]~12_combout\;
\ALT_INV_srl8[5]~5_combout\ <= NOT \srl8[5]~5_combout\;
\ALT_INV_srl32[11]~26_combout\ <= NOT \srl32[11]~26_combout\;
\ALT_INV_srl32[15]~30_combout\ <= NOT \srl32[15]~30_combout\;
\ALT_INV_srl32[31]~31_combout\ <= NOT \srl32[31]~31_combout\;
\ALT_INV_Output~0_combout\ <= NOT \Output~0_combout\;
\ALT_INV_srl8[11]~144_combout\ <= NOT \srl8[11]~144_combout\;
\ALT_INV_srl32[9]~18_combout\ <= NOT \srl32[9]~18_combout\;
\ALT_INV_srl32[0]~0_combout\ <= NOT \srl32[0]~0_combout\;
\ALT_INV_srl32[23]~29_combout\ <= NOT \srl32[23]~29_combout\;
\ALT_INV_sra2[0]~0_combout\ <= NOT \sra2[0]~0_combout\;
\ALT_INV_sll4[0]~0_combout\ <= NOT \sll4[0]~0_combout\;
\ALT_INV_srl2[2]~2_combout\ <= NOT \srl2[2]~2_combout\;
\ALT_INV_srl8[9]~152_combout\ <= NOT \srl8[9]~152_combout\;
\ALT_INV_srl8[0]~0_combout\ <= NOT \srl8[0]~0_combout\;
\ALT_INV_srl32[7]~28_combout\ <= NOT \srl32[7]~28_combout\;
\ALT_INV_srl32[25]~19_combout\ <= NOT \srl32[25]~19_combout\;
\ALT_INV_srl8[7]~7_combout\ <= NOT \srl8[7]~7_combout\;
\ALT_INV_sra2[1]~3_combout\ <= NOT \sra2[1]~3_combout\;
\ALT_INV_sra2[0]~1_combout\ <= NOT \sra2[0]~1_combout\;
\ALT_INV_srl32[13]~22_combout\ <= NOT \srl32[13]~22_combout\;
\ALT_INV_srl8[8]~156_combout\ <= NOT \srl8[8]~156_combout\;
\ALT_INV_srl2[3]~3_combout\ <= NOT \srl2[3]~3_combout\;
\ALT_INV_srl32[24]~3_combout\ <= NOT \srl32[24]~3_combout\;
\ALT_INV_srl32[26]~11_combout\ <= NOT \srl32[26]~11_combout\;
\ALT_INV_sra2[0]~2_combout\ <= NOT \sra2[0]~2_combout\;
\ALT_INV_srl32[5]~20_combout\ <= NOT \srl32[5]~20_combout\;
\ALT_INV_y2[0]~0_combout\ <= NOT \y2[0]~0_combout\;
\ALT_INV_srl32[22]~13_combout\ <= NOT \srl32[22]~13_combout\;
\ALT_INV_srl8[4]~1_combout\ <= NOT \srl8[4]~1_combout\;
\ALT_INV_srl8[3]~6_combout\ <= NOT \srl8[3]~6_combout\;
\ALT_INV_Output~2_combout\ <= NOT \Output~2_combout\;
\ALT_INV_srl8[10]~148_combout\ <= NOT \srl8[10]~148_combout\;
\ALT_INV_srl32[2]~8_combout\ <= NOT \srl32[2]~8_combout\;
\ALT_INV_srl2[0]~0_combout\ <= NOT \srl2[0]~0_combout\;
\ALT_INV_srl32[17]~17_combout\ <= NOT \srl32[17]~17_combout\;
\ALT_INV_sll4[2]~1_combout\ <= NOT \sll4[2]~1_combout\;
\ALT_INV_srl32[28]~7_combout\ <= NOT \srl32[28]~7_combout\;
\ALT_INV_srl32[18]~9_combout\ <= NOT \srl32[18]~9_combout\;
\ALT_INV_srl32[21]~21_combout\ <= NOT \srl32[21]~21_combout\;
\ALT_INV_srl32[20]~5_combout\ <= NOT \srl32[20]~5_combout\;
\ALT_INV_srl32[1]~16_combout\ <= NOT \srl32[1]~16_combout\;
\ALT_INV_srl2[1]~1_combout\ <= NOT \srl2[1]~1_combout\;
\ALT_INV_srl32[16]~1_combout\ <= NOT \srl32[16]~1_combout\;
\ALT_INV_srl32[14]~14_combout\ <= NOT \srl32[14]~14_combout\;
\ALT_INV_srl32[29]~23_combout\ <= NOT \srl32[29]~23_combout\;
\ALT_INV_srl32[3]~24_combout\ <= NOT \srl32[3]~24_combout\;
\ALT_INV_sra2[1]~4_combout\ <= NOT \sra2[1]~4_combout\;
\ALT_INV_y2[1]~1_combout\ <= NOT \y2[1]~1_combout\;
\ALT_INV_Output~3_combout\ <= NOT \Output~3_combout\;
\ALT_INV_srl8[1]~4_combout\ <= NOT \srl8[1]~4_combout\;
\ALT_INV_sra2[2]~5_combout\ <= NOT \sra2[2]~5_combout\;
\ALT_INV_sra2[2]~6_combout\ <= NOT \sra2[2]~6_combout\;
\ALT_INV_srl32[19]~25_combout\ <= NOT \srl32[19]~25_combout\;
\ALT_INV_srl32[12]~6_combout\ <= NOT \srl32[12]~6_combout\;
\ALT_INV_srl32[8]~2_combout\ <= NOT \srl32[8]~2_combout\;
\ALT_INV_srl8[6]~3_combout\ <= NOT \srl8[6]~3_combout\;
\ALT_INV_srl32[27]~27_combout\ <= NOT \srl32[27]~27_combout\;
\ALT_INV_Output~33_combout\ <= NOT \Output~33_combout\;
\ALT_INV_Output~8_combout\ <= NOT \Output~8_combout\;
\ALT_INV_Output~31_combout\ <= NOT \Output~31_combout\;
\ALT_INV_sll16[9]~5_combout\ <= NOT \sll16[9]~5_combout\;
\ALT_INV_Output~41_combout\ <= NOT \Output~41_combout\;
\ALT_INV_sll4[4]~5_combout\ <= NOT \sll4[4]~5_combout\;
\ALT_INV_Output~43_combout\ <= NOT \Output~43_combout\;
\ALT_INV_sll4[7]~8_combout\ <= NOT \sll4[7]~8_combout\;
\ALT_INV_Output~44_combout\ <= NOT \Output~44_combout\;
\ALT_INV_Output~19_combout\ <= NOT \Output~19_combout\;
\ALT_INV_Output~15_combout\ <= NOT \Output~15_combout\;
\ALT_INV_Output~24_combout\ <= NOT \Output~24_combout\;
\ALT_INV_Output~26_combout\ <= NOT \Output~26_combout\;
\ALT_INV_Output~28_combout\ <= NOT \Output~28_combout\;
\ALT_INV_srl2[4]~4_combout\ <= NOT \srl2[4]~4_combout\;
\ALT_INV_Output~18_combout\ <= NOT \Output~18_combout\;
\ALT_INV_srl2[5]~5_combout\ <= NOT \srl2[5]~5_combout\;
\ALT_INV_Output~7_combout\ <= NOT \Output~7_combout\;
\ALT_INV_srl2[6]~6_combout\ <= NOT \srl2[6]~6_combout\;
\ALT_INV_sll4[6]~7_combout\ <= NOT \sll4[6]~7_combout\;
\ALT_INV_Output~20_combout\ <= NOT \Output~20_combout\;
\ALT_INV_srl2[9]~9_combout\ <= NOT \srl2[9]~9_combout\;
\ALT_INV_Output~34_combout\ <= NOT \Output~34_combout\;
\ALT_INV_Output~25_combout\ <= NOT \Output~25_combout\;
\ALT_INV_Output~21_combout\ <= NOT \Output~21_combout\;
\ALT_INV_srl2[7]~7_combout\ <= NOT \srl2[7]~7_combout\;
\ALT_INV_Output~11_combout\ <= NOT \Output~11_combout\;
\ALT_INV_srl2[8]~8_combout\ <= NOT \srl2[8]~8_combout\;
\ALT_INV_sll16[0]~0_combout\ <= NOT \sll16[0]~0_combout\;
\ALT_INV_Output~29_combout\ <= NOT \Output~29_combout\;
\ALT_INV_Output~39_combout\ <= NOT \Output~39_combout\;
\ALT_INV_Output~40_combout\ <= NOT \Output~40_combout\;
\ALT_INV_Output~5_combout\ <= NOT \Output~5_combout\;
\ALT_INV_srl2[10]~10_combout\ <= NOT \srl2[10]~10_combout\;
\ALT_INV_srl2[11]~11_combout\ <= NOT \srl2[11]~11_combout\;
\ALT_INV_sll4[5]~6_combout\ <= NOT \sll4[5]~6_combout\;
\ALT_INV_Output~16_combout\ <= NOT \Output~16_combout\;
\ALT_INV_Output~10_combout\ <= NOT \Output~10_combout\;
\ALT_INV_Output~23_combout\ <= NOT \Output~23_combout\;
\ALT_INV_sll16[8]~2_combout\ <= NOT \sll16[8]~2_combout\;
\ALT_INV_Output~38_combout\ <= NOT \Output~38_combout\;
\ALT_INV_sll4[3]~4_combout\ <= NOT \sll4[3]~4_combout\;
\ALT_INV_sll4[1]~2_combout\ <= NOT \sll4[1]~2_combout\;
\ALT_INV_sll4[9]~10_combout\ <= NOT \sll4[9]~10_combout\;
\ALT_INV_sll16[1]~3_combout\ <= NOT \sll16[1]~3_combout\;
\ALT_INV_sll16[5]~4_combout\ <= NOT \sll16[5]~4_combout\;
\ALT_INV_y2[2]~2_combout\ <= NOT \y2[2]~2_combout\;
\ALT_INV_sll4[2]~3_combout\ <= NOT \sll4[2]~3_combout\;
\ALT_INV_Output~9_combout\ <= NOT \Output~9_combout\;
\ALT_INV_Output~14_combout\ <= NOT \Output~14_combout\;
\ALT_INV_Output~30_combout\ <= NOT \Output~30_combout\;
\ALT_INV_sll4[8]~9_combout\ <= NOT \sll4[8]~9_combout\;
\ALT_INV_Output~36_combout\ <= NOT \Output~36_combout\;
\ALT_INV_sll16[4]~1_combout\ <= NOT \sll16[4]~1_combout\;
\ALT_INV_Output~13_combout\ <= NOT \Output~13_combout\;
\ALT_INV_Output~35_combout\ <= NOT \Output~35_combout\;
\ALT_INV_srl2[17]~17_combout\ <= NOT \srl2[17]~17_combout\;
\ALT_INV_Output~76_combout\ <= NOT \Output~76_combout\;
\ALT_INV_sll4[11]~12_combout\ <= NOT \sll4[11]~12_combout\;
\ALT_INV_sll16[7]~10_combout\ <= NOT \sll16[7]~10_combout\;
\ALT_INV_Output~51_combout\ <= NOT \Output~51_combout\;
\ALT_INV_Output~56_combout\ <= NOT \Output~56_combout\;
\ALT_INV_sll4[16]~17_combout\ <= NOT \sll4[16]~17_combout\;
\ALT_INV_sll16[17]~17_combout\ <= NOT \sll16[17]~17_combout\;
\ALT_INV_Output~81_combout\ <= NOT \Output~81_combout\;
\ALT_INV_srl2[13]~13_combout\ <= NOT \srl2[13]~13_combout\;
\ALT_INV_Output~49_combout\ <= NOT \Output~49_combout\;
\ALT_INV_sll16[2]~6_combout\ <= NOT \sll16[2]~6_combout\;
\ALT_INV_sll16[15]~15_combout\ <= NOT \sll16[15]~15_combout\;
\ALT_INV_Output~58_combout\ <= NOT \Output~58_combout\;
\ALT_INV_Output~75_combout\ <= NOT \Output~75_combout\;
\ALT_INV_Output~71_combout\ <= NOT \Output~71_combout\;
\ALT_INV_sll4[13]~14_combout\ <= NOT \sll4[13]~14_combout\;
\ALT_INV_Output~73_combout\ <= NOT \Output~73_combout\;
\ALT_INV_Output~80_combout\ <= NOT \Output~80_combout\;
\ALT_INV_Output~74_combout\ <= NOT \Output~74_combout\;
\ALT_INV_srl2[12]~12_combout\ <= NOT \srl2[12]~12_combout\;
\ALT_INV_Output~68_combout\ <= NOT \Output~68_combout\;
\ALT_INV_sll4[17]~18_combout\ <= NOT \sll4[17]~18_combout\;
\ALT_INV_sll4[12]~13_combout\ <= NOT \sll4[12]~13_combout\;
\ALT_INV_Output~66_combout\ <= NOT \Output~66_combout\;
\ALT_INV_Output~55_combout\ <= NOT \Output~55_combout\;
\ALT_INV_sll16[14]~14_combout\ <= NOT \sll16[14]~14_combout\;
\ALT_INV_sll16[10]~8_combout\ <= NOT \sll16[10]~8_combout\;
\ALT_INV_Output~45_combout\ <= NOT \Output~45_combout\;
\ALT_INV_Output~59_combout\ <= NOT \Output~59_combout\;
\ALT_INV_Output~64_combout\ <= NOT \Output~64_combout\;
\ALT_INV_sll16[6]~7_combout\ <= NOT \sll16[6]~7_combout\;
\ALT_INV_srl2[15]~15_combout\ <= NOT \srl2[15]~15_combout\;
\ALT_INV_Output~46_combout\ <= NOT \Output~46_combout\;
\ALT_INV_sll4[14]~15_combout\ <= NOT \sll4[14]~15_combout\;
\ALT_INV_sll16[13]~13_combout\ <= NOT \sll16[13]~13_combout\;
\ALT_INV_Output~69_combout\ <= NOT \Output~69_combout\;
\ALT_INV_Output~50_combout\ <= NOT \Output~50_combout\;
\ALT_INV_sll4[15]~16_combout\ <= NOT \sll4[15]~16_combout\;
\ALT_INV_sll4[10]~11_combout\ <= NOT \sll4[10]~11_combout\;
\ALT_INV_Output~48_combout\ <= NOT \Output~48_combout\;
\ALT_INV_Output~53_combout\ <= NOT \Output~53_combout\;
\ALT_INV_srl2[14]~14_combout\ <= NOT \srl2[14]~14_combout\;
\ALT_INV_Output~60_combout\ <= NOT \Output~60_combout\;
\ALT_INV_Output~61_combout\ <= NOT \Output~61_combout\;
\ALT_INV_Output~65_combout\ <= NOT \Output~65_combout\;
\ALT_INV_sll16[11]~11_combout\ <= NOT \sll16[11]~11_combout\;
\ALT_INV_Output~63_combout\ <= NOT \Output~63_combout\;
\ALT_INV_Output~70_combout\ <= NOT \Output~70_combout\;
\ALT_INV_sll16[12]~12_combout\ <= NOT \sll16[12]~12_combout\;
\ALT_INV_sll16[16]~16_combout\ <= NOT \sll16[16]~16_combout\;
\ALT_INV_Output~78_combout\ <= NOT \Output~78_combout\;
\ALT_INV_Output~54_combout\ <= NOT \Output~54_combout\;
\ALT_INV_srl2[16]~16_combout\ <= NOT \srl2[16]~16_combout\;
\ALT_INV_Output~79_combout\ <= NOT \Output~79_combout\;
\ALT_INV_sll16[3]~9_combout\ <= NOT \sll16[3]~9_combout\;
\ALT_INV_srl2[18]~18_combout\ <= NOT \srl2[18]~18_combout\;
\ALT_INV_Output~99_combout\ <= NOT \Output~99_combout\;
\ALT_INV_Output~121_combout\ <= NOT \Output~121_combout\;
\ALT_INV_Output~89_combout\ <= NOT \Output~89_combout\;
\ALT_INV_Output~83_combout\ <= NOT \Output~83_combout\;
\ALT_INV_Output~98_combout\ <= NOT \Output~98_combout\;
\ALT_INV_sll16[21]~21_combout\ <= NOT \sll16[21]~21_combout\;
\ALT_INV_sll4[20]~21_combout\ <= NOT \sll4[20]~21_combout\;
\ALT_INV_sll16[22]~22_combout\ <= NOT \sll16[22]~22_combout\;
\ALT_INV_srl2[24]~24_combout\ <= NOT \srl2[24]~24_combout\;
\ALT_INV_Output~113_combout\ <= NOT \Output~113_combout\;
\ALT_INV_Output~84_combout\ <= NOT \Output~84_combout\;
\ALT_INV_Output~96_combout\ <= NOT \Output~96_combout\;
\ALT_INV_sll16[18]~18_combout\ <= NOT \sll16[18]~18_combout\;
\ALT_INV_Output~90_combout\ <= NOT \Output~90_combout\;
\ALT_INV_Output~109_combout\ <= NOT \Output~109_combout\;
\ALT_INV_sll4[24]~25_combout\ <= NOT \sll4[24]~25_combout\;
\ALT_INV_Output~118_combout\ <= NOT \Output~118_combout\;
\ALT_INV_srl2[23]~23_combout\ <= NOT \srl2[23]~23_combout\;
\ALT_INV_sll16[23]~23_combout\ <= NOT \sll16[23]~23_combout\;
\ALT_INV_Output~100_combout\ <= NOT \Output~100_combout\;
\ALT_INV_Output~120_combout\ <= NOT \Output~120_combout\;
\ALT_INV_Output~105_combout\ <= NOT \Output~105_combout\;
\ALT_INV_srl2[19]~19_combout\ <= NOT \srl2[19]~19_combout\;
\ALT_INV_sll16[25]~25_combout\ <= NOT \sll16[25]~25_combout\;
\ALT_INV_Output~93_combout\ <= NOT \Output~93_combout\;
\ALT_INV_sll16[19]~19_combout\ <= NOT \sll16[19]~19_combout\;
\ALT_INV_Output~108_combout\ <= NOT \Output~108_combout\;
\ALT_INV_Output~103_combout\ <= NOT \Output~103_combout\;
\ALT_INV_srl2[21]~21_combout\ <= NOT \srl2[21]~21_combout\;
\ALT_INV_srl2[20]~20_combout\ <= NOT \srl2[20]~20_combout\;
\ALT_INV_Output~115_combout\ <= NOT \Output~115_combout\;
\ALT_INV_sll4[25]~26_combout\ <= NOT \sll4[25]~26_combout\;
\ALT_INV_Output~106_combout\ <= NOT \Output~106_combout\;
\ALT_INV_sll4[22]~23_combout\ <= NOT \sll4[22]~23_combout\;
\ALT_INV_sll4[23]~24_combout\ <= NOT \sll4[23]~24_combout\;
\ALT_INV_Output~114_combout\ <= NOT \Output~114_combout\;
\ALT_INV_srl2[22]~22_combout\ <= NOT \srl2[22]~22_combout\;
\ALT_INV_Output~91_combout\ <= NOT \Output~91_combout\;
\ALT_INV_sll4[19]~20_combout\ <= NOT \sll4[19]~20_combout\;
\ALT_INV_Output~85_combout\ <= NOT \Output~85_combout\;
\ALT_INV_Output~94_combout\ <= NOT \Output~94_combout\;
\ALT_INV_sll16[20]~20_combout\ <= NOT \sll16[20]~20_combout\;
\ALT_INV_Output~110_combout\ <= NOT \Output~110_combout\;
\ALT_INV_Output~111_combout\ <= NOT \Output~111_combout\;
\ALT_INV_sll4[18]~19_combout\ <= NOT \sll4[18]~19_combout\;
\ALT_INV_Output~86_combout\ <= NOT \Output~86_combout\;
\ALT_INV_srl2[25]~25_combout\ <= NOT \srl2[25]~25_combout\;
\ALT_INV_sll16[24]~24_combout\ <= NOT \sll16[24]~24_combout\;
\ALT_INV_sll4[21]~22_combout\ <= NOT \sll4[21]~22_combout\;
\ALT_INV_Output~88_combout\ <= NOT \Output~88_combout\;
\ALT_INV_Output~116_combout\ <= NOT \Output~116_combout\;
\ALT_INV_Output~95_combout\ <= NOT \Output~95_combout\;
\ALT_INV_Output~101_combout\ <= NOT \Output~101_combout\;
\ALT_INV_srl2[26]~26_combout\ <= NOT \srl2[26]~26_combout\;
\ALT_INV_Output~104_combout\ <= NOT \Output~104_combout\;
\ALT_INV_Output~119_combout\ <= NOT \Output~119_combout\;
\ALT_INV_sll16[28]~28_combout\ <= NOT \sll16[28]~28_combout\;
\ALT_INV_Output~148_combout\ <= NOT \Output~148_combout\;
\ALT_INV_Output~129_combout\ <= NOT \Output~129_combout\;
\ALT_INV_Output~135_combout\ <= NOT \Output~135_combout\;
\ALT_INV_srl2[31]~31_combout\ <= NOT \srl2[31]~31_combout\;
\ALT_INV_srl2[30]~30_combout\ <= NOT \srl2[30]~30_combout\;
\ALT_INV_sll16[29]~29_combout\ <= NOT \sll16[29]~29_combout\;
\ALT_INV_Output~141_combout\ <= NOT \Output~141_combout\;
\ALT_INV_Output~138_combout\ <= NOT \Output~138_combout\;
\ALT_INV_Output~125_combout\ <= NOT \Output~125_combout\;
\ALT_INV_Output~136_combout\ <= NOT \Output~136_combout\;
\ALT_INV_srl2[29]~29_combout\ <= NOT \srl2[29]~29_combout\;
\ALT_INV_sll4[29]~30_combout\ <= NOT \sll4[29]~30_combout\;
\ALT_INV_srl2[32]~32_combout\ <= NOT \srl2[32]~32_combout\;
\ALT_INV_Output~149_combout\ <= NOT \Output~149_combout\;
\ALT_INV_sll4[26]~27_combout\ <= NOT \sll4[26]~27_combout\;
\ALT_INV_Output~151_combout\ <= NOT \Output~151_combout\;
\ALT_INV_sll16[32]~32_combout\ <= NOT \sll16[32]~32_combout\;
\ALT_INV_Output~153_combout\ <= NOT \Output~153_combout\;
\ALT_INV_Output~155_combout\ <= NOT \Output~155_combout\;
\ALT_INV_Output~156_combout\ <= NOT \Output~156_combout\;
\ALT_INV_Output~157_combout\ <= NOT \Output~157_combout\;
\ALT_INV_Output~133_combout\ <= NOT \Output~133_combout\;
\ALT_INV_Output~130_combout\ <= NOT \Output~130_combout\;
\ALT_INV_srl2[27]~27_combout\ <= NOT \srl2[27]~27_combout\;
\ALT_INV_Output~158_combout\ <= NOT \Output~158_combout\;
\ALT_INV_Output~159_combout\ <= NOT \Output~159_combout\;
\ALT_INV_Output~140_combout\ <= NOT \Output~140_combout\;
\ALT_INV_sll4[32]~33_combout\ <= NOT \sll4[32]~33_combout\;
\ALT_INV_Output~123_combout\ <= NOT \Output~123_combout\;
\ALT_INV_Output~131_combout\ <= NOT \Output~131_combout\;
\ALT_INV_Output~144_combout\ <= NOT \Output~144_combout\;
\ALT_INV_sll4[31]~32_combout\ <= NOT \sll4[31]~32_combout\;
\ALT_INV_srl2[28]~28_combout\ <= NOT \srl2[28]~28_combout\;
\ALT_INV_sll16[30]~30_combout\ <= NOT \sll16[30]~30_combout\;
\ALT_INV_sll4[27]~28_combout\ <= NOT \sll4[27]~28_combout\;
\ALT_INV_Output~154_combout\ <= NOT \Output~154_combout\;
\ALT_INV_Output~124_combout\ <= NOT \Output~124_combout\;
\ALT_INV_Output~126_combout\ <= NOT \Output~126_combout\;
\ALT_INV_Output~146_combout\ <= NOT \Output~146_combout\;
\ALT_INV_sll16[33]~33_combout\ <= NOT \sll16[33]~33_combout\;
\ALT_INV_Output~145_combout\ <= NOT \Output~145_combout\;
\ALT_INV_sll4[33]~34_combout\ <= NOT \sll4[33]~34_combout\;
\ALT_INV_sll16[27]~27_combout\ <= NOT \sll16[27]~27_combout\;
\ALT_INV_Output~139_combout\ <= NOT \Output~139_combout\;
\ALT_INV_Output~161_combout\ <= NOT \Output~161_combout\;
\ALT_INV_srl8[40]~8_combout\ <= NOT \srl8[40]~8_combout\;
\ALT_INV_Output~150_combout\ <= NOT \Output~150_combout\;
\ALT_INV_sll4[28]~29_combout\ <= NOT \sll4[28]~29_combout\;
\ALT_INV_Output~134_combout\ <= NOT \Output~134_combout\;
\ALT_INV_sll16[31]~31_combout\ <= NOT \sll16[31]~31_combout\;
\ALT_INV_srl2[33]~33_combout\ <= NOT \srl2[33]~33_combout\;
\ALT_INV_Output~143_combout\ <= NOT \Output~143_combout\;
\ALT_INV_sll4[30]~31_combout\ <= NOT \sll4[30]~31_combout\;
\ALT_INV_Output~128_combout\ <= NOT \Output~128_combout\;
\ALT_INV_sll16[26]~26_combout\ <= NOT \sll16[26]~26_combout\;
\ALT_INV_Output~179_combout\ <= NOT \Output~179_combout\;
\ALT_INV_Output~196_combout\ <= NOT \Output~196_combout\;
\ALT_INV_sll4[38]~39_combout\ <= NOT \sll4[38]~39_combout\;
\ALT_INV_srl8[44]~12_combout\ <= NOT \srl8[44]~12_combout\;
\ALT_INV_Output~193_combout\ <= NOT \Output~193_combout\;
\ALT_INV_srl8[47]~15_combout\ <= NOT \srl8[47]~15_combout\;
\ALT_INV_Output~176_combout\ <= NOT \Output~176_combout\;
\ALT_INV_srl2[38]~38_combout\ <= NOT \srl2[38]~38_combout\;
\ALT_INV_srl2[35]~35_combout\ <= NOT \srl2[35]~35_combout\;
\ALT_INV_srl2[41]~41_combout\ <= NOT \srl2[41]~41_combout\;
\ALT_INV_sll16[34]~34_combout\ <= NOT \sll16[34]~34_combout\;
\ALT_INV_Output~183_combout\ <= NOT \Output~183_combout\;
\ALT_INV_Output~168_combout\ <= NOT \Output~168_combout\;
\ALT_INV_Output~163_combout\ <= NOT \Output~163_combout\;
\ALT_INV_Output~174_combout\ <= NOT \Output~174_combout\;
\ALT_INV_sll16[37]~37_combout\ <= NOT \sll16[37]~37_combout\;
\ALT_INV_Output~184_combout\ <= NOT \Output~184_combout\;
\ALT_INV_sll16[36]~36_combout\ <= NOT \sll16[36]~36_combout\;
\ALT_INV_srl8[45]~13_combout\ <= NOT \srl8[45]~13_combout\;
\ALT_INV_Output~178_combout\ <= NOT \Output~178_combout\;
\ALT_INV_Output~187_combout\ <= NOT \Output~187_combout\;
\ALT_INV_Output~189_combout\ <= NOT \Output~189_combout\;
\ALT_INV_sll4[39]~40_combout\ <= NOT \sll4[39]~40_combout\;
\ALT_INV_srl8[43]~11_combout\ <= NOT \srl8[43]~11_combout\;
\ALT_INV_Output~191_combout\ <= NOT \Output~191_combout\;
\ALT_INV_Output~164_combout\ <= NOT \Output~164_combout\;
\ALT_INV_srl8[41]~9_combout\ <= NOT \srl8[41]~9_combout\;
\ALT_INV_srl2[34]~34_combout\ <= NOT \srl2[34]~34_combout\;
\ALT_INV_Output~167_combout\ <= NOT \Output~167_combout\;
\ALT_INV_sll16[35]~35_combout\ <= NOT \sll16[35]~35_combout\;
\ALT_INV_sll4[35]~36_combout\ <= NOT \sll4[35]~36_combout\;
\ALT_INV_Output~169_combout\ <= NOT \Output~169_combout\;
\ALT_INV_Output~173_combout\ <= NOT \Output~173_combout\;
\ALT_INV_sll4[34]~35_combout\ <= NOT \sll4[34]~35_combout\;
\ALT_INV_Output~177_combout\ <= NOT \Output~177_combout\;
\ALT_INV_srl2[36]~36_combout\ <= NOT \srl2[36]~36_combout\;
\ALT_INV_Output~182_combout\ <= NOT \Output~182_combout\;
\ALT_INV_Output~186_combout\ <= NOT \Output~186_combout\;
\ALT_INV_Output~162_combout\ <= NOT \Output~162_combout\;
\ALT_INV_sll16[39]~39_combout\ <= NOT \sll16[39]~39_combout\;
\ALT_INV_sll4[37]~38_combout\ <= NOT \sll4[37]~38_combout\;
\ALT_INV_sll16[38]~38_combout\ <= NOT \sll16[38]~38_combout\;
\ALT_INV_Output~172_combout\ <= NOT \Output~172_combout\;
\ALT_INV_srl8[46]~14_combout\ <= NOT \srl8[46]~14_combout\;
\ALT_INV_srl2[40]~40_combout\ <= NOT \srl2[40]~40_combout\;
\ALT_INV_srl8[42]~10_combout\ <= NOT \srl8[42]~10_combout\;
\ALT_INV_srl2[39]~39_combout\ <= NOT \srl2[39]~39_combout\;
\ALT_INV_sll4[36]~37_combout\ <= NOT \sll4[36]~37_combout\;
\ALT_INV_Output~192_combout\ <= NOT \Output~192_combout\;
\ALT_INV_Output~194_combout\ <= NOT \Output~194_combout\;
\ALT_INV_srl2[37]~37_combout\ <= NOT \srl2[37]~37_combout\;
\ALT_INV_Output~166_combout\ <= NOT \Output~166_combout\;
\ALT_INV_Output~181_combout\ <= NOT \Output~181_combout\;
\ALT_INV_Output~171_combout\ <= NOT \Output~171_combout\;
\ALT_INV_sll16[40]~40_combout\ <= NOT \sll16[40]~40_combout\;
\ALT_INV_sll4[40]~41_combout\ <= NOT \sll4[40]~41_combout\;
\ALT_INV_Output~188_combout\ <= NOT \Output~188_combout\;
\ALT_INV_srl2[42]~42_combout\ <= NOT \srl2[42]~42_combout\;
\ALT_INV_Output~219_combout\ <= NOT \Output~219_combout\;
\ALT_INV_Output~201_combout\ <= NOT \Output~201_combout\;
\ALT_INV_sll4[42]~43_combout\ <= NOT \sll4[42]~43_combout\;
\ALT_INV_Output~221_combout\ <= NOT \Output~221_combout\;
\ALT_INV_Output~222_combout\ <= NOT \Output~222_combout\;
\ALT_INV_sll16[46]~46_combout\ <= NOT \sll16[46]~46_combout\;
\ALT_INV_Output~208_combout\ <= NOT \Output~208_combout\;
\ALT_INV_Output~228_combout\ <= NOT \Output~228_combout\;
\ALT_INV_Output~229_combout\ <= NOT \Output~229_combout\;
\ALT_INV_Output~211_combout\ <= NOT \Output~211_combout\;
\ALT_INV_srl2[45]~45_combout\ <= NOT \srl2[45]~45_combout\;
\ALT_INV_Output~223_combout\ <= NOT \Output~223_combout\;
\ALT_INV_Output~217_combout\ <= NOT \Output~217_combout\;
\ALT_INV_Output~204_combout\ <= NOT \Output~204_combout\;
\ALT_INV_sll4[46]~47_combout\ <= NOT \sll4[46]~47_combout\;
\ALT_INV_sll16[45]~45_combout\ <= NOT \sll16[45]~45_combout\;
\ALT_INV_sll4[43]~44_combout\ <= NOT \sll4[43]~44_combout\;
\ALT_INV_Output~199_combout\ <= NOT \Output~199_combout\;
\ALT_INV_Output~207_combout\ <= NOT \Output~207_combout\;
\ALT_INV_Output~224_combout\ <= NOT \Output~224_combout\;
\ALT_INV_srl2[48]~48_combout\ <= NOT \srl2[48]~48_combout\;
\ALT_INV_Output~202_combout\ <= NOT \Output~202_combout\;
\ALT_INV_Output~231_combout\ <= NOT \Output~231_combout\;
\ALT_INV_Output~232_combout\ <= NOT \Output~232_combout\;
\ALT_INV_Output~233_combout\ <= NOT \Output~233_combout\;
\ALT_INV_srl8[48]~16_combout\ <= NOT \srl8[48]~16_combout\;
\ALT_INV_srl8[53]~21_combout\ <= NOT \srl8[53]~21_combout\;
\ALT_INV_Output~203_combout\ <= NOT \Output~203_combout\;
\ALT_INV_Output~234_combout\ <= NOT \Output~234_combout\;
\ALT_INV_Output~198_combout\ <= NOT \Output~198_combout\;
\ALT_INV_Output~206_combout\ <= NOT \Output~206_combout\;
\ALT_INV_srl8[49]~17_combout\ <= NOT \srl8[49]~17_combout\;
\ALT_INV_sll16[43]~43_combout\ <= NOT \sll16[43]~43_combout\;
\ALT_INV_Output~213_combout\ <= NOT \Output~213_combout\;
\ALT_INV_sll4[44]~45_combout\ <= NOT \sll4[44]~45_combout\;
\ALT_INV_Output~209_combout\ <= NOT \Output~209_combout\;
\ALT_INV_Output~218_combout\ <= NOT \Output~218_combout\;
\ALT_INV_sll4[41]~42_combout\ <= NOT \sll4[41]~42_combout\;
\ALT_INV_srl2[43]~43_combout\ <= NOT \srl2[43]~43_combout\;
\ALT_INV_srl2[46]~46_combout\ <= NOT \srl2[46]~46_combout\;
\ALT_INV_Output~216_combout\ <= NOT \Output~216_combout\;
\ALT_INV_srl8[51]~19_combout\ <= NOT \srl8[51]~19_combout\;
\ALT_INV_Output~226_combout\ <= NOT \Output~226_combout\;
\ALT_INV_srl2[47]~47_combout\ <= NOT \srl2[47]~47_combout\;
\ALT_INV_Output~214_combout\ <= NOT \Output~214_combout\;
\ALT_INV_Output~227_combout\ <= NOT \Output~227_combout\;
\ALT_INV_sll16[44]~44_combout\ <= NOT \sll16[44]~44_combout\;
\ALT_INV_srl8[54]~22_combout\ <= NOT \srl8[54]~22_combout\;
\ALT_INV_Output~212_combout\ <= NOT \Output~212_combout\;
\ALT_INV_sll16[42]~42_combout\ <= NOT \sll16[42]~42_combout\;
\ALT_INV_srl8[52]~20_combout\ <= NOT \srl8[52]~20_combout\;
\ALT_INV_srl2[44]~44_combout\ <= NOT \srl2[44]~44_combout\;
\ALT_INV_Output~197_combout\ <= NOT \Output~197_combout\;
\ALT_INV_sll16[41]~41_combout\ <= NOT \sll16[41]~41_combout\;
\ALT_INV_srl8[50]~18_combout\ <= NOT \srl8[50]~18_combout\;
\ALT_INV_sll4[45]~46_combout\ <= NOT \sll4[45]~46_combout\;
\ALT_INV_srl2[52]~52_combout\ <= NOT \srl2[52]~52_combout\;
\ALT_INV_Output~264_combout\ <= NOT \Output~264_combout\;
\ALT_INV_Output~248_combout\ <= NOT \Output~248_combout\;
\ALT_INV_srl8[59]~27_combout\ <= NOT \srl8[59]~27_combout\;
\ALT_INV_Output~265_combout\ <= NOT \Output~265_combout\;
\ALT_INV_sll16[47]~47_combout\ <= NOT \sll16[47]~47_combout\;
\ALT_INV_Output~250_combout\ <= NOT \Output~250_combout\;
\ALT_INV_srl2[54]~54_combout\ <= NOT \srl2[54]~54_combout\;
\ALT_INV_srl8[60]~28_combout\ <= NOT \srl8[60]~28_combout\;
\ALT_INV_srl8[61]~29_combout\ <= NOT \srl8[61]~29_combout\;
\ALT_INV_Output~240_combout\ <= NOT \Output~240_combout\;
\ALT_INV_Output~245_combout\ <= NOT \Output~245_combout\;
\ALT_INV_sll16[48]~48_combout\ <= NOT \sll16[48]~48_combout\;
\ALT_INV_sll4[50]~51_combout\ <= NOT \sll4[50]~51_combout\;
\ALT_INV_srl2[53]~53_combout\ <= NOT \srl2[53]~53_combout\;
\ALT_INV_Output~255_combout\ <= NOT \Output~255_combout\;
\ALT_INV_sll16[52]~52_combout\ <= NOT \sll16[52]~52_combout\;
\ALT_INV_Output~263_combout\ <= NOT \Output~263_combout\;
\ALT_INV_sll4[53]~54_combout\ <= NOT \sll4[53]~54_combout\;
\ALT_INV_Output~238_combout\ <= NOT \Output~238_combout\;
\ALT_INV_Output~237_combout\ <= NOT \Output~237_combout\;
\ALT_INV_srl2[55]~55_combout\ <= NOT \srl2[55]~55_combout\;
\ALT_INV_Output~267_combout\ <= NOT \Output~267_combout\;
\ALT_INV_Output~235_combout\ <= NOT \Output~235_combout\;
\ALT_INV_srl2[49]~49_combout\ <= NOT \srl2[49]~49_combout\;
\ALT_INV_sll16[53]~53_combout\ <= NOT \sll16[53]~53_combout\;
\ALT_INV_Output~242_combout\ <= NOT \Output~242_combout\;
\ALT_INV_Output~254_combout\ <= NOT \Output~254_combout\;
\ALT_INV_sll16[51]~51_combout\ <= NOT \sll16[51]~51_combout\;
\ALT_INV_sll4[48]~49_combout\ <= NOT \sll4[48]~49_combout\;
\ALT_INV_Output~268_combout\ <= NOT \Output~268_combout\;
\ALT_INV_Output~249_combout\ <= NOT \Output~249_combout\;
\ALT_INV_srl8[56]~24_combout\ <= NOT \srl8[56]~24_combout\;
\ALT_INV_srl2[51]~51_combout\ <= NOT \srl2[51]~51_combout\;
\ALT_INV_Output~262_combout\ <= NOT \Output~262_combout\;
\ALT_INV_Output~269_combout\ <= NOT \Output~269_combout\;
\ALT_INV_sll16[54]~54_combout\ <= NOT \sll16[54]~54_combout\;
\ALT_INV_Output~243_combout\ <= NOT \Output~243_combout\;
\ALT_INV_Output~239_combout\ <= NOT \Output~239_combout\;
\ALT_INV_srl8[55]~23_combout\ <= NOT \srl8[55]~23_combout\;
\ALT_INV_srl2[50]~50_combout\ <= NOT \srl2[50]~50_combout\;
\ALT_INV_srl8[57]~25_combout\ <= NOT \srl8[57]~25_combout\;
\ALT_INV_sll16[50]~50_combout\ <= NOT \sll16[50]~50_combout\;
\ALT_INV_Output~244_combout\ <= NOT \Output~244_combout\;
\ALT_INV_Output~252_combout\ <= NOT \Output~252_combout\;
\ALT_INV_Output~253_combout\ <= NOT \Output~253_combout\;
\ALT_INV_Output~257_combout\ <= NOT \Output~257_combout\;
\ALT_INV_Output~258_combout\ <= NOT \Output~258_combout\;
\ALT_INV_sll4[49]~50_combout\ <= NOT \sll4[49]~50_combout\;
\ALT_INV_Output~247_combout\ <= NOT \Output~247_combout\;
\ALT_INV_sll4[47]~48_combout\ <= NOT \sll4[47]~48_combout\;
\ALT_INV_sll16[49]~49_combout\ <= NOT \sll16[49]~49_combout\;
\ALT_INV_Output~259_combout\ <= NOT \Output~259_combout\;
\ALT_INV_Output~260_combout\ <= NOT \Output~260_combout\;
\ALT_INV_srl8[58]~26_combout\ <= NOT \srl8[58]~26_combout\;
\ALT_INV_sll4[51]~52_combout\ <= NOT \sll4[51]~52_combout\;
\ALT_INV_sll4[52]~53_combout\ <= NOT \sll4[52]~53_combout\;
\ALT_INV_Output~277_combout\ <= NOT \Output~277_combout\;
\ALT_INV_sll4[58]~59_combout\ <= NOT \sll4[58]~59_combout\;
\ALT_INV_sllout[61]~0_combout\ <= NOT \sllout[61]~0_combout\;
\ALT_INV_Output~282_combout\ <= NOT \Output~282_combout\;
\ALT_INV_sll4[60]~61_combout\ <= NOT \sll4[60]~61_combout\;
\ALT_INV_sll4[57]~58_combout\ <= NOT \sll4[57]~58_combout\;
\ALT_INV_sll4[62]~66_combout\ <= NOT \sll4[62]~66_combout\;
\ALT_INV_Output~279_combout\ <= NOT \Output~279_combout\;
\ALT_INV_srl2[59]~61_combout\ <= NOT \srl2[59]~61_combout\;
\ALT_INV_sll4[62]~67_combout\ <= NOT \sll4[62]~67_combout\;
\ALT_INV_sll16[55]~55_combout\ <= NOT \sll16[55]~55_combout\;
\ALT_INV_sll16[57]~57_combout\ <= NOT \sll16[57]~57_combout\;
\ALT_INV_srl2[59]~60_combout\ <= NOT \srl2[59]~60_combout\;
\ALT_INV_Output~285_combout\ <= NOT \Output~285_combout\;
\ALT_INV_srl2[56]~56_combout\ <= NOT \srl2[56]~56_combout\;
\ALT_INV_Output~274_combout\ <= NOT \Output~274_combout\;
\ALT_INV_Output~272_combout\ <= NOT \Output~272_combout\;
\ALT_INV_srl2[58]~58_combout\ <= NOT \srl2[58]~58_combout\;
\ALT_INV_srl2[57]~57_combout\ <= NOT \srl2[57]~57_combout\;
\ALT_INV_Output~278_combout\ <= NOT \Output~278_combout\;
\ALT_INV_srl2[59]~59_combout\ <= NOT \srl2[59]~59_combout\;
\ALT_INV_Output~273_combout\ <= NOT \Output~273_combout\;
\ALT_INV_srl8[63]~31_combout\ <= NOT \srl8[63]~31_combout\;
\ALT_INV_Output~270_combout\ <= NOT \Output~270_combout\;
\ALT_INV_srl2[59]~62_combout\ <= NOT \srl2[59]~62_combout\;
\ALT_INV_Output~287_combout\ <= NOT \Output~287_combout\;
\ALT_INV_sll4[59]~60_combout\ <= NOT \sll4[59]~60_combout\;
\ALT_INV_srl2[60]~63_combout\ <= NOT \srl2[60]~63_combout\;
\ALT_INV_Output~286_combout\ <= NOT \Output~286_combout\;
\ALT_INV_srl2[61]~64_combout\ <= NOT \srl2[61]~64_combout\;
\ALT_INV_Output~290_combout\ <= NOT \Output~290_combout\;
\ALT_INV_Output~295_combout\ <= NOT \Output~295_combout\;
\ALT_INV_srl8[62]~30_combout\ <= NOT \srl8[62]~30_combout\;
\ALT_INV_srlout[63]~0_combout\ <= NOT \srlout[63]~0_combout\;
\ALT_INV_Output~275_combout\ <= NOT \Output~275_combout\;
\ALT_INV_sll4[56]~57_combout\ <= NOT \sll4[56]~57_combout\;
\ALT_INV_sll16[59]~59_combout\ <= NOT \sll16[59]~59_combout\;
\ALT_INV_Output~283_combout\ <= NOT \Output~283_combout\;
\ALT_INV_Output~292_combout\ <= NOT \Output~292_combout\;
\ALT_INV_Output~294_combout\ <= NOT \Output~294_combout\;
\ALT_INV_Output~291_combout\ <= NOT \Output~291_combout\;
\ALT_INV_Output~296_combout\ <= NOT \Output~296_combout\;
\ALT_INV_sll4[55]~56_combout\ <= NOT \sll4[55]~56_combout\;
\ALT_INV_sll16[56]~56_combout\ <= NOT \sll16[56]~56_combout\;
\ALT_INV_Output~289_combout\ <= NOT \Output~289_combout\;
\ALT_INV_sll4[60]~62_combout\ <= NOT \sll4[60]~62_combout\;
\ALT_INV_srl2[61]~65_combout\ <= NOT \srl2[61]~65_combout\;
\ALT_INV_sll4[4]~63_combout\ <= NOT \sll4[4]~63_combout\;
\ALT_INV_y2[61]~3_combout\ <= NOT \y2[61]~3_combout\;
\ALT_INV_srl2[62]~66_combout\ <= NOT \srl2[62]~66_combout\;
\ALT_INV_sll4[61]~64_combout\ <= NOT \sll4[61]~64_combout\;
\ALT_INV_Output~281_combout\ <= NOT \Output~281_combout\;
\ALT_INV_sra2[61]~7_combout\ <= NOT \sra2[61]~7_combout\;
\ALT_INV_sll4[61]~65_combout\ <= NOT \sll4[61]~65_combout\;
\ALT_INV_sll16[58]~58_combout\ <= NOT \sll16[58]~58_combout\;
\ALT_INV_sll4[54]~55_combout\ <= NOT \sll4[54]~55_combout\;
\ALT_INV_Input[42]~input_o\ <= NOT \Input[42]~input_o\;
\ALT_INV_ShiftCount[2]~input_o\ <= NOT \ShiftCount[2]~input_o\;
\ALT_INV_ShiftCount[3]~input_o\ <= NOT \ShiftCount[3]~input_o\;
\ALT_INV_Input[48]~input_o\ <= NOT \Input[48]~input_o\;
\ALT_INV_Input[40]~input_o\ <= NOT \Input[40]~input_o\;
\ALT_INV_Input[49]~input_o\ <= NOT \Input[49]~input_o\;
\ALT_INV_sll16[63]~60_combout\ <= NOT \sll16[63]~60_combout\;
\ALT_INV_ShiftCount[4]~input_o\ <= NOT \ShiftCount[4]~input_o\;
\ALT_INV_sraout[62]~0_combout\ <= NOT \sraout[62]~0_combout\;
\ALT_INV_Input[26]~input_o\ <= NOT \Input[26]~input_o\;
\ALT_INV_Input[8]~input_o\ <= NOT \Input[8]~input_o\;
\ALT_INV_Input[12]~input_o\ <= NOT \Input[12]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_Input[34]~input_o\ <= NOT \Input[34]~input_o\;
\ALT_INV_Input[58]~input_o\ <= NOT \Input[58]~input_o\;
\ALT_INV_Input[24]~input_o\ <= NOT \Input[24]~input_o\;
\ALT_INV_Input[4]~input_o\ <= NOT \Input[4]~input_o\;
\ALT_INV_Input[38]~input_o\ <= NOT \Input[38]~input_o\;
\ALT_INV_Input[22]~input_o\ <= NOT \Input[22]~input_o\;
\ALT_INV_Input[62]~input_o\ <= NOT \Input[62]~input_o\;
\ALT_INV_Input[33]~input_o\ <= NOT \Input[33]~input_o\;
\ALT_INV_Input[1]~input_o\ <= NOT \Input[1]~input_o\;
\ALT_INV_Input[17]~input_o\ <= NOT \Input[17]~input_o\;
\ALT_INV_Input[14]~input_o\ <= NOT \Input[14]~input_o\;
\ALT_INV_Input[25]~input_o\ <= NOT \Input[25]~input_o\;
\ALT_INV_Input[54]~input_o\ <= NOT \Input[54]~input_o\;
\ALT_INV_Input[30]~input_o\ <= NOT \Input[30]~input_o\;
\ALT_INV_sllout[63]~2_combout\ <= NOT \sllout[63]~2_combout\;
\ALT_INV_Input[32]~input_o\ <= NOT \Input[32]~input_o\;
\ALT_INV_Input[44]~input_o\ <= NOT \Input[44]~input_o\;
\ALT_INV_Input[36]~input_o\ <= NOT \Input[36]~input_o\;
\ALT_INV_sllout[62]~1_combout\ <= NOT \sllout[62]~1_combout\;
\ALT_INV_ShiftCount[5]~input_o\ <= NOT \ShiftCount[5]~input_o\;
\ALT_INV_Input[16]~input_o\ <= NOT \Input[16]~input_o\;
\ALT_INV_Input[50]~input_o\ <= NOT \Input[50]~input_o\;
\ALT_INV_Input[41]~input_o\ <= NOT \Input[41]~input_o\;
\ALT_INV_Input[10]~input_o\ <= NOT \Input[10]~input_o\;
\ALT_INV_ShiftCount[1]~input_o\ <= NOT \ShiftCount[1]~input_o\;
\ALT_INV_Input[9]~input_o\ <= NOT \Input[9]~input_o\;
\ALT_INV_srlout[62]~1_combout\ <= NOT \srlout[62]~1_combout\;
\ALT_INV_Input[28]~input_o\ <= NOT \Input[28]~input_o\;
\ALT_INV_Input[52]~input_o\ <= NOT \Input[52]~input_o\;
\ALT_INV_Input[0]~input_o\ <= NOT \Input[0]~input_o\;
\ALT_INV_Input[57]~input_o\ <= NOT \Input[57]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Input[46]~input_o\ <= NOT \Input[46]~input_o\;
\ALT_INV_Input[18]~input_o\ <= NOT \Input[18]~input_o\;
\ALT_INV_Input[20]~input_o\ <= NOT \Input[20]~input_o\;
\ALT_INV_Input[2]~input_o\ <= NOT \Input[2]~input_o\;
\ALT_INV_Input[37]~input_o\ <= NOT \Input[37]~input_o\;
\ALT_INV_Input[60]~input_o\ <= NOT \Input[60]~input_o\;
\ALT_INV_Input[5]~input_o\ <= NOT \Input[5]~input_o\;
\ALT_INV_srlout[63]~2_combout\ <= NOT \srlout[63]~2_combout\;
\ALT_INV_Input[56]~input_o\ <= NOT \Input[56]~input_o\;
\ALT_INV_Input[6]~input_o\ <= NOT \Input[6]~input_o\;
\ALT_INV_Input[53]~input_o\ <= NOT \Input[53]~input_o\;
\ALT_INV_sll4[63]~68_combout\ <= NOT \sll4[63]~68_combout\;
\ALT_INV_Input[21]~input_o\ <= NOT \Input[21]~input_o\;
\ALT_INV_Input[45]~input_o\ <= NOT \Input[45]~input_o\;
\ALT_INV_Input[13]~input_o\ <= NOT \Input[13]~input_o\;
\ALT_INV_Input[43]~input_o\ <= NOT \Input[43]~input_o\;
\ALT_INV_Arith[8]~input_o\ <= NOT \Arith[8]~input_o\;
\ALT_INV_Arith[23]~input_o\ <= NOT \Arith[23]~input_o\;
\ALT_INV_Arith[24]~input_o\ <= NOT \Arith[24]~input_o\;
\ALT_INV_Arith[9]~input_o\ <= NOT \Arith[9]~input_o\;
\ALT_INV_Arith[34]~input_o\ <= NOT \Arith[34]~input_o\;
\ALT_INV_Arith[29]~input_o\ <= NOT \Arith[29]~input_o\;
\ALT_INV_Input[39]~input_o\ <= NOT \Input[39]~input_o\;
\ALT_INV_Input[3]~input_o\ <= NOT \Input[3]~input_o\;
\ALT_INV_ShiftCount[0]~input_o\ <= NOT \ShiftCount[0]~input_o\;
\ALT_INV_Arith[6]~input_o\ <= NOT \Arith[6]~input_o\;
\ALT_INV_Input[35]~input_o\ <= NOT \Input[35]~input_o\;
\ALT_INV_Arith[5]~input_o\ <= NOT \Arith[5]~input_o\;
\ALT_INV_Arith[14]~input_o\ <= NOT \Arith[14]~input_o\;
\ALT_INV_Arith[20]~input_o\ <= NOT \Arith[20]~input_o\;
\ALT_INV_Input[15]~input_o\ <= NOT \Input[15]~input_o\;
\ALT_INV_Arith[4]~input_o\ <= NOT \Arith[4]~input_o\;
\ALT_INV_Arith[3]~input_o\ <= NOT \Arith[3]~input_o\;
\ALT_INV_Input[55]~input_o\ <= NOT \Input[55]~input_o\;
\ALT_INV_Input[29]~input_o\ <= NOT \Input[29]~input_o\;
\ALT_INV_Arith[26]~input_o\ <= NOT \Arith[26]~input_o\;
\ALT_INV_Arith[27]~input_o\ <= NOT \Arith[27]~input_o\;
\ALT_INV_Arith[30]~input_o\ <= NOT \Arith[30]~input_o\;
\ALT_INV_Arith[31]~input_o\ <= NOT \Arith[31]~input_o\;
\ALT_INV_Arith[33]~input_o\ <= NOT \Arith[33]~input_o\;
\ALT_INV_Arith[19]~input_o\ <= NOT \Arith[19]~input_o\;
\ALT_INV_Arith[37]~input_o\ <= NOT \Arith[37]~input_o\;
\ALT_INV_Arith[40]~input_o\ <= NOT \Arith[40]~input_o\;
\ALT_INV_Arith[32]~input_o\ <= NOT \Arith[32]~input_o\;
\ALT_INV_Input[59]~input_o\ <= NOT \Input[59]~input_o\;
\ALT_INV_Arith[1]~input_o\ <= NOT \Arith[1]~input_o\;
\ALT_INV_Arith[10]~input_o\ <= NOT \Arith[10]~input_o\;
\ALT_INV_Arith[17]~input_o\ <= NOT \Arith[17]~input_o\;
\ALT_INV_Arith[36]~input_o\ <= NOT \Arith[36]~input_o\;
\ALT_INV_Arith[41]~input_o\ <= NOT \Arith[41]~input_o\;
\ALT_INV_Input[31]~input_o\ <= NOT \Input[31]~input_o\;
\ALT_INV_Arith[43]~input_o\ <= NOT \Arith[43]~input_o\;
\ALT_INV_Arith[22]~input_o\ <= NOT \Arith[22]~input_o\;
\ALT_INV_Input[61]~input_o\ <= NOT \Input[61]~input_o\;
\ALT_INV_Arith[0]~input_o\ <= NOT \Arith[0]~input_o\;
\ALT_INV_Arith[25]~input_o\ <= NOT \Arith[25]~input_o\;
\ALT_INV_Arith[44]~input_o\ <= NOT \Arith[44]~input_o\;
\ALT_INV_Input[27]~input_o\ <= NOT \Input[27]~input_o\;
\ALT_INV_Input[11]~input_o\ <= NOT \Input[11]~input_o\;
\ALT_INV_Input[23]~input_o\ <= NOT \Input[23]~input_o\;
\ALT_INV_Input[47]~input_o\ <= NOT \Input[47]~input_o\;
\ALT_INV_Arith[2]~input_o\ <= NOT \Arith[2]~input_o\;
\ALT_INV_Arith[11]~input_o\ <= NOT \Arith[11]~input_o\;
\ALT_INV_Arith[7]~input_o\ <= NOT \Arith[7]~input_o\;
\ALT_INV_Arith[12]~input_o\ <= NOT \Arith[12]~input_o\;
\ALT_INV_Arith[13]~input_o\ <= NOT \Arith[13]~input_o\;
\ALT_INV_Input[51]~input_o\ <= NOT \Input[51]~input_o\;
\ALT_INV_Arith[16]~input_o\ <= NOT \Arith[16]~input_o\;
\ALT_INV_Arith[21]~input_o\ <= NOT \Arith[21]~input_o\;
\ALT_INV_Input[63]~input_o\ <= NOT \Input[63]~input_o\;
\ALT_INV_Arith[28]~input_o\ <= NOT \Arith[28]~input_o\;
\ALT_INV_Arith[15]~input_o\ <= NOT \Arith[15]~input_o\;
\ALT_INV_Arith[35]~input_o\ <= NOT \Arith[35]~input_o\;
\ALT_INV_Arith[39]~input_o\ <= NOT \Arith[39]~input_o\;
\ALT_INV_Arith[42]~input_o\ <= NOT \Arith[42]~input_o\;
\ALT_INV_Input[19]~input_o\ <= NOT \Input[19]~input_o\;
\ALT_INV_Arith[38]~input_o\ <= NOT \Arith[38]~input_o\;
\ALT_INV_Input[7]~input_o\ <= NOT \Input[7]~input_o\;
\ALT_INV_Arith[18]~input_o\ <= NOT \Arith[18]~input_o\;
\ALT_INV_Arith[49]~input_o\ <= NOT \Arith[49]~input_o\;
\ALT_INV_Arith[48]~input_o\ <= NOT \Arith[48]~input_o\;
\ALT_INV_Arith[52]~input_o\ <= NOT \Arith[52]~input_o\;
\ALT_INV_Arith[59]~input_o\ <= NOT \Arith[59]~input_o\;
\ALT_INV_Arith[61]~input_o\ <= NOT \Arith[61]~input_o\;
\ALT_INV_Arith[53]~input_o\ <= NOT \Arith[53]~input_o\;
\ALT_INV_Arith[62]~input_o\ <= NOT \Arith[62]~input_o\;
\ALT_INV_Arith[63]~input_o\ <= NOT \Arith[63]~input_o\;
\ALT_INV_Arith[45]~input_o\ <= NOT \Arith[45]~input_o\;
\ALT_INV_Arith[54]~input_o\ <= NOT \Arith[54]~input_o\;
\ALT_INV_Arith[50]~input_o\ <= NOT \Arith[50]~input_o\;
\ALT_INV_Arith[60]~input_o\ <= NOT \Arith[60]~input_o\;
\ALT_INV_Arith[46]~input_o\ <= NOT \Arith[46]~input_o\;
\ALT_INV_Arith[55]~input_o\ <= NOT \Arith[55]~input_o\;
\ALT_INV_Arith[51]~input_o\ <= NOT \Arith[51]~input_o\;
\ALT_INV_Arith[56]~input_o\ <= NOT \Arith[56]~input_o\;
\ALT_INV_Arith[47]~input_o\ <= NOT \Arith[47]~input_o\;
\ALT_INV_Arith[57]~input_o\ <= NOT \Arith[57]~input_o\;
\ALT_INV_Arith[58]~input_o\ <= NOT \Arith[58]~input_o\;

-- Location: IOOBUF_X66_Y81_N76
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~1_combout\,
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X89_Y38_N22
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~4_combout\,
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X89_Y37_N5
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~6_combout\,
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X89_Y36_N39
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~12_combout\,
	devoe => ww_devoe,
	o => ww_Output(3));

-- Location: IOOBUF_X89_Y6_N22
\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~17_combout\,
	devoe => ww_devoe,
	o => ww_Output(4));

-- Location: IOOBUF_X66_Y81_N93
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

-- Location: IOOBUF_X89_Y38_N56
\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~27_combout\,
	devoe => ww_devoe,
	o => ww_Output(6));

-- Location: IOOBUF_X89_Y9_N56
\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~32_combout\,
	devoe => ww_devoe,
	o => ww_Output(7));

-- Location: IOOBUF_X72_Y0_N36
\Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~37_combout\,
	devoe => ww_devoe,
	o => ww_Output(8));

-- Location: IOOBUF_X70_Y81_N53
\Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~42_combout\,
	devoe => ww_devoe,
	o => ww_Output(9));

-- Location: IOOBUF_X62_Y81_N2
\Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~47_combout\,
	devoe => ww_devoe,
	o => ww_Output(10));

-- Location: IOOBUF_X78_Y81_N19
\Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~52_combout\,
	devoe => ww_devoe,
	o => ww_Output(11));

-- Location: IOOBUF_X72_Y81_N2
\Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~57_combout\,
	devoe => ww_devoe,
	o => ww_Output(12));

-- Location: IOOBUF_X89_Y8_N22
\Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~62_combout\,
	devoe => ww_devoe,
	o => ww_Output(13));

-- Location: IOOBUF_X89_Y36_N56
\Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~67_combout\,
	devoe => ww_devoe,
	o => ww_Output(14));

-- Location: IOOBUF_X89_Y37_N39
\Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~72_combout\,
	devoe => ww_devoe,
	o => ww_Output(15));

-- Location: IOOBUF_X68_Y81_N2
\Output[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~77_combout\,
	devoe => ww_devoe,
	o => ww_Output(16));

-- Location: IOOBUF_X68_Y0_N36
\Output[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~82_combout\,
	devoe => ww_devoe,
	o => ww_Output(17));

-- Location: IOOBUF_X89_Y8_N56
\Output[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~87_combout\,
	devoe => ww_devoe,
	o => ww_Output(18));

-- Location: IOOBUF_X66_Y81_N42
\Output[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~92_combout\,
	devoe => ww_devoe,
	o => ww_Output(19));

-- Location: IOOBUF_X72_Y81_N19
\Output[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~97_combout\,
	devoe => ww_devoe,
	o => ww_Output(20));

-- Location: IOOBUF_X66_Y81_N59
\Output[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~102_combout\,
	devoe => ww_devoe,
	o => ww_Output(21));

-- Location: IOOBUF_X70_Y0_N53
\Output[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~107_combout\,
	devoe => ww_devoe,
	o => ww_Output(22));

-- Location: IOOBUF_X30_Y0_N53
\Output[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~112_combout\,
	devoe => ww_devoe,
	o => ww_Output(23));

-- Location: IOOBUF_X58_Y81_N59
\Output[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~117_combout\,
	devoe => ww_devoe,
	o => ww_Output(24));

-- Location: IOOBUF_X70_Y81_N36
\Output[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~122_combout\,
	devoe => ww_devoe,
	o => ww_Output(25));

-- Location: IOOBUF_X64_Y81_N19
\Output[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~127_combout\,
	devoe => ww_devoe,
	o => ww_Output(26));

-- Location: IOOBUF_X58_Y81_N42
\Output[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~132_combout\,
	devoe => ww_devoe,
	o => ww_Output(27));

-- Location: IOOBUF_X58_Y81_N76
\Output[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~137_combout\,
	devoe => ww_devoe,
	o => ww_Output(28));

-- Location: IOOBUF_X54_Y81_N53
\Output[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~142_combout\,
	devoe => ww_devoe,
	o => ww_Output(29));

-- Location: IOOBUF_X56_Y81_N2
\Output[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~147_combout\,
	devoe => ww_devoe,
	o => ww_Output(30));

-- Location: IOOBUF_X2_Y0_N42
\Output[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~152_combout\,
	devoe => ww_devoe,
	o => ww_Output(31));

-- Location: IOOBUF_X6_Y0_N53
\Output[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~160_combout\,
	devoe => ww_devoe,
	o => ww_Output(32));

-- Location: IOOBUF_X89_Y35_N79
\Output[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~165_combout\,
	devoe => ww_devoe,
	o => ww_Output(33));

-- Location: IOOBUF_X4_Y0_N2
\Output[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~170_combout\,
	devoe => ww_devoe,
	o => ww_Output(34));

-- Location: IOOBUF_X36_Y81_N36
\Output[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~175_combout\,
	devoe => ww_devoe,
	o => ww_Output(35));

-- Location: IOOBUF_X50_Y81_N76
\Output[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~180_combout\,
	devoe => ww_devoe,
	o => ww_Output(36));

-- Location: IOOBUF_X40_Y81_N2
\Output[37]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~185_combout\,
	devoe => ww_devoe,
	o => ww_Output(37));

-- Location: IOOBUF_X34_Y81_N42
\Output[38]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~190_combout\,
	devoe => ww_devoe,
	o => ww_Output(38));

-- Location: IOOBUF_X50_Y81_N93
\Output[39]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~195_combout\,
	devoe => ww_devoe,
	o => ww_Output(39));

-- Location: IOOBUF_X89_Y35_N45
\Output[40]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~200_combout\,
	devoe => ww_devoe,
	o => ww_Output(40));

-- Location: IOOBUF_X40_Y81_N19
\Output[41]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~205_combout\,
	devoe => ww_devoe,
	o => ww_Output(41));

-- Location: IOOBUF_X74_Y81_N42
\Output[42]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~210_combout\,
	devoe => ww_devoe,
	o => ww_Output(42));

-- Location: IOOBUF_X70_Y81_N19
\Output[43]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~215_combout\,
	devoe => ww_devoe,
	o => ww_Output(43));

-- Location: IOOBUF_X52_Y81_N36
\Output[44]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~220_combout\,
	devoe => ww_devoe,
	o => ww_Output(44));

-- Location: IOOBUF_X28_Y0_N19
\Output[45]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~225_combout\,
	devoe => ww_devoe,
	o => ww_Output(45));

-- Location: IOOBUF_X36_Y0_N53
\Output[46]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~230_combout\,
	devoe => ww_devoe,
	o => ww_Output(46));

-- Location: IOOBUF_X8_Y0_N53
\Output[47]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~236_combout\,
	devoe => ww_devoe,
	o => ww_Output(47));

-- Location: IOOBUF_X8_Y0_N2
\Output[48]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~241_combout\,
	devoe => ww_devoe,
	o => ww_Output(48));

-- Location: IOOBUF_X38_Y81_N2
\Output[49]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~246_combout\,
	devoe => ww_devoe,
	o => ww_Output(49));

-- Location: IOOBUF_X89_Y9_N5
\Output[50]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~251_combout\,
	devoe => ww_devoe,
	o => ww_Output(50));

-- Location: IOOBUF_X89_Y37_N56
\Output[51]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~256_combout\,
	devoe => ww_devoe,
	o => ww_Output(51));

-- Location: IOOBUF_X28_Y0_N36
\Output[52]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~261_combout\,
	devoe => ww_devoe,
	o => ww_Output(52));

-- Location: IOOBUF_X60_Y81_N2
\Output[53]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~266_combout\,
	devoe => ww_devoe,
	o => ww_Output(53));

-- Location: IOOBUF_X89_Y38_N5
\Output[54]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~271_combout\,
	devoe => ww_devoe,
	o => ww_Output(54));

-- Location: IOOBUF_X38_Y81_N53
\Output[55]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~276_combout\,
	devoe => ww_devoe,
	o => ww_Output(55));

-- Location: IOOBUF_X32_Y0_N19
\Output[56]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~280_combout\,
	devoe => ww_devoe,
	o => ww_Output(56));

-- Location: IOOBUF_X54_Y81_N19
\Output[57]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~284_combout\,
	devoe => ww_devoe,
	o => ww_Output(57));

-- Location: IOOBUF_X36_Y0_N36
\Output[58]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~288_combout\,
	devoe => ww_devoe,
	o => ww_Output(58));

-- Location: IOOBUF_X28_Y0_N2
\Output[59]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~293_combout\,
	devoe => ww_devoe,
	o => ww_Output(59));

-- Location: IOOBUF_X40_Y0_N53
\Output[60]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~297_combout\,
	devoe => ww_devoe,
	o => ww_Output(60));

-- Location: IOOBUF_X32_Y81_N19
\Output[61]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~298_combout\,
	devoe => ww_devoe,
	o => ww_Output(61));

-- Location: IOOBUF_X89_Y35_N96
\Output[62]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~299_combout\,
	devoe => ww_devoe,
	o => ww_Output(62));

-- Location: IOOBUF_X2_Y0_N76
\Output[63]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Output~300_combout\,
	devoe => ww_devoe,
	o => ww_Output(63));

-- Location: IOIBUF_X60_Y81_N52
\Arith[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(0),
	o => \Arith[0]~input_o\);

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

-- Location: IOIBUF_X66_Y0_N41
\ShiftCount[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(1),
	o => \ShiftCount[1]~input_o\);

-- Location: LABCELL_X51_Y2_N30
\Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~0_combout\ = ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\ShiftCount[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(4),
	o => \ShiftCount[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\Input[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(16),
	o => \Input[16]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\ShiftCount[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(3),
	o => \ShiftCount[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\Input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\Input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\ShiftCount[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(2),
	o => \ShiftCount[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\Input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(8),
	o => \Input[8]~input_o\);

-- Location: LABCELL_X56_Y4_N12
\sra2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[0]~1_combout\ = ( \ShiftCount[2]~input_o\ & ( \Input[8]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\Input[4]~input_o\))) # (\ShiftCount[1]~input_o\ & (\Input[2]~input_o\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \Input[8]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & (\ShiftCount[3]~input_o\)) # (\ShiftCount[1]~input_o\ & ((\Input[2]~input_o\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\Input[8]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\Input[4]~input_o\))) # (\ShiftCount[1]~input_o\ & 
-- (\Input[2]~input_o\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\Input[8]~input_o\ & ( (\Input[2]~input_o\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111111001101010011010100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_Input[2]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_Input[4]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \sra2[0]~1_combout\);

-- Location: LABCELL_X61_Y6_N3
\sra2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[0]~0_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[1]~input_o\ & !\ShiftCount[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sra2[0]~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\Input[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(32),
	o => \Input[32]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\ShiftCount[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(5),
	o => \ShiftCount[5]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\Input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LABCELL_X57_Y5_N24
\srl32[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[0]~0_combout\ = ( \Input[0]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[32]~input_o\) ) ) # ( !\Input[0]~input_o\ & ( (\Input[32]~input_o\ & \ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[32]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \srl32[0]~0_combout\);

-- Location: LABCELL_X57_Y5_N15
\sra2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[0]~2_combout\ = ( \srl32[0]~0_combout\ & ( (!\sra2[0]~1_combout\ & ((!\sra2[0]~0_combout\) # ((\ShiftCount[4]~input_o\ & !\Input[16]~input_o\)))) ) ) # ( !\srl32[0]~0_combout\ & ( (!\sra2[0]~1_combout\ & ((!\ShiftCount[4]~input_o\) # 
-- ((!\Input[16]~input_o\) # (!\sra2[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011110000010000001111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[16]~input_o\,
	datac => \ALT_INV_sra2[0]~1_combout\,
	datad => \ALT_INV_sra2[0]~0_combout\,
	dataf => \ALT_INV_srl32[0]~0_combout\,
	combout => \sra2[0]~2_combout\);

-- Location: IOIBUF_X40_Y0_N35
\Input[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(48),
	o => \Input[48]~input_o\);

-- Location: LABCELL_X57_Y5_N33
\srl32[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[16]~1_combout\ = ( \Input[48]~input_o\ & ( (\Input[16]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[48]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[16]~input_o\,
	dataf => \ALT_INV_Input[48]~input_o\,
	combout => \srl32[16]~1_combout\);

-- Location: IOIBUF_X56_Y0_N35
\Input[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(56),
	o => \Input[56]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\Input[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(24),
	o => \Input[24]~input_o\);

-- Location: LABCELL_X57_Y5_N30
\srl32[24]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[24]~3_combout\ = ( \Input[24]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[56]~input_o\) ) ) # ( !\Input[24]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[56]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \srl32[24]~3_combout\);

-- Location: IOIBUF_X50_Y0_N58
\Input[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(40),
	o => \Input[40]~input_o\);

-- Location: LABCELL_X56_Y4_N30
\srl32[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[8]~2_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[8]~input_o\ & ( \Input[40]~input_o\ ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[8]~input_o\ ) ) # ( \ShiftCount[5]~input_o\ & ( !\Input[8]~input_o\ & ( \Input[40]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[40]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \srl32[8]~2_combout\);

-- Location: LABCELL_X57_Y5_N6
\srl8[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[0]~0_combout\ = ( \srl32[8]~2_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\) # (\srl32[24]~3_combout\) ) ) ) # ( !\srl32[8]~2_combout\ & ( \ShiftCount[3]~input_o\ & ( (\srl32[24]~3_combout\ & \ShiftCount[4]~input_o\) ) ) ) # ( 
-- \srl32[8]~2_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\srl32[0]~0_combout\))) # (\ShiftCount[4]~input_o\ & (\srl32[16]~1_combout\)) ) ) ) # ( !\srl32[8]~2_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- ((\srl32[0]~0_combout\))) # (\ShiftCount[4]~input_o\ & (\srl32[16]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[16]~1_combout\,
	datab => \ALT_INV_srl32[24]~3_combout\,
	datac => \ALT_INV_srl32[0]~0_combout\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_srl32[8]~2_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \srl8[0]~0_combout\);

-- Location: IOIBUF_X64_Y0_N1
\Input[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(20),
	o => \Input[20]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Input[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(52),
	o => \Input[52]~input_o\);

-- Location: LABCELL_X57_Y3_N27
\srl32[20]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[20]~5_combout\ = ( \Input[52]~input_o\ & ( (\Input[20]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[52]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[20]~input_o\,
	dataf => \ALT_INV_Input[52]~input_o\,
	combout => \srl32[20]~5_combout\);

-- Location: IOIBUF_X32_Y0_N35
\Input[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(36),
	o => \Input[36]~input_o\);

-- Location: LABCELL_X56_Y4_N39
\srl32[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[4]~4_combout\ = ( \Input[36]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[4]~input_o\) ) ) # ( !\Input[36]~input_o\ & ( (\Input[4]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[4]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[36]~input_o\,
	combout => \srl32[4]~4_combout\);

-- Location: IOIBUF_X72_Y0_N18
\Input[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(28),
	o => \Input[28]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\Input[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(60),
	o => \Input[60]~input_o\);

-- Location: LABCELL_X57_Y3_N24
\srl32[28]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[28]~7_combout\ = (!\ShiftCount[5]~input_o\ & (\Input[28]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[28]~input_o\,
	datad => \ALT_INV_Input[60]~input_o\,
	combout => \srl32[28]~7_combout\);

-- Location: IOIBUF_X38_Y0_N35
\Input[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(44),
	o => \Input[44]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\Input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(12),
	o => \Input[12]~input_o\);

-- Location: LABCELL_X57_Y6_N30
\srl32[12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[12]~6_combout\ = ( \Input[44]~input_o\ & ( \Input[12]~input_o\ ) ) # ( !\Input[44]~input_o\ & ( \Input[12]~input_o\ & ( !\ShiftCount[5]~input_o\ ) ) ) # ( \Input[44]~input_o\ & ( !\Input[12]~input_o\ & ( \ShiftCount[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Input[44]~input_o\,
	dataf => \ALT_INV_Input[12]~input_o\,
	combout => \srl32[12]~6_combout\);

-- Location: LABCELL_X57_Y3_N0
\srl8[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[4]~1_combout\ = ( \srl32[12]~6_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\srl32[20]~5_combout\)) # (\ShiftCount[3]~input_o\ & ((\srl32[28]~7_combout\))) ) ) ) # ( !\srl32[12]~6_combout\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\srl32[20]~5_combout\)) # (\ShiftCount[3]~input_o\ & ((\srl32[28]~7_combout\))) ) ) ) # ( \srl32[12]~6_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftCount[3]~input_o\) # (\srl32[4]~4_combout\) ) ) ) # ( 
-- !\srl32[12]~6_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\srl32[4]~4_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[20]~5_combout\,
	datab => \ALT_INV_srl32[4]~4_combout\,
	datac => \ALT_INV_srl32[28]~7_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_srl32[12]~6_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[4]~1_combout\);

-- Location: IOIBUF_X70_Y0_N35
\Input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(10),
	o => \Input[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\Input[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(42),
	o => \Input[42]~input_o\);

-- Location: LABCELL_X55_Y3_N33
\srl32[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[10]~10_combout\ = ( \Input[42]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[10]~input_o\) ) ) # ( !\Input[42]~input_o\ & ( (\Input[10]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[10]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[42]~input_o\,
	combout => \srl32[10]~10_combout\);

-- Location: IOIBUF_X50_Y0_N41
\Input[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(34),
	o => \Input[34]~input_o\);

-- Location: MLABCELL_X52_Y5_N0
\srl32[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[2]~8_combout\ = ( \Input[34]~input_o\ & ( \ShiftCount[5]~input_o\ ) ) # ( \Input[34]~input_o\ & ( !\ShiftCount[5]~input_o\ & ( \Input[2]~input_o\ ) ) ) # ( !\Input[34]~input_o\ & ( !\ShiftCount[5]~input_o\ & ( \Input[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[2]~input_o\,
	datae => \ALT_INV_Input[34]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \srl32[2]~8_combout\);

-- Location: IOIBUF_X50_Y0_N92
\Input[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(58),
	o => \Input[58]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\Input[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(26),
	o => \Input[26]~input_o\);

-- Location: LABCELL_X55_Y3_N54
\srl32[26]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[26]~11_combout\ = ( \Input[26]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[58]~input_o\) ) ) # ( !\Input[26]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[58]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[58]~input_o\,
	dataf => \ALT_INV_Input[26]~input_o\,
	combout => \srl32[26]~11_combout\);

-- Location: IOIBUF_X56_Y0_N1
\Input[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(18),
	o => \Input[18]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\Input[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(50),
	o => \Input[50]~input_o\);

-- Location: LABCELL_X55_Y3_N57
\srl32[18]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[18]~9_combout\ = ( \Input[50]~input_o\ & ( (\Input[18]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[50]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[18]~input_o\,
	dataf => \ALT_INV_Input[50]~input_o\,
	combout => \srl32[18]~9_combout\);

-- Location: LABCELL_X55_Y3_N36
\srl8[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[2]~2_combout\ = ( \ShiftCount[4]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \srl32[26]~11_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \srl32[10]~10_combout\ ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\ShiftCount[3]~input_o\ 
-- & ( \srl32[18]~9_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\ShiftCount[3]~input_o\ & ( \srl32[2]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[10]~10_combout\,
	datab => \ALT_INV_srl32[2]~8_combout\,
	datac => \ALT_INV_srl32[26]~11_combout\,
	datad => \ALT_INV_srl32[18]~9_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \srl8[2]~2_combout\);

-- Location: IOIBUF_X54_Y0_N52
\Input[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(30),
	o => \Input[30]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\Input[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(62),
	o => \Input[62]~input_o\);

-- Location: LABCELL_X56_Y2_N54
\srl32[30]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[30]~15_combout\ = ( \Input[62]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[30]~input_o\) ) ) # ( !\Input[62]~input_o\ & ( (\Input[30]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[30]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[62]~input_o\,
	combout => \srl32[30]~15_combout\);

-- Location: IOIBUF_X70_Y0_N1
\Input[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(22),
	o => \Input[22]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\Input[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(54),
	o => \Input[54]~input_o\);

-- Location: LABCELL_X56_Y3_N39
\srl32[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[22]~13_combout\ = ( \Input[54]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[22]~input_o\) ) ) # ( !\Input[54]~input_o\ & ( (\Input[22]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[22]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[54]~input_o\,
	combout => \srl32[22]~13_combout\);

-- Location: IOIBUF_X60_Y0_N35
\Input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\Input[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(38),
	o => \Input[38]~input_o\);

-- Location: LABCELL_X56_Y2_N51
\srl32[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[6]~12_combout\ = ( \Input[38]~input_o\ & ( (\Input[6]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[38]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[6]~input_o\,
	dataf => \ALT_INV_Input[38]~input_o\,
	combout => \srl32[6]~12_combout\);

-- Location: IOIBUF_X34_Y0_N92
\Input[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(46),
	o => \Input[46]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\Input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(14),
	o => \Input[14]~input_o\);

-- Location: LABCELL_X56_Y2_N48
\srl32[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[14]~14_combout\ = ( \Input[14]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[46]~input_o\) ) ) # ( !\Input[14]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[46]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	dataf => \ALT_INV_Input[14]~input_o\,
	combout => \srl32[14]~14_combout\);

-- Location: LABCELL_X56_Y2_N0
\srl8[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[6]~3_combout\ = ( \srl32[14]~14_combout\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & ((\srl32[22]~13_combout\))) # (\ShiftCount[3]~input_o\ & (\srl32[30]~15_combout\)) ) ) ) # ( !\srl32[14]~14_combout\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[3]~input_o\ & ((\srl32[22]~13_combout\))) # (\ShiftCount[3]~input_o\ & (\srl32[30]~15_combout\)) ) ) ) # ( \srl32[14]~14_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftCount[3]~input_o\) # (\srl32[6]~12_combout\) ) ) ) # ( 
-- !\srl32[14]~14_combout\ & ( !\ShiftCount[4]~input_o\ & ( (\srl32[6]~12_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[30]~15_combout\,
	datab => \ALT_INV_srl32[22]~13_combout\,
	datac => \ALT_INV_srl32[6]~12_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_srl32[14]~14_combout\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[6]~3_combout\);

-- Location: LABCELL_X57_Y4_N0
\srl2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[0]~0_combout\ = ( \srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[2]~2_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[2]~2_combout\) ) ) ) # ( 
-- \srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[0]~0_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[4]~1_combout\))) ) ) ) # ( !\srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- (\srl8[0]~0_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[4]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[0]~0_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[4]~1_combout\,
	datad => \ALT_INV_srl8[2]~2_combout\,
	datae => \ALT_INV_srl8[6]~3_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[0]~0_combout\);

-- Location: IOIBUF_X58_Y0_N92
\Input[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(41),
	o => \Input[41]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\Input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(9),
	o => \Input[9]~input_o\);

-- Location: LABCELL_X60_Y3_N54
\srl32[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[9]~18_combout\ = (!\ShiftCount[5]~input_o\ & ((\Input[9]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[9]~input_o\,
	combout => \srl32[9]~18_combout\);

-- Location: IOIBUF_X40_Y0_N1
\Input[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(49),
	o => \Input[49]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\Input[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(17),
	o => \Input[17]~input_o\);

-- Location: MLABCELL_X59_Y6_N0
\srl32[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[17]~17_combout\ = ( \Input[17]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[49]~input_o\) ) ) # ( !\Input[17]~input_o\ & ( (\Input[49]~input_o\ & \ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[49]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Input[17]~input_o\,
	combout => \srl32[17]~17_combout\);

-- Location: IOIBUF_X56_Y0_N18
\Input[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(57),
	o => \Input[57]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\Input[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(25),
	o => \Input[25]~input_o\);

-- Location: LABCELL_X60_Y3_N57
\srl32[25]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[25]~19_combout\ = ( \Input[25]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[57]~input_o\) ) ) # ( !\Input[25]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[57]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[57]~input_o\,
	dataf => \ALT_INV_Input[25]~input_o\,
	combout => \srl32[25]~19_combout\);

-- Location: IOIBUF_X26_Y0_N41
\Input[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(33),
	o => \Input[33]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\Input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LABCELL_X57_Y6_N36
\srl32[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[1]~16_combout\ = ( \Input[1]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[33]~input_o\) ) ) # ( !\Input[1]~input_o\ & ( (\Input[33]~input_o\ & \ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[33]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[1]~input_o\,
	combout => \srl32[1]~16_combout\);

-- Location: LABCELL_X60_Y3_N30
\srl8[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[1]~4_combout\ = ( \srl32[25]~19_combout\ & ( \srl32[1]~16_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\srl32[17]~17_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\srl32[9]~18_combout\))) ) ) ) 
-- # ( !\srl32[25]~19_combout\ & ( \srl32[1]~16_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\srl32[17]~17_combout\)))) # (\ShiftCount[3]~input_o\ & (\srl32[9]~18_combout\ & (!\ShiftCount[4]~input_o\))) ) ) ) # ( 
-- \srl32[25]~19_combout\ & ( !\srl32[1]~16_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\ & \srl32[17]~17_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\srl32[9]~18_combout\))) ) ) ) # ( 
-- !\srl32[25]~19_combout\ & ( !\srl32[1]~16_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\ & \srl32[17]~17_combout\)))) # (\ShiftCount[3]~input_o\ & (\srl32[9]~18_combout\ & (!\ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[9]~18_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_srl32[17]~17_combout\,
	datae => \ALT_INV_srl32[25]~19_combout\,
	dataf => \ALT_INV_srl32[1]~16_combout\,
	combout => \srl8[1]~4_combout\);

-- Location: IOIBUF_X64_Y0_N52
\Input[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(27),
	o => \Input[27]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\Input[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(59),
	o => \Input[59]~input_o\);

-- Location: LABCELL_X60_Y5_N9
\srl32[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[27]~27_combout\ = (!\ShiftCount[5]~input_o\ & (\Input[27]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[27]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[59]~input_o\,
	combout => \srl32[27]~27_combout\);

-- Location: IOIBUF_X89_Y4_N44
\Input[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(19),
	o => \Input[19]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\Input[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(51),
	o => \Input[51]~input_o\);

-- Location: LABCELL_X61_Y4_N27
\srl32[19]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[19]~25_combout\ = ( \Input[51]~input_o\ & ( (\Input[19]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[51]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[19]~input_o\,
	dataf => \ALT_INV_Input[51]~input_o\,
	combout => \srl32[19]~25_combout\);

-- Location: IOIBUF_X58_Y0_N41
\Input[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(43),
	o => \Input[43]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\Input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(11),
	o => \Input[11]~input_o\);

-- Location: LABCELL_X60_Y5_N30
\srl32[11]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[11]~26_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[11]~input_o\ & ( \Input[43]~input_o\ ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[11]~input_o\ ) ) # ( \ShiftCount[5]~input_o\ & ( !\Input[11]~input_o\ & ( \Input[43]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[43]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \srl32[11]~26_combout\);

-- Location: IOIBUF_X66_Y0_N58
\Input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\Input[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(35),
	o => \Input[35]~input_o\);

-- Location: LABCELL_X61_Y4_N18
\srl32[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[3]~24_combout\ = (!\ShiftCount[5]~input_o\ & (\Input[3]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[3]~input_o\,
	datac => \ALT_INV_Input[35]~input_o\,
	combout => \srl32[3]~24_combout\);

-- Location: LABCELL_X61_Y4_N0
\srl8[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[3]~6_combout\ = ( \srl32[11]~26_combout\ & ( \srl32[3]~24_combout\ & ( (!\ShiftCount[4]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\srl32[19]~25_combout\))) # (\ShiftCount[3]~input_o\ & (\srl32[27]~27_combout\))) ) ) ) # ( !\srl32[11]~26_combout\ & 
-- ( \srl32[3]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\srl32[19]~25_combout\)))) # (\ShiftCount[3]~input_o\ & (\srl32[27]~27_combout\ & (\ShiftCount[4]~input_o\))) ) ) ) # ( \srl32[11]~26_combout\ & ( 
-- !\srl32[3]~24_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\ & \srl32[19]~25_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[4]~input_o\)) # (\srl32[27]~27_combout\))) ) ) ) # ( !\srl32[11]~26_combout\ & ( 
-- !\srl32[3]~24_combout\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\srl32[19]~25_combout\))) # (\ShiftCount[3]~input_o\ & (\srl32[27]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[27]~27_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_srl32[19]~25_combout\,
	datae => \ALT_INV_srl32[11]~26_combout\,
	dataf => \ALT_INV_srl32[3]~24_combout\,
	combout => \srl8[3]~6_combout\);

-- Location: IOIBUF_X54_Y0_N1
\Input[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(55),
	o => \Input[55]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\Input[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(23),
	o => \Input[23]~input_o\);

-- Location: LABCELL_X62_Y4_N51
\srl32[23]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[23]~29_combout\ = ( \Input[23]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[55]~input_o\) ) ) # ( !\Input[23]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[55]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[55]~input_o\,
	dataf => \ALT_INV_Input[23]~input_o\,
	combout => \srl32[23]~29_combout\);

-- Location: IOIBUF_X50_Y0_N75
\Input[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(63),
	o => \Input[63]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\Input[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(31),
	o => \Input[31]~input_o\);

-- Location: LABCELL_X60_Y4_N6
\srl32[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[31]~31_combout\ = ( \Input[31]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[63]~input_o\) ) ) # ( !\Input[31]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[63]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[63]~input_o\,
	dataf => \ALT_INV_Input[31]~input_o\,
	combout => \srl32[31]~31_combout\);

-- Location: IOIBUF_X89_Y4_N95
\Input[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(47),
	o => \Input[47]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\Input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(15),
	o => \Input[15]~input_o\);

-- Location: LABCELL_X62_Y4_N48
\srl32[15]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[15]~30_combout\ = ( \Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[47]~input_o\) ) ) # ( !\Input[15]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[47]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[47]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \srl32[15]~30_combout\);

-- Location: IOIBUF_X30_Y0_N18
\Input[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(39),
	o => \Input[39]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\Input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: LABCELL_X62_Y4_N12
\srl32[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[7]~28_combout\ = ( \Input[7]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[39]~input_o\) ) ) # ( !\Input[7]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[39]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	dataf => \ALT_INV_Input[7]~input_o\,
	combout => \srl32[7]~28_combout\);

-- Location: LABCELL_X62_Y4_N54
\srl8[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[7]~7_combout\ = ( \srl32[15]~30_combout\ & ( \srl32[7]~28_combout\ & ( (!\ShiftCount[4]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\srl32[23]~29_combout\)) # (\ShiftCount[3]~input_o\ & ((\srl32[31]~31_combout\)))) ) ) ) # ( !\srl32[15]~30_combout\ & 
-- ( \srl32[7]~28_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\srl32[23]~29_combout\)))) # (\ShiftCount[3]~input_o\ & (\ShiftCount[4]~input_o\ & ((\srl32[31]~31_combout\)))) ) ) ) # ( \srl32[15]~30_combout\ & ( 
-- !\srl32[7]~28_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[4]~input_o\ & (\srl32[23]~29_combout\))) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\srl32[31]~31_combout\)))) ) ) ) # ( !\srl32[15]~30_combout\ & ( 
-- !\srl32[7]~28_combout\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\srl32[23]~29_combout\)) # (\ShiftCount[3]~input_o\ & ((\srl32[31]~31_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_srl32[23]~29_combout\,
	datad => \ALT_INV_srl32[31]~31_combout\,
	datae => \ALT_INV_srl32[15]~30_combout\,
	dataf => \ALT_INV_srl32[7]~28_combout\,
	combout => \srl8[7]~7_combout\);

-- Location: IOIBUF_X62_Y0_N52
\Input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\Input[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(37),
	o => \Input[37]~input_o\);

-- Location: MLABCELL_X59_Y4_N18
\srl32[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[5]~20_combout\ = ( \Input[37]~input_o\ & ( (\Input[5]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[37]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[5]~input_o\,
	dataf => \ALT_INV_Input[37]~input_o\,
	combout => \srl32[5]~20_combout\);

-- Location: IOIBUF_X34_Y0_N41
\Input[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(53),
	o => \Input[53]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\Input[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(21),
	o => \Input[21]~input_o\);

-- Location: MLABCELL_X59_Y4_N21
\srl32[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[21]~21_combout\ = ( \Input[21]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[53]~input_o\) ) ) # ( !\Input[21]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[53]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[53]~input_o\,
	dataf => \ALT_INV_Input[21]~input_o\,
	combout => \srl32[21]~21_combout\);

-- Location: IOIBUF_X70_Y0_N18
\Input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(13),
	o => \Input[13]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\Input[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(45),
	o => \Input[45]~input_o\);

-- Location: MLABCELL_X59_Y4_N24
\srl32[13]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[13]~22_combout\ = ( \Input[45]~input_o\ & ( (\Input[13]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[45]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[13]~input_o\,
	dataf => \ALT_INV_Input[45]~input_o\,
	combout => \srl32[13]~22_combout\);

-- Location: IOIBUF_X66_Y0_N92
\Input[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(29),
	o => \Input[29]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\Input[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(61),
	o => \Input[61]~input_o\);

-- Location: LABCELL_X60_Y4_N30
\srl32[29]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl32[29]~23_combout\ = ( \Input[61]~input_o\ & ( (\Input[29]~input_o\) # (\ShiftCount[5]~input_o\) ) ) # ( !\Input[61]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[29]~input_o\,
	datae => \ALT_INV_Input[61]~input_o\,
	combout => \srl32[29]~23_combout\);

-- Location: MLABCELL_X59_Y4_N30
\srl8[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[5]~5_combout\ = ( \srl32[13]~22_combout\ & ( \srl32[29]~23_combout\ & ( ((!\ShiftCount[4]~input_o\ & (\srl32[5]~20_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[21]~21_combout\)))) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\srl32[13]~22_combout\ & ( 
-- \srl32[29]~23_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\srl32[5]~20_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[21]~21_combout\))))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[4]~input_o\)))) ) ) ) # ( 
-- \srl32[13]~22_combout\ & ( !\srl32[29]~23_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\srl32[5]~20_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[21]~21_combout\))))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[4]~input_o\)))) ) ) ) # ( !\srl32[13]~22_combout\ & ( !\srl32[29]~23_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\srl32[5]~20_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[21]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[5]~20_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_srl32[21]~21_combout\,
	datae => \ALT_INV_srl32[13]~22_combout\,
	dataf => \ALT_INV_srl32[29]~23_combout\,
	combout => \srl8[5]~5_combout\);

-- Location: LABCELL_X64_Y4_N0
\srl2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[1]~1_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[5]~5_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[3]~6_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[7]~7_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[5]~5_combout\ & ( 
-- (\ShiftCount[2]~input_o\) # (\srl8[1]~4_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[5]~5_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[3]~6_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[7]~7_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & 
-- ( !\srl8[5]~5_combout\ & ( (\srl8[1]~4_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000011111101110111011101110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[1]~4_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[3]~6_combout\,
	datad => \ALT_INV_srl8[7]~7_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[5]~5_combout\,
	combout => \srl2[1]~1_combout\);

-- Location: IOIBUF_X66_Y0_N75
\ShiftFN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X57_Y6_N42
\y2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2[0]~0_combout\ = ( \Input[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\sra2[0]~2_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\Input[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\sra2[0]~2_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[0]~0_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[1]~1_combout\))) ) ) ) # ( !\Input[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[0]~0_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111110001000100010001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra2[0]~2_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[0]~0_combout\,
	datad => \ALT_INV_srl2[1]~1_combout\,
	datae => \ALT_INV_Input[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \y2[0]~0_combout\);

-- Location: IOIBUF_X89_Y6_N55
\ShiftFN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X61_Y6_N39
\sll4[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[0]~0_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll4[0]~0_combout\);

-- Location: LABCELL_X61_Y6_N12
\Output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \sll4[0]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Output~0_combout\)) # (\ShiftFN[1]~input_o\ & ((\y2[0]~0_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \sll4[0]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Arith[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\y2[0]~0_combout\))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\sll4[0]~0_combout\ & ( (\y2[0]~0_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\sll4[0]~0_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\Arith[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\y2[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000000111101010101000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[0]~input_o\,
	datab => \ALT_INV_Output~0_combout\,
	datac => \ALT_INV_y2[0]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_sll4[0]~0_combout\,
	combout => \Output~1_combout\);

-- Location: LABCELL_X57_Y6_N27
\Output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~2_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[0]~input_o\ ) ) # ( !\ShiftCount[0]~input_o\ & ( \Input[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[1]~input_o\,
	datad => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~2_combout\);

-- Location: LABCELL_X60_Y4_N42
\sll4[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[2]~1_combout\ = ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sll4[2]~1_combout\);

-- Location: LABCELL_X57_Y6_N0
\Output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~3_combout\ = ( !\ShiftCount[5]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (!\ShiftCount[4]~input_o\ & (\Output~2_combout\ & \sll4[2]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Output~2_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~3_combout\);

-- Location: LABCELL_X57_Y5_N48
\srl8[8]~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[8]~156_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[8]~2_combout\)))) # (\ShiftCount[4]~input_o\ & (\srl32[24]~3_combout\))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & 
-- (((\srl32[16]~1_combout\)))) # (\ShiftCount[4]~input_o\ & (\Input[32]~input_o\ & (!\ShiftCount[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000000000101000000001111001100111111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[32]~input_o\,
	datab => \ALT_INV_srl32[24]~3_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[16]~1_combout\,
	datag => \ALT_INV_srl32[8]~2_combout\,
	combout => \srl8[8]~156_combout\);

-- Location: LABCELL_X57_Y4_N36
\srl2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[2]~2_combout\ = ( \srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[4]~1_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) ) ) ) # ( !\srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[4]~1_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) ) ) ) # ( \srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[2]~2_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[6]~3_combout\ & ( 
-- !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[8]~156_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[4]~1_combout\,
	datad => \ALT_INV_srl8[2]~2_combout\,
	datae => \ALT_INV_srl8[6]~3_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[2]~2_combout\);

-- Location: LABCELL_X56_Y4_N18
\sra2[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[1]~3_combout\ = ( \Input[9]~input_o\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\Input[5]~input_o\)) # (\ShiftCount[1]~input_o\ & ((\Input[3]~input_o\))) ) ) ) # ( !\Input[9]~input_o\ & ( \ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & (\Input[5]~input_o\)) # (\ShiftCount[1]~input_o\ & ((\Input[3]~input_o\))) ) ) ) # ( \Input[9]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[3]~input_o\)) # (\ShiftCount[1]~input_o\ & 
-- ((\Input[3]~input_o\))) ) ) ) # ( !\Input[9]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( (\ShiftCount[1]~input_o\ & \Input[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100000101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_Input[5]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_Input[3]~input_o\,
	datae => \ALT_INV_Input[9]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sra2[1]~3_combout\);

-- Location: LABCELL_X57_Y6_N39
\sra2[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[1]~4_combout\ = ( \Input[17]~input_o\ & ( (!\sra2[1]~3_combout\ & ((!\sra2[0]~0_combout\) # ((!\ShiftCount[4]~input_o\ & !\srl32[1]~16_combout\)))) ) ) # ( !\Input[17]~input_o\ & ( (!\sra2[1]~3_combout\ & (((!\srl32[1]~16_combout\) # 
-- (!\sra2[0]~0_combout\)) # (\ShiftCount[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011001100010011001100100000001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_sra2[1]~3_combout\,
	datac => \ALT_INV_srl32[1]~16_combout\,
	datad => \ALT_INV_sra2[0]~0_combout\,
	dataf => \ALT_INV_Input[17]~input_o\,
	combout => \sra2[1]~4_combout\);

-- Location: LABCELL_X57_Y6_N48
\y2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2[1]~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \Input[2]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \srl2[2]~2_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- !\sra2[1]~4_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \srl2[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111110000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[2]~input_o\,
	datab => \ALT_INV_srl2[1]~1_combout\,
	datac => \ALT_INV_srl2[2]~2_combout\,
	datad => \ALT_INV_sra2[1]~4_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \y2[1]~1_combout\);

-- Location: IOIBUF_X56_Y81_N35
\Arith[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(1),
	o => \Arith[1]~input_o\);

-- Location: LABCELL_X57_Y6_N24
\Output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~4_combout\ = ( \Arith[1]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Output~3_combout\))) # (\ShiftFN[1]~input_o\ & (((\y2[1]~1_combout\)))) ) ) # ( !\Arith[1]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~3_combout\)) # 
-- (\ShiftFN[1]~input_o\ & ((\y2[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~3_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_y2[1]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Arith[1]~input_o\,
	combout => \Output~4_combout\);

-- Location: LABCELL_X60_Y3_N18
\srl8[9]~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[9]~152_combout\ = ( !\ShiftCount[3]~input_o\ & ( (((!\ShiftCount[4]~input_o\ & (\srl32[9]~18_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[25]~19_combout\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & 
-- (((\srl32[17]~17_combout\)))) # (\ShiftCount[4]~input_o\ & (\Input[33]~input_o\ & ((!\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110011001100000000111111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[33]~input_o\,
	datab => \ALT_INV_srl32[17]~17_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_srl32[25]~19_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_srl32[9]~18_combout\,
	combout => \srl8[9]~152_combout\);

-- Location: LABCELL_X64_Y4_N6
\srl2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[3]~3_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[5]~5_combout\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[9]~152_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[5]~5_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[3]~6_combout\)) # 
-- (\ShiftCount[2]~input_o\ & ((\srl8[7]~7_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[5]~5_combout\ & ( (\srl8[9]~152_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[5]~5_combout\ & ( (!\ShiftCount[2]~input_o\ 
-- & (\srl8[3]~6_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[9]~152_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[3]~6_combout\,
	datad => \ALT_INV_srl8[7]~7_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[5]~5_combout\,
	combout => \srl2[3]~3_combout\);

-- Location: LABCELL_X56_Y4_N24
\sra2[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[2]~5_combout\ = ( \Input[10]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \Input[4]~input_o\ ) ) ) # ( !\Input[10]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \Input[4]~input_o\ ) ) ) # ( \Input[10]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\ShiftCount[3]~input_o\)) # (\ShiftCount[2]~input_o\ & ((\Input[6]~input_o\))) ) ) ) # ( !\Input[10]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \Input[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100000101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_Input[4]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_Input[6]~input_o\,
	datae => \ALT_INV_Input[10]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \sra2[2]~5_combout\);

-- Location: LABCELL_X56_Y4_N3
\sra2[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[2]~6_combout\ = ( \ShiftCount[4]~input_o\ & ( \sra2[0]~0_combout\ & ( (!\sra2[2]~5_combout\ & !\Input[18]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \sra2[0]~0_combout\ & ( (!\sra2[2]~5_combout\ & !\srl32[2]~8_combout\) ) ) ) # ( 
-- \ShiftCount[4]~input_o\ & ( !\sra2[0]~0_combout\ & ( !\sra2[2]~5_combout\ ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\sra2[0]~0_combout\ & ( !\sra2[2]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra2[2]~5_combout\,
	datab => \ALT_INV_Input[18]~input_o\,
	datac => \ALT_INV_srl32[2]~8_combout\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_sra2[0]~0_combout\,
	combout => \sra2[2]~6_combout\);

-- Location: LABCELL_X57_Y4_N12
\y2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2[2]~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \Input[3]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \srl2[3]~3_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- !\sra2[2]~6_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \srl2[2]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110001010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[3]~3_combout\,
	datab => \ALT_INV_sra2[2]~6_combout\,
	datac => \ALT_INV_srl2[2]~2_combout\,
	datad => \ALT_INV_Input[3]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \y2[2]~2_combout\);

-- Location: LABCELL_X61_Y6_N21
\sll4[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[2]~3_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[4]~input_o\ & (\Input[2]~input_o\ & !\ShiftCount[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[2]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll4[2]~3_combout\);

-- Location: LABCELL_X61_Y6_N36
\sll4[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[1]~2_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll4[1]~2_combout\);

-- Location: LABCELL_X61_Y6_N0
\Output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~5_combout\ = ( \ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \sll4[1]~2_combout\) ) ) # ( !\ShiftCount[0]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[2]~3_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_sll4[0]~0_combout\,
	datac => \ALT_INV_sll4[2]~3_combout\,
	datad => \ALT_INV_sll4[1]~2_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~5_combout\);

-- Location: IOIBUF_X68_Y81_N18
\Arith[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(2),
	o => \Arith[2]~input_o\);

-- Location: LABCELL_X61_Y6_N57
\Output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~6_combout\ = ( \Arith[2]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~5_combout\)))) # (\ShiftFN[1]~input_o\ & (((\y2[2]~2_combout\)))) ) ) # ( !\Arith[2]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & 
-- ((\Output~5_combout\)))) # (\ShiftFN[1]~input_o\ & (((\y2[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_y2[2]~2_combout\,
	datad => \ALT_INV_Output~5_combout\,
	dataf => \ALT_INV_Arith[2]~input_o\,
	combout => \Output~6_combout\);

-- Location: LABCELL_X61_Y6_N18
\sll4[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[3]~4_combout\ = ( \Input[3]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Input[3]~input_o\,
	combout => \sll4[3]~4_combout\);

-- Location: LABCELL_X61_Y6_N30
\Output~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~11_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[3]~4_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[2]~3_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[0]~0_combout\)) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[3]~4_combout\ & ( 
-- (!\ShiftCount[1]~input_o\) # (\sll4[1]~2_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[3]~4_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[2]~3_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[0]~0_combout\)) ) ) ) # ( !\ShiftCount[0]~input_o\ & 
-- ( !\sll4[3]~4_combout\ & ( (\sll4[1]~2_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[1]~2_combout\,
	datab => \ALT_INV_sll4[0]~0_combout\,
	datac => \ALT_INV_sll4[2]~3_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[3]~4_combout\,
	combout => \Output~11_combout\);

-- Location: IOIBUF_X62_Y81_N35
\Arith[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(3),
	o => \Arith[3]~input_o\);

-- Location: LABCELL_X60_Y4_N48
\Output~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~7_combout\ = ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[4]~input_o\ ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( \ShiftCount[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~7_combout\);

-- Location: LABCELL_X61_Y4_N36
\Output~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~8_combout\ = ( \Input[7]~input_o\ & ( \Input[19]~input_o\ & ( (!\Output~7_combout\ & (((!\sll4[2]~1_combout\)) # (\srl32[3]~24_combout\))) # (\Output~7_combout\ & (((\Input[11]~input_o\) # (\sll4[2]~1_combout\)))) ) ) ) # ( !\Input[7]~input_o\ & ( 
-- \Input[19]~input_o\ & ( (!\Output~7_combout\ & (\srl32[3]~24_combout\ & (\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((\Input[11]~input_o\) # (\sll4[2]~1_combout\)))) ) ) ) # ( \Input[7]~input_o\ & ( !\Input[19]~input_o\ & ( (!\Output~7_combout\ & 
-- (((!\sll4[2]~1_combout\)) # (\srl32[3]~24_combout\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\ & \Input[11]~input_o\)))) ) ) ) # ( !\Input[7]~input_o\ & ( !\Input[19]~input_o\ & ( (!\Output~7_combout\ & (\srl32[3]~24_combout\ & 
-- (\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\ & \Input[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[3]~24_combout\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Input[11]~input_o\,
	datae => \ALT_INV_Input[7]~input_o\,
	dataf => \ALT_INV_Input[19]~input_o\,
	combout => \Output~8_combout\);

-- Location: LABCELL_X57_Y4_N27
\Output~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~9_combout\ = ( \Input[5]~input_o\ & ( (\Output~8_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[5]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~8_combout\,
	dataf => \ALT_INV_Input[5]~input_o\,
	combout => \Output~9_combout\);

-- Location: LABCELL_X55_Y3_N18
\srl8[10]~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[10]~148_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[10]~10_combout\)))) # (\ShiftCount[4]~input_o\ & (\srl32[26]~11_combout\))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & 
-- (\srl32[18]~9_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & \Input[34]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[26]~11_combout\,
	datab => \ALT_INV_srl32[18]~9_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[34]~input_o\,
	datag => \ALT_INV_srl32[10]~10_combout\,
	combout => \srl8[10]~148_combout\);

-- Location: LABCELL_X57_Y4_N18
\srl2[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[4]~4_combout\ = ( \srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[10]~148_combout\) ) ) ) # ( !\srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[10]~148_combout\) ) ) ) # ( 
-- \srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[4]~1_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) ) ) ) # ( !\srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\srl8[4]~1_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[8]~156_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[4]~1_combout\,
	datad => \ALT_INV_srl8[10]~148_combout\,
	datae => \ALT_INV_srl8[6]~3_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[4]~4_combout\);

-- Location: LABCELL_X57_Y4_N30
\Output~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~10_combout\ = ( \srl2[3]~3_combout\ & ( \srl2[4]~4_combout\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\Output~9_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[4]~input_o\))) ) ) ) # ( !\srl2[3]~3_combout\ & ( 
-- \srl2[4]~4_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\Output~9_combout\ & \ShiftFN[0]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Input[4]~input_o\))) ) ) ) # ( \srl2[3]~3_combout\ & ( !\srl2[4]~4_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Output~9_combout\)))) # (\ShiftCount[0]~input_o\ & (\Input[4]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl2[3]~3_combout\ & ( !\srl2[4]~4_combout\ & ( (\ShiftFN[0]~input_o\ & 
-- ((!\ShiftCount[0]~input_o\ & ((\Output~9_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_Input[4]~input_o\,
	datac => \ALT_INV_Output~9_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl2[3]~3_combout\,
	dataf => \ALT_INV_srl2[4]~4_combout\,
	combout => \Output~10_combout\);

-- Location: LABCELL_X61_Y6_N6
\Output~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~12_combout\ = ( \Output~10_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Arith[3]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~11_combout\))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~10_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ 
-- & ((\Arith[3]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Output~11_combout\,
	datac => \ALT_INV_Arith[3]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Output~10_combout\,
	combout => \Output~12_combout\);

-- Location: LABCELL_X61_Y6_N45
\sll4[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[4]~5_combout\ = ( \Input[0]~input_o\ & ( \Input[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( !\Input[0]~input_o\ & ( \Input[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (!\ShiftCount[2]~input_o\ & (!\ShiftCount[4]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) ) # ( \Input[0]~input_o\ & ( !\Input[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftCount[2]~input_o\ & (!\ShiftCount[4]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000010000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_Input[0]~input_o\,
	dataf => \ALT_INV_Input[4]~input_o\,
	combout => \sll4[4]~5_combout\);

-- Location: LABCELL_X61_Y6_N48
\Output~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~16_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[3]~4_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sll4[1]~2_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[3]~4_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sll4[4]~5_combout\)) # 
-- (\ShiftCount[1]~input_o\ & ((\sll4[2]~3_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[3]~4_combout\ & ( (\sll4[1]~2_combout\ & \ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[3]~4_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- (\sll4[4]~5_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[2]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[1]~2_combout\,
	datab => \ALT_INV_sll4[4]~5_combout\,
	datac => \ALT_INV_sll4[2]~3_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[3]~4_combout\,
	combout => \Output~16_combout\);

-- Location: LABCELL_X61_Y4_N42
\srl8[11]~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[11]~144_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\srl32[11]~26_combout\)))) # (\ShiftCount[4]~input_o\ & ((((\srl32[27]~27_combout\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- (\srl32[19]~25_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & (\Input[35]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010001000100111001001011111010111110010001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_srl32[19]~25_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[35]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[27]~27_combout\,
	datag => \ALT_INV_srl32[11]~26_combout\,
	combout => \srl8[11]~144_combout\);

-- Location: LABCELL_X64_Y4_N12
\srl2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[5]~5_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[11]~144_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[9]~152_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ 
-- & ( \srl8[7]~7_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \srl8[5]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[9]~152_combout\,
	datab => \ALT_INV_srl8[11]~144_combout\,
	datac => \ALT_INV_srl8[5]~5_combout\,
	datad => \ALT_INV_srl8[7]~7_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[5]~5_combout\);

-- Location: LABCELL_X56_Y5_N0
\Output~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~13_combout\ = ( \Output~7_combout\ & ( \Input[8]~input_o\ & ( (!\sll4[2]~1_combout\ & (\Input[12]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[20]~input_o\))) ) ) ) # ( !\Output~7_combout\ & ( \Input[8]~input_o\ & ( (!\sll4[2]~1_combout\) # 
-- (\srl32[4]~4_combout\) ) ) ) # ( \Output~7_combout\ & ( !\Input[8]~input_o\ & ( (!\sll4[2]~1_combout\ & (\Input[12]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[20]~input_o\))) ) ) ) # ( !\Output~7_combout\ & ( !\Input[8]~input_o\ & ( 
-- (\srl32[4]~4_combout\ & \sll4[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[12]~input_o\,
	datab => \ALT_INV_srl32[4]~4_combout\,
	datac => \ALT_INV_Input[20]~input_o\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \Output~13_combout\);

-- Location: LABCELL_X57_Y4_N24
\Output~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~14_combout\ = ( \Input[6]~input_o\ & ( (\Output~13_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[6]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~13_combout\,
	dataf => \ALT_INV_Input[6]~input_o\,
	combout => \Output~14_combout\);

-- Location: LABCELL_X57_Y4_N6
\Output~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~15_combout\ = ( \ShiftCount[0]~input_o\ & ( \Output~14_combout\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[5]~5_combout\)) # (\ShiftFN[0]~input_o\ & ((\Input[5]~input_o\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \Output~14_combout\ & ( 
-- (\ShiftFN[0]~input_o\) # (\srl2[4]~4_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\Output~14_combout\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[5]~5_combout\)) # (\ShiftFN[0]~input_o\ & ((\Input[5]~input_o\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- !\Output~14_combout\ & ( (\srl2[4]~4_combout\ & !\ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[4]~4_combout\,
	datab => \ALT_INV_srl2[5]~5_combout\,
	datac => \ALT_INV_Input[5]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_Output~14_combout\,
	combout => \Output~15_combout\);

-- Location: IOIBUF_X89_Y38_N38
\Arith[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(4),
	o => \Arith[4]~input_o\);

-- Location: LABCELL_X62_Y6_N33
\Output~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~17_combout\ = ( \Arith[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~16_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~15_combout\)))) ) ) # ( !\Arith[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & (\Output~16_combout\))) # (\ShiftFN[1]~input_o\ & (((\Output~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~16_combout\,
	datad => \ALT_INV_Output~15_combout\,
	dataf => \ALT_INV_Arith[4]~input_o\,
	combout => \Output~17_combout\);

-- Location: LABCELL_X61_Y6_N42
\sll4[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[5]~6_combout\ = ( \Input[1]~input_o\ & ( \Input[5]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & !\ShiftCount[4]~input_o\)) ) ) ) # ( !\Input[1]~input_o\ & ( \Input[5]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (!\ShiftCount[2]~input_o\ & (!\ShiftCount[3]~input_o\ & !\ShiftCount[4]~input_o\))) ) ) ) # ( \Input[1]~input_o\ & ( !\Input[5]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftCount[2]~input_o\ & (!\ShiftCount[3]~input_o\ & !\ShiftCount[4]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000010000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[1]~input_o\,
	dataf => \ALT_INV_Input[5]~input_o\,
	combout => \sll4[5]~6_combout\);

-- Location: LABCELL_X61_Y6_N24
\Output~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~21_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[2]~3_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[4]~5_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- \sll4[3]~4_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[5]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[3]~4_combout\,
	datab => \ALT_INV_sll4[5]~6_combout\,
	datac => \ALT_INV_sll4[2]~3_combout\,
	datad => \ALT_INV_sll4[4]~5_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~21_combout\);

-- Location: IOIBUF_X89_Y36_N4
\Arith[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(5),
	o => \Arith[5]~input_o\);

-- Location: LABCELL_X60_Y4_N54
\Output~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~18_combout\ = ( \Input[21]~input_o\ & ( \Input[9]~input_o\ & ( (!\Output~7_combout\ & (((!\sll4[2]~1_combout\) # (\srl32[5]~20_combout\)))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)) # (\Input[13]~input_o\))) ) ) ) # ( !\Input[21]~input_o\ & 
-- ( \Input[9]~input_o\ & ( (!\Output~7_combout\ & (((!\sll4[2]~1_combout\) # (\srl32[5]~20_combout\)))) # (\Output~7_combout\ & (\Input[13]~input_o\ & ((!\sll4[2]~1_combout\)))) ) ) ) # ( \Input[21]~input_o\ & ( !\Input[9]~input_o\ & ( (!\Output~7_combout\ 
-- & (((\srl32[5]~20_combout\ & \sll4[2]~1_combout\)))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)) # (\Input[13]~input_o\))) ) ) ) # ( !\Input[21]~input_o\ & ( !\Input[9]~input_o\ & ( (!\Output~7_combout\ & (((\srl32[5]~20_combout\ & 
-- \sll4[2]~1_combout\)))) # (\Output~7_combout\ & (\Input[13]~input_o\ & ((!\sll4[2]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[13]~input_o\,
	datab => \ALT_INV_srl32[5]~20_combout\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Input[21]~input_o\,
	dataf => \ALT_INV_Input[9]~input_o\,
	combout => \Output~18_combout\);

-- Location: LABCELL_X60_Y4_N0
\Output~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~19_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~18_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~18_combout\,
	datad => \ALT_INV_Input[7]~input_o\,
	combout => \Output~19_combout\);

-- Location: LABCELL_X57_Y3_N48
\srl8[12]~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[12]~140_combout\ = ( !\ShiftCount[3]~input_o\ & ( (((!\ShiftCount[4]~input_o\ & (\srl32[12]~6_combout\)) # (\ShiftCount[4]~input_o\ & ((\srl32[28]~7_combout\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- (\srl32[20]~5_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[36]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000010101010011000000001111111111110101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[20]~5_combout\,
	datab => \ALT_INV_Input[36]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[28]~7_combout\,
	datag => \ALT_INV_srl32[12]~6_combout\,
	combout => \srl8[12]~140_combout\);

-- Location: LABCELL_X57_Y4_N42
\srl2[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[6]~6_combout\ = ( \srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[12]~140_combout\))) ) ) ) # ( !\srl8[6]~3_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[8]~156_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[12]~140_combout\))) ) ) ) # ( \srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[10]~148_combout\) ) ) ) # ( 
-- !\srl8[6]~3_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[10]~148_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[8]~156_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[12]~140_combout\,
	datad => \ALT_INV_srl8[10]~148_combout\,
	datae => \ALT_INV_srl8[6]~3_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[6]~6_combout\);

-- Location: LABCELL_X60_Y4_N36
\Output~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~20_combout\ = ( \Input[6]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~19_combout\) ) ) ) # ( !\Input[6]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~19_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[6]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[5]~5_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[6]~6_combout\)) ) ) ) # ( !\Input[6]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[5]~5_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[6]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~19_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[6]~6_combout\,
	datad => \ALT_INV_srl2[5]~5_combout\,
	datae => \ALT_INV_Input[6]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~20_combout\);

-- Location: LABCELL_X61_Y6_N54
\Output~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~22_combout\ = ( \Output~20_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Arith[5]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~21_combout\))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~20_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ 
-- & ((\Arith[5]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~21_combout\,
	datad => \ALT_INV_Arith[5]~input_o\,
	dataf => \ALT_INV_Output~20_combout\,
	combout => \Output~22_combout\);

-- Location: LABCELL_X56_Y2_N6
\Output~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~23_combout\ = ( \Output~7_combout\ & ( \Input[10]~input_o\ & ( (!\sll4[2]~1_combout\ & (\Input[14]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[22]~input_o\))) ) ) ) # ( !\Output~7_combout\ & ( \Input[10]~input_o\ & ( (!\sll4[2]~1_combout\) # 
-- (\srl32[6]~12_combout\) ) ) ) # ( \Output~7_combout\ & ( !\Input[10]~input_o\ & ( (!\sll4[2]~1_combout\ & (\Input[14]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[22]~input_o\))) ) ) ) # ( !\Output~7_combout\ & ( !\Input[10]~input_o\ & ( 
-- (\sll4[2]~1_combout\ & \srl32[6]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_Input[14]~input_o\,
	datac => \ALT_INV_srl32[6]~12_combout\,
	datad => \ALT_INV_Input[22]~input_o\,
	datae => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \Output~23_combout\);

-- Location: LABCELL_X64_Y4_N27
\Output~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~24_combout\ = ( \Input[8]~input_o\ & ( (\Output~23_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[8]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~23_combout\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \Output~24_combout\);

-- Location: MLABCELL_X59_Y4_N42
\srl8[13]~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[13]~136_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\srl32[13]~22_combout\)))) # (\ShiftCount[4]~input_o\ & ((((\srl32[29]~23_combout\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- ((((\srl32[21]~21_combout\))))) # (\ShiftCount[4]~input_o\ & (\Input[37]~input_o\ & (!\ShiftCount[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000100001011101001011111010111110001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[37]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_srl32[21]~21_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[29]~23_combout\,
	datag => \ALT_INV_srl32[13]~22_combout\,
	combout => \srl8[13]~136_combout\);

-- Location: LABCELL_X64_Y4_N48
\srl2[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[7]~7_combout\ = ( \srl8[7]~7_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\srl8[11]~144_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[13]~136_combout\)) ) ) ) # ( !\srl8[7]~7_combout\ & ( \ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & ((\srl8[11]~144_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[13]~136_combout\)) ) ) ) # ( \srl8[7]~7_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\srl8[9]~152_combout\) ) ) ) # ( 
-- !\srl8[7]~7_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\ShiftCount[1]~input_o\ & \srl8[9]~152_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[13]~136_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_srl8[9]~152_combout\,
	datad => \ALT_INV_srl8[11]~144_combout\,
	datae => \ALT_INV_srl8[7]~7_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[7]~7_combout\);

-- Location: LABCELL_X64_Y4_N30
\Output~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~25_combout\ = ( \Output~24_combout\ & ( \srl2[7]~7_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\srl2[6]~6_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Input[7]~input_o\))) ) ) ) # ( 
-- !\Output~24_combout\ & ( \srl2[7]~7_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\srl2[6]~6_combout\ & !\ShiftFN[0]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Input[7]~input_o\))) ) ) ) # ( \Output~24_combout\ & ( 
-- !\srl2[7]~7_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\srl2[6]~6_combout\)))) # (\ShiftCount[0]~input_o\ & (\Input[7]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Output~24_combout\ & ( !\srl2[7]~7_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & (((\srl2[6]~6_combout\ & !\ShiftFN[0]~input_o\)))) # (\ShiftCount[0]~input_o\ & (\Input[7]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[7]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[6]~6_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Output~24_combout\,
	dataf => \ALT_INV_srl2[7]~7_combout\,
	combout => \Output~25_combout\);

-- Location: IOIBUF_X64_Y81_N1
\Arith[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(6),
	o => \Arith[6]~input_o\);

-- Location: LABCELL_X60_Y6_N33
\sll4[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[6]~7_combout\ = ( \ShiftCount[2]~input_o\ & ( \Input[6]~input_o\ & ( (\Input[2]~input_o\ & (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \Input[6]~input_o\ & ( 
-- (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\Input[6]~input_o\ & ( (\Input[2]~input_o\ & (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000011000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[2]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Input[6]~input_o\,
	combout => \sll4[6]~7_combout\);

-- Location: LABCELL_X62_Y6_N6
\Output~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~26_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[6]~7_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[4]~5_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[3]~4_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[6]~7_combout\ & ( 
-- (!\ShiftCount[0]~input_o\) # (\sll4[5]~6_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[6]~7_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[4]~5_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[3]~4_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & 
-- ( !\sll4[6]~7_combout\ & ( (\sll4[5]~6_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[4]~5_combout\,
	datab => \ALT_INV_sll4[5]~6_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[3]~4_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[6]~7_combout\,
	combout => \Output~26_combout\);

-- Location: LABCELL_X62_Y6_N12
\Output~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~27_combout\ = ( \Output~26_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Arith[6]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~25_combout\)))) ) ) # ( !\Output~26_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & ((\Arith[6]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\Output~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~25_combout\,
	datad => \ALT_INV_Arith[6]~input_o\,
	dataf => \ALT_INV_Output~26_combout\,
	combout => \Output~27_combout\);

-- Location: LABCELL_X60_Y6_N36
\sll4[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[7]~8_combout\ = ( \ShiftCount[2]~input_o\ & ( \Input[7]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[3]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \Input[7]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\Input[7]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[3]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000010001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[3]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_Input[7]~input_o\,
	combout => \sll4[7]~8_combout\);

-- Location: LABCELL_X62_Y6_N48
\Output~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~31_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[4]~5_combout\ & ( (\ShiftCount[1]~input_o\) # (\sll4[6]~7_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[4]~5_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[7]~8_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\sll4[5]~6_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[4]~5_combout\ & ( (\sll4[6]~7_combout\ & !\ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[4]~5_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sll4[7]~8_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[5]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[6]~7_combout\,
	datab => \ALT_INV_sll4[5]~6_combout\,
	datac => \ALT_INV_sll4[7]~8_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[4]~5_combout\,
	combout => \Output~31_combout\);

-- Location: LABCELL_X62_Y4_N30
\Output~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~28_combout\ = ( \Input[11]~input_o\ & ( \Input[15]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & (\srl32[7]~28_combout\)) # (\Output~7_combout\ & ((\Input[23]~input_o\)))) ) ) ) # ( !\Input[11]~input_o\ & ( \Input[15]~input_o\ & ( 
-- (!\Output~7_combout\ & (\srl32[7]~28_combout\ & (\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\) # (\Input[23]~input_o\)))) ) ) ) # ( \Input[11]~input_o\ & ( !\Input[15]~input_o\ & ( (!\Output~7_combout\ & (((!\sll4[2]~1_combout\)) 
-- # (\srl32[7]~28_combout\))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\ & \Input[23]~input_o\)))) ) ) ) # ( !\Input[11]~input_o\ & ( !\Input[15]~input_o\ & ( (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[7]~28_combout\)) # (\Output~7_combout\ 
-- & ((\Input[23]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~7_combout\,
	datab => \ALT_INV_srl32[7]~28_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Input[23]~input_o\,
	datae => \ALT_INV_Input[11]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \Output~28_combout\);

-- Location: LABCELL_X64_Y4_N24
\Output~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~29_combout\ = (!\ShiftCount[1]~input_o\ & ((\Output~28_combout\))) # (\ShiftCount[1]~input_o\ & (\Input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Input[9]~input_o\,
	datad => \ALT_INV_Output~28_combout\,
	combout => \Output~29_combout\);

-- Location: LABCELL_X56_Y2_N12
\srl8[14]~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[14]~132_combout\ = ( !\ShiftCount[3]~input_o\ & ( (((!\ShiftCount[4]~input_o\ & ((\srl32[14]~14_combout\))) # (\ShiftCount[4]~input_o\ & (\srl32[30]~15_combout\)))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & 
-- (\srl32[22]~13_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & \Input[38]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[30]~15_combout\,
	datab => \ALT_INV_srl32[22]~13_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[38]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_srl32[14]~14_combout\,
	combout => \srl8[14]~132_combout\);

-- Location: LABCELL_X57_Y4_N48
\srl2[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[8]~8_combout\ = ( \ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[14]~132_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[10]~148_combout\ ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\ShiftCount[1]~input_o\ 
-- & ( \srl8[12]~140_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( \srl8[8]~156_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[12]~140_combout\,
	datab => \ALT_INV_srl8[10]~148_combout\,
	datac => \ALT_INV_srl8[8]~156_combout\,
	datad => \ALT_INV_srl8[14]~132_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[8]~8_combout\);

-- Location: LABCELL_X64_Y4_N36
\Output~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~30_combout\ = ( \ShiftFN[0]~input_o\ & ( \srl2[8]~8_combout\ & ( (!\ShiftCount[0]~input_o\ & (\Output~29_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[8]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \srl2[8]~8_combout\ & ( 
-- (\srl2[7]~7_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\srl2[8]~8_combout\ & ( (!\ShiftCount[0]~input_o\ & (\Output~29_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[8]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\srl2[8]~8_combout\ & ( (!\ShiftCount[0]~input_o\ & \srl2[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~29_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[7]~7_combout\,
	datad => \ALT_INV_Input[8]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl2[8]~8_combout\,
	combout => \Output~30_combout\);

-- Location: IOIBUF_X89_Y9_N38
\Arith[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(7),
	o => \Arith[7]~input_o\);

-- Location: MLABCELL_X65_Y5_N30
\Output~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~32_combout\ = ( \Arith[7]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~31_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~30_combout\)))) ) ) # ( !\Arith[7]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & (\Output~31_combout\))) # (\ShiftFN[1]~input_o\ & (((\Output~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~31_combout\,
	datad => \ALT_INV_Output~30_combout\,
	dataf => \ALT_INV_Arith[7]~input_o\,
	combout => \Output~32_combout\);

-- Location: LABCELL_X56_Y5_N36
\Output~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~33_combout\ = ( \srl32[8]~2_combout\ & ( \Input[24]~input_o\ & ( ((!\Output~7_combout\ & (\Input[12]~input_o\)) # (\Output~7_combout\ & ((\Input[16]~input_o\)))) # (\sll4[2]~1_combout\) ) ) ) # ( !\srl32[8]~2_combout\ & ( \Input[24]~input_o\ & ( 
-- (!\Output~7_combout\ & (\Input[12]~input_o\ & ((!\sll4[2]~1_combout\)))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\) # (\Input[16]~input_o\)))) ) ) ) # ( \srl32[8]~2_combout\ & ( !\Input[24]~input_o\ & ( (!\Output~7_combout\ & (((\sll4[2]~1_combout\)) 
-- # (\Input[12]~input_o\))) # (\Output~7_combout\ & (((\Input[16]~input_o\ & !\sll4[2]~1_combout\)))) ) ) ) # ( !\srl32[8]~2_combout\ & ( !\Input[24]~input_o\ & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\Input[12]~input_o\)) # (\Output~7_combout\ & 
-- ((\Input[16]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[12]~input_o\,
	datab => \ALT_INV_Input[16]~input_o\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_srl32[8]~2_combout\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \Output~33_combout\);

-- Location: LABCELL_X55_Y6_N30
\Output~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~34_combout\ = ( \Input[10]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~33_combout\) ) ) # ( !\Input[10]~input_o\ & ( (\Output~33_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~33_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \Output~34_combout\);

-- Location: LABCELL_X62_Y4_N36
\srl8[15]~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[15]~128_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[15]~30_combout\)))) # (\ShiftCount[4]~input_o\ & (\srl32[31]~31_combout\))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & 
-- (\srl32[23]~29_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & \Input[39]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[23]~29_combout\,
	datab => \ALT_INV_srl32[31]~31_combout\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[39]~input_o\,
	datag => \ALT_INV_srl32[15]~30_combout\,
	combout => \srl8[15]~128_combout\);

-- Location: LABCELL_X64_Y4_N42
\srl2[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[9]~9_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[13]~136_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[11]~144_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[15]~128_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[13]~136_combout\ & ( 
-- (\srl8[9]~152_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[13]~136_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[11]~144_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[15]~128_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[13]~136_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[9]~152_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[15]~128_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[9]~152_combout\,
	datad => \ALT_INV_srl8[11]~144_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[13]~136_combout\,
	combout => \srl2[9]~9_combout\);

-- Location: LABCELL_X64_Y4_N18
\Output~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~35_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \Input[9]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \srl2[9]~9_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- \Output~34_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \srl2[8]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[9]~input_o\,
	datab => \ALT_INV_Output~34_combout\,
	datac => \ALT_INV_srl2[8]~8_combout\,
	datad => \ALT_INV_srl2[9]~9_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~35_combout\);

-- Location: IOIBUF_X68_Y0_N18
\Arith[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(8),
	o => \Arith[8]~input_o\);

-- Location: LABCELL_X61_Y5_N33
\sll16[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[4]~1_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[4]~input_o\,
	combout => \sll16[4]~1_combout\);

-- Location: LABCELL_X61_Y5_N9
\sll16[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[8]~2_combout\ = ( \Input[8]~input_o\ & ( (!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \sll16[8]~2_combout\);

-- Location: LABCELL_X61_Y5_N30
\sll16[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[0]~0_combout\ = ( \Input[0]~input_o\ & ( (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \sll16[0]~0_combout\);

-- Location: LABCELL_X61_Y5_N6
\sll4[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[8]~9_combout\ = ( \sll16[0]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sll16[8]~2_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[4]~1_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)))) ) ) # ( 
-- !\sll16[0]~0_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sll16[8]~2_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[4]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010100000011111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[4]~1_combout\,
	datab => \ALT_INV_sll16[8]~2_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[0]~0_combout\,
	combout => \sll4[8]~9_combout\);

-- Location: LABCELL_X62_Y6_N24
\Output~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~36_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[7]~8_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sll4[5]~6_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[7]~8_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[8]~9_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\sll4[6]~7_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[7]~8_combout\ & ( (\sll4[5]~6_combout\ & \ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[7]~8_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sll4[8]~9_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[6]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[6]~7_combout\,
	datab => \ALT_INV_sll4[5]~6_combout\,
	datac => \ALT_INV_sll4[8]~9_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[7]~8_combout\,
	combout => \Output~36_combout\);

-- Location: LABCELL_X66_Y5_N33
\Output~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~37_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~35_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~35_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Output~36_combout\ 
-- ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~35_combout\,
	datab => \ALT_INV_Arith[8]~input_o\,
	datac => \ALT_INV_Output~36_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~37_combout\);

-- Location: IOIBUF_X62_Y81_N52
\Arith[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(9),
	o => \Arith[9]~input_o\);

-- Location: LABCELL_X60_Y3_N6
\Output~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~38_combout\ = ( \Input[13]~input_o\ & ( \Output~7_combout\ & ( (!\sll4[2]~1_combout\ & ((\Input[17]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[25]~input_o\)) ) ) ) # ( !\Input[13]~input_o\ & ( \Output~7_combout\ & ( (!\sll4[2]~1_combout\ & 
-- ((\Input[17]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[25]~input_o\)) ) ) ) # ( \Input[13]~input_o\ & ( !\Output~7_combout\ & ( (!\sll4[2]~1_combout\) # (\srl32[9]~18_combout\) ) ) ) # ( !\Input[13]~input_o\ & ( !\Output~7_combout\ & ( 
-- (\sll4[2]~1_combout\ & \srl32[9]~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_Input[25]~input_o\,
	datac => \ALT_INV_srl32[9]~18_combout\,
	datad => \ALT_INV_Input[17]~input_o\,
	datae => \ALT_INV_Input[13]~input_o\,
	dataf => \ALT_INV_Output~7_combout\,
	combout => \Output~38_combout\);

-- Location: LABCELL_X63_Y6_N30
\Output~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~39_combout\ = ( \Output~38_combout\ & ( (!\ShiftCount[1]~input_o\) # (\Input[11]~input_o\) ) ) # ( !\Output~38_combout\ & ( (\Input[11]~input_o\ & \ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[11]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Output~38_combout\,
	combout => \Output~39_combout\);

-- Location: LABCELL_X57_Y5_N42
\srl8[16]~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[16]~124_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (\srl32[16]~1_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & \Input[32]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[4]~input_o\ & (((\srl32[24]~3_combout\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[40]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101000000001111111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[16]~1_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[40]~input_o\,
	datad => \ALT_INV_srl32[24]~3_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[32]~input_o\,
	combout => \srl8[16]~124_combout\);

-- Location: LABCELL_X57_Y4_N54
\srl2[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[10]~10_combout\ = ( \ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[12]~140_combout\ ) ) ) # ( \ShiftCount[2]~input_o\ & ( 
-- !\ShiftCount[1]~input_o\ & ( \srl8[14]~132_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( \srl8[10]~148_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[12]~140_combout\,
	datab => \ALT_INV_srl8[10]~148_combout\,
	datac => \ALT_INV_srl8[16]~124_combout\,
	datad => \ALT_INV_srl8[14]~132_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[10]~10_combout\);

-- Location: LABCELL_X63_Y6_N6
\Output~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~40_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[10]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\srl2[10]~10_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \Input[10]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[9]~9_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\Output~39_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\Input[10]~input_o\ & ( (\srl2[10]~10_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\Input[10]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\srl2[9]~9_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~39_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[9]~9_combout\,
	datab => \ALT_INV_Output~39_combout\,
	datac => \ALT_INV_srl2[10]~10_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \Output~40_combout\);

-- Location: MLABCELL_X59_Y6_N12
\sll16[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[9]~5_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[9]~input_o\,
	combout => \sll16[9]~5_combout\);

-- Location: MLABCELL_X59_Y6_N36
\sll16[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[1]~3_combout\ = ( !\ShiftCount[5]~input_o\ & ( (\Input[1]~input_o\ & !\ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[1]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll16[1]~3_combout\);

-- Location: MLABCELL_X59_Y6_N15
\sll16[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[5]~4_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[5]~input_o\,
	combout => \sll16[5]~4_combout\);

-- Location: MLABCELL_X59_Y6_N39
\sll4[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[9]~10_combout\ = ( \sll16[5]~4_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[9]~5_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sll16[1]~3_combout\)))) ) ) # ( !\sll16[5]~4_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[9]~5_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[1]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000101010011110100010101001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[9]~5_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[1]~3_combout\,
	dataf => \ALT_INV_sll16[5]~4_combout\,
	combout => \sll4[9]~10_combout\);

-- Location: LABCELL_X62_Y6_N0
\Output~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~41_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sll4[6]~7_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[9]~10_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\sll4[7]~8_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[8]~9_combout\ & ( (\ShiftCount[1]~input_o\ & \sll4[6]~7_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & 
-- ((\sll4[9]~10_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[7]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[7]~8_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sll4[6]~7_combout\,
	datad => \ALT_INV_sll4[9]~10_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[8]~9_combout\,
	combout => \Output~41_combout\);

-- Location: LABCELL_X63_Y6_N33
\Output~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~42_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~40_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[9]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[9]~input_o\,
	datab => \ALT_INV_Output~40_combout\,
	datac => \ALT_INV_Output~41_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~42_combout\);

-- Location: IOIBUF_X68_Y81_N35
\Arith[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(10),
	o => \Arith[10]~input_o\);

-- Location: LABCELL_X60_Y6_N51
\sll16[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[10]~8_combout\ = ( !\ShiftCount[5]~input_o\ & ( \Input[10]~input_o\ & ( !\ShiftCount[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \sll16[10]~8_combout\);

-- Location: LABCELL_X60_Y6_N45
\sll16[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[6]~7_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & \Input[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[6]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll16[6]~7_combout\);

-- Location: LABCELL_X61_Y5_N42
\sll16[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[2]~6_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[2]~input_o\,
	combout => \sll16[2]~6_combout\);

-- Location: LABCELL_X60_Y6_N24
\sll4[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[10]~11_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[2]~6_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[6]~7_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[2]~6_combout\ & ( (\sll16[10]~8_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( 
-- \ShiftCount[2]~input_o\ & ( !\sll16[2]~6_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[6]~7_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[2]~6_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[10]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000001100110000111111001111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sll16[10]~8_combout\,
	datad => \ALT_INV_sll16[6]~7_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[2]~6_combout\,
	combout => \sll4[10]~11_combout\);

-- Location: LABCELL_X62_Y6_N36
\Output~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~46_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sll4[9]~10_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[7]~8_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( 
-- (\sll4[10]~11_combout\) # (\ShiftCount[1]~input_o\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & (\sll4[9]~10_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[7]~8_combout\))) ) ) ) # ( !\ShiftCount[0]~input_o\ 
-- & ( !\sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & \sll4[10]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[9]~10_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sll4[7]~8_combout\,
	datad => \ALT_INV_sll4[10]~11_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[8]~9_combout\,
	combout => \Output~46_combout\);

-- Location: LABCELL_X56_Y3_N42
\Output~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~43_combout\ = ( \srl32[10]~10_combout\ & ( \sll4[2]~1_combout\ & ( (!\Output~7_combout\) # (\Input[26]~input_o\) ) ) ) # ( !\srl32[10]~10_combout\ & ( \sll4[2]~1_combout\ & ( (\Input[26]~input_o\ & \Output~7_combout\) ) ) ) # ( 
-- \srl32[10]~10_combout\ & ( !\sll4[2]~1_combout\ & ( (!\Output~7_combout\ & (\Input[14]~input_o\)) # (\Output~7_combout\ & ((\Input[18]~input_o\))) ) ) ) # ( !\srl32[10]~10_combout\ & ( !\sll4[2]~1_combout\ & ( (!\Output~7_combout\ & (\Input[14]~input_o\)) 
-- # (\Output~7_combout\ & ((\Input[18]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[26]~input_o\,
	datab => \ALT_INV_Input[14]~input_o\,
	datac => \ALT_INV_Input[18]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_srl32[10]~10_combout\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~43_combout\);

-- Location: LABCELL_X63_Y6_N12
\Output~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~44_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[12]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~43_combout\,
	datad => \ALT_INV_Input[12]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~44_combout\);

-- Location: LABCELL_X60_Y3_N42
\srl8[17]~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[17]~120_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((((\srl32[17]~17_combout\))))) # (\ShiftCount[4]~input_o\ & (((\Input[33]~input_o\ & ((!\ShiftCount[5]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & (\srl32[25]~19_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[41]~input_o\ & ((!\ShiftCount[5]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101111001001110010011100000000101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_srl32[25]~19_combout\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_srl32[17]~17_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	datag => \ALT_INV_Input[33]~input_o\,
	combout => \srl8[17]~120_combout\);

-- Location: LABCELL_X63_Y4_N0
\srl2[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[11]~11_combout\ = ( \srl8[13]~136_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[17]~120_combout\) ) ) ) # ( !\srl8[13]~136_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[17]~120_combout\) ) ) 
-- ) # ( \srl8[13]~136_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[11]~144_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[15]~128_combout\))) ) ) ) # ( !\srl8[13]~136_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[11]~144_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[15]~128_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[17]~120_combout\,
	datac => \ALT_INV_srl8[11]~144_combout\,
	datad => \ALT_INV_srl8[15]~128_combout\,
	datae => \ALT_INV_srl8[13]~136_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[11]~11_combout\);

-- Location: LABCELL_X63_Y6_N18
\Output~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~45_combout\ = ( \ShiftCount[0]~input_o\ & ( \srl2[11]~11_combout\ & ( (!\ShiftFN[0]~input_o\) # (\Input[11]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \srl2[11]~11_combout\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[10]~10_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\Output~44_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\srl2[11]~11_combout\ & ( (\Input[11]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\srl2[11]~11_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\srl2[10]~10_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[11]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_srl2[10]~10_combout\,
	datad => \ALT_INV_Output~44_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_srl2[11]~11_combout\,
	combout => \Output~45_combout\);

-- Location: LABCELL_X63_Y6_N15
\Output~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~47_combout\ = ( \Output~45_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\Arith[10]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~46_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~45_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ 
-- & (\Arith[10]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~46_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[10]~input_o\,
	datad => \ALT_INV_Output~46_combout\,
	dataf => \ALT_INV_Output~45_combout\,
	combout => \Output~47_combout\);

-- Location: LABCELL_X55_Y3_N42
\srl8[18]~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[18]~116_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (\srl32[18]~9_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[34]~input_o\ & !\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[4]~input_o\ & (\srl32[26]~11_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[42]~input_o\ & !\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111010101010000111100110011000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[26]~11_combout\,
	datab => \ALT_INV_srl32[18]~9_combout\,
	datac => \ALT_INV_Input[42]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	datag => \ALT_INV_Input[34]~input_o\,
	combout => \srl8[18]~116_combout\);

-- Location: MLABCELL_X59_Y3_N30
\srl2[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[12]~12_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[14]~132_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[18]~116_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & 
-- ( (\srl8[12]~140_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[14]~132_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[18]~116_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[12]~140_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[18]~116_combout\,
	datab => \ALT_INV_srl8[14]~132_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[12]~140_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[16]~124_combout\,
	combout => \srl2[12]~12_combout\);

-- Location: LABCELL_X62_Y4_N6
\Output~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~48_combout\ = ( \Input[27]~input_o\ & ( \Input[19]~input_o\ & ( ((!\sll4[2]~1_combout\ & ((\Input[15]~input_o\))) # (\sll4[2]~1_combout\ & (\srl32[11]~26_combout\))) # (\Output~7_combout\) ) ) ) # ( !\Input[27]~input_o\ & ( \Input[19]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & ((\Input[15]~input_o\))) # (\sll4[2]~1_combout\ & (\srl32[11]~26_combout\)))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\)))) ) ) ) # ( \Input[27]~input_o\ & ( !\Input[19]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & ((\Input[15]~input_o\))) # (\sll4[2]~1_combout\ & (\srl32[11]~26_combout\)))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)))) ) ) ) # ( !\Input[27]~input_o\ & ( !\Input[19]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & ((\Input[15]~input_o\))) # (\sll4[2]~1_combout\ & (\srl32[11]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[11]~26_combout\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Input[15]~input_o\,
	datae => \ALT_INV_Input[27]~input_o\,
	dataf => \ALT_INV_Input[19]~input_o\,
	combout => \Output~48_combout\);

-- Location: LABCELL_X63_Y6_N57
\Output~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~49_combout\ = ( \Input[13]~input_o\ & ( (\Output~48_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[13]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_Output~48_combout\,
	dataf => \ALT_INV_Input[13]~input_o\,
	combout => \Output~49_combout\);

-- Location: LABCELL_X63_Y6_N0
\Output~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~50_combout\ = ( \Output~49_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\Input[12]~input_o\) ) ) ) # ( !\Output~49_combout\ & ( \ShiftFN[0]~input_o\ & ( (\Input[12]~input_o\ & \ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Output~49_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[11]~11_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[12]~12_combout\))) ) ) ) # ( !\Output~49_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[11]~11_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[12]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[11]~11_combout\,
	datab => \ALT_INV_srl2[12]~12_combout\,
	datac => \ALT_INV_Input[12]~input_o\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_Output~49_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~50_combout\);

-- Location: IOIBUF_X80_Y81_N35
\Arith[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(11),
	o => \Arith[11]~input_o\);

-- Location: LABCELL_X60_Y5_N42
\sll16[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[3]~9_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[3]~input_o\,
	combout => \sll16[3]~9_combout\);

-- Location: LABCELL_X60_Y5_N54
\sll16[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[11]~11_combout\ = ( \Input[11]~input_o\ & ( (!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \sll16[11]~11_combout\);

-- Location: LABCELL_X60_Y5_N21
\sll16[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[7]~10_combout\ = (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[7]~input_o\,
	combout => \sll16[7]~10_combout\);

-- Location: LABCELL_X61_Y5_N51
\sll4[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[11]~12_combout\ = ( \sll16[7]~10_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[3]~9_combout\) ) ) ) # ( !\sll16[7]~10_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[3]~9_combout\) ) ) ) # ( 
-- \sll16[7]~10_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sll16[11]~11_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[7]~10_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[11]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[3]~9_combout\,
	datad => \ALT_INV_sll16[11]~11_combout\,
	datae => \ALT_INV_sll16[7]~10_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[11]~12_combout\);

-- Location: LABCELL_X62_Y6_N42
\Output~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~51_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( (\sll4[10]~11_combout\) # (\ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[11]~12_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\sll4[9]~10_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ & \sll4[10]~11_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[8]~9_combout\ & ( (!\ShiftCount[1]~input_o\ 
-- & ((\sll4[11]~12_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[9]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[9]~10_combout\,
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_sll4[11]~12_combout\,
	datad => \ALT_INV_sll4[10]~11_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[8]~9_combout\,
	combout => \Output~51_combout\);

-- Location: LABCELL_X63_Y6_N54
\Output~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~52_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Output~51_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~50_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Arith[11]~input_o\))) # (\ShiftFN[1]~input_o\ 
-- & (\Output~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~50_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[11]~input_o\,
	datad => \ALT_INV_Output~51_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~52_combout\);

-- Location: IOIBUF_X2_Y0_N58
\Arith[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(12),
	o => \Arith[12]~input_o\);

-- Location: LABCELL_X57_Y6_N9
\sll16[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[12]~12_combout\ = ( !\ShiftCount[5]~input_o\ & ( \Input[12]~input_o\ & ( !\ShiftCount[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[12]~input_o\,
	combout => \sll16[12]~12_combout\);

-- Location: LABCELL_X61_Y5_N54
\sll4[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[12]~13_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[12]~12_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[8]~2_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[0]~0_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[12]~12_combout\ & ( 
-- (!\ShiftCount[3]~input_o\) # (\sll16[4]~1_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[12]~12_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[8]~2_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[0]~0_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[12]~12_combout\ & ( (\sll16[4]~1_combout\ & \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[4]~1_combout\,
	datab => \ALT_INV_sll16[8]~2_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[0]~0_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[12]~12_combout\,
	combout => \sll4[12]~13_combout\);

-- Location: LABCELL_X62_Y6_N18
\Output~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~56_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[11]~12_combout\ & ( (!\ShiftCount[1]~input_o\) # (\sll4[9]~10_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[11]~12_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[12]~13_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\sll4[10]~11_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[11]~12_combout\ & ( (\sll4[9]~10_combout\ & \ShiftCount[1]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\sll4[11]~12_combout\ & ( 
-- (!\ShiftCount[1]~input_o\ & ((\sll4[12]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[10]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[10]~11_combout\,
	datab => \ALT_INV_sll4[12]~13_combout\,
	datac => \ALT_INV_sll4[9]~10_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[11]~12_combout\,
	combout => \Output~56_combout\);

-- Location: LABCELL_X61_Y4_N6
\srl8[19]~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[19]~112_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\srl32[19]~25_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[35]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & ((((\srl32[27]~27_combout\))))) # (\ShiftCount[4]~input_o\ & (((\Input[43]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100010000001010000000000100111001000101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_srl32[19]~25_combout\,
	datac => \ALT_INV_Input[43]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[27]~27_combout\,
	datag => \ALT_INV_Input[35]~input_o\,
	combout => \srl8[19]~112_combout\);

-- Location: LABCELL_X63_Y4_N36
\srl2[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[13]~13_combout\ = ( \srl8[13]~136_combout\ & ( \srl8[19]~112_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\srl8[15]~128_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\srl8[17]~120_combout\))) ) 
-- ) ) # ( !\srl8[13]~136_combout\ & ( \srl8[19]~112_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\ & \srl8[15]~128_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\srl8[17]~120_combout\))) ) ) ) # ( 
-- \srl8[13]~136_combout\ & ( !\srl8[19]~112_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\srl8[15]~128_combout\)))) # (\ShiftCount[2]~input_o\ & (\srl8[17]~120_combout\ & (!\ShiftCount[1]~input_o\))) ) ) ) # ( 
-- !\srl8[13]~136_combout\ & ( !\srl8[19]~112_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\ & \srl8[15]~128_combout\)))) # (\ShiftCount[2]~input_o\ & (\srl8[17]~120_combout\ & (!\ShiftCount[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[17]~120_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_srl8[15]~128_combout\,
	datae => \ALT_INV_srl8[13]~136_combout\,
	dataf => \ALT_INV_srl8[19]~112_combout\,
	combout => \srl2[13]~13_combout\);

-- Location: LABCELL_X56_Y5_N12
\Output~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~53_combout\ = ( \srl32[12]~6_combout\ & ( \Input[28]~input_o\ & ( ((!\Output~7_combout\ & ((\Input[16]~input_o\))) # (\Output~7_combout\ & (\Input[20]~input_o\))) # (\sll4[2]~1_combout\) ) ) ) # ( !\srl32[12]~6_combout\ & ( \Input[28]~input_o\ & ( 
-- (!\Output~7_combout\ & (((\Input[16]~input_o\ & !\sll4[2]~1_combout\)))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)) # (\Input[20]~input_o\))) ) ) ) # ( \srl32[12]~6_combout\ & ( !\Input[28]~input_o\ & ( (!\Output~7_combout\ & (((\sll4[2]~1_combout\) 
-- # (\Input[16]~input_o\)))) # (\Output~7_combout\ & (\Input[20]~input_o\ & ((!\sll4[2]~1_combout\)))) ) ) ) # ( !\srl32[12]~6_combout\ & ( !\Input[28]~input_o\ & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & ((\Input[16]~input_o\))) # 
-- (\Output~7_combout\ & (\Input[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[20]~input_o\,
	datab => \ALT_INV_Input[16]~input_o\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_srl32[12]~6_combout\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \Output~53_combout\);

-- Location: LABCELL_X60_Y6_N0
\Output~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~54_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[14]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[14]~input_o\,
	datad => \ALT_INV_Output~53_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~54_combout\);

-- Location: LABCELL_X63_Y6_N36
\Output~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~55_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[13]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\srl2[13]~13_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \Input[13]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[12]~12_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\Output~54_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\Input[13]~input_o\ & ( (\srl2[13]~13_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\Input[13]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\srl2[12]~12_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~54_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[13]~13_combout\,
	datab => \ALT_INV_srl2[12]~12_combout\,
	datac => \ALT_INV_Output~54_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_Input[13]~input_o\,
	combout => \Output~55_combout\);

-- Location: LABCELL_X63_Y6_N45
\Output~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~57_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~56_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~55_combout\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Arith[12]~input_o\)) # (\ShiftFN[1]~input_o\ & 
-- ((\Output~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[12]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~56_combout\,
	datad => \ALT_INV_Output~55_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~57_combout\);

-- Location: LABCELL_X57_Y3_N42
\srl8[20]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[20]~108_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\srl32[20]~5_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & (\Input[36]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[4]~input_o\ & (((\srl32[28]~7_combout\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001100000000000000110001010101000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[20]~5_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[28]~7_combout\,
	datag => \ALT_INV_Input[36]~input_o\,
	combout => \srl8[20]~108_combout\);

-- Location: MLABCELL_X59_Y3_N6
\srl2[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[14]~14_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[20]~108_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\srl8[14]~132_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[18]~116_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[16]~124_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[20]~108_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( 
-- !\srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[14]~132_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[18]~116_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[18]~116_combout\,
	datab => \ALT_INV_srl8[14]~132_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[20]~108_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[16]~124_combout\,
	combout => \srl2[14]~14_combout\);

-- Location: LABCELL_X60_Y4_N12
\Output~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~58_combout\ = ( \Input[29]~input_o\ & ( \Input[21]~input_o\ & ( ((!\sll4[2]~1_combout\ & (\Input[17]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[13]~22_combout\)))) # (\Output~7_combout\) ) ) ) # ( !\Input[29]~input_o\ & ( \Input[21]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[17]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[13]~22_combout\))))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\)))) ) ) ) # ( \Input[29]~input_o\ & ( !\Input[21]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[17]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[13]~22_combout\))))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)))) ) ) ) # ( !\Input[29]~input_o\ & ( !\Input[21]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[17]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[13]~22_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[17]~input_o\,
	datab => \ALT_INV_srl32[13]~22_combout\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Input[29]~input_o\,
	dataf => \ALT_INV_Input[21]~input_o\,
	combout => \Output~58_combout\);

-- Location: LABCELL_X60_Y4_N3
\Output~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~59_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~58_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~58_combout\,
	datad => \ALT_INV_Input[15]~input_o\,
	combout => \Output~59_combout\);

-- Location: MLABCELL_X59_Y5_N30
\Output~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~60_combout\ = ( \ShiftFN[0]~input_o\ & ( \Output~59_combout\ & ( (!\ShiftCount[0]~input_o\) # (\Input[14]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Output~59_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[13]~13_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\srl2[14]~14_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Output~59_combout\ & ( (\ShiftCount[0]~input_o\ & \Input[14]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Output~59_combout\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[13]~13_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[14]~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_Input[14]~input_o\,
	datac => \ALT_INV_srl2[14]~14_combout\,
	datad => \ALT_INV_srl2[13]~13_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Output~59_combout\,
	combout => \Output~60_combout\);

-- Location: MLABCELL_X59_Y6_N21
\sll16[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[13]~13_combout\ = ( \Input[13]~input_o\ & ( (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[13]~input_o\,
	combout => \sll16[13]~13_combout\);

-- Location: MLABCELL_X59_Y6_N24
\sll4[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[13]~14_combout\ = ( \ShiftCount[3]~input_o\ & ( \sll16[9]~5_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[5]~4_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[1]~3_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sll16[9]~5_combout\ & ( 
-- (\ShiftCount[2]~input_o\) # (\sll16[13]~13_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sll16[9]~5_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[5]~4_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[1]~3_combout\)) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sll16[9]~5_combout\ & ( (\sll16[13]~13_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[13]~13_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[1]~3_combout\,
	datad => \ALT_INV_sll16[5]~4_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sll16[9]~5_combout\,
	combout => \sll4[13]~14_combout\);

-- Location: LABCELL_X62_Y6_N54
\Output~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~61_combout\ = ( \ShiftCount[0]~input_o\ & ( \sll4[11]~12_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[12]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[10]~11_combout\)) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \sll4[11]~12_combout\ & ( 
-- (\ShiftCount[1]~input_o\) # (\sll4[13]~14_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\sll4[11]~12_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\sll4[12]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\sll4[10]~11_combout\)) ) ) ) # ( 
-- !\ShiftCount[0]~input_o\ & ( !\sll4[11]~12_combout\ & ( (\sll4[13]~14_combout\ & !\ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[10]~11_combout\,
	datab => \ALT_INV_sll4[12]~13_combout\,
	datac => \ALT_INV_sll4[13]~14_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_sll4[11]~12_combout\,
	combout => \Output~61_combout\);

-- Location: IOIBUF_X60_Y81_N35
\Arith[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(13),
	o => \Arith[13]~input_o\);

-- Location: LABCELL_X62_Y6_N15
\Output~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~62_combout\ = ( \Arith[13]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~61_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~60_combout\)))) ) ) # ( !\Arith[13]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\Output~61_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~60_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~60_combout\,
	datad => \ALT_INV_Output~61_combout\,
	dataf => \ALT_INV_Arith[13]~input_o\,
	combout => \Output~62_combout\);

-- Location: IOIBUF_X74_Y81_N75
\Arith[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(14),
	o => \Arith[14]~input_o\);

-- Location: MLABCELL_X59_Y4_N36
\srl8[21]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[21]~104_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\srl32[21]~21_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[37]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & ((((\srl32[29]~23_combout\))))) # (\ShiftCount[4]~input_o\ & (((\Input[45]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011100100010000001010000000000100111001000101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_srl32[21]~21_combout\,
	datac => \ALT_INV_Input[45]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[29]~23_combout\,
	datag => \ALT_INV_Input[37]~input_o\,
	combout => \srl8[21]~104_combout\);

-- Location: LABCELL_X63_Y4_N42
\srl2[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[15]~15_combout\ = ( \srl8[17]~120_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[21]~104_combout\) ) ) ) # ( !\srl8[17]~120_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[21]~104_combout\) ) ) 
-- ) # ( \srl8[17]~120_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[15]~128_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[19]~112_combout\)) ) ) ) # ( !\srl8[17]~120_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[15]~128_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[19]~112_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[19]~112_combout\,
	datac => \ALT_INV_srl8[21]~104_combout\,
	datad => \ALT_INV_srl8[15]~128_combout\,
	datae => \ALT_INV_srl8[17]~120_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[15]~15_combout\);

-- Location: LABCELL_X56_Y2_N42
\Output~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~63_combout\ = ( \Input[18]~input_o\ & ( \Input[22]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & (\srl32[14]~14_combout\)) # (\Output~7_combout\ & ((\Input[30]~input_o\)))) ) ) ) # ( !\Input[18]~input_o\ & ( \Input[22]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (((\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[14]~14_combout\)) # (\Output~7_combout\ & ((\Input[30]~input_o\))))) ) ) ) # ( \Input[18]~input_o\ & ( !\Input[22]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (((!\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[14]~14_combout\)) # (\Output~7_combout\ & ((\Input[30]~input_o\))))) ) ) ) # ( !\Input[18]~input_o\ & ( !\Input[22]~input_o\ & ( 
-- (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[14]~14_combout\)) # (\Output~7_combout\ & ((\Input[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_srl32[14]~14_combout\,
	datac => \ALT_INV_Input[30]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_Input[18]~input_o\,
	dataf => \ALT_INV_Input[22]~input_o\,
	combout => \Output~63_combout\);

-- Location: MLABCELL_X65_Y5_N39
\Output~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~64_combout\ = ( \Input[16]~input_o\ & ( (\Output~63_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[16]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~63_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~63_combout\,
	dataf => \ALT_INV_Input[16]~input_o\,
	combout => \Output~64_combout\);

-- Location: MLABCELL_X65_Y5_N15
\Output~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~65_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \Input[15]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \srl2[15]~15_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- \Output~64_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \srl2[14]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[15]~15_combout\,
	datab => \ALT_INV_srl2[14]~14_combout\,
	datac => \ALT_INV_Output~64_combout\,
	datad => \ALT_INV_Input[15]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~65_combout\);

-- Location: LABCELL_X60_Y6_N3
\sll16[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[14]~14_combout\ = (\Input[14]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[14]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[14]~14_combout\);

-- Location: LABCELL_X60_Y6_N6
\sll4[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[14]~15_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[2]~6_combout\ & ( (\sll16[10]~8_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[2]~6_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[14]~14_combout\)) # 
-- (\ShiftCount[3]~input_o\ & ((\sll16[6]~7_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[2]~6_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[10]~8_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[2]~6_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sll16[14]~14_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[6]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[14]~14_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sll16[10]~8_combout\,
	datad => \ALT_INV_sll16[6]~7_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[2]~6_combout\,
	combout => \sll4[14]~15_combout\);

-- Location: MLABCELL_X65_Y5_N48
\Output~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~66_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[12]~13_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[11]~12_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[14]~15_combout\ & ( 
-- (!\ShiftCount[0]~input_o\) # (\sll4[13]~14_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[12]~13_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[11]~12_combout\))) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\sll4[14]~15_combout\ & ( (\ShiftCount[0]~input_o\ & \sll4[13]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[12]~13_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[13]~14_combout\,
	datad => \ALT_INV_sll4[11]~12_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[14]~15_combout\,
	combout => \Output~66_combout\);

-- Location: MLABCELL_X65_Y5_N54
\Output~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~67_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~65_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~65_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Output~66_combout\ 
-- ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[14]~input_o\,
	datab => \ALT_INV_Output~65_combout\,
	datac => \ALT_INV_Output~66_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~67_combout\);

-- Location: LABCELL_X56_Y2_N36
\srl8[22]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[22]~100_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (\srl32[22]~13_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[38]~input_o\ & !\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[4]~input_o\ & (\srl32[30]~15_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[46]~input_o\ & !\ShiftCount[5]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011010101010101010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[30]~15_combout\,
	datab => \ALT_INV_srl32[22]~13_combout\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[38]~input_o\,
	combout => \srl8[22]~100_combout\);

-- Location: MLABCELL_X59_Y3_N42
\srl2[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[16]~16_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[18]~116_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[22]~100_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[16]~124_combout\ & 
-- ( (!\ShiftCount[2]~input_o\) # (\srl8[20]~108_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[16]~124_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[18]~116_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[22]~100_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[16]~124_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[20]~108_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[20]~108_combout\,
	datac => \ALT_INV_srl8[22]~100_combout\,
	datad => \ALT_INV_srl8[18]~116_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[16]~124_combout\,
	combout => \srl2[16]~16_combout\);

-- Location: LABCELL_X62_Y4_N42
\Output~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~68_combout\ = ( \srl32[15]~30_combout\ & ( \Input[31]~input_o\ & ( ((!\Output~7_combout\ & (\Input[19]~input_o\)) # (\Output~7_combout\ & ((\Input[23]~input_o\)))) # (\sll4[2]~1_combout\) ) ) ) # ( !\srl32[15]~30_combout\ & ( \Input[31]~input_o\ & 
-- ( (!\Output~7_combout\ & (\Input[19]~input_o\ & (!\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((\Input[23]~input_o\) # (\sll4[2]~1_combout\)))) ) ) ) # ( \srl32[15]~30_combout\ & ( !\Input[31]~input_o\ & ( (!\Output~7_combout\ & 
-- (((\sll4[2]~1_combout\)) # (\Input[19]~input_o\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\ & \Input[23]~input_o\)))) ) ) ) # ( !\srl32[15]~30_combout\ & ( !\Input[31]~input_o\ & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & 
-- (\Input[19]~input_o\)) # (\Output~7_combout\ & ((\Input[23]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[19]~input_o\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Input[23]~input_o\,
	datae => \ALT_INV_srl32[15]~30_combout\,
	dataf => \ALT_INV_Input[31]~input_o\,
	combout => \Output~68_combout\);

-- Location: MLABCELL_X65_Y5_N3
\Output~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~69_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[17]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~68_combout\,
	datad => \ALT_INV_Input[17]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~69_combout\);

-- Location: MLABCELL_X65_Y5_N6
\Output~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~70_combout\ = ( \Output~69_combout\ & ( \Input[16]~input_o\ & ( ((!\ShiftCount[0]~input_o\ & (\srl2[15]~15_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[16]~16_combout\)))) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\Output~69_combout\ & ( 
-- \Input[16]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[15]~15_combout\ & ((!\ShiftFN[0]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\srl2[16]~16_combout\)))) ) ) ) # ( \Output~69_combout\ & ( !\Input[16]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\srl2[15]~15_combout\))) # (\ShiftCount[0]~input_o\ & (((\srl2[16]~16_combout\ & !\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Output~69_combout\ & ( !\Input[16]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((!\ShiftCount[0]~input_o\ & (\srl2[15]~15_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[16]~16_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[15]~15_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[16]~16_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Output~69_combout\,
	dataf => \ALT_INV_Input[16]~input_o\,
	combout => \Output~70_combout\);

-- Location: LABCELL_X60_Y5_N18
\sll16[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[15]~15_combout\ = ( \Input[15]~input_o\ & ( (!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sll16[15]~15_combout\);

-- Location: LABCELL_X61_Y5_N0
\sll4[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[15]~16_combout\ = ( \sll16[7]~10_combout\ & ( \sll16[11]~11_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sll16[15]~15_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[3]~9_combout\))) ) ) 
-- ) # ( !\sll16[7]~10_combout\ & ( \sll16[11]~11_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[15]~15_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[3]~9_combout\))) ) ) ) # ( 
-- \sll16[7]~10_combout\ & ( !\sll16[11]~11_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sll16[15]~15_combout\)))) # (\ShiftCount[2]~input_o\ & (\sll16[3]~9_combout\ & ((\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sll16[7]~10_combout\ 
-- & ( !\sll16[11]~11_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[15]~15_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (\sll16[3]~9_combout\ & ((\ShiftCount[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sll16[3]~9_combout\,
	datac => \ALT_INV_sll16[15]~15_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sll16[7]~10_combout\,
	dataf => \ALT_INV_sll16[11]~11_combout\,
	combout => \sll4[15]~16_combout\);

-- Location: MLABCELL_X65_Y5_N42
\Output~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~71_combout\ = ( \sll4[12]~13_combout\ & ( \sll4[14]~15_combout\ & ( ((!\ShiftCount[1]~input_o\ & (\sll4[15]~16_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[13]~14_combout\)))) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\sll4[12]~13_combout\ & ( 
-- \sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sll4[15]~16_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[13]~14_combout\))))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)))) ) ) ) # ( 
-- \sll4[12]~13_combout\ & ( !\sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sll4[15]~16_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[13]~14_combout\))))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) ) 
-- ) ) # ( !\sll4[12]~13_combout\ & ( !\sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftCount[1]~input_o\ & (\sll4[15]~16_combout\)) # (\ShiftCount[1]~input_o\ & ((\sll4[13]~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[15]~16_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[13]~14_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sll4[12]~13_combout\,
	dataf => \ALT_INV_sll4[14]~15_combout\,
	combout => \Output~71_combout\);

-- Location: IOIBUF_X89_Y6_N4
\Arith[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(15),
	o => \Arith[15]~input_o\);

-- Location: MLABCELL_X65_Y5_N33
\Output~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~72_combout\ = ( \Arith[15]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~71_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~70_combout\)))) ) ) # ( !\Arith[15]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\Output~71_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~70_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~70_combout\,
	datad => \ALT_INV_Output~71_combout\,
	dataf => \ALT_INV_Arith[15]~input_o\,
	combout => \Output~72_combout\);

-- Location: LABCELL_X56_Y5_N48
\Output~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~73_combout\ = ( \Input[20]~input_o\ & ( \Input[24]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & (\srl32[16]~1_combout\)) # (\Output~7_combout\ & ((\Input[32]~input_o\)))) ) ) ) # ( !\Input[20]~input_o\ & ( \Input[24]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (((\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[16]~1_combout\)) # (\Output~7_combout\ & ((\Input[32]~input_o\))))) ) ) ) # ( \Input[20]~input_o\ & ( !\Input[24]~input_o\ & ( (!\sll4[2]~1_combout\ 
-- & (((!\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[16]~1_combout\)) # (\Output~7_combout\ & ((\Input[32]~input_o\))))) ) ) ) # ( !\Input[20]~input_o\ & ( !\Input[24]~input_o\ & ( (\sll4[2]~1_combout\ & 
-- ((!\Output~7_combout\ & (\srl32[16]~1_combout\)) # (\Output~7_combout\ & ((\Input[32]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[16]~1_combout\,
	datab => \ALT_INV_sll4[2]~1_combout\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_Input[32]~input_o\,
	datae => \ALT_INV_Input[20]~input_o\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \Output~73_combout\);

-- Location: MLABCELL_X59_Y5_N36
\Output~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~74_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[18]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~73_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~73_combout\,
	datac => \ALT_INV_Input[18]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~74_combout\);

-- Location: LABCELL_X62_Y4_N0
\srl8[23]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[23]~96_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((((\srl32[23]~29_combout\))))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[39]~input_o\))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & ((((\srl32[31]~31_combout\))))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[47]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000000010000000101100111011001110110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[47]~input_o\,
	datad => \ALT_INV_srl32[31]~31_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[23]~29_combout\,
	datag => \ALT_INV_Input[39]~input_o\,
	combout => \srl8[23]~96_combout\);

-- Location: LABCELL_X63_Y4_N18
\srl2[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[17]~17_combout\ = ( \srl8[17]~120_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[19]~112_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[23]~96_combout\))) ) ) ) # ( !\srl8[17]~120_combout\ & ( \ShiftCount[1]~input_o\ & 
-- ( (!\ShiftCount[2]~input_o\ & (\srl8[19]~112_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[23]~96_combout\))) ) ) ) # ( \srl8[17]~120_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[21]~104_combout\) ) ) ) # ( 
-- !\srl8[17]~120_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[21]~104_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[19]~112_combout\,
	datac => \ALT_INV_srl8[21]~104_combout\,
	datad => \ALT_INV_srl8[23]~96_combout\,
	datae => \ALT_INV_srl8[17]~120_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[17]~17_combout\);

-- Location: MLABCELL_X65_Y5_N18
\Output~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~75_combout\ = ( \ShiftFN[0]~input_o\ & ( \srl2[16]~16_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\Output~74_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[17]~input_o\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \srl2[16]~16_combout\ & ( 
-- (!\ShiftCount[0]~input_o\) # (\srl2[17]~17_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\srl2[16]~16_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\Output~74_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[17]~input_o\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\srl2[16]~16_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[17]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[17]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_Output~74_combout\,
	datad => \ALT_INV_srl2[17]~17_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_srl2[16]~16_combout\,
	combout => \Output~75_combout\);

-- Location: LABCELL_X57_Y5_N12
\sll16[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[16]~16_combout\ = ( \Input[0]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[16]~input_o\) # (\ShiftCount[4]~input_o\))) ) ) # ( !\Input[0]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[16]~input_o\ & !\ShiftCount[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[16]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \sll16[16]~16_combout\);

-- Location: LABCELL_X61_Y5_N36
\sll4[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[16]~17_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[12]~12_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sll16[4]~1_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[12]~12_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[16]~16_combout\)) # 
-- (\ShiftCount[3]~input_o\ & ((\sll16[8]~2_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[12]~12_combout\ & ( (\sll16[4]~1_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[12]~12_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sll16[16]~16_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[8]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[4]~1_combout\,
	datab => \ALT_INV_sll16[16]~16_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[8]~2_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[12]~12_combout\,
	combout => \sll4[16]~17_combout\);

-- Location: MLABCELL_X65_Y5_N24
\Output~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~76_combout\ = ( \sll4[15]~16_combout\ & ( \sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sll4[16]~17_combout\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sll4[13]~14_combout\)))) ) ) ) # 
-- ( !\sll4[15]~16_combout\ & ( \sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sll4[16]~17_combout\))) # (\ShiftCount[0]~input_o\ & (((\sll4[13]~14_combout\ & \ShiftCount[1]~input_o\)))) ) ) ) # ( \sll4[15]~16_combout\ 
-- & ( !\sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[16]~17_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sll4[13]~14_combout\)))) ) ) ) # ( !\sll4[15]~16_combout\ & ( 
-- !\sll4[14]~15_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[16]~17_combout\ & ((!\ShiftCount[1]~input_o\)))) # (\ShiftCount[0]~input_o\ & (((\sll4[13]~14_combout\ & \ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[16]~17_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[13]~14_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_sll4[15]~16_combout\,
	dataf => \ALT_INV_sll4[14]~15_combout\,
	combout => \Output~76_combout\);

-- Location: IOIBUF_X70_Y81_N1
\Arith[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(16),
	o => \Arith[16]~input_o\);

-- Location: MLABCELL_X65_Y5_N0
\Output~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~77_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~75_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Arith[16]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~76_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~75_combout\,
	datab => \ALT_INV_Output~76_combout\,
	datac => \ALT_INV_Arith[16]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~77_combout\);

-- Location: MLABCELL_X59_Y6_N30
\sll16[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[17]~17_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[17]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[1]~input_o\,
	datad => \ALT_INV_Input[17]~input_o\,
	combout => \sll16[17]~17_combout\);

-- Location: MLABCELL_X59_Y6_N6
\sll4[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[17]~18_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[9]~5_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[13]~13_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[5]~4_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[9]~5_combout\ & ( 
-- (\sll16[17]~17_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[9]~5_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[13]~13_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[5]~4_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[9]~5_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[17]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[17]~17_combout\,
	datac => \ALT_INV_sll16[13]~13_combout\,
	datad => \ALT_INV_sll16[5]~4_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[9]~5_combout\,
	combout => \sll4[17]~18_combout\);

-- Location: LABCELL_X62_Y5_N0
\Output~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~81_combout\ = ( \sll4[16]~17_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[15]~16_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[14]~15_combout\)) ) ) ) # ( !\sll4[16]~17_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[15]~16_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[14]~15_combout\)) ) ) ) # ( \sll4[16]~17_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[17]~18_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( 
-- !\sll4[16]~17_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \sll4[17]~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[14]~15_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[17]~18_combout\,
	datad => \ALT_INV_sll4[15]~16_combout\,
	datae => \ALT_INV_sll4[16]~17_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~81_combout\);

-- Location: IOIBUF_X74_Y81_N58
\Arith[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(17),
	o => \Arith[17]~input_o\);

-- Location: LABCELL_X60_Y3_N12
\Output~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~78_combout\ = ( \Input[21]~input_o\ & ( \Output~7_combout\ & ( (!\sll4[2]~1_combout\ & ((\Input[25]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[33]~input_o\)) ) ) ) # ( !\Input[21]~input_o\ & ( \Output~7_combout\ & ( (!\sll4[2]~1_combout\ & 
-- ((\Input[25]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[33]~input_o\)) ) ) ) # ( \Input[21]~input_o\ & ( !\Output~7_combout\ & ( (!\sll4[2]~1_combout\) # (\srl32[17]~17_combout\) ) ) ) # ( !\Input[21]~input_o\ & ( !\Output~7_combout\ & ( 
-- (\sll4[2]~1_combout\ & \srl32[17]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_srl32[17]~17_combout\,
	datac => \ALT_INV_Input[33]~input_o\,
	datad => \ALT_INV_Input[25]~input_o\,
	datae => \ALT_INV_Input[21]~input_o\,
	dataf => \ALT_INV_Output~7_combout\,
	combout => \Output~78_combout\);

-- Location: LABCELL_X63_Y5_N33
\Output~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~79_combout\ = ( \Input[19]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~78_combout\) ) ) # ( !\Input[19]~input_o\ & ( (\Output~78_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~78_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[19]~input_o\,
	combout => \Output~79_combout\);

-- Location: LABCELL_X57_Y5_N36
\srl8[24]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[24]~92_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[24]~3_combout\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[40]~input_o\)))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & ((\Input[32]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[48]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000011000000110000001100000011000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[48]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[32]~input_o\,
	datad => \ALT_INV_srl32[24]~3_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[40]~input_o\,
	combout => \srl8[24]~92_combout\);

-- Location: MLABCELL_X59_Y3_N18
\srl2[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[18]~18_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[24]~92_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[22]~100_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( 
-- !\ShiftCount[2]~input_o\ & ( \srl8[20]~108_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \srl8[18]~116_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[18]~116_combout\,
	datab => \ALT_INV_srl8[20]~108_combout\,
	datac => \ALT_INV_srl8[22]~100_combout\,
	datad => \ALT_INV_srl8[24]~92_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[18]~18_combout\);

-- Location: LABCELL_X63_Y5_N6
\Output~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~80_combout\ = ( \ShiftFN[0]~input_o\ & ( \Input[18]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~79_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Input[18]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[17]~17_combout\)) # 
-- (\ShiftCount[0]~input_o\ & ((\srl2[18]~18_combout\))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Input[18]~input_o\ & ( (\Output~79_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Input[18]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[17]~17_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[18]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~79_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[17]~17_combout\,
	datad => \ALT_INV_srl2[18]~18_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Input[18]~input_o\,
	combout => \Output~80_combout\);

-- Location: LABCELL_X63_Y5_N30
\Output~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~82_combout\ = ( \Output~80_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Arith[17]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~81_combout\))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~80_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ 
-- & ((\Arith[17]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~81_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~81_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[17]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Output~80_combout\,
	combout => \Output~82_combout\);

-- Location: LABCELL_X55_Y6_N33
\sll16[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[18]~18_combout\ = ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[2]~input_o\) ) ) # ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[18]~input_o\,
	datac => \ALT_INV_Input[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[18]~18_combout\);

-- Location: LABCELL_X60_Y6_N12
\sll4[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[18]~19_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[18]~18_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[14]~14_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[6]~7_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[18]~18_combout\ & ( 
-- (!\ShiftCount[3]~input_o\) # (\sll16[10]~8_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[18]~18_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[14]~14_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[6]~7_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[18]~18_combout\ & ( (\sll16[10]~8_combout\ & \ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[10]~8_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sll16[14]~14_combout\,
	datad => \ALT_INV_sll16[6]~7_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[18]~18_combout\,
	combout => \sll4[18]~19_combout\);

-- Location: LABCELL_X62_Y5_N36
\Output~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~86_combout\ = ( \sll4[16]~17_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[15]~16_combout\) ) ) ) # ( !\sll4[16]~17_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[15]~16_combout\) ) ) ) # ( 
-- \sll4[16]~17_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[18]~19_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[17]~18_combout\))) ) ) ) # ( !\sll4[16]~17_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ 
-- & (\sll4[18]~19_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[17]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[18]~19_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[17]~18_combout\,
	datad => \ALT_INV_sll4[15]~16_combout\,
	datae => \ALT_INV_sll4[16]~17_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~86_combout\);

-- Location: LABCELL_X60_Y3_N36
\srl8[25]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[25]~88_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[25]~19_combout\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[41]~input_o\)))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & ((\Input[33]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[49]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000010100000101000001010000010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[49]~input_o\,
	datac => \ALT_INV_Input[33]~input_o\,
	datad => \ALT_INV_srl32[25]~19_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[41]~input_o\,
	combout => \srl8[25]~88_combout\);

-- Location: LABCELL_X63_Y4_N54
\srl2[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[19]~19_combout\ = ( \ShiftCount[2]~input_o\ & ( \srl8[23]~96_combout\ & ( (!\ShiftCount[1]~input_o\) # (\srl8[25]~88_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \srl8[23]~96_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\srl8[19]~112_combout\))) # 
-- (\ShiftCount[1]~input_o\ & (\srl8[21]~104_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\srl8[23]~96_combout\ & ( (\ShiftCount[1]~input_o\ & \srl8[25]~88_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\srl8[23]~96_combout\ & ( 
-- (!\ShiftCount[1]~input_o\ & ((\srl8[19]~112_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[21]~104_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_srl8[25]~88_combout\,
	datac => \ALT_INV_srl8[21]~104_combout\,
	datad => \ALT_INV_srl8[19]~112_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_srl8[23]~96_combout\,
	combout => \srl2[19]~19_combout\);

-- Location: LABCELL_X56_Y3_N48
\Output~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~83_combout\ = ( \Input[22]~input_o\ & ( \Input[26]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & (\srl32[18]~9_combout\)) # (\Output~7_combout\ & ((\Input[34]~input_o\)))) ) ) ) # ( !\Input[22]~input_o\ & ( \Input[26]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (((\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[18]~9_combout\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) ) ) ) # ( \Input[22]~input_o\ & ( !\Input[26]~input_o\ & ( (!\sll4[2]~1_combout\ 
-- & (((!\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[18]~9_combout\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) ) ) ) # ( !\Input[22]~input_o\ & ( !\Input[26]~input_o\ & ( (\sll4[2]~1_combout\ & 
-- ((!\Output~7_combout\ & (\srl32[18]~9_combout\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_srl32[18]~9_combout\,
	datac => \ALT_INV_Input[34]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_Input[22]~input_o\,
	dataf => \ALT_INV_Input[26]~input_o\,
	combout => \Output~83_combout\);

-- Location: LABCELL_X56_Y3_N57
\Output~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~84_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[20]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~83_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~83_combout\,
	datad => \ALT_INV_Input[20]~input_o\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~84_combout\);

-- Location: LABCELL_X63_Y5_N12
\Output~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~85_combout\ = ( \ShiftFN[0]~input_o\ & ( \Input[19]~input_o\ & ( (\Output~84_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Input[19]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[18]~18_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\srl2[19]~19_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Input[19]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \Output~84_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Input[19]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[18]~18_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[19]~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[19]~19_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_Output~84_combout\,
	datad => \ALT_INV_srl2[18]~18_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Input[19]~input_o\,
	combout => \Output~85_combout\);

-- Location: IOIBUF_X89_Y37_N21
\Arith[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(18),
	o => \Arith[18]~input_o\);

-- Location: LABCELL_X63_Y5_N51
\Output~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~87_combout\ = ( \ShiftFN[0]~input_o\ & ( \Arith[18]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~86_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~85_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Arith[18]~input_o\ & ( (!\ShiftFN[1]~input_o\) 
-- # (\Output~85_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Arith[18]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~86_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~85_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Arith[18]~input_o\ & ( 
-- (\ShiftFN[1]~input_o\ & \Output~85_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011111001111110011110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~86_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~85_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Arith[18]~input_o\,
	combout => \Output~87_combout\);

-- Location: LABCELL_X61_Y4_N12
\Output~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~88_combout\ = ( \Input[27]~input_o\ & ( \Input[35]~input_o\ & ( ((!\sll4[2]~1_combout\ & (\Input[23]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[19]~25_combout\)))) # (\Output~7_combout\) ) ) ) # ( !\Input[27]~input_o\ & ( \Input[35]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[23]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[19]~25_combout\))))) # (\Output~7_combout\ & (((\sll4[2]~1_combout\)))) ) ) ) # ( \Input[27]~input_o\ & ( !\Input[35]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[23]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[19]~25_combout\))))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\)))) ) ) ) # ( !\Input[27]~input_o\ & ( !\Input[35]~input_o\ & ( 
-- (!\Output~7_combout\ & ((!\sll4[2]~1_combout\ & (\Input[23]~input_o\)) # (\sll4[2]~1_combout\ & ((\srl32[19]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[23]~input_o\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_srl32[19]~25_combout\,
	datae => \ALT_INV_Input[27]~input_o\,
	dataf => \ALT_INV_Input[35]~input_o\,
	combout => \Output~88_combout\);

-- Location: LABCELL_X63_Y5_N57
\Output~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~89_combout\ = ( \Output~88_combout\ & ( (!\ShiftCount[1]~input_o\) # (\Input[21]~input_o\) ) ) # ( !\Output~88_combout\ & ( (\ShiftCount[1]~input_o\ & \Input[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_Input[21]~input_o\,
	dataf => \ALT_INV_Output~88_combout\,
	combout => \Output~89_combout\);

-- Location: LABCELL_X55_Y3_N6
\srl8[26]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[26]~84_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\srl32[26]~11_combout\)) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & (\Input[42]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[34]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[50]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001100000011000000000001010101000011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[26]~11_combout\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[34]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[50]~input_o\,
	datag => \ALT_INV_Input[42]~input_o\,
	combout => \srl8[26]~84_combout\);

-- Location: MLABCELL_X59_Y3_N54
\srl2[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[20]~20_combout\ = ( \srl8[24]~92_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\srl8[26]~84_combout\) ) ) ) # ( !\srl8[24]~92_combout\ & ( \ShiftCount[2]~input_o\ & ( (\ShiftCount[1]~input_o\ & \srl8[26]~84_combout\) ) ) ) # 
-- ( \srl8[24]~92_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & ((\srl8[20]~108_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[22]~100_combout\)) ) ) ) # ( !\srl8[24]~92_combout\ & ( !\ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & ((\srl8[20]~108_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[22]~100_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_srl8[26]~84_combout\,
	datac => \ALT_INV_srl8[22]~100_combout\,
	datad => \ALT_INV_srl8[20]~108_combout\,
	datae => \ALT_INV_srl8[24]~92_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[20]~20_combout\);

-- Location: LABCELL_X63_Y5_N0
\Output~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~90_combout\ = ( \srl2[20]~20_combout\ & ( \Input[20]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & ((\srl2[19]~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~89_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\srl2[20]~20_combout\ & ( 
-- \Input[20]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[19]~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~89_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) ) # ( \srl2[20]~20_combout\ & ( 
-- !\Input[20]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[19]~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~89_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl2[20]~20_combout\ & ( 
-- !\Input[20]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[19]~19_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~89_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_Output~89_combout\,
	datac => \ALT_INV_srl2[19]~19_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl2[20]~20_combout\,
	dataf => \ALT_INV_Input[20]~input_o\,
	combout => \Output~90_combout\);

-- Location: IOIBUF_X64_Y81_N52
\Arith[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(19),
	o => \Arith[19]~input_o\);

-- Location: LABCELL_X61_Y4_N24
\sll16[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[19]~19_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[19]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101000100000001010100010000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[19]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[3]~input_o\,
	combout => \sll16[19]~19_combout\);

-- Location: LABCELL_X61_Y5_N12
\sll4[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[19]~20_combout\ = ( \sll16[7]~10_combout\ & ( \sll16[19]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[15]~15_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[11]~11_combout\))) ) 
-- ) ) # ( !\sll16[7]~10_combout\ & ( \sll16[19]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[15]~15_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[11]~11_combout\ & (!\ShiftCount[2]~input_o\))) ) ) ) # ( 
-- \sll16[7]~10_combout\ & ( !\sll16[19]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[15]~15_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[11]~11_combout\))) ) ) ) # ( 
-- !\sll16[7]~10_combout\ & ( !\sll16[19]~19_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[15]~15_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[11]~11_combout\ & (!\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[11]~11_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[15]~15_combout\,
	datae => \ALT_INV_sll16[7]~10_combout\,
	dataf => \ALT_INV_sll16[19]~19_combout\,
	combout => \sll4[19]~20_combout\);

-- Location: LABCELL_X62_Y5_N42
\Output~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~91_combout\ = ( \sll4[19]~20_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[17]~18_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[16]~17_combout\))) ) ) ) # ( !\sll4[19]~20_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[17]~18_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[16]~17_combout\))) ) ) ) # ( \sll4[19]~20_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[18]~19_combout\) ) ) ) # ( 
-- !\sll4[19]~20_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[18]~19_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[18]~19_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[17]~18_combout\,
	datad => \ALT_INV_sll4[16]~17_combout\,
	datae => \ALT_INV_sll4[19]~20_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~91_combout\);

-- Location: LABCELL_X63_Y5_N54
\Output~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~92_combout\ = ( \Output~91_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Arith[19]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~90_combout\)))) ) ) # ( !\Output~91_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & ((\Arith[19]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\Output~90_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~90_combout\,
	datad => \ALT_INV_Arith[19]~input_o\,
	dataf => \ALT_INV_Output~91_combout\,
	combout => \Output~92_combout\);

-- Location: LABCELL_X56_Y5_N27
\sll16[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[20]~20_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[20]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[4]~input_o\,
	datad => \ALT_INV_Input[20]~input_o\,
	combout => \sll16[20]~20_combout\);

-- Location: LABCELL_X61_Y5_N18
\sll4[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[20]~21_combout\ = ( \ShiftCount[3]~input_o\ & ( \sll16[8]~2_combout\ & ( (\sll16[12]~12_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sll16[8]~2_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[20]~20_combout\)) # 
-- (\ShiftCount[2]~input_o\ & ((\sll16[16]~16_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sll16[8]~2_combout\ & ( (!\ShiftCount[2]~input_o\ & \sll16[12]~12_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sll16[8]~2_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[20]~20_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[16]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sll16[20]~20_combout\,
	datac => \ALT_INV_sll16[12]~12_combout\,
	datad => \ALT_INV_sll16[16]~16_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sll16[8]~2_combout\,
	combout => \sll4[20]~21_combout\);

-- Location: LABCELL_X62_Y5_N18
\Output~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~96_combout\ = ( \sll4[19]~20_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[18]~19_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[17]~18_combout\))) ) ) ) # ( !\sll4[19]~20_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[18]~19_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[17]~18_combout\))) ) ) ) # ( \sll4[19]~20_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[20]~21_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( 
-- !\sll4[19]~20_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \sll4[20]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[18]~19_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[17]~18_combout\,
	datad => \ALT_INV_sll4[20]~21_combout\,
	datae => \ALT_INV_sll4[19]~20_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~96_combout\);

-- Location: LABCELL_X61_Y4_N30
\srl8[27]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[27]~80_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((((\srl32[27]~27_combout\))))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[43]~input_o\))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[35]~input_o\)) # (\ShiftCount[4]~input_o\ & (((\Input[51]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000100000010000100110010101110101011100000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[35]~input_o\,
	datad => \ALT_INV_Input[51]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[27]~27_combout\,
	datag => \ALT_INV_Input[43]~input_o\,
	combout => \srl8[27]~80_combout\);

-- Location: LABCELL_X63_Y4_N30
\srl2[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[21]~21_combout\ = ( \ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[27]~80_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \srl8[23]~96_combout\ ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\ShiftCount[1]~input_o\ 
-- & ( \srl8[25]~88_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( \srl8[21]~104_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[27]~80_combout\,
	datab => \ALT_INV_srl8[25]~88_combout\,
	datac => \ALT_INV_srl8[21]~104_combout\,
	datad => \ALT_INV_srl8[23]~96_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[21]~21_combout\);

-- Location: LABCELL_X57_Y3_N6
\Output~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~93_combout\ = ( \Input[36]~input_o\ & ( \Input[24]~input_o\ & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\) # ((\Input[28]~input_o\)))) # (\sll4[2]~1_combout\ & (((\srl32[20]~5_combout\)) # (\Output~7_combout\))) ) ) ) # ( !\Input[36]~input_o\ 
-- & ( \Input[24]~input_o\ & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\) # ((\Input[28]~input_o\)))) # (\sll4[2]~1_combout\ & (!\Output~7_combout\ & (\srl32[20]~5_combout\))) ) ) ) # ( \Input[36]~input_o\ & ( !\Input[24]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (\Output~7_combout\ & ((\Input[28]~input_o\)))) # (\sll4[2]~1_combout\ & (((\srl32[20]~5_combout\)) # (\Output~7_combout\))) ) ) ) # ( !\Input[36]~input_o\ & ( !\Input[24]~input_o\ & ( (!\sll4[2]~1_combout\ & (\Output~7_combout\ & 
-- ((\Input[28]~input_o\)))) # (\sll4[2]~1_combout\ & (!\Output~7_combout\ & (\srl32[20]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_srl32[20]~5_combout\,
	datad => \ALT_INV_Input[28]~input_o\,
	datae => \ALT_INV_Input[36]~input_o\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \Output~93_combout\);

-- Location: LABCELL_X63_Y5_N39
\Output~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~94_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[22]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Input[22]~input_o\ & ( \Output~93_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\Input[22]~input_o\ & ( \Output~93_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~93_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[22]~input_o\,
	combout => \Output~94_combout\);

-- Location: LABCELL_X63_Y5_N42
\Output~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~95_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \Input[21]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \srl2[21]~21_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( 
-- \Output~94_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \srl2[20]~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[21]~input_o\,
	datab => \ALT_INV_srl2[20]~20_combout\,
	datac => \ALT_INV_srl2[21]~21_combout\,
	datad => \ALT_INV_Output~94_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~95_combout\);

-- Location: IOIBUF_X72_Y81_N35
\Arith[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(20),
	o => \Arith[20]~input_o\);

-- Location: LABCELL_X66_Y5_N39
\Output~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~97_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~95_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~95_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Output~96_combout\ 
-- ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~96_combout\,
	datac => \ALT_INV_Output~95_combout\,
	datad => \ALT_INV_Arith[20]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~97_combout\);

-- Location: MLABCELL_X59_Y4_N6
\Output~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~98_combout\ = ( \Output~7_combout\ & ( \srl32[21]~21_combout\ & ( (!\sll4[2]~1_combout\ & ((\Input[29]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[37]~input_o\)) ) ) ) # ( !\Output~7_combout\ & ( \srl32[21]~21_combout\ & ( (\Input[25]~input_o\) # 
-- (\sll4[2]~1_combout\) ) ) ) # ( \Output~7_combout\ & ( !\srl32[21]~21_combout\ & ( (!\sll4[2]~1_combout\ & ((\Input[29]~input_o\))) # (\sll4[2]~1_combout\ & (\Input[37]~input_o\)) ) ) ) # ( !\Output~7_combout\ & ( !\srl32[21]~21_combout\ & ( 
-- (!\sll4[2]~1_combout\ & \Input[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_Input[25]~input_o\,
	datac => \ALT_INV_Input[37]~input_o\,
	datad => \ALT_INV_Input[29]~input_o\,
	datae => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_srl32[21]~21_combout\,
	combout => \Output~98_combout\);

-- Location: LABCELL_X63_Y5_N21
\Output~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~99_combout\ = ( \Input[23]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~98_combout\) ) ) # ( !\Input[23]~input_o\ & ( (\Output~98_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~98_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[23]~input_o\,
	combout => \Output~99_combout\);

-- Location: LABCELL_X57_Y3_N36
\srl8[28]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[28]~76_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((((\srl32[28]~7_combout\))))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[36]~input_o\)) # (\ShiftCount[4]~input_o\ & (((\Input[52]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011001110000010000000100000000010110011100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[36]~input_o\,
	datad => \ALT_INV_srl32[28]~7_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[52]~input_o\,
	datag => \ALT_INV_Input[44]~input_o\,
	combout => \srl8[28]~76_combout\);

-- Location: MLABCELL_X59_Y3_N0
\srl2[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[22]~22_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[28]~76_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[2]~input_o\ & ( \srl8[26]~84_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ 
-- & ( \srl8[24]~92_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ & ( \srl8[22]~100_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[28]~76_combout\,
	datab => \ALT_INV_srl8[26]~84_combout\,
	datac => \ALT_INV_srl8[22]~100_combout\,
	datad => \ALT_INV_srl8[24]~92_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[22]~22_combout\);

-- Location: LABCELL_X63_Y5_N24
\Output~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~100_combout\ = ( \srl2[22]~22_combout\ & ( \Input[22]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & ((\srl2[21]~21_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~99_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\srl2[22]~22_combout\ & ( 
-- \Input[22]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[21]~21_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~99_combout\)))) # (\ShiftCount[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) ) # ( \srl2[22]~22_combout\ & ( 
-- !\Input[22]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[21]~21_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~99_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftFN[0]~input_o\)))) ) ) ) # ( !\srl2[22]~22_combout\ & ( 
-- !\Input[22]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[21]~21_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~99_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~99_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[21]~21_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_srl2[22]~22_combout\,
	dataf => \ALT_INV_Input[22]~input_o\,
	combout => \Output~100_combout\);

-- Location: IOIBUF_X68_Y81_N52
\Arith[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(21),
	o => \Arith[21]~input_o\);

-- Location: MLABCELL_X59_Y4_N15
\sll16[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[21]~21_combout\ = ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[21]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[21]~input_o\,
	datac => \ALT_INV_Input[5]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll16[21]~21_combout\);

-- Location: MLABCELL_X59_Y6_N42
\sll4[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[21]~22_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[21]~21_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[17]~17_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[9]~5_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[21]~21_combout\ & ( 
-- (!\ShiftCount[3]~input_o\) # (\sll16[13]~13_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[21]~21_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[17]~17_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[9]~5_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[21]~21_combout\ & ( (\ShiftCount[3]~input_o\ & \sll16[13]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[17]~17_combout\,
	datac => \ALT_INV_sll16[13]~13_combout\,
	datad => \ALT_INV_sll16[9]~5_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[21]~21_combout\,
	combout => \sll4[21]~22_combout\);

-- Location: LABCELL_X62_Y5_N24
\Output~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~101_combout\ = ( \sll4[21]~22_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[19]~20_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[18]~19_combout\))) ) ) ) # ( !\sll4[21]~22_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[19]~20_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[18]~19_combout\))) ) ) ) # ( \sll4[21]~22_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[20]~21_combout\) ) ) ) # ( 
-- !\sll4[21]~22_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[20]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[19]~20_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[18]~19_combout\,
	datad => \ALT_INV_sll4[20]~21_combout\,
	datae => \ALT_INV_sll4[21]~22_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~101_combout\);

-- Location: LABCELL_X63_Y5_N18
\Output~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~102_combout\ = ( \Output~101_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # (\Arith[21]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\Output~100_combout\)) ) ) # ( !\Output~101_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\Arith[21]~input_o\ & !\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (\Output~100_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100010001000111010001000100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~100_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[21]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Output~101_combout\,
	combout => \Output~102_combout\);

-- Location: LABCELL_X56_Y2_N18
\Output~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~103_combout\ = ( \Output~7_combout\ & ( \sll4[2]~1_combout\ & ( \Input[38]~input_o\ ) ) ) # ( !\Output~7_combout\ & ( \sll4[2]~1_combout\ & ( \srl32[22]~13_combout\ ) ) ) # ( \Output~7_combout\ & ( !\sll4[2]~1_combout\ & ( \Input[30]~input_o\ ) ) 
-- ) # ( !\Output~7_combout\ & ( !\sll4[2]~1_combout\ & ( \Input[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[30]~input_o\,
	datab => \ALT_INV_srl32[22]~13_combout\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_Input[26]~input_o\,
	datae => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~103_combout\);

-- Location: LABCELL_X63_Y4_N12
\Output~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~104_combout\ = ( \Input[24]~input_o\ & ( (\Output~103_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[24]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~103_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~103_combout\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \Output~104_combout\);

-- Location: MLABCELL_X59_Y4_N0
\srl8[29]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[29]~72_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((((\srl32[29]~23_combout\))))) # (\ShiftCount[4]~input_o\ & (((\Input[45]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (((\Input[37]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[53]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000000000110110000000010101111101010100001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Input[37]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_srl32[29]~23_combout\,
	datag => \ALT_INV_Input[45]~input_o\,
	combout => \srl8[29]~72_combout\);

-- Location: LABCELL_X63_Y4_N6
\srl2[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[23]~23_combout\ = ( \ShiftCount[2]~input_o\ & ( \srl8[23]~96_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[29]~72_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \srl8[23]~96_combout\ & ( 
-- (!\ShiftCount[1]~input_o\) # (\srl8[25]~88_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\srl8[23]~96_combout\ & ( (!\ShiftCount[1]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[29]~72_combout\)) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\srl8[23]~96_combout\ & ( (\ShiftCount[1]~input_o\ & \srl8[25]~88_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_srl8[29]~72_combout\,
	datac => \ALT_INV_srl8[27]~80_combout\,
	datad => \ALT_INV_srl8[25]~88_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_srl8[23]~96_combout\,
	combout => \srl2[23]~23_combout\);

-- Location: LABCELL_X63_Y4_N48
\Output~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~105_combout\ = ( \srl2[22]~22_combout\ & ( \srl2[23]~23_combout\ & ( (!\ShiftFN[0]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\Output~104_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[23]~input_o\))) ) ) ) # ( !\srl2[22]~22_combout\ & ( 
-- \srl2[23]~23_combout\ & ( (!\ShiftFN[0]~input_o\ & (\ShiftCount[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\Output~104_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[23]~input_o\)))) ) ) ) # ( \srl2[22]~22_combout\ & ( 
-- !\srl2[23]~23_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\ShiftCount[0]~input_o\)) # (\ShiftFN[0]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\Output~104_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[23]~input_o\)))) ) ) ) # ( !\srl2[22]~22_combout\ & ( 
-- !\srl2[23]~23_combout\ & ( (\ShiftFN[0]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\Output~104_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[23]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_Input[23]~input_o\,
	datad => \ALT_INV_Output~104_combout\,
	datae => \ALT_INV_srl2[22]~22_combout\,
	dataf => \ALT_INV_srl2[23]~23_combout\,
	combout => \Output~105_combout\);

-- Location: IOIBUF_X72_Y81_N52
\Arith[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(22),
	o => \Arith[22]~input_o\);

-- Location: LABCELL_X61_Y5_N45
\sll16[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[22]~22_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[22]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[6]~input_o\,
	datad => \ALT_INV_Input[22]~input_o\,
	combout => \sll16[22]~22_combout\);

-- Location: LABCELL_X60_Y6_N18
\sll4[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[22]~23_combout\ = ( \sll16[14]~14_combout\ & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sll16[18]~18_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[10]~8_combout\))) ) ) ) # ( !\sll16[14]~14_combout\ 
-- & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[18]~18_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[10]~8_combout\ & ((\ShiftCount[2]~input_o\)))) ) ) ) # ( \sll16[14]~14_combout\ & ( 
-- !\sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sll16[18]~18_combout\ & \ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sll16[10]~8_combout\))) ) ) ) # ( !\sll16[14]~14_combout\ & ( 
-- !\sll16[22]~22_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[18]~18_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[10]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[10]~8_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_sll16[18]~18_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sll16[14]~14_combout\,
	dataf => \ALT_INV_sll16[22]~22_combout\,
	combout => \sll4[22]~23_combout\);

-- Location: LABCELL_X62_Y5_N30
\Output~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~106_combout\ = ( \sll4[21]~22_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[20]~21_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[19]~20_combout\)) ) ) ) # ( !\sll4[21]~22_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[20]~21_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[19]~20_combout\)) ) ) ) # ( \sll4[21]~22_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[22]~23_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( 
-- !\sll4[21]~22_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \sll4[22]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[19]~20_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[22]~23_combout\,
	datad => \ALT_INV_sll4[20]~21_combout\,
	datae => \ALT_INV_sll4[21]~22_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~106_combout\);

-- Location: LABCELL_X66_Y5_N45
\Output~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~107_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~105_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~105_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Output~106_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~105_combout\,
	datab => \ALT_INV_Arith[22]~input_o\,
	datac => \ALT_INV_Output~106_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~107_combout\);

-- Location: LABCELL_X60_Y5_N57
\sll16[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[23]~23_combout\ = ( \Input[23]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\Input[7]~input_o\))) ) ) # ( !\Input[23]~input_o\ & ( (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[7]~input_o\,
	dataf => \ALT_INV_Input[23]~input_o\,
	combout => \sll16[23]~23_combout\);

-- Location: LABCELL_X61_Y5_N24
\sll4[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[23]~24_combout\ = ( \sll16[15]~15_combout\ & ( \sll16[19]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sll16[23]~23_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[11]~11_combout\))) ) 
-- ) ) # ( !\sll16[15]~15_combout\ & ( \sll16[19]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[23]~23_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[11]~11_combout\))) ) ) ) # ( 
-- \sll16[15]~15_combout\ & ( !\sll16[19]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\) # (\sll16[23]~23_combout\)))) # (\ShiftCount[2]~input_o\ & (\sll16[11]~11_combout\ & ((\ShiftCount[3]~input_o\)))) ) ) ) # ( 
-- !\sll16[15]~15_combout\ & ( !\sll16[19]~19_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[23]~23_combout\ & !\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (\sll16[11]~11_combout\ & ((\ShiftCount[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[11]~11_combout\,
	datab => \ALT_INV_sll16[23]~23_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sll16[15]~15_combout\,
	dataf => \ALT_INV_sll16[19]~19_combout\,
	combout => \sll4[23]~24_combout\);

-- Location: LABCELL_X62_Y5_N6
\Output~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~111_combout\ = ( \sll4[21]~22_combout\ & ( \sll4[20]~21_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # ( !\sll4[21]~22_combout\ & ( 
-- \sll4[20]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)))) # (\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\)) ) ) ) # ( \sll4[21]~22_combout\ & 
-- ( !\sll4[20]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\)) ) ) ) # ( 
-- !\sll4[21]~22_combout\ & ( !\sll4[20]~21_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[22]~23_combout\,
	datad => \ALT_INV_sll4[23]~24_combout\,
	datae => \ALT_INV_sll4[21]~22_combout\,
	dataf => \ALT_INV_sll4[20]~21_combout\,
	combout => \Output~111_combout\);

-- Location: LABCELL_X56_Y2_N30
\srl8[30]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[30]~68_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\srl32[30]~15_combout\)) # (\ShiftCount[4]~input_o\ & (((\Input[46]~input_o\ & (!\ShiftCount[5]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[38]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[54]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101000100000011000000000001000111010001000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[30]~15_combout\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[54]~input_o\,
	datag => \ALT_INV_Input[46]~input_o\,
	combout => \srl8[30]~68_combout\);

-- Location: MLABCELL_X59_Y3_N36
\srl2[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[24]~24_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (\ShiftCount[2]~input_o\) # (\srl8[26]~84_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[24]~92_combout\))) # 
-- (\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (\srl8[26]~84_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[24]~92_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[28]~76_combout\,
	datab => \ALT_INV_srl8[26]~84_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[24]~92_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[30]~68_combout\,
	combout => \srl2[24]~24_combout\);

-- Location: LABCELL_X62_Y4_N18
\Output~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~108_combout\ = ( \Input[27]~input_o\ & ( \Input[39]~input_o\ & ( (!\Output~7_combout\ & (((!\sll4[2]~1_combout\)) # (\srl32[23]~29_combout\))) # (\Output~7_combout\ & (((\Input[31]~input_o\) # (\sll4[2]~1_combout\)))) ) ) ) # ( 
-- !\Input[27]~input_o\ & ( \Input[39]~input_o\ & ( (!\Output~7_combout\ & (\srl32[23]~29_combout\ & (\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((\Input[31]~input_o\) # (\sll4[2]~1_combout\)))) ) ) ) # ( \Input[27]~input_o\ & ( !\Input[39]~input_o\ & ( 
-- (!\Output~7_combout\ & (((!\sll4[2]~1_combout\)) # (\srl32[23]~29_combout\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\ & \Input[31]~input_o\)))) ) ) ) # ( !\Input[27]~input_o\ & ( !\Input[39]~input_o\ & ( (!\Output~7_combout\ & 
-- (\srl32[23]~29_combout\ & (\sll4[2]~1_combout\))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\ & \Input[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[23]~29_combout\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Input[31]~input_o\,
	datae => \ALT_INV_Input[27]~input_o\,
	dataf => \ALT_INV_Input[39]~input_o\,
	combout => \Output~108_combout\);

-- Location: LABCELL_X63_Y4_N15
\Output~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~109_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~108_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~108_combout\,
	datad => \ALT_INV_Input[25]~input_o\,
	combout => \Output~109_combout\);

-- Location: LABCELL_X63_Y4_N24
\Output~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~110_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[24]~input_o\ & ( (\srl2[24]~24_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \Input[24]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[23]~23_combout\)) # 
-- (\ShiftFN[0]~input_o\ & ((\Output~109_combout\))) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\Input[24]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \srl2[24]~24_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\Input[24]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\srl2[23]~23_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~109_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_srl2[23]~23_combout\,
	datac => \ALT_INV_srl2[24]~24_combout\,
	datad => \ALT_INV_Output~109_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \Output~110_combout\);

-- Location: IOIBUF_X36_Y0_N18
\Arith[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(23),
	o => \Arith[23]~input_o\);

-- Location: MLABCELL_X47_Y5_N0
\Output~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~112_combout\ = ( \ShiftFN[1]~input_o\ & ( \Arith[23]~input_o\ & ( \Output~110_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Arith[23]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~111_combout\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( 
-- !\Arith[23]~input_o\ & ( \Output~110_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Arith[23]~input_o\ & ( (\Output~111_combout\ & \ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110000111111111111001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~111_combout\,
	datac => \ALT_INV_Output~110_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Arith[23]~input_o\,
	combout => \Output~112_combout\);

-- Location: IOIBUF_X36_Y81_N52
\Arith[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(24),
	o => \Arith[24]~input_o\);

-- Location: LABCELL_X56_Y5_N30
\Output~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~113_combout\ = ( \Input[32]~input_o\ & ( \Input[28]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & (\srl32[24]~3_combout\)) # (\Output~7_combout\ & ((\Input[40]~input_o\)))) ) ) ) # ( !\Input[32]~input_o\ & ( \Input[28]~input_o\ & ( 
-- (!\Output~7_combout\ & (((!\sll4[2]~1_combout\)) # (\srl32[24]~3_combout\))) # (\Output~7_combout\ & (((\Input[40]~input_o\ & \sll4[2]~1_combout\)))) ) ) ) # ( \Input[32]~input_o\ & ( !\Input[28]~input_o\ & ( (!\Output~7_combout\ & (\srl32[24]~3_combout\ 
-- & ((\sll4[2]~1_combout\)))) # (\Output~7_combout\ & (((!\sll4[2]~1_combout\) # (\Input[40]~input_o\)))) ) ) ) # ( !\Input[32]~input_o\ & ( !\Input[28]~input_o\ & ( (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\srl32[24]~3_combout\)) # 
-- (\Output~7_combout\ & ((\Input[40]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[24]~3_combout\,
	datab => \ALT_INV_Input[40]~input_o\,
	datac => \ALT_INV_Output~7_combout\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Input[32]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \Output~113_combout\);

-- Location: LABCELL_X56_Y3_N36
\Output~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~114_combout\ = ( \Input[26]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~113_combout\) ) ) # ( !\Input[26]~input_o\ & ( (\Output~113_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Output~113_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[26]~input_o\,
	combout => \Output~114_combout\);

-- Location: MLABCELL_X52_Y4_N42
\srl8[31]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[31]~64_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (((\srl32[31]~31_combout\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[47]~input_o\)))) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & ((\Input[39]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[55]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000010100000101000001010000010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[55]~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	datad => \ALT_INV_srl32[31]~31_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[47]~input_o\,
	combout => \srl8[31]~64_combout\);

-- Location: LABCELL_X55_Y4_N30
\srl2[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[25]~25_combout\ = ( \srl8[25]~88_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) ) ) ) # ( !\srl8[25]~88_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) ) ) ) # ( \srl8[25]~88_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[29]~72_combout\) ) ) ) # ( 
-- !\srl8[25]~88_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[29]~72_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[31]~64_combout\,
	datab => \ALT_INV_srl8[29]~72_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[27]~80_combout\,
	datae => \ALT_INV_srl8[25]~88_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[25]~25_combout\);

-- Location: MLABCELL_X59_Y5_N42
\Output~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~115_combout\ = ( \Input[25]~input_o\ & ( \srl2[25]~25_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\srl2[24]~24_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~114_combout\))) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\Input[25]~input_o\ & ( 
-- \srl2[25]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[24]~24_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~114_combout\)))) # (\ShiftCount[0]~input_o\ & (!\ShiftFN[0]~input_o\)) ) ) ) # ( \Input[25]~input_o\ & ( 
-- !\srl2[25]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[24]~24_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~114_combout\)))) # (\ShiftCount[0]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) ) # ( !\Input[25]~input_o\ & ( 
-- !\srl2[25]~25_combout\ & ( (!\ShiftCount[0]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\srl2[24]~24_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~114_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~114_combout\,
	datad => \ALT_INV_srl2[24]~24_combout\,
	datae => \ALT_INV_Input[25]~input_o\,
	dataf => \ALT_INV_srl2[25]~25_combout\,
	combout => \Output~115_combout\);

-- Location: LABCELL_X56_Y5_N24
\sll16[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[24]~24_combout\ = ( \Input[24]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\Input[8]~input_o\))) ) ) # ( !\Input[24]~input_o\ & ( (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[8]~input_o\,
	dataf => \ALT_INV_Input[24]~input_o\,
	combout => \sll16[24]~24_combout\);

-- Location: LABCELL_X55_Y5_N0
\sll4[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[24]~25_combout\ = ( \sll16[20]~20_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[16]~16_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[12]~12_combout\)) ) ) ) # ( !\sll16[20]~20_combout\ & ( \ShiftCount[3]~input_o\ & 
-- ( (!\ShiftCount[2]~input_o\ & ((\sll16[16]~16_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[12]~12_combout\)) ) ) ) # ( \sll16[20]~20_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sll16[24]~24_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\sll16[20]~20_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[24]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[12]~12_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[16]~16_combout\,
	datad => \ALT_INV_sll16[24]~24_combout\,
	datae => \ALT_INV_sll16[20]~20_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[24]~25_combout\);

-- Location: LABCELL_X62_Y5_N12
\Output~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~116_combout\ = ( \sll4[24]~25_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[21]~22_combout\))) ) ) ) # ( !\sll4[24]~25_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[21]~22_combout\))) ) ) ) # ( \sll4[24]~25_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[23]~24_combout\) ) ) ) # ( 
-- !\sll4[24]~25_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[23]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[22]~23_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[21]~22_combout\,
	datad => \ALT_INV_sll4[23]~24_combout\,
	datae => \ALT_INV_sll4[24]~25_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~116_combout\);

-- Location: LABCELL_X53_Y5_N30
\Output~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~117_combout\ = ( \Output~116_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Arith[24]~input_o\)) # (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~115_combout\)))) ) ) # ( !\Output~116_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (!\ShiftFN[0]~input_o\ & (\Arith[24]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~115_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[24]~input_o\,
	datad => \ALT_INV_Output~115_combout\,
	dataf => \ALT_INV_Output~116_combout\,
	combout => \Output~117_combout\);

-- Location: LABCELL_X57_Y5_N0
\srl8[32]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[32]~60_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[32]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[48]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & ((!\ShiftCount[4]~input_o\ & (((\Input[40]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[56]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000011000100010000001100110011000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[56]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[40]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[48]~input_o\,
	datag => \ALT_INV_Input[32]~input_o\,
	combout => \srl8[32]~60_combout\);

-- Location: MLABCELL_X59_Y3_N12
\srl2[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[26]~26_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( 
-- (\ShiftCount[2]~input_o\) # (\srl8[26]~84_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (\srl8[26]~84_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[28]~76_combout\,
	datab => \ALT_INV_srl8[26]~84_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[32]~60_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[30]~68_combout\,
	combout => \srl2[26]~26_combout\);

-- Location: LABCELL_X60_Y3_N48
\Output~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~118_combout\ = ( \sll4[2]~1_combout\ & ( \Input[33]~input_o\ & ( (!\Output~7_combout\ & (\srl32[25]~19_combout\)) # (\Output~7_combout\ & ((\Input[41]~input_o\))) ) ) ) # ( !\sll4[2]~1_combout\ & ( \Input[33]~input_o\ & ( (\Input[29]~input_o\) # 
-- (\Output~7_combout\) ) ) ) # ( \sll4[2]~1_combout\ & ( !\Input[33]~input_o\ & ( (!\Output~7_combout\ & (\srl32[25]~19_combout\)) # (\Output~7_combout\ & ((\Input[41]~input_o\))) ) ) ) # ( !\sll4[2]~1_combout\ & ( !\Input[33]~input_o\ & ( 
-- (!\Output~7_combout\ & \Input[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~7_combout\,
	datab => \ALT_INV_srl32[25]~19_combout\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[29]~input_o\,
	datae => \ALT_INV_sll4[2]~1_combout\,
	dataf => \ALT_INV_Input[33]~input_o\,
	combout => \Output~118_combout\);

-- Location: LABCELL_X60_Y5_N45
\Output~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~119_combout\ = (!\ShiftCount[1]~input_o\ & ((\Output~118_combout\))) # (\ShiftCount[1]~input_o\ & (\Input[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[27]~input_o\,
	datac => \ALT_INV_Output~118_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~119_combout\);

-- Location: MLABCELL_X59_Y5_N18
\Output~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~120_combout\ = ( \ShiftCount[0]~input_o\ & ( \srl2[25]~25_combout\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[26]~26_combout\)) # (\ShiftFN[0]~input_o\ & ((\Input[26]~input_o\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \srl2[25]~25_combout\ & ( 
-- (!\ShiftFN[0]~input_o\) # (\Output~119_combout\) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\srl2[25]~25_combout\ & ( (!\ShiftFN[0]~input_o\ & (\srl2[26]~26_combout\)) # (\ShiftFN[0]~input_o\ & ((\Input[26]~input_o\))) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( 
-- !\srl2[25]~25_combout\ & ( (\ShiftFN[0]~input_o\ & \Output~119_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[26]~26_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~119_combout\,
	datad => \ALT_INV_Input[26]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_srl2[25]~25_combout\,
	combout => \Output~120_combout\);

-- Location: MLABCELL_X59_Y6_N33
\sll16[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[25]~25_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[25]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[25]~input_o\,
	datad => \ALT_INV_Input[9]~input_o\,
	combout => \sll16[25]~25_combout\);

-- Location: MLABCELL_X59_Y6_N48
\sll4[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[25]~26_combout\ = ( \ShiftCount[2]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \sll16[13]~13_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[3]~input_o\ & ( \sll16[17]~17_combout\ ) ) ) # ( \ShiftCount[2]~input_o\ & ( 
-- !\ShiftCount[3]~input_o\ & ( \sll16[21]~21_combout\ ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[3]~input_o\ & ( \sll16[25]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[25]~25_combout\,
	datab => \ALT_INV_sll16[21]~21_combout\,
	datac => \ALT_INV_sll16[13]~13_combout\,
	datad => \ALT_INV_sll16[17]~17_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[25]~26_combout\);

-- Location: LABCELL_X62_Y5_N48
\Output~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~121_combout\ = ( \sll4[24]~25_combout\ & ( \sll4[25]~26_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\))) ) ) ) # ( !\sll4[24]~25_combout\ & ( 
-- \sll4[25]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sll4[23]~24_combout\)))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\ & (\ShiftCount[1]~input_o\))) ) ) ) # ( \sll4[24]~25_combout\ & ( !\sll4[25]~26_combout\ & 
-- ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\ & \sll4[23]~24_combout\)))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\sll4[22]~23_combout\))) ) ) ) # ( !\sll4[24]~25_combout\ & ( !\sll4[25]~26_combout\ & ( 
-- (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[23]~24_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[22]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[22]~23_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sll4[23]~24_combout\,
	datae => \ALT_INV_sll4[24]~25_combout\,
	dataf => \ALT_INV_sll4[25]~26_combout\,
	combout => \Output~121_combout\);

-- Location: IOIBUF_X89_Y35_N61
\Arith[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(25),
	o => \Arith[25]~input_o\);

-- Location: MLABCELL_X59_Y5_N57
\Output~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~122_combout\ = ( \Arith[25]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Output~121_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~120_combout\)) ) ) # ( !\Arith[25]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\ShiftFN[0]~input_o\ & \Output~121_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~120_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101110011110101010100000011010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~120_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~121_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Arith[25]~input_o\,
	combout => \Output~122_combout\);

-- Location: LABCELL_X57_Y2_N30
\Output~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~123_combout\ = ( \srl32[26]~11_combout\ & ( \Input[42]~input_o\ & ( ((!\Output~7_combout\ & (\Input[30]~input_o\)) # (\Output~7_combout\ & ((\Input[34]~input_o\)))) # (\sll4[2]~1_combout\) ) ) ) # ( !\srl32[26]~11_combout\ & ( \Input[42]~input_o\ 
-- & ( (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\Input[30]~input_o\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) # (\sll4[2]~1_combout\ & (((\Output~7_combout\)))) ) ) ) # ( \srl32[26]~11_combout\ & ( !\Input[42]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\Input[30]~input_o\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) # (\sll4[2]~1_combout\ & (((!\Output~7_combout\)))) ) ) ) # ( !\srl32[26]~11_combout\ & ( !\Input[42]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & ((!\Output~7_combout\ & (\Input[30]~input_o\)) # (\Output~7_combout\ & ((\Input[34]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[30]~input_o\,
	datab => \ALT_INV_sll4[2]~1_combout\,
	datac => \ALT_INV_Input[34]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_srl32[26]~11_combout\,
	dataf => \ALT_INV_Input[42]~input_o\,
	combout => \Output~123_combout\);

-- Location: LABCELL_X57_Y2_N36
\Output~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~124_combout\ = ( \Input[28]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~123_combout\) ) ) # ( !\Input[28]~input_o\ & ( (\Output~123_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~123_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \Output~124_combout\);

-- Location: LABCELL_X60_Y3_N0
\srl8[33]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[33]~56_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Input[33]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[49]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & (((!\ShiftCount[4]~input_o\ & ((\Input[41]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[57]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101000000000101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[57]~input_o\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[49]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[33]~input_o\,
	combout => \srl8[33]~56_combout\);

-- Location: LABCELL_X55_Y4_N6
\srl2[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[27]~27_combout\ = ( \srl8[33]~56_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\) # (\srl8[29]~72_combout\) ) ) ) # ( !\srl8[33]~56_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[29]~72_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # 
-- ( \srl8[33]~56_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) ) ) ) # ( !\srl8[33]~56_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[27]~80_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[31]~64_combout\,
	datab => \ALT_INV_srl8[29]~72_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[27]~80_combout\,
	datae => \ALT_INV_srl8[33]~56_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[27]~27_combout\);

-- Location: MLABCELL_X59_Y5_N0
\Output~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~125_combout\ = ( \ShiftFN[0]~input_o\ & ( \Input[27]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~124_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Input[27]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[26]~26_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\srl2[27]~27_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Input[27]~input_o\ & ( (\Output~124_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Input[27]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[26]~26_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[27]~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~124_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[27]~27_combout\,
	datad => \ALT_INV_srl2[26]~26_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Input[27]~input_o\,
	combout => \Output~125_combout\);

-- Location: IOIBUF_X89_Y4_N61
\Arith[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(26),
	o => \Arith[26]~input_o\);

-- Location: LABCELL_X55_Y6_N39
\sll16[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[26]~26_combout\ = ( \Input[10]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[26]~input_o\) # (\ShiftCount[4]~input_o\))) ) ) # ( !\Input[10]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \Input[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[26]~input_o\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \sll16[26]~26_combout\);

-- Location: LABCELL_X60_Y6_N54
\sll4[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[26]~27_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sll16[14]~14_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[26]~26_combout\)) 
-- # (\ShiftCount[3]~input_o\ & ((\sll16[18]~18_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( (\sll16[14]~14_combout\ & \ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sll16[26]~26_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[18]~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[14]~14_combout\,
	datab => \ALT_INV_sll16[26]~26_combout\,
	datac => \ALT_INV_sll16[18]~18_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[22]~22_combout\,
	combout => \sll4[26]~27_combout\);

-- Location: LABCELL_X62_Y5_N54
\Output~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~126_combout\ = ( \sll4[24]~25_combout\ & ( \sll4[25]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sll4[26]~27_combout\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sll4[23]~24_combout\)))) ) ) ) 
-- # ( !\sll4[24]~25_combout\ & ( \sll4[25]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[26]~27_combout\ & (!\ShiftCount[1]~input_o\))) # (\ShiftCount[0]~input_o\ & (((!\ShiftCount[1]~input_o\) # (\sll4[23]~24_combout\)))) ) ) ) # ( 
-- \sll4[24]~25_combout\ & ( !\sll4[25]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\sll4[26]~27_combout\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\ & \sll4[23]~24_combout\)))) ) ) ) # ( !\sll4[24]~25_combout\ 
-- & ( !\sll4[25]~26_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[26]~27_combout\ & (!\ShiftCount[1]~input_o\))) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\ & \sll4[23]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[26]~27_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_sll4[23]~24_combout\,
	datae => \ALT_INV_sll4[24]~25_combout\,
	dataf => \ALT_INV_sll4[25]~26_combout\,
	combout => \Output~126_combout\);

-- Location: MLABCELL_X59_Y5_N6
\Output~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~127_combout\ = ( \Output~126_combout\ & ( \ShiftFN[1]~input_o\ & ( \Output~125_combout\ ) ) ) # ( !\Output~126_combout\ & ( \ShiftFN[1]~input_o\ & ( \Output~125_combout\ ) ) ) # ( \Output~126_combout\ & ( !\ShiftFN[1]~input_o\ & ( 
-- (\ShiftFN[0]~input_o\) # (\Arith[26]~input_o\) ) ) ) # ( !\Output~126_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\Arith[26]~input_o\ & !\ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~125_combout\,
	datac => \ALT_INV_Arith[26]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Output~126_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~127_combout\);

-- Location: IOIBUF_X54_Y81_N1
\Arith[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(27),
	o => \Arith[27]~input_o\);

-- Location: LABCELL_X60_Y5_N6
\sll16[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[27]~27_combout\ = ( \Input[11]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\) # (\Input[27]~input_o\))) ) ) # ( !\Input[11]~input_o\ & ( (\Input[27]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[27]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \sll16[27]~27_combout\);

-- Location: LABCELL_X60_Y7_N30
\sll4[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[27]~28_combout\ = ( \sll16[19]~19_combout\ & ( \sll16[15]~15_combout\ & ( ((!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\))) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\sll16[19]~19_combout\ 
-- & ( \sll16[15]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)))) ) ) ) # ( 
-- \sll16[19]~19_combout\ & ( !\sll16[15]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\)))) # (\ShiftCount[3]~input_o\ & 
-- (((!\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sll16[19]~19_combout\ & ( !\sll16[15]~15_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[23]~23_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[27]~27_combout\,
	datae => \ALT_INV_sll16[19]~19_combout\,
	dataf => \ALT_INV_sll16[15]~15_combout\,
	combout => \sll4[27]~28_combout\);

-- Location: LABCELL_X53_Y5_N36
\Output~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~131_combout\ = ( \sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[25]~26_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[24]~25_combout\)) ) ) ) # ( !\sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[25]~26_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[24]~25_combout\)) ) ) ) # ( \sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[27]~28_combout\) ) ) ) # ( 
-- !\sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[27]~28_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[27]~28_combout\,
	datab => \ALT_INV_sll4[24]~25_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[25]~26_combout\,
	datae => \ALT_INV_sll4[26]~27_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~131_combout\);

-- Location: LABCELL_X55_Y3_N0
\srl8[34]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[34]~52_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (((\Input[34]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[50]~input_o\)))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[5]~input_o\ 
-- & ((!\ShiftCount[4]~input_o\ & (\Input[42]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[58]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100000000000011000000000000011101000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[50]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[42]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[58]~input_o\,
	datag => \ALT_INV_Input[34]~input_o\,
	combout => \srl8[34]~52_combout\);

-- Location: MLABCELL_X59_Y3_N48
\srl2[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[28]~28_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[34]~52_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) # 
-- (\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[34]~52_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[28]~76_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[28]~76_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[34]~52_combout\,
	datad => \ALT_INV_srl8[32]~60_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[30]~68_combout\,
	combout => \srl2[28]~28_combout\);

-- Location: LABCELL_X61_Y4_N48
\Output~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~128_combout\ = ( \Input[35]~input_o\ & ( \srl32[27]~27_combout\ & ( (!\sll4[2]~1_combout\ & (((\Input[31]~input_o\)) # (\Output~7_combout\))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\) # ((\Input[43]~input_o\)))) ) ) ) # ( 
-- !\Input[35]~input_o\ & ( \srl32[27]~27_combout\ & ( (!\sll4[2]~1_combout\ & (!\Output~7_combout\ & ((\Input[31]~input_o\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\) # ((\Input[43]~input_o\)))) ) ) ) # ( \Input[35]~input_o\ & ( 
-- !\srl32[27]~27_combout\ & ( (!\sll4[2]~1_combout\ & (((\Input[31]~input_o\)) # (\Output~7_combout\))) # (\sll4[2]~1_combout\ & (\Output~7_combout\ & (\Input[43]~input_o\))) ) ) ) # ( !\Input[35]~input_o\ & ( !\srl32[27]~27_combout\ & ( 
-- (!\sll4[2]~1_combout\ & (!\Output~7_combout\ & ((\Input[31]~input_o\)))) # (\sll4[2]~1_combout\ & (\Output~7_combout\ & (\Input[43]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[2]~1_combout\,
	datab => \ALT_INV_Output~7_combout\,
	datac => \ALT_INV_Input[43]~input_o\,
	datad => \ALT_INV_Input[31]~input_o\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_srl32[27]~27_combout\,
	combout => \Output~128_combout\);

-- Location: LABCELL_X63_Y6_N48
\Output~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~129_combout\ = ( \Output~128_combout\ & ( (!\ShiftCount[1]~input_o\) # (\Input[29]~input_o\) ) ) # ( !\Output~128_combout\ & ( (\ShiftCount[1]~input_o\ & \Input[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Input[29]~input_o\,
	datae => \ALT_INV_Output~128_combout\,
	combout => \Output~129_combout\);

-- Location: LABCELL_X63_Y6_N24
\Output~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~130_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[28]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\srl2[28]~28_combout\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \Input[28]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\srl2[27]~27_combout\))) # 
-- (\ShiftFN[0]~input_o\ & (\Output~129_combout\)) ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\Input[28]~input_o\ & ( (\srl2[28]~28_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\Input[28]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((\srl2[27]~27_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~129_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[28]~28_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~129_combout\,
	datad => \ALT_INV_srl2[27]~27_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \Output~130_combout\);

-- Location: LABCELL_X53_Y5_N33
\Output~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~132_combout\ = ( \Output~130_combout\ & ( ((!\ShiftFN[0]~input_o\ & (\Arith[27]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~131_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~130_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Arith[27]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~131_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Arith[27]~input_o\,
	datad => \ALT_INV_Output~131_combout\,
	dataf => \ALT_INV_Output~130_combout\,
	combout => \Output~132_combout\);

-- Location: LABCELL_X56_Y5_N6
\sll16[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[28]~28_combout\ = ( \Input[28]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\Input[12]~input_o\))) ) ) # ( !\Input[28]~input_o\ & ( (\Input[12]~input_o\ & (!\ShiftCount[5]~input_o\ & \ShiftCount[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[12]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \sll16[28]~28_combout\);

-- Location: LABCELL_X55_Y5_N6
\sll4[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[28]~29_combout\ = ( \sll16[28]~28_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[20]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[16]~16_combout\)) ) ) ) # ( !\sll16[28]~28_combout\ & ( \ShiftCount[3]~input_o\ & 
-- ( (!\ShiftCount[2]~input_o\ & ((\sll16[20]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[16]~16_combout\)) ) ) ) # ( \sll16[28]~28_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[24]~24_combout\) ) ) ) # ( 
-- !\sll16[28]~28_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\ShiftCount[2]~input_o\ & \sll16[24]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[16]~16_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[20]~20_combout\,
	datad => \ALT_INV_sll16[24]~24_combout\,
	datae => \ALT_INV_sll16[28]~28_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[28]~29_combout\);

-- Location: LABCELL_X53_Y5_N18
\Output~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~136_combout\ = ( \sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[25]~26_combout\) ) ) ) # ( !\sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[25]~26_combout\) ) ) ) # 
-- ( \sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[28]~29_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[27]~28_combout\)) ) ) ) # ( !\sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[28]~29_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[27]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[27]~28_combout\,
	datab => \ALT_INV_sll4[28]~29_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[25]~26_combout\,
	datae => \ALT_INV_sll4[26]~27_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~136_combout\);

-- Location: IOIBUF_X50_Y81_N41
\Arith[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(28),
	o => \Arith[28]~input_o\);

-- Location: LABCELL_X57_Y3_N12
\Output~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~133_combout\ = ( \sll4[2]~1_combout\ & ( \Input[36]~input_o\ & ( (!\Output~7_combout\ & (\srl32[28]~7_combout\)) # (\Output~7_combout\ & ((\Input[44]~input_o\))) ) ) ) # ( !\sll4[2]~1_combout\ & ( \Input[36]~input_o\ & ( (\Output~7_combout\) # 
-- (\Input[32]~input_o\) ) ) ) # ( \sll4[2]~1_combout\ & ( !\Input[36]~input_o\ & ( (!\Output~7_combout\ & (\srl32[28]~7_combout\)) # (\Output~7_combout\ & ((\Input[44]~input_o\))) ) ) ) # ( !\sll4[2]~1_combout\ & ( !\Input[36]~input_o\ & ( 
-- (\Input[32]~input_o\ & !\Output~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[28]~7_combout\,
	datab => \ALT_INV_Input[32]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_sll4[2]~1_combout\,
	dataf => \ALT_INV_Input[36]~input_o\,
	combout => \Output~133_combout\);

-- Location: LABCELL_X56_Y2_N57
\Output~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~134_combout\ = (!\ShiftCount[1]~input_o\ & ((\Output~133_combout\))) # (\ShiftCount[1]~input_o\ & (\Input[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[30]~input_o\,
	datac => \ALT_INV_Output~133_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~134_combout\);

-- Location: MLABCELL_X52_Y4_N36
\srl8[35]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[35]~48_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Input[35]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[51]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & (((!\ShiftCount[4]~input_o\ & ((\Input[43]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[59]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101000000000101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[59]~input_o\,
	datac => \ALT_INV_Input[43]~input_o\,
	datad => \ALT_INV_Input[51]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[35]~input_o\,
	combout => \srl8[35]~48_combout\);

-- Location: LABCELL_X55_Y4_N42
\srl2[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[29]~29_combout\ = ( \srl8[35]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\) # (\srl8[31]~64_combout\) ) ) ) # ( !\srl8[35]~48_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[31]~64_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # 
-- ( \srl8[35]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[29]~72_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[33]~56_combout\))) ) ) ) # ( !\srl8[35]~48_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[29]~72_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[33]~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[31]~64_combout\,
	datab => \ALT_INV_srl8[29]~72_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[33]~56_combout\,
	datae => \ALT_INV_srl8[35]~48_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[29]~29_combout\);

-- Location: LABCELL_X53_Y5_N42
\Output~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~135_combout\ = ( \ShiftFN[0]~input_o\ & ( \Input[29]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~134_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Input[29]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[28]~28_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\srl2[29]~29_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Input[29]~input_o\ & ( (\Output~134_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Input[29]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[28]~28_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[29]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~134_combout\,
	datab => \ALT_INV_srl2[29]~29_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_srl2[28]~28_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Input[29]~input_o\,
	combout => \Output~135_combout\);

-- Location: LABCELL_X53_Y5_N54
\Output~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~137_combout\ = ( \Output~135_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Arith[28]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~136_combout\))) # (\ShiftFN[1]~input_o\) ) ) # ( !\Output~135_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Arith[28]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~136_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~136_combout\,
	datad => \ALT_INV_Arith[28]~input_o\,
	dataf => \ALT_INV_Output~135_combout\,
	combout => \Output~137_combout\);

-- Location: LABCELL_X57_Y3_N30
\srl8[36]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[36]~44_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Input[36]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[52]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & ((!\ShiftCount[4]~input_o\ & (((\Input[44]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[60]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000000000000010100010001000001010101010100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[60]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[52]~input_o\,
	datag => \ALT_INV_Input[36]~input_o\,
	combout => \srl8[36]~44_combout\);

-- Location: MLABCELL_X59_Y3_N24
\srl2[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[30]~30_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[36]~44_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[30]~68_combout\ & ( 
-- (!\ShiftCount[2]~input_o\) # (\srl8[34]~52_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[32]~60_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[36]~44_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[30]~68_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[34]~52_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[36]~44_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_srl8[34]~52_combout\,
	datad => \ALT_INV_srl8[32]~60_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[30]~68_combout\,
	combout => \srl2[30]~30_combout\);

-- Location: MLABCELL_X59_Y4_N48
\Output~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~138_combout\ = ( \Output~7_combout\ & ( \sll4[2]~1_combout\ & ( \Input[45]~input_o\ ) ) ) # ( !\Output~7_combout\ & ( \sll4[2]~1_combout\ & ( \srl32[29]~23_combout\ ) ) ) # ( \Output~7_combout\ & ( !\sll4[2]~1_combout\ & ( \Input[37]~input_o\ ) ) 
-- ) # ( !\Output~7_combout\ & ( !\sll4[2]~1_combout\ & ( \Input[33]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[29]~23_combout\,
	datab => \ALT_INV_Input[33]~input_o\,
	datac => \ALT_INV_Input[45]~input_o\,
	datad => \ALT_INV_Input[37]~input_o\,
	datae => \ALT_INV_Output~7_combout\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~138_combout\);

-- Location: LABCELL_X53_Y4_N30
\Output~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~139_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~138_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_Output~138_combout\,
	datac => \ALT_INV_Input[31]~input_o\,
	combout => \Output~139_combout\);

-- Location: LABCELL_X53_Y4_N6
\Output~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~140_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Input[30]~input_o\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~139_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( 
-- \srl2[30]~30_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \srl2[29]~29_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[30]~30_combout\,
	datab => \ALT_INV_Output~139_combout\,
	datac => \ALT_INV_srl2[29]~29_combout\,
	datad => \ALT_INV_Input[30]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~140_combout\);

-- Location: LABCELL_X60_Y4_N9
\sll16[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[29]~29_combout\ = ( \Input[13]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[29]~input_o\) # (\ShiftCount[4]~input_o\))) ) ) # ( !\Input[13]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[29]~input_o\,
	dataf => \ALT_INV_Input[13]~input_o\,
	combout => \sll16[29]~29_combout\);

-- Location: MLABCELL_X59_Y6_N54
\sll4[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[29]~30_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[17]~17_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[29]~29_combout\ & 
-- ( (!\ShiftCount[3]~input_o\) # (\sll16[21]~21_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[17]~17_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[29]~29_combout\ & ( (\ShiftCount[3]~input_o\ & \sll16[21]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[21]~21_combout\,
	datac => \ALT_INV_sll16[25]~25_combout\,
	datad => \ALT_INV_sll16[17]~17_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[29]~29_combout\,
	combout => \sll4[29]~30_combout\);

-- Location: LABCELL_X53_Y5_N0
\Output~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~141_combout\ = ( \sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[27]~28_combout\) ) ) ) # ( !\sll4[26]~27_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[27]~28_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[29]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[28]~29_combout\)) ) ) ) # ( !\sll4[26]~27_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[29]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[28]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[27]~28_combout\,
	datab => \ALT_INV_sll4[28]~29_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[29]~30_combout\,
	datae => \ALT_INV_sll4[26]~27_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~141_combout\);

-- Location: IOIBUF_X54_Y81_N35
\Arith[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(29),
	o => \Arith[29]~input_o\);

-- Location: LABCELL_X53_Y5_N57
\Output~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~142_combout\ = ( \Arith[29]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~141_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~140_combout\)))) ) ) # ( !\Arith[29]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & ((\Output~141_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~140_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~140_combout\,
	datad => \ALT_INV_Output~141_combout\,
	dataf => \ALT_INV_Arith[29]~input_o\,
	combout => \Output~142_combout\);

-- Location: LABCELL_X55_Y6_N42
\sll16[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[30]~30_combout\ = (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[30]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[30]~input_o\,
	datad => \ALT_INV_Input[14]~input_o\,
	combout => \sll16[30]~30_combout\);

-- Location: LABCELL_X55_Y6_N48
\sll4[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[30]~31_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[18]~18_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & 
-- ( (\ShiftCount[3]~input_o\) # (\sll16[30]~30_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[18]~18_combout\)) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( (\sll16[30]~30_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[18]~18_combout\,
	datab => \ALT_INV_sll16[30]~30_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[26]~26_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[22]~22_combout\,
	combout => \sll4[30]~31_combout\);

-- Location: LABCELL_X53_Y5_N6
\Output~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~146_combout\ = ( \sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[28]~29_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[27]~28_combout\)) ) ) ) # ( !\sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[28]~29_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[27]~28_combout\)) ) ) ) # ( \sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[29]~30_combout\) ) ) ) # ( 
-- !\sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[29]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[27]~28_combout\,
	datab => \ALT_INV_sll4[28]~29_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[29]~30_combout\,
	datae => \ALT_INV_sll4[30]~31_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~146_combout\);

-- Location: LABCELL_X56_Y2_N24
\Output~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~143_combout\ = ( \Input[46]~input_o\ & ( \sll4[2]~1_combout\ & ( (\Output~7_combout\) # (\srl32[30]~15_combout\) ) ) ) # ( !\Input[46]~input_o\ & ( \sll4[2]~1_combout\ & ( (\srl32[30]~15_combout\ & !\Output~7_combout\) ) ) ) # ( 
-- \Input[46]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~7_combout\ & (\Input[34]~input_o\)) # (\Output~7_combout\ & ((\Input[38]~input_o\))) ) ) ) # ( !\Input[46]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~7_combout\ & (\Input[34]~input_o\)) # 
-- (\Output~7_combout\ & ((\Input[38]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl32[30]~15_combout\,
	datab => \ALT_INV_Input[34]~input_o\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_Input[46]~input_o\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~143_combout\);

-- Location: LABCELL_X53_Y4_N33
\Output~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~144_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~143_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~143_combout\,
	datad => \ALT_INV_Input[32]~input_o\,
	combout => \Output~144_combout\);

-- Location: LABCELL_X50_Y5_N0
\srl8[37]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[37]~40_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[37]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[53]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & ((!\ShiftCount[4]~input_o\ & (((\Input[45]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[61]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000111010000000000111111000000000001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[61]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[45]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[53]~input_o\,
	datag => \ALT_INV_Input[37]~input_o\,
	combout => \srl8[37]~40_combout\);

-- Location: LABCELL_X55_Y4_N48
\srl2[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[31]~31_combout\ = ( \srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[33]~56_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[33]~56_combout\) ) ) ) # 
-- ( \srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[35]~48_combout\))) ) ) ) # ( !\srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[31]~64_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[35]~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[31]~64_combout\,
	datab => \ALT_INV_srl8[35]~48_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[33]~56_combout\,
	datae => \ALT_INV_srl8[37]~40_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[31]~31_combout\);

-- Location: LABCELL_X53_Y4_N12
\Output~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~145_combout\ = ( \Input[31]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~144_combout\) ) ) ) # ( !\Input[31]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~144_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[31]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[30]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[31]~31_combout\)) ) ) ) # ( !\Input[31]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[30]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[31]~31_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~144_combout\,
	datab => \ALT_INV_srl2[31]~31_combout\,
	datac => \ALT_INV_srl2[30]~30_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_Input[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~145_combout\);

-- Location: IOIBUF_X56_Y81_N52
\Arith[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(30),
	o => \Arith[30]~input_o\);

-- Location: LABCELL_X51_Y6_N3
\Output~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~147_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~146_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~145_combout\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Arith[30]~input_o\))) # 
-- (\ShiftFN[1]~input_o\ & (\Output~145_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~146_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Output~145_combout\,
	datad => \ALT_INV_Arith[30]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~147_combout\);

-- Location: LABCELL_X62_Y4_N24
\Output~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~148_combout\ = ( \Input[35]~input_o\ & ( \Input[39]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~7_combout\ & ((\srl32[31]~31_combout\))) # (\Output~7_combout\ & (\Input[47]~input_o\))) ) ) ) # ( !\Input[35]~input_o\ & ( \Input[39]~input_o\ & 
-- ( (!\sll4[2]~1_combout\ & (((\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & ((\srl32[31]~31_combout\))) # (\Output~7_combout\ & (\Input[47]~input_o\)))) ) ) ) # ( \Input[35]~input_o\ & ( !\Input[39]~input_o\ & ( 
-- (!\sll4[2]~1_combout\ & (((!\Output~7_combout\)))) # (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & ((\srl32[31]~31_combout\))) # (\Output~7_combout\ & (\Input[47]~input_o\)))) ) ) ) # ( !\Input[35]~input_o\ & ( !\Input[39]~input_o\ & ( 
-- (\sll4[2]~1_combout\ & ((!\Output~7_combout\ & ((\srl32[31]~31_combout\))) # (\Output~7_combout\ & (\Input[47]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[47]~input_o\,
	datab => \ALT_INV_srl32[31]~31_combout\,
	datac => \ALT_INV_sll4[2]~1_combout\,
	datad => \ALT_INV_Output~7_combout\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_Input[39]~input_o\,
	combout => \Output~148_combout\);

-- Location: LABCELL_X53_Y4_N18
\Output~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~149_combout\ = ( \Input[33]~input_o\ & ( (\Output~148_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[33]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~148_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_Output~148_combout\,
	dataf => \ALT_INV_Input[33]~input_o\,
	combout => \Output~149_combout\);

-- Location: LABCELL_X56_Y3_N30
\srl8[38]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[38]~36_combout\ = ( !\ShiftCount[3]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[38]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[54]~input_o\))))) ) ) # ( \ShiftCount[3]~input_o\ & ( ((!\ShiftCount[5]~input_o\ 
-- & ((!\ShiftCount[4]~input_o\ & ((\Input[46]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[62]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[54]~input_o\,
	datab => \ALT_INV_Input[62]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[38]~input_o\,
	combout => \srl8[38]~36_combout\);

-- Location: LABCELL_X53_Y3_N0
\srl2[32]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[32]~32_combout\ = ( \srl8[36]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[34]~52_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) ) ) ) # ( !\srl8[36]~44_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[34]~52_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) ) ) ) # ( \srl8[36]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[32]~60_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\srl8[36]~44_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[32]~60_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[38]~36_combout\,
	datab => \ALT_INV_srl8[34]~52_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[32]~60_combout\,
	datae => \ALT_INV_srl8[36]~44_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[32]~32_combout\);

-- Location: LABCELL_X53_Y4_N24
\Output~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~150_combout\ = ( \Input[32]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~149_combout\) ) ) ) # ( !\Input[32]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~149_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[32]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[31]~31_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[32]~32_combout\))) ) ) ) # ( !\Input[32]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[31]~31_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[32]~32_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~149_combout\,
	datab => \ALT_INV_srl2[31]~31_combout\,
	datac => \ALT_INV_srl2[32]~32_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_Input[32]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~150_combout\);

-- Location: LABCELL_X60_Y5_N3
\sll16[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[31]~31_combout\ = ( \Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[31]~input_o\) # (\ShiftCount[4]~input_o\))) ) ) # ( !\Input[15]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[31]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sll16[31]~31_combout\);

-- Location: LABCELL_X60_Y7_N36
\sll4[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[31]~32_combout\ = ( \sll16[19]~19_combout\ & ( \sll16[31]~31_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[27]~27_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[23]~23_combout\))) ) 
-- ) ) # ( !\sll16[19]~19_combout\ & ( \sll16[31]~31_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[27]~27_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[23]~23_combout\ & (!\ShiftCount[2]~input_o\))) ) ) ) # ( 
-- \sll16[19]~19_combout\ & ( !\sll16[31]~31_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[27]~27_combout\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[23]~23_combout\))) ) ) ) # ( 
-- !\sll16[19]~19_combout\ & ( !\sll16[31]~31_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[27]~27_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[23]~23_combout\ & (!\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[23]~23_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[27]~27_combout\,
	datae => \ALT_INV_sll16[19]~19_combout\,
	dataf => \ALT_INV_sll16[31]~31_combout\,
	combout => \sll4[31]~32_combout\);

-- Location: LABCELL_X53_Y5_N12
\Output~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~151_combout\ = ( \sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[29]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[28]~29_combout\)) ) ) ) # ( !\sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[29]~30_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[28]~29_combout\)) ) ) ) # ( \sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[31]~32_combout\) ) ) ) # ( 
-- !\sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[31]~32_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[31]~32_combout\,
	datab => \ALT_INV_sll4[28]~29_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[29]~30_combout\,
	datae => \ALT_INV_sll4[30]~31_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~151_combout\);

-- Location: IOIBUF_X8_Y0_N18
\Arith[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(31),
	o => \Arith[31]~input_o\);

-- Location: LABCELL_X53_Y4_N21
\Output~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~152_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Output~151_combout\))) # (\ShiftFN[1]~input_o\ & (\Output~150_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Arith[31]~input_o\))) # 
-- (\ShiftFN[1]~input_o\ & (\Output~150_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~150_combout\,
	datab => \ALT_INV_Output~151_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Arith[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~152_combout\);

-- Location: IOIBUF_X2_Y0_N92
\Arith[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(32),
	o => \Arith[32]~input_o\);

-- Location: LABCELL_X57_Y5_N27
\sll16[32]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[32]~32_combout\ = ( \Input[0]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[32]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[16]~input_o\))))) # (\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\)))) ) ) # ( 
-- !\Input[0]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[32]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[16]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111000011000111011100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[32]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[16]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \sll16[32]~32_combout\);

-- Location: LABCELL_X55_Y5_N12
\sll4[32]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[32]~33_combout\ = ( \sll16[28]~28_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[24]~24_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[20]~20_combout\)) ) ) ) # ( !\sll16[28]~28_combout\ & ( \ShiftCount[3]~input_o\ & 
-- ( (!\ShiftCount[2]~input_o\ & ((\sll16[24]~24_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[20]~20_combout\)) ) ) ) # ( \sll16[28]~28_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\ShiftCount[2]~input_o\) # (\sll16[32]~32_combout\) ) ) ) # ( 
-- !\sll16[28]~28_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sll16[32]~32_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[32]~32_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[20]~20_combout\,
	datad => \ALT_INV_sll16[24]~24_combout\,
	datae => \ALT_INV_sll16[28]~28_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[32]~33_combout\);

-- Location: LABCELL_X53_Y5_N48
\Output~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~153_combout\ = ( \sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[29]~30_combout\) ) ) ) # ( !\sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[29]~30_combout\) ) ) ) # 
-- ( \sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[32]~33_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[31]~32_combout\)) ) ) ) # ( !\sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[32]~33_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[31]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[31]~32_combout\,
	datab => \ALT_INV_sll4[32]~33_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[29]~30_combout\,
	datae => \ALT_INV_sll4[30]~31_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~153_combout\);

-- Location: MLABCELL_X52_Y4_N0
\srl8[39]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[39]~32_combout\ = ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\ & (\Input[39]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[55]~input_o\)))))) ) ) # ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ 
-- & (((!\ShiftCount[4]~input_o\ & ((\Input[47]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[63]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101000000000101010100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Input[47]~input_o\,
	datad => \ALT_INV_Input[55]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	datag => \ALT_INV_Input[39]~input_o\,
	combout => \srl8[39]~32_combout\);

-- Location: LABCELL_X55_Y4_N24
\srl2[33]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[33]~33_combout\ = ( \srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[35]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) ) ) ) # ( !\srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[35]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) ) ) ) # ( \srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[33]~56_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[33]~56_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[39]~32_combout\,
	datab => \ALT_INV_srl8[35]~48_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[33]~56_combout\,
	datae => \ALT_INV_srl8[37]~40_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[33]~33_combout\);

-- Location: LABCELL_X51_Y2_N6
\Output~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~154_combout\ = ( \srl2[33]~33_combout\ & ( (\ShiftCount[0]~input_o\) # (\srl2[32]~32_combout\) ) ) # ( !\srl2[33]~33_combout\ & ( (\srl2[32]~32_combout\ & !\ShiftCount[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl2[32]~32_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[33]~33_combout\,
	combout => \Output~154_combout\);

-- Location: LABCELL_X50_Y5_N12
\Output~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~156_combout\ = ( !\ShiftCount[4]~input_o\ & ( !\ShiftCount[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~156_combout\);

-- Location: LABCELL_X50_Y5_N9
\Output~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~155_combout\ = ( \ShiftCount[5]~input_o\ & ( !\ShiftCount[3]~input_o\ ) ) # ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[3]~input_o\ & \ShiftCount[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101010101010101000001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \Output~155_combout\);

-- Location: LABCELL_X50_Y5_N18
\Output~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~157_combout\ = ( \Input[48]~input_o\ & ( \Input[32]~input_o\ & ( (!\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[40]~input_o\))) # (\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( 
-- !\Input[48]~input_o\ & ( \Input[32]~input_o\ & ( (!\Output~156_combout\ & (\Input[40]~input_o\ & (!\Output~155_combout\))) # (\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( \Input[48]~input_o\ & ( 
-- !\Input[32]~input_o\ & ( (!\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[40]~input_o\))) # (\Output~156_combout\ & (((\Output~155_combout\ & \Input[63]~input_o\)))) ) ) ) # ( !\Input[48]~input_o\ & ( !\Input[32]~input_o\ & ( 
-- (!\Output~156_combout\ & (\Input[40]~input_o\ & (!\Output~155_combout\))) # (\Output~156_combout\ & (((\Output~155_combout\ & \Input[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~156_combout\,
	datab => \ALT_INV_Input[40]~input_o\,
	datac => \ALT_INV_Output~155_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[48]~input_o\,
	dataf => \ALT_INV_Input[32]~input_o\,
	combout => \Output~157_combout\);

-- Location: MLABCELL_X52_Y5_N39
\Output~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~158_combout\ = ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \ShiftCount[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~158_combout\);

-- Location: LABCELL_X50_Y4_N0
\Output~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~159_combout\ = ( \Input[33]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & (\Input[34]~input_o\)) # (\Output~0_combout\ & ((\Input[36]~input_o\))) ) ) ) # ( !\Input[33]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & 
-- (\Input[34]~input_o\)) # (\Output~0_combout\ & ((\Input[36]~input_o\))) ) ) ) # ( \Input[33]~input_o\ & ( !\Output~158_combout\ & ( (!\Output~0_combout\) # (\Output~157_combout\) ) ) ) # ( !\Input[33]~input_o\ & ( !\Output~158_combout\ & ( 
-- (\Output~157_combout\ & \Output~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[34]~input_o\,
	datab => \ALT_INV_Output~157_combout\,
	datac => \ALT_INV_Input[36]~input_o\,
	datad => \ALT_INV_Output~0_combout\,
	datae => \ALT_INV_Input[33]~input_o\,
	dataf => \ALT_INV_Output~158_combout\,
	combout => \Output~159_combout\);

-- Location: LABCELL_X50_Y4_N6
\Output~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~160_combout\ = ( \Output~159_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Output~154_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\Output~159_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \Output~154_combout\) ) ) ) # ( 
-- \Output~159_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[32]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~153_combout\))) ) ) ) # ( !\Output~159_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\Arith[32]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~153_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Arith[32]~input_o\,
	datac => \ALT_INV_Output~153_combout\,
	datad => \ALT_INV_Output~154_combout\,
	datae => \ALT_INV_Output~159_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~160_combout\);

-- Location: LABCELL_X57_Y5_N18
\srl8[40]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[40]~8_combout\ = ( \Input[40]~input_o\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Input[48]~input_o\ & !\ShiftCount[4]~input_o\)) ) ) ) # ( !\Input[40]~input_o\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Input[48]~input_o\ & !\ShiftCount[4]~input_o\)) ) ) ) # ( \Input[40]~input_o\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # (\Input[56]~input_o\))) ) ) ) # ( !\Input[40]~input_o\ & ( !\ShiftCount[3]~input_o\ 
-- & ( (\Input[56]~input_o\ & (!\ShiftCount[5]~input_o\ & \ShiftCount[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110011000100010000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[56]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[48]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[40]~input_o\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \srl8[40]~8_combout\);

-- Location: LABCELL_X53_Y3_N6
\srl2[34]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[34]~34_combout\ = ( \srl8[40]~8_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[36]~44_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[40]~8_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[36]~44_combout\) ) ) ) # ( 
-- \srl8[40]~8_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[34]~52_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) ) ) ) # ( !\srl8[40]~8_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & 
-- ((\srl8[34]~52_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[38]~36_combout\,
	datab => \ALT_INV_srl8[34]~52_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[36]~44_combout\,
	datae => \ALT_INV_srl8[40]~8_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[34]~34_combout\);

-- Location: LABCELL_X53_Y3_N45
\Output~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~162_combout\ = ( \srl2[33]~33_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[34]~34_combout\) ) ) # ( !\srl2[33]~33_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[34]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[34]~34_combout\,
	dataf => \ALT_INV_srl2[33]~33_combout\,
	combout => \Output~162_combout\);

-- Location: LABCELL_X57_Y6_N15
\sll16[33]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[33]~33_combout\ = ( \Input[1]~input_o\ & ( \Input[17]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\) # (\Input[33]~input_o\))) # (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\))) ) ) ) # ( !\Input[1]~input_o\ & ( 
-- \Input[17]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\) # (\Input[33]~input_o\))) ) ) ) # ( \Input[1]~input_o\ & ( !\Input[17]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\) # (\Input[33]~input_o\))) ) ) ) # ( 
-- !\Input[1]~input_o\ & ( !\Input[17]~input_o\ & ( (\Input[33]~input_o\ & (!\ShiftCount[4]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011000100110001110000011100000111110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[33]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Input[1]~input_o\,
	dataf => \ALT_INV_Input[17]~input_o\,
	combout => \sll16[33]~33_combout\);

-- Location: LABCELL_X57_Y7_N30
\sll4[33]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[33]~34_combout\ = ( \sll16[33]~33_combout\ & ( \sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\) # ((!\ShiftCount[2]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[21]~21_combout\)))) ) ) ) # ( !\sll16[33]~33_combout\ 
-- & ( \sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\)) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[21]~21_combout\))))) ) ) ) # ( 
-- \sll16[33]~33_combout\ & ( !\sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\)) # (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[21]~21_combout\))))) ) 
-- ) ) # ( !\sll16[33]~33_combout\ & ( !\sll16[29]~29_combout\ & ( (\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\ & (\sll16[25]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[21]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[25]~25_combout\,
	datad => \ALT_INV_sll16[21]~21_combout\,
	datae => \ALT_INV_sll16[33]~33_combout\,
	dataf => \ALT_INV_sll16[29]~29_combout\,
	combout => \sll4[33]~34_combout\);

-- Location: LABCELL_X53_Y5_N24
\Output~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~161_combout\ = ( \sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[31]~32_combout\) ) ) ) # ( !\sll4[30]~31_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[31]~32_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[32]~33_combout\)) ) ) ) # ( !\sll4[30]~31_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[32]~33_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[31]~32_combout\,
	datab => \ALT_INV_sll4[32]~33_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[33]~34_combout\,
	datae => \ALT_INV_sll4[30]~31_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~161_combout\);

-- Location: LABCELL_X48_Y4_N30
\Output~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~163_combout\ = ( \Output~155_combout\ & ( \Output~156_combout\ & ( \Input[63]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( \Output~156_combout\ & ( \Input[33]~input_o\ ) ) ) # ( \Output~155_combout\ & ( !\Output~156_combout\ & ( 
-- \Input[49]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( !\Output~156_combout\ & ( \Input[41]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[49]~input_o\,
	datab => \ALT_INV_Input[33]~input_o\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Output~155_combout\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~163_combout\);

-- Location: LABCELL_X50_Y4_N42
\Output~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~164_combout\ = ( \Input[35]~input_o\ & ( \Input[37]~input_o\ & ( ((!\Output~0_combout\ & (\Input[34]~input_o\)) # (\Output~0_combout\ & ((\Output~163_combout\)))) # (\Output~158_combout\) ) ) ) # ( !\Input[35]~input_o\ & ( \Input[37]~input_o\ & ( 
-- (!\Output~0_combout\ & (\Input[34]~input_o\ & ((!\Output~158_combout\)))) # (\Output~0_combout\ & (((\Output~158_combout\) # (\Output~163_combout\)))) ) ) ) # ( \Input[35]~input_o\ & ( !\Input[37]~input_o\ & ( (!\Output~0_combout\ & 
-- (((\Output~158_combout\)) # (\Input[34]~input_o\))) # (\Output~0_combout\ & (((\Output~163_combout\ & !\Output~158_combout\)))) ) ) ) # ( !\Input[35]~input_o\ & ( !\Input[37]~input_o\ & ( (!\Output~158_combout\ & ((!\Output~0_combout\ & 
-- (\Input[34]~input_o\)) # (\Output~0_combout\ & ((\Output~163_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[34]~input_o\,
	datab => \ALT_INV_Output~0_combout\,
	datac => \ALT_INV_Output~163_combout\,
	datad => \ALT_INV_Output~158_combout\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_Input[37]~input_o\,
	combout => \Output~164_combout\);

-- Location: IOIBUF_X56_Y81_N18
\Arith[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(33),
	o => \Arith[33]~input_o\);

-- Location: LABCELL_X51_Y6_N6
\Output~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~165_combout\ = ( \Arith[33]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Output~162_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~164_combout\))) ) ) ) # ( !\Arith[33]~input_o\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Output~162_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~164_combout\))) ) ) ) # ( \Arith[33]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~161_combout\) ) ) ) # ( !\Arith[33]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \Output~161_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~162_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~161_combout\,
	datad => \ALT_INV_Output~164_combout\,
	datae => \ALT_INV_Arith[33]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~165_combout\);

-- Location: MLABCELL_X52_Y2_N30
\srl8[41]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[41]~9_combout\ = ( \Input[49]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Input[57]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( !\Input[49]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Input[57]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( \Input[49]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\ShiftCount[3]~input_o\) # (\Input[41]~input_o\))) ) ) ) # ( !\Input[49]~input_o\ & ( !\ShiftCount[4]~input_o\ & 
-- ( (\Input[41]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001001100110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[41]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[57]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[41]~9_combout\);

-- Location: LABCELL_X55_Y4_N0
\srl2[35]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[35]~35_combout\ = ( \srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[41]~9_combout\) ) ) ) # ( !\srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[41]~9_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( 
-- \srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[35]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) ) ) ) # ( !\srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ 
-- & ((\srl8[35]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[39]~32_combout\,
	datab => \ALT_INV_srl8[41]~9_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[35]~48_combout\,
	datae => \ALT_INV_srl8[37]~40_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[35]~35_combout\);

-- Location: LABCELL_X53_Y3_N42
\Output~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~167_combout\ = (!\ShiftCount[0]~input_o\ & (\srl2[34]~34_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[35]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[34]~34_combout\,
	datad => \ALT_INV_srl2[35]~35_combout\,
	combout => \Output~167_combout\);

-- Location: LABCELL_X55_Y6_N36
\sll16[34]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[34]~34_combout\ = ( \Input[18]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((\Input[34]~input_o\)) # (\ShiftCount[4]~input_o\))) # (\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[2]~input_o\)))) ) ) # ( !\Input[18]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[34]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[34]~input_o\,
	datad => \ALT_INV_Input[2]~input_o\,
	dataf => \ALT_INV_Input[18]~input_o\,
	combout => \sll16[34]~34_combout\);

-- Location: LABCELL_X55_Y6_N54
\sll4[34]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[34]~35_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & ( (\sll16[30]~30_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) # 
-- (\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[30]~30_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[22]~22_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[30]~30_combout\,
	datac => \ALT_INV_sll16[34]~34_combout\,
	datad => \ALT_INV_sll16[26]~26_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[22]~22_combout\,
	combout => \sll4[34]~35_combout\);

-- Location: MLABCELL_X52_Y6_N0
\Output~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~166_combout\ = ( \sll4[32]~33_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[31]~32_combout\) ) ) ) # ( !\sll4[32]~33_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[31]~32_combout\ & \ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[32]~33_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))) ) ) ) # ( !\sll4[32]~33_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[31]~32_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[34]~35_combout\,
	datad => \ALT_INV_sll4[33]~34_combout\,
	datae => \ALT_INV_sll4[32]~33_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~166_combout\);

-- Location: LABCELL_X48_Y4_N6
\Output~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~168_combout\ = ( \Output~155_combout\ & ( \Output~156_combout\ & ( \Input[63]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( \Output~156_combout\ & ( \Input[34]~input_o\ ) ) ) # ( \Output~155_combout\ & ( !\Output~156_combout\ & ( 
-- \Input[50]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( !\Output~156_combout\ & ( \Input[42]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[34]~input_o\,
	datab => \ALT_INV_Input[42]~input_o\,
	datac => \ALT_INV_Input[50]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Output~155_combout\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~168_combout\);

-- Location: LABCELL_X50_Y4_N18
\Output~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~169_combout\ = ( \Input[35]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & ((\Input[36]~input_o\))) # (\Output~0_combout\ & (\Input[38]~input_o\)) ) ) ) # ( !\Input[35]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & 
-- ((\Input[36]~input_o\))) # (\Output~0_combout\ & (\Input[38]~input_o\)) ) ) ) # ( \Input[35]~input_o\ & ( !\Output~158_combout\ & ( (!\Output~0_combout\) # (\Output~168_combout\) ) ) ) # ( !\Input[35]~input_o\ & ( !\Output~158_combout\ & ( 
-- (\Output~168_combout\ & \Output~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~168_combout\,
	datab => \ALT_INV_Input[38]~input_o\,
	datac => \ALT_INV_Input[36]~input_o\,
	datad => \ALT_INV_Output~0_combout\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_Output~158_combout\,
	combout => \Output~169_combout\);

-- Location: IOIBUF_X28_Y0_N52
\Arith[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(34),
	o => \Arith[34]~input_o\);

-- Location: LABCELL_X50_Y4_N24
\Output~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~170_combout\ = ( \Arith[34]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~166_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~169_combout\))) ) ) ) # ( !\Arith[34]~input_o\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\Output~166_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~169_combout\))) ) ) ) # ( \Arith[34]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\Output~167_combout\) ) ) ) # ( !\Arith[34]~input_o\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (\Output~167_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~167_combout\,
	datab => \ALT_INV_Output~166_combout\,
	datac => \ALT_INV_Output~169_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Arith[34]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~170_combout\);

-- Location: LABCELL_X61_Y4_N21
\sll16[35]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[35]~35_combout\ = ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[19]~input_o\) ) ) # ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[35]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[3]~input_o\,
	datac => \ALT_INV_Input[19]~input_o\,
	datad => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[35]~35_combout\);

-- Location: LABCELL_X60_Y7_N42
\sll4[35]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[35]~36_combout\ = ( \ShiftCount[3]~input_o\ & ( \sll16[35]~35_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sll16[35]~35_combout\ & 
-- ( (!\ShiftCount[2]~input_o\) # (\sll16[31]~31_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sll16[35]~35_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[23]~23_combout\)) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sll16[35]~35_combout\ & ( (\sll16[31]~31_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[23]~23_combout\,
	datab => \ALT_INV_sll16[31]~31_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[27]~27_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sll16[35]~35_combout\,
	combout => \sll4[35]~36_combout\);

-- Location: MLABCELL_X52_Y6_N6
\Output~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~171_combout\ = ( \sll4[32]~33_combout\ & ( \sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sll4[34]~35_combout\)))) # (\ShiftCount[1]~input_o\ & (((\sll4[33]~34_combout\)) # (\ShiftCount[0]~input_o\))) ) ) ) 
-- # ( !\sll4[32]~33_combout\ & ( \sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\) # ((\sll4[34]~35_combout\)))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\)))) ) ) ) # ( 
-- \sll4[32]~33_combout\ & ( !\sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\))) # (\ShiftCount[1]~input_o\ & (((\sll4[33]~34_combout\)) # (\ShiftCount[0]~input_o\))) ) ) ) # ( !\sll4[32]~33_combout\ & 
-- ( !\sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[34]~35_combout\,
	datad => \ALT_INV_sll4[33]~34_combout\,
	datae => \ALT_INV_sll4[32]~33_combout\,
	dataf => \ALT_INV_sll4[35]~36_combout\,
	combout => \Output~171_combout\);

-- Location: LABCELL_X55_Y3_N12
\srl8[42]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[42]~10_combout\ = ( \ShiftCount[4]~input_o\ & ( \Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\ & 
-- ((\Input[42]~input_o\))) # (\ShiftCount[3]~input_o\ & (\Input[50]~input_o\)))) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\Input[42]~input_o\))) # (\ShiftCount[3]~input_o\ & 
-- (\Input[50]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000000000000000000010100010101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[50]~input_o\,
	datad => \ALT_INV_Input[42]~input_o\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[58]~input_o\,
	combout => \srl8[42]~10_combout\);

-- Location: LABCELL_X53_Y3_N48
\srl2[36]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[36]~36_combout\ = ( \srl8[40]~8_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[42]~10_combout\))) ) ) ) # ( !\srl8[40]~8_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[38]~36_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[42]~10_combout\))) ) ) ) # ( \srl8[40]~8_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[36]~44_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\srl8[40]~8_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[36]~44_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[38]~36_combout\,
	datab => \ALT_INV_srl8[42]~10_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[36]~44_combout\,
	datae => \ALT_INV_srl8[40]~8_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[36]~36_combout\);

-- Location: LABCELL_X53_Y3_N57
\Output~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~172_combout\ = ( \srl2[35]~35_combout\ & ( \srl2[36]~36_combout\ ) ) # ( !\srl2[35]~35_combout\ & ( \srl2[36]~36_combout\ & ( \ShiftCount[0]~input_o\ ) ) ) # ( \srl2[35]~35_combout\ & ( !\srl2[36]~36_combout\ & ( !\ShiftCount[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[35]~35_combout\,
	dataf => \ALT_INV_srl2[36]~36_combout\,
	combout => \Output~172_combout\);

-- Location: LABCELL_X48_Y4_N42
\Output~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~173_combout\ = ( \Input[35]~input_o\ & ( \Input[63]~input_o\ & ( ((!\Output~155_combout\ & (\Input[43]~input_o\)) # (\Output~155_combout\ & ((\Input[51]~input_o\)))) # (\Output~156_combout\) ) ) ) # ( !\Input[35]~input_o\ & ( \Input[63]~input_o\ & 
-- ( (!\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[43]~input_o\)) # (\Output~155_combout\ & ((\Input[51]~input_o\))))) # (\Output~156_combout\ & (((\Output~155_combout\)))) ) ) ) # ( \Input[35]~input_o\ & ( !\Input[63]~input_o\ & ( 
-- (!\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[43]~input_o\)) # (\Output~155_combout\ & ((\Input[51]~input_o\))))) # (\Output~156_combout\ & (((!\Output~155_combout\)))) ) ) ) # ( !\Input[35]~input_o\ & ( !\Input[63]~input_o\ & ( 
-- (!\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[43]~input_o\)) # (\Output~155_combout\ & ((\Input[51]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[43]~input_o\,
	datab => \ALT_INV_Output~156_combout\,
	datac => \ALT_INV_Input[51]~input_o\,
	datad => \ALT_INV_Output~155_combout\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \Output~173_combout\);

-- Location: LABCELL_X50_Y4_N30
\Output~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~174_combout\ = ( \Input[39]~input_o\ & ( \Input[37]~input_o\ & ( ((!\Output~0_combout\ & ((\Input[36]~input_o\))) # (\Output~0_combout\ & (\Output~173_combout\))) # (\Output~158_combout\) ) ) ) # ( !\Input[39]~input_o\ & ( \Input[37]~input_o\ & ( 
-- (!\Output~0_combout\ & (((\Output~158_combout\) # (\Input[36]~input_o\)))) # (\Output~0_combout\ & (\Output~173_combout\ & ((!\Output~158_combout\)))) ) ) ) # ( \Input[39]~input_o\ & ( !\Input[37]~input_o\ & ( (!\Output~0_combout\ & (((\Input[36]~input_o\ 
-- & !\Output~158_combout\)))) # (\Output~0_combout\ & (((\Output~158_combout\)) # (\Output~173_combout\))) ) ) ) # ( !\Input[39]~input_o\ & ( !\Input[37]~input_o\ & ( (!\Output~158_combout\ & ((!\Output~0_combout\ & ((\Input[36]~input_o\))) # 
-- (\Output~0_combout\ & (\Output~173_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~173_combout\,
	datab => \ALT_INV_Output~0_combout\,
	datac => \ALT_INV_Input[36]~input_o\,
	datad => \ALT_INV_Output~158_combout\,
	datae => \ALT_INV_Input[39]~input_o\,
	dataf => \ALT_INV_Input[37]~input_o\,
	combout => \Output~174_combout\);

-- Location: IOIBUF_X89_Y36_N21
\Arith[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(35),
	o => \Arith[35]~input_o\);

-- Location: LABCELL_X51_Y6_N42
\Output~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~175_combout\ = ( \Arith[35]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Output~172_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~174_combout\))) ) ) ) # ( !\Arith[35]~input_o\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Output~172_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~174_combout\))) ) ) ) # ( \Arith[35]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~171_combout\) ) ) ) # ( !\Arith[35]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\Output~171_combout\ & \ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~171_combout\,
	datab => \ALT_INV_Output~172_combout\,
	datac => \ALT_INV_Output~174_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Arith[35]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~175_combout\);

-- Location: LABCELL_X56_Y5_N42
\sll16[36]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[36]~36_combout\ = ( \Input[4]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\Input[36]~input_o\)) # (\ShiftCount[5]~input_o\))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[20]~input_o\))) ) ) # ( !\Input[4]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[36]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[20]~input_o\,
	datad => \ALT_INV_Input[36]~input_o\,
	dataf => \ALT_INV_Input[4]~input_o\,
	combout => \sll16[36]~36_combout\);

-- Location: LABCELL_X55_Y5_N48
\sll4[36]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[36]~37_combout\ = ( \sll16[36]~36_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[28]~28_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[24]~24_combout\))) ) ) ) # ( !\sll16[36]~36_combout\ & ( \ShiftCount[3]~input_o\ & 
-- ( (!\ShiftCount[2]~input_o\ & (\sll16[28]~28_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[24]~24_combout\))) ) ) ) # ( \sll16[36]~36_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[32]~32_combout\) ) ) ) # ( 
-- !\sll16[36]~36_combout\ & ( !\ShiftCount[3]~input_o\ & ( (\sll16[32]~32_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[32]~32_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[28]~28_combout\,
	datad => \ALT_INV_sll16[24]~24_combout\,
	datae => \ALT_INV_sll16[36]~36_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[36]~37_combout\);

-- Location: MLABCELL_X52_Y6_N42
\Output~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~176_combout\ = ( \sll4[36]~37_combout\ & ( \sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\) # ((!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\)))) ) ) ) # ( !\sll4[36]~37_combout\ & ( 
-- \sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\)) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))))) ) ) ) # ( \sll4[36]~37_combout\ & 
-- ( !\sll4[35]~36_combout\ & ( (!\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\)) # (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))))) ) ) ) # ( 
-- !\sll4[36]~37_combout\ & ( !\sll4[35]~36_combout\ & ( (\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[33]~34_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[34]~35_combout\,
	datad => \ALT_INV_sll4[33]~34_combout\,
	datae => \ALT_INV_sll4[36]~37_combout\,
	dataf => \ALT_INV_sll4[35]~36_combout\,
	combout => \Output~176_combout\);

-- Location: MLABCELL_X52_Y4_N48
\srl8[43]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[43]~11_combout\ = ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\Input[59]~input_o\ & !\ShiftCount[5]~input_o\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[51]~input_o\) ) ) ) # 
-- ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\Input[43]~input_o\ & !\ShiftCount[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000001111000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[43]~input_o\,
	datab => \ALT_INV_Input[59]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[51]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[43]~11_combout\);

-- Location: LABCELL_X55_Y4_N36
\srl2[37]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[37]~37_combout\ = ( \srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[43]~11_combout\))) ) ) ) # ( !\srl8[37]~40_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[39]~32_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[43]~11_combout\))) ) ) ) # ( \srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[41]~9_combout\) ) ) ) # ( 
-- !\srl8[37]~40_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[41]~9_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[39]~32_combout\,
	datab => \ALT_INV_srl8[41]~9_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[43]~11_combout\,
	datae => \ALT_INV_srl8[37]~40_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[37]~37_combout\);

-- Location: LABCELL_X50_Y6_N30
\Output~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~177_combout\ = ( \srl2[37]~37_combout\ & ( (\srl2[36]~36_combout\) # (\ShiftCount[0]~input_o\) ) ) # ( !\srl2[37]~37_combout\ & ( (!\ShiftCount[0]~input_o\ & \srl2[36]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_srl2[36]~36_combout\,
	dataf => \ALT_INV_srl2[37]~37_combout\,
	combout => \Output~177_combout\);

-- Location: LABCELL_X48_Y4_N48
\Output~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~178_combout\ = ( \Output~155_combout\ & ( \Output~156_combout\ & ( \Input[63]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( \Output~156_combout\ & ( \Input[36]~input_o\ ) ) ) # ( \Output~155_combout\ & ( !\Output~156_combout\ & ( 
-- \Input[52]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( !\Output~156_combout\ & ( \Input[44]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[36]~input_o\,
	datab => \ALT_INV_Input[52]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Output~155_combout\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~178_combout\);

-- Location: LABCELL_X50_Y6_N36
\Output~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~179_combout\ = ( \Input[38]~input_o\ & ( \Input[37]~input_o\ & ( (!\Output~0_combout\) # ((!\Output~158_combout\ & (\Output~178_combout\)) # (\Output~158_combout\ & ((\Input[40]~input_o\)))) ) ) ) # ( !\Input[38]~input_o\ & ( \Input[37]~input_o\ & 
-- ( (!\Output~158_combout\ & (((!\Output~0_combout\)) # (\Output~178_combout\))) # (\Output~158_combout\ & (((\Output~0_combout\ & \Input[40]~input_o\)))) ) ) ) # ( \Input[38]~input_o\ & ( !\Input[37]~input_o\ & ( (!\Output~158_combout\ & 
-- (\Output~178_combout\ & (\Output~0_combout\))) # (\Output~158_combout\ & (((!\Output~0_combout\) # (\Input[40]~input_o\)))) ) ) ) # ( !\Input[38]~input_o\ & ( !\Input[37]~input_o\ & ( (\Output~0_combout\ & ((!\Output~158_combout\ & (\Output~178_combout\)) 
-- # (\Output~158_combout\ & ((\Input[40]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~158_combout\,
	datab => \ALT_INV_Output~178_combout\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Input[40]~input_o\,
	datae => \ALT_INV_Input[38]~input_o\,
	dataf => \ALT_INV_Input[37]~input_o\,
	combout => \Output~179_combout\);

-- Location: IOIBUF_X32_Y81_N1
\Arith[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(36),
	o => \Arith[36]~input_o\);

-- Location: LABCELL_X50_Y6_N42
\Output~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~180_combout\ = ( \ShiftFN[0]~input_o\ & ( \Arith[36]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~176_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~179_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Arith[36]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\) # (\Output~177_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Arith[36]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~176_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~179_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- !\Arith[36]~input_o\ & ( (\Output~177_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~176_combout\,
	datab => \ALT_INV_Output~177_combout\,
	datac => \ALT_INV_Output~179_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Arith[36]~input_o\,
	combout => \Output~180_combout\);

-- Location: MLABCELL_X59_Y4_N12
\sll16[37]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[37]~37_combout\ = ( \ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & \Input[5]~input_o\) ) ) # ( !\ShiftCount[5]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Input[37]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[21]~input_o\,
	datac => \ALT_INV_Input[5]~input_o\,
	datad => \ALT_INV_Input[37]~input_o\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \sll16[37]~37_combout\);

-- Location: LABCELL_X57_Y7_N6
\sll4[37]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[37]~38_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[33]~33_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[25]~25_combout\)) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[29]~29_combout\ & 
-- ( (\ShiftCount[3]~input_o\) # (\sll16[37]~37_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[33]~33_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[25]~25_combout\)) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[29]~29_combout\ & ( (\sll16[37]~37_combout\ & !\ShiftCount[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[25]~25_combout\,
	datab => \ALT_INV_sll16[33]~33_combout\,
	datac => \ALT_INV_sll16[37]~37_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[29]~29_combout\,
	combout => \sll4[37]~38_combout\);

-- Location: MLABCELL_X52_Y6_N18
\Output~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~181_combout\ = ( \sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[35]~36_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) ) ) ) # ( !\sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[35]~36_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[34]~35_combout\)) ) ) ) # ( \sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[37]~38_combout\) ) ) ) # ( 
-- !\sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[37]~38_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[37]~38_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[34]~35_combout\,
	datad => \ALT_INV_sll4[35]~36_combout\,
	datae => \ALT_INV_sll4[36]~37_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~181_combout\);

-- Location: IOIBUF_X60_Y81_N18
\Arith[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(37),
	o => \Arith[37]~input_o\);

-- Location: LABCELL_X57_Y3_N18
\srl8[44]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[44]~12_combout\ = ( \Input[44]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Input[60]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( !\Input[44]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- (\Input[60]~input_o\ & !\ShiftCount[3]~input_o\)) ) ) ) # ( \Input[44]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\) # (\Input[52]~input_o\))) ) ) ) # ( !\Input[44]~input_o\ & ( !\ShiftCount[4]~input_o\ 
-- & ( (!\ShiftCount[5]~input_o\ & (\Input[52]~input_o\ & \ShiftCount[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[60]~input_o\,
	datac => \ALT_INV_Input[52]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_Input[44]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[44]~12_combout\);

-- Location: LABCELL_X53_Y3_N30
\srl2[38]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[38]~38_combout\ = ( \srl8[40]~8_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\srl8[42]~10_combout\)) # (\ShiftCount[1]~input_o\ & ((\srl8[44]~12_combout\))) ) ) ) # ( !\srl8[40]~8_combout\ & ( \ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & (\srl8[42]~10_combout\)) # (\ShiftCount[1]~input_o\ & ((\srl8[44]~12_combout\))) ) ) ) # ( \srl8[40]~8_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\srl8[38]~36_combout\) ) ) ) # ( 
-- !\srl8[40]~8_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\srl8[38]~36_combout\ & !\ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[38]~36_combout\,
	datab => \ALT_INV_srl8[42]~10_combout\,
	datac => \ALT_INV_srl8[44]~12_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_srl8[40]~8_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[38]~38_combout\);

-- Location: LABCELL_X50_Y6_N33
\Output~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~182_combout\ = ( \srl2[37]~37_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[38]~38_combout\) ) ) # ( !\srl2[37]~37_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[38]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[38]~38_combout\,
	dataf => \ALT_INV_srl2[37]~37_combout\,
	combout => \Output~182_combout\);

-- Location: LABCELL_X50_Y5_N24
\Output~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~183_combout\ = ( \Input[37]~input_o\ & ( \Input[45]~input_o\ & ( (!\Output~155_combout\) # ((!\Output~156_combout\ & (\Input[53]~input_o\)) # (\Output~156_combout\ & ((\Input[63]~input_o\)))) ) ) ) # ( !\Input[37]~input_o\ & ( \Input[45]~input_o\ 
-- & ( (!\Output~156_combout\ & (((!\Output~155_combout\)) # (\Input[53]~input_o\))) # (\Output~156_combout\ & (((\Output~155_combout\ & \Input[63]~input_o\)))) ) ) ) # ( \Input[37]~input_o\ & ( !\Input[45]~input_o\ & ( (!\Output~156_combout\ & 
-- (\Input[53]~input_o\ & (\Output~155_combout\))) # (\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( !\Input[37]~input_o\ & ( !\Input[45]~input_o\ & ( (\Output~155_combout\ & ((!\Output~156_combout\ & 
-- (\Input[53]~input_o\)) # (\Output~156_combout\ & ((\Input[63]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~156_combout\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Output~155_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[37]~input_o\,
	dataf => \ALT_INV_Input[45]~input_o\,
	combout => \Output~183_combout\);

-- Location: LABCELL_X50_Y6_N18
\Output~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~184_combout\ = ( \Output~158_combout\ & ( \Input[41]~input_o\ & ( (\Input[39]~input_o\) # (\Output~0_combout\) ) ) ) # ( !\Output~158_combout\ & ( \Input[41]~input_o\ & ( (!\Output~0_combout\ & ((\Input[38]~input_o\))) # (\Output~0_combout\ & 
-- (\Output~183_combout\)) ) ) ) # ( \Output~158_combout\ & ( !\Input[41]~input_o\ & ( (!\Output~0_combout\ & \Input[39]~input_o\) ) ) ) # ( !\Output~158_combout\ & ( !\Input[41]~input_o\ & ( (!\Output~0_combout\ & ((\Input[38]~input_o\))) # 
-- (\Output~0_combout\ & (\Output~183_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Output~183_combout\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_Input[39]~input_o\,
	datae => \ALT_INV_Output~158_combout\,
	dataf => \ALT_INV_Input[41]~input_o\,
	combout => \Output~184_combout\);

-- Location: LABCELL_X50_Y6_N54
\Output~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~185_combout\ = ( \ShiftFN[0]~input_o\ & ( \Output~184_combout\ & ( (\ShiftFN[1]~input_o\) # (\Output~181_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Output~184_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Arith[37]~input_o\)) # (\ShiftFN[1]~input_o\ 
-- & ((\Output~182_combout\))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Output~184_combout\ & ( (\Output~181_combout\ & !\ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Output~184_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Arith[37]~input_o\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Output~182_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~181_combout\,
	datab => \ALT_INV_Arith[37]~input_o\,
	datac => \ALT_INV_Output~182_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Output~184_combout\,
	combout => \Output~185_combout\);

-- Location: LABCELL_X48_Y4_N54
\Output~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~188_combout\ = ( \Input[54]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ & ((\Input[38]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Input[54]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ 
-- & ((\Input[38]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( \Input[54]~input_o\ & ( !\Output~156_combout\ & ( (\Output~155_combout\) # (\Input[46]~input_o\) ) ) ) # ( !\Input[54]~input_o\ & ( !\Output~156_combout\ & ( 
-- (\Input[46]~input_o\ & !\Output~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[46]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Input[38]~input_o\,
	datad => \ALT_INV_Output~155_combout\,
	datae => \ALT_INV_Input[54]~input_o\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~188_combout\);

-- Location: LABCELL_X50_Y6_N6
\Output~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~189_combout\ = ( \Output~158_combout\ & ( \Output~188_combout\ & ( (!\Output~0_combout\ & ((\Input[40]~input_o\))) # (\Output~0_combout\ & (\Input[42]~input_o\)) ) ) ) # ( !\Output~158_combout\ & ( \Output~188_combout\ & ( (\Input[39]~input_o\) # 
-- (\Output~0_combout\) ) ) ) # ( \Output~158_combout\ & ( !\Output~188_combout\ & ( (!\Output~0_combout\ & ((\Input[40]~input_o\))) # (\Output~0_combout\ & (\Input[42]~input_o\)) ) ) ) # ( !\Output~158_combout\ & ( !\Output~188_combout\ & ( 
-- (!\Output~0_combout\ & \Input[39]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Input[42]~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	datad => \ALT_INV_Input[40]~input_o\,
	datae => \ALT_INV_Output~158_combout\,
	dataf => \ALT_INV_Output~188_combout\,
	combout => \Output~189_combout\);

-- Location: IOIBUF_X50_Y81_N58
\Arith[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(38),
	o => \Arith[38]~input_o\);

-- Location: LABCELL_X56_Y3_N3
\sll16[38]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[38]~38_combout\ = ( \Input[38]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\Input[22]~input_o\)))) # (\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[6]~input_o\)))) ) ) # ( !\Input[38]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & (\Input[22]~input_o\))) # (\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[22]~input_o\,
	datad => \ALT_INV_Input[6]~input_o\,
	dataf => \ALT_INV_Input[38]~input_o\,
	combout => \sll16[38]~38_combout\);

-- Location: LABCELL_X55_Y6_N0
\sll4[38]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[38]~39_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[38]~38_combout\ & 
-- ( (!\ShiftCount[3]~input_o\) # (\sll16[30]~30_combout\) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[26]~26_combout\))) ) ) ) # ( 
-- !\ShiftCount[2]~input_o\ & ( !\sll16[38]~38_combout\ & ( (\ShiftCount[3]~input_o\ & \sll16[30]~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[30]~30_combout\,
	datac => \ALT_INV_sll16[34]~34_combout\,
	datad => \ALT_INV_sll16[26]~26_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[38]~38_combout\,
	combout => \sll4[38]~39_combout\);

-- Location: MLABCELL_X52_Y6_N54
\Output~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~186_combout\ = ( \sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[35]~36_combout\) ) ) ) # ( !\sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[35]~36_combout\) ) ) ) # 
-- ( \sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[38]~39_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[37]~38_combout\)) ) ) ) # ( !\sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[38]~39_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[37]~38_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[37]~38_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[38]~39_combout\,
	datad => \ALT_INV_sll4[35]~36_combout\,
	datae => \ALT_INV_sll4[36]~37_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~186_combout\);

-- Location: LABCELL_X50_Y5_N30
\srl8[45]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[45]~13_combout\ = ( \ShiftCount[4]~input_o\ & ( \Input[45]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\Input[61]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( \Input[45]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftCount[3]~input_o\) # (\Input[53]~input_o\))) ) ) ) # ( \ShiftCount[4]~input_o\ & ( !\Input[45]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\Input[61]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) ) # ( !\ShiftCount[4]~input_o\ & ( !\Input[45]~input_o\ 
-- & ( (\ShiftCount[3]~input_o\ & (\Input[53]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000010100000000010111011000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Input[61]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[45]~input_o\,
	combout => \srl8[45]~13_combout\);

-- Location: LABCELL_X55_Y4_N12
\srl2[39]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[39]~39_combout\ = ( \srl8[39]~32_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[41]~9_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[45]~13_combout\)) ) ) ) # ( !\srl8[39]~32_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[41]~9_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[45]~13_combout\)) ) ) ) # ( \srl8[39]~32_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[43]~11_combout\) ) ) ) # ( 
-- !\srl8[39]~32_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[43]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[43]~11_combout\,
	datac => \ALT_INV_srl8[45]~13_combout\,
	datad => \ALT_INV_srl8[41]~9_combout\,
	datae => \ALT_INV_srl8[39]~32_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[39]~39_combout\);

-- Location: LABCELL_X50_Y6_N0
\Output~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~187_combout\ = ( \srl2[39]~39_combout\ & ( (\srl2[38]~38_combout\) # (\ShiftCount[0]~input_o\) ) ) # ( !\srl2[39]~39_combout\ & ( (!\ShiftCount[0]~input_o\ & \srl2[38]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[38]~38_combout\,
	dataf => \ALT_INV_srl2[39]~39_combout\,
	combout => \Output~187_combout\);

-- Location: LABCELL_X50_Y6_N12
\Output~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~190_combout\ = ( \Output~187_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~189_combout\) ) ) ) # ( !\Output~187_combout\ & ( \ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \Output~189_combout\) ) ) ) # ( 
-- \Output~187_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[38]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~186_combout\))) ) ) ) # ( !\Output~187_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\Arith[38]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~186_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_Output~189_combout\,
	datac => \ALT_INV_Arith[38]~input_o\,
	datad => \ALT_INV_Output~186_combout\,
	datae => \ALT_INV_Output~187_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~190_combout\);

-- Location: LABCELL_X56_Y3_N6
\srl8[46]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[46]~14_combout\ = ( !\ShiftCount[5]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\Input[62]~input_o\ & !\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\Input[46]~input_o\)) # 
-- (\ShiftCount[3]~input_o\ & ((\Input[54]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[46]~input_o\,
	datab => \ALT_INV_Input[62]~input_o\,
	datac => \ALT_INV_Input[54]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[46]~14_combout\);

-- Location: LABCELL_X53_Y3_N36
\srl2[40]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[40]~40_combout\ = ( \srl8[40]~8_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\ & (\srl8[44]~12_combout\)) # (\ShiftCount[1]~input_o\ & ((\srl8[46]~14_combout\))) ) ) ) # ( !\srl8[40]~8_combout\ & ( \ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[1]~input_o\ & (\srl8[44]~12_combout\)) # (\ShiftCount[1]~input_o\ & ((\srl8[46]~14_combout\))) ) ) ) # ( \srl8[40]~8_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[1]~input_o\) # (\srl8[42]~10_combout\) ) ) ) # ( 
-- !\srl8[40]~8_combout\ & ( !\ShiftCount[2]~input_o\ & ( (\srl8[42]~10_combout\ & \ShiftCount[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[44]~12_combout\,
	datab => \ALT_INV_srl8[42]~10_combout\,
	datac => \ALT_INV_srl8[46]~14_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_srl8[40]~8_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \srl2[40]~40_combout\);

-- Location: LABCELL_X50_Y6_N3
\Output~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~192_combout\ = ( \srl2[39]~39_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[40]~40_combout\) ) ) # ( !\srl2[39]~39_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[40]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[40]~40_combout\,
	dataf => \ALT_INV_srl2[39]~39_combout\,
	combout => \Output~192_combout\);

-- Location: IOIBUF_X30_Y81_N52
\Arith[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(39),
	o => \Arith[39]~input_o\);

-- Location: MLABCELL_X52_Y4_N24
\Output~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~193_combout\ = ( \Output~156_combout\ & ( \Input[47]~input_o\ & ( (!\Output~155_combout\ & ((\Input[39]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Output~156_combout\ & ( \Input[47]~input_o\ & ( 
-- (!\Output~155_combout\) # (\Input[55]~input_o\) ) ) ) # ( \Output~156_combout\ & ( !\Input[47]~input_o\ & ( (!\Output~155_combout\ & ((\Input[39]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Output~156_combout\ & ( 
-- !\Input[47]~input_o\ & ( (\Output~155_combout\ & \Input[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~155_combout\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	datad => \ALT_INV_Input[55]~input_o\,
	datae => \ALT_INV_Output~156_combout\,
	dataf => \ALT_INV_Input[47]~input_o\,
	combout => \Output~193_combout\);

-- Location: LABCELL_X50_Y6_N48
\Output~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~194_combout\ = ( \Output~158_combout\ & ( \Input[41]~input_o\ & ( (!\Output~0_combout\) # (\Input[43]~input_o\) ) ) ) # ( !\Output~158_combout\ & ( \Input[41]~input_o\ & ( (!\Output~0_combout\ & ((\Input[40]~input_o\))) # (\Output~0_combout\ & 
-- (\Output~193_combout\)) ) ) ) # ( \Output~158_combout\ & ( !\Input[41]~input_o\ & ( (\Output~0_combout\ & \Input[43]~input_o\) ) ) ) # ( !\Output~158_combout\ & ( !\Input[41]~input_o\ & ( (!\Output~0_combout\ & ((\Input[40]~input_o\))) # 
-- (\Output~0_combout\ & (\Output~193_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~193_combout\,
	datab => \ALT_INV_Input[40]~input_o\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Input[43]~input_o\,
	datae => \ALT_INV_Output~158_combout\,
	dataf => \ALT_INV_Input[41]~input_o\,
	combout => \Output~194_combout\);

-- Location: LABCELL_X60_Y5_N0
\sll16[39]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[39]~39_combout\ = ( \Input[23]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[39]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[7]~input_o\))))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\)) ) ) # ( 
-- !\Input[23]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[39]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[39]~input_o\,
	datad => \ALT_INV_Input[7]~input_o\,
	dataf => \ALT_INV_Input[23]~input_o\,
	combout => \sll16[39]~39_combout\);

-- Location: LABCELL_X60_Y7_N18
\sll4[39]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[39]~40_combout\ = ( \ShiftCount[3]~input_o\ & ( \sll16[35]~35_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[31]~31_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sll16[35]~35_combout\ & 
-- ( (\ShiftCount[2]~input_o\) # (\sll16[39]~39_combout\) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sll16[35]~35_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[31]~31_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[27]~27_combout\))) ) ) ) # ( 
-- !\ShiftCount[3]~input_o\ & ( !\sll16[35]~35_combout\ & ( (\sll16[39]~39_combout\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[39]~39_combout\,
	datab => \ALT_INV_sll16[31]~31_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[27]~27_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sll16[35]~35_combout\,
	combout => \sll4[39]~40_combout\);

-- Location: MLABCELL_X52_Y6_N30
\Output~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~191_combout\ = ( \sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[37]~38_combout\) ) ) ) # ( !\sll4[36]~37_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[37]~38_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[39]~40_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[38]~39_combout\)) ) ) ) # ( !\sll4[36]~37_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[39]~40_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[38]~39_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[37]~38_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[38]~39_combout\,
	datad => \ALT_INV_sll4[39]~40_combout\,
	datae => \ALT_INV_sll4[36]~37_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~191_combout\);

-- Location: LABCELL_X50_Y6_N24
\Output~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~195_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~194_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~192_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Output~191_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[39]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~192_combout\,
	datab => \ALT_INV_Arith[39]~input_o\,
	datac => \ALT_INV_Output~194_combout\,
	datad => \ALT_INV_Output~191_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~195_combout\);

-- Location: LABCELL_X56_Y5_N45
\sll16[40]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[40]~40_combout\ = ( \Input[8]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\Input[40]~input_o\)) # (\ShiftCount[5]~input_o\))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[24]~input_o\))) ) ) # ( !\Input[8]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & ((\Input[40]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[24]~input_o\,
	datad => \ALT_INV_Input[40]~input_o\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \sll16[40]~40_combout\);

-- Location: LABCELL_X55_Y5_N24
\sll4[40]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[40]~41_combout\ = ( \sll16[32]~32_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[28]~28_combout\) ) ) ) # ( !\sll16[32]~32_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[28]~28_combout\ & \ShiftCount[2]~input_o\) ) ) 
-- ) # ( \sll16[32]~32_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[40]~40_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[36]~36_combout\))) ) ) ) # ( !\sll16[32]~32_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[40]~40_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[36]~36_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[28]~28_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[40]~40_combout\,
	datad => \ALT_INV_sll16[36]~36_combout\,
	datae => \ALT_INV_sll16[32]~32_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[40]~41_combout\);

-- Location: MLABCELL_X52_Y6_N36
\Output~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~196_combout\ = ( \sll4[40]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[38]~39_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[37]~38_combout\)) ) ) ) # ( !\sll4[40]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[38]~39_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[37]~38_combout\)) ) ) ) # ( \sll4[40]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[39]~40_combout\) ) ) ) # ( 
-- !\sll4[40]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\ & \sll4[39]~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[37]~38_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[38]~39_combout\,
	datad => \ALT_INV_sll4[39]~40_combout\,
	datae => \ALT_INV_sll4[40]~41_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~196_combout\);

-- Location: MLABCELL_X52_Y4_N30
\srl8[47]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[47]~15_combout\ = ( \ShiftCount[3]~input_o\ & ( \Input[47]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[55]~input_o\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \Input[47]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((!\ShiftCount[4]~input_o\) # (\Input[63]~input_o\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\Input[47]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[55]~input_o\)) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\Input[47]~input_o\ 
-- & ( (\ShiftCount[4]~input_o\ & (\Input[63]~input_o\ & !\ShiftCount[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000001010000010110000101100000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[55]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_Input[47]~input_o\,
	combout => \srl8[47]~15_combout\);

-- Location: LABCELL_X55_Y4_N18
\srl2[41]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[41]~41_combout\ = ( \srl8[41]~9_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[43]~11_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[47]~15_combout\))) ) ) ) # ( !\srl8[41]~9_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[43]~11_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[47]~15_combout\))) ) ) ) # ( \srl8[41]~9_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[45]~13_combout\) ) ) ) # ( 
-- !\srl8[41]~9_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[45]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[43]~11_combout\,
	datac => \ALT_INV_srl8[45]~13_combout\,
	datad => \ALT_INV_srl8[47]~15_combout\,
	datae => \ALT_INV_srl8[41]~9_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[41]~41_combout\);

-- Location: LABCELL_X48_Y5_N3
\Output~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~197_combout\ = ( \srl2[40]~40_combout\ & ( \srl2[41]~41_combout\ ) ) # ( !\srl2[40]~40_combout\ & ( \srl2[41]~41_combout\ & ( \ShiftCount[0]~input_o\ ) ) ) # ( \srl2[40]~40_combout\ & ( !\srl2[41]~41_combout\ & ( !\ShiftCount[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[40]~40_combout\,
	dataf => \ALT_INV_srl2[41]~41_combout\,
	combout => \Output~197_combout\);

-- Location: LABCELL_X50_Y5_N36
\Output~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~198_combout\ = ( \Input[48]~input_o\ & ( \Input[56]~input_o\ & ( (!\Output~156_combout\) # ((!\Output~155_combout\ & (\Input[40]~input_o\)) # (\Output~155_combout\ & ((\Input[63]~input_o\)))) ) ) ) # ( !\Input[48]~input_o\ & ( \Input[56]~input_o\ 
-- & ( (!\Output~156_combout\ & (((\Output~155_combout\)))) # (\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[40]~input_o\)) # (\Output~155_combout\ & ((\Input[63]~input_o\))))) ) ) ) # ( \Input[48]~input_o\ & ( !\Input[56]~input_o\ & ( 
-- (!\Output~156_combout\ & (((!\Output~155_combout\)))) # (\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[40]~input_o\)) # (\Output~155_combout\ & ((\Input[63]~input_o\))))) ) ) ) # ( !\Input[48]~input_o\ & ( !\Input[56]~input_o\ & ( 
-- (\Output~156_combout\ & ((!\Output~155_combout\ & (\Input[40]~input_o\)) # (\Output~155_combout\ & ((\Input[63]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~156_combout\,
	datab => \ALT_INV_Input[40]~input_o\,
	datac => \ALT_INV_Output~155_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[48]~input_o\,
	dataf => \ALT_INV_Input[56]~input_o\,
	combout => \Output~198_combout\);

-- Location: LABCELL_X48_Y5_N6
\Output~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~199_combout\ = ( \Input[42]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\) # (\Input[44]~input_o\) ) ) ) # ( !\Input[42]~input_o\ & ( \Output~158_combout\ & ( (\Output~0_combout\ & \Input[44]~input_o\) ) ) ) # ( \Input[42]~input_o\ & 
-- ( !\Output~158_combout\ & ( (!\Output~0_combout\ & ((\Input[41]~input_o\))) # (\Output~0_combout\ & (\Output~198_combout\)) ) ) ) # ( !\Input[42]~input_o\ & ( !\Output~158_combout\ & ( (!\Output~0_combout\ & ((\Input[41]~input_o\))) # (\Output~0_combout\ 
-- & (\Output~198_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Output~198_combout\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_Input[41]~input_o\,
	datae => \ALT_INV_Input[42]~input_o\,
	dataf => \ALT_INV_Output~158_combout\,
	combout => \Output~199_combout\);

-- Location: IOIBUF_X32_Y0_N1
\Arith[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(40),
	o => \Arith[40]~input_o\);

-- Location: LABCELL_X48_Y5_N12
\Output~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~200_combout\ = ( \Arith[40]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Output~197_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~199_combout\))) ) ) ) # ( !\Arith[40]~input_o\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Output~197_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~199_combout\))) ) ) ) # ( \Arith[40]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~196_combout\) ) ) ) # ( !\Arith[40]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\Output~196_combout\ & \ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~196_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~197_combout\,
	datad => \ALT_INV_Output~199_combout\,
	datae => \ALT_INV_Arith[40]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~200_combout\);

-- Location: LABCELL_X48_Y4_N0
\Output~203\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~203_combout\ = ( \Input[49]~input_o\ & ( \Input[63]~input_o\ & ( (!\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[57]~input_o\)))) # (\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[41]~input_o\))) ) ) ) # ( 
-- !\Input[49]~input_o\ & ( \Input[63]~input_o\ & ( (!\Output~156_combout\ & (((\Input[57]~input_o\ & \Output~155_combout\)))) # (\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[41]~input_o\))) ) ) ) # ( \Input[49]~input_o\ & ( 
-- !\Input[63]~input_o\ & ( (!\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[57]~input_o\)))) # (\Output~156_combout\ & (\Input[41]~input_o\ & ((!\Output~155_combout\)))) ) ) ) # ( !\Input[49]~input_o\ & ( !\Input[63]~input_o\ & ( 
-- (!\Output~156_combout\ & (((\Input[57]~input_o\ & \Output~155_combout\)))) # (\Output~156_combout\ & (\Input[41]~input_o\ & ((!\Output~155_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[41]~input_o\,
	datab => \ALT_INV_Output~156_combout\,
	datac => \ALT_INV_Input[57]~input_o\,
	datad => \ALT_INV_Output~155_combout\,
	datae => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \Output~203_combout\);

-- Location: LABCELL_X48_Y5_N24
\Output~204\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~204_combout\ = ( \Input[42]~input_o\ & ( \Input[43]~input_o\ & ( (!\Output~0_combout\) # ((!\Output~158_combout\ & ((\Output~203_combout\))) # (\Output~158_combout\ & (\Input[45]~input_o\))) ) ) ) # ( !\Input[42]~input_o\ & ( \Input[43]~input_o\ & 
-- ( (!\Output~158_combout\ & (((\Output~0_combout\ & \Output~203_combout\)))) # (\Output~158_combout\ & (((!\Output~0_combout\)) # (\Input[45]~input_o\))) ) ) ) # ( \Input[42]~input_o\ & ( !\Input[43]~input_o\ & ( (!\Output~158_combout\ & 
-- (((!\Output~0_combout\) # (\Output~203_combout\)))) # (\Output~158_combout\ & (\Input[45]~input_o\ & (\Output~0_combout\))) ) ) ) # ( !\Input[42]~input_o\ & ( !\Input[43]~input_o\ & ( (\Output~0_combout\ & ((!\Output~158_combout\ & 
-- ((\Output~203_combout\))) # (\Output~158_combout\ & (\Input[45]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~158_combout\,
	datab => \ALT_INV_Input[45]~input_o\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Output~203_combout\,
	datae => \ALT_INV_Input[42]~input_o\,
	dataf => \ALT_INV_Input[43]~input_o\,
	combout => \Output~204_combout\);

-- Location: LABCELL_X55_Y3_N51
\srl8[48]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[48]~16_combout\ = ( \Input[56]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[48]~input_o\) # (\ShiftCount[3]~input_o\)))) ) ) # ( !\Input[56]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & 
-- (\Input[48]~input_o\ & !\ShiftCount[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[48]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[56]~input_o\,
	combout => \srl8[48]~16_combout\);

-- Location: LABCELL_X53_Y3_N12
\srl2[42]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[42]~42_combout\ = ( \srl8[48]~16_combout\ & ( \srl8[44]~12_combout\ & ( ((!\ShiftCount[2]~input_o\ & ((\srl8[42]~10_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[46]~14_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # ( !\srl8[48]~16_combout\ & ( 
-- \srl8[44]~12_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\) # (\srl8[42]~10_combout\)))) # (\ShiftCount[2]~input_o\ & (\srl8[46]~14_combout\ & ((!\ShiftCount[1]~input_o\)))) ) ) ) # ( \srl8[48]~16_combout\ & ( !\srl8[44]~12_combout\ 
-- & ( (!\ShiftCount[2]~input_o\ & (((\srl8[42]~10_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\)) # (\srl8[46]~14_combout\))) ) ) ) # ( !\srl8[48]~16_combout\ & ( !\srl8[44]~12_combout\ & ( 
-- (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[2]~input_o\ & ((\srl8[42]~10_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[46]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[46]~14_combout\,
	datab => \ALT_INV_srl8[42]~10_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_srl8[48]~16_combout\,
	dataf => \ALT_INV_srl8[44]~12_combout\,
	combout => \srl2[42]~42_combout\);

-- Location: LABCELL_X48_Y5_N18
\Output~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~202_combout\ = ( \srl2[41]~41_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[42]~42_combout\) ) ) # ( !\srl2[41]~41_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[42]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[42]~42_combout\,
	dataf => \ALT_INV_srl2[41]~41_combout\,
	combout => \Output~202_combout\);

-- Location: IOIBUF_X36_Y81_N1
\Arith[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(41),
	o => \Arith[41]~input_o\);

-- Location: LABCELL_X60_Y4_N21
\sll16[41]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[41]~41_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[9]~input_o\ & ( !\ShiftCount[4]~input_o\ ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[9]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[41]~input_o\)) # (\ShiftCount[4]~input_o\ & 
-- ((\Input[25]~input_o\))) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\Input[9]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[41]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[25]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000000000001010101000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[41]~input_o\,
	datac => \ALT_INV_Input[25]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[9]~input_o\,
	combout => \sll16[41]~41_combout\);

-- Location: LABCELL_X57_Y7_N42
\sll4[41]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[41]~42_combout\ = ( \sll16[37]~37_combout\ & ( \sll16[29]~29_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sll16[41]~41_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[33]~33_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[37]~37_combout\ 
-- & ( \sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\sll16[41]~41_combout\ & !\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[33]~33_combout\))) ) ) ) # ( \sll16[37]~37_combout\ & ( 
-- !\sll16[29]~29_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # (\sll16[41]~41_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[33]~33_combout\ & ((!\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sll16[37]~37_combout\ & ( 
-- !\sll16[29]~29_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[41]~41_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[33]~33_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[33]~33_combout\,
	datac => \ALT_INV_sll16[41]~41_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sll16[37]~37_combout\,
	dataf => \ALT_INV_sll16[29]~29_combout\,
	combout => \sll4[41]~42_combout\);

-- Location: MLABCELL_X52_Y6_N12
\Output~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~201_combout\ = ( \sll4[40]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[39]~40_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[38]~39_combout\)) ) ) ) # ( !\sll4[40]~41_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[39]~40_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[38]~39_combout\)) ) ) ) # ( \sll4[40]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[41]~42_combout\) ) ) ) # ( 
-- !\sll4[40]~41_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[41]~42_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[41]~42_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[38]~39_combout\,
	datad => \ALT_INV_sll4[39]~40_combout\,
	datae => \ALT_INV_sll4[40]~41_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~201_combout\);

-- Location: LABCELL_X48_Y5_N30
\Output~205\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~205_combout\ = ( \Output~201_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Output~202_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~204_combout\)) ) ) ) # ( !\Output~201_combout\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & ((\Output~202_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~204_combout\)) ) ) ) # ( \Output~201_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\Arith[41]~input_o\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\Output~201_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \Arith[41]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~204_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~202_combout\,
	datad => \ALT_INV_Arith[41]~input_o\,
	datae => \ALT_INV_Output~201_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~205_combout\);

-- Location: LABCELL_X51_Y4_N33
\srl8[49]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[49]~17_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\Input[49]~input_o\))) # (\ShiftCount[3]~input_o\ & (\Input[57]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[57]~input_o\,
	datad => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[49]~17_combout\);

-- Location: LABCELL_X55_Y4_N54
\srl2[43]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[43]~43_combout\ = ( \srl8[47]~15_combout\ & ( \srl8[45]~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\) # (\srl8[43]~11_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\srl8[49]~17_combout\))) ) ) ) 
-- # ( !\srl8[47]~15_combout\ & ( \srl8[45]~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\) # (\srl8[43]~11_combout\)))) # (\ShiftCount[2]~input_o\ & (\srl8[49]~17_combout\ & ((\ShiftCount[1]~input_o\)))) ) ) ) # ( 
-- \srl8[47]~15_combout\ & ( !\srl8[45]~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\srl8[43]~11_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[1]~input_o\)) # (\srl8[49]~17_combout\))) ) ) ) # ( 
-- !\srl8[47]~15_combout\ & ( !\srl8[45]~13_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\srl8[43]~11_combout\ & !\ShiftCount[1]~input_o\)))) # (\ShiftCount[2]~input_o\ & (\srl8[49]~17_combout\ & ((\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[49]~17_combout\,
	datab => \ALT_INV_srl8[43]~11_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_srl8[47]~15_combout\,
	dataf => \ALT_INV_srl8[45]~13_combout\,
	combout => \srl2[43]~43_combout\);

-- Location: LABCELL_X53_Y6_N36
\Output~207\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~207_combout\ = ( \srl2[43]~43_combout\ & ( (\ShiftCount[0]~input_o\) # (\srl2[42]~42_combout\) ) ) # ( !\srl2[43]~43_combout\ & ( (\srl2[42]~42_combout\ & !\ShiftCount[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl2[42]~42_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_srl2[43]~43_combout\,
	combout => \Output~207_combout\);

-- Location: LABCELL_X55_Y6_N45
\sll16[42]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[42]~42_combout\ = ( \Input[10]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[42]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[26]~input_o\))))) # (\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\)) ) ) # ( 
-- !\Input[10]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[42]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[26]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[42]~input_o\,
	datad => \ALT_INV_Input[26]~input_o\,
	dataf => \ALT_INV_Input[10]~input_o\,
	combout => \sll16[42]~42_combout\);

-- Location: LABCELL_X55_Y6_N6
\sll4[42]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[42]~43_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\) # (\sll16[30]~30_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & 
-- ((\sll16[42]~42_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[38]~38_combout\ & ( (\ShiftCount[3]~input_o\ & \sll16[30]~30_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( 
-- !\sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[42]~42_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[34]~34_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[30]~30_combout\,
	datac => \ALT_INV_sll16[34]~34_combout\,
	datad => \ALT_INV_sll16[42]~42_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[38]~38_combout\,
	combout => \sll4[42]~43_combout\);

-- Location: LABCELL_X53_Y6_N30
\Output~206\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~206_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \sll4[39]~40_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \sll4[40]~41_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftCount[1]~input_o\ 
-- & ( \sll4[41]~42_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( \sll4[42]~43_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[41]~42_combout\,
	datab => \ALT_INV_sll4[40]~41_combout\,
	datac => \ALT_INV_sll4[42]~43_combout\,
	datad => \ALT_INV_sll4[39]~40_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~206_combout\);

-- Location: IOIBUF_X58_Y81_N92
\Arith[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(42),
	o => \Arith[42]~input_o\);

-- Location: LABCELL_X48_Y4_N36
\Output~208\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~208_combout\ = ( \Output~155_combout\ & ( \Output~156_combout\ & ( \Input[63]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( \Output~156_combout\ & ( \Input[42]~input_o\ ) ) ) # ( \Output~155_combout\ & ( !\Output~156_combout\ & ( 
-- \Input[58]~input_o\ ) ) ) # ( !\Output~155_combout\ & ( !\Output~156_combout\ & ( \Input[50]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[58]~input_o\,
	datab => \ALT_INV_Input[42]~input_o\,
	datac => \ALT_INV_Input[50]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Output~155_combout\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~208_combout\);

-- Location: MLABCELL_X47_Y4_N30
\Output~209\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~209_combout\ = ( \Output~0_combout\ & ( \Output~158_combout\ & ( \Input[46]~input_o\ ) ) ) # ( !\Output~0_combout\ & ( \Output~158_combout\ & ( \Input[44]~input_o\ ) ) ) # ( \Output~0_combout\ & ( !\Output~158_combout\ & ( \Output~208_combout\ ) ) 
-- ) # ( !\Output~0_combout\ & ( !\Output~158_combout\ & ( \Input[43]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[43]~input_o\,
	datab => \ALT_INV_Input[44]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_Output~208_combout\,
	datae => \ALT_INV_Output~0_combout\,
	dataf => \ALT_INV_Output~158_combout\,
	combout => \Output~209_combout\);

-- Location: LABCELL_X53_Y6_N12
\Output~210\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~210_combout\ = ( \Arith[42]~input_o\ & ( \Output~209_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Output~206_combout\)))) # (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\Output~207_combout\))) ) ) ) # ( 
-- !\Arith[42]~input_o\ & ( \Output~209_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\ & \Output~206_combout\)))) # (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\Output~207_combout\))) ) ) ) # ( \Arith[42]~input_o\ & ( 
-- !\Output~209_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Output~206_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~207_combout\ & (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\Arith[42]~input_o\ & ( !\Output~209_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\ & \Output~206_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~207_combout\ & (!\ShiftFN[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Output~207_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Output~206_combout\,
	datae => \ALT_INV_Arith[42]~input_o\,
	dataf => \ALT_INV_Output~209_combout\,
	combout => \Output~210_combout\);

-- Location: LABCELL_X60_Y5_N39
\sll16[43]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[43]~43_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[11]~input_o\ & ( !\ShiftCount[4]~input_o\ ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[11]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[43]~input_o\)) # (\ShiftCount[4]~input_o\ & 
-- ((\Input[27]~input_o\))) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\Input[11]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[43]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000000000000000000001010010111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[43]~input_o\,
	datad => \ALT_INV_Input[27]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \sll16[43]~43_combout\);

-- Location: LABCELL_X60_Y7_N54
\sll4[43]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[43]~44_combout\ = ( \sll16[39]~39_combout\ & ( \sll16[35]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[43]~43_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[31]~31_combout\)))) ) 
-- ) ) # ( !\sll16[39]~39_combout\ & ( \sll16[35]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[31]~31_combout\)))) ) ) ) # ( 
-- \sll16[39]~39_combout\ & ( !\sll16[35]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[43]~43_combout\))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[31]~31_combout\)))) ) ) ) # ( 
-- !\sll16[39]~39_combout\ & ( !\sll16[35]~35_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[31]~31_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[43]~43_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[31]~31_combout\,
	datae => \ALT_INV_sll16[39]~39_combout\,
	dataf => \ALT_INV_sll16[35]~35_combout\,
	combout => \sll4[43]~44_combout\);

-- Location: LABCELL_X53_Y6_N18
\Output~211\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~211_combout\ = ( \sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[41]~42_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[40]~41_combout\))) ) ) ) # ( !\sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[41]~42_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[40]~41_combout\))) ) ) ) # ( \sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[43]~44_combout\) ) ) ) # ( 
-- !\sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\sll4[43]~44_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[41]~42_combout\,
	datab => \ALT_INV_sll4[40]~41_combout\,
	datac => \ALT_INV_sll4[43]~44_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sll4[42]~43_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~211_combout\);

-- Location: IOIBUF_X52_Y81_N1
\Arith[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(43),
	o => \Arith[43]~input_o\);

-- Location: LABCELL_X55_Y3_N48
\srl8[50]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[50]~18_combout\ = ( \Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[50]~input_o\) # (\ShiftCount[3]~input_o\)))) ) ) # ( !\Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & 
-- (\Input[50]~input_o\ & !\ShiftCount[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[50]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[58]~input_o\,
	combout => \srl8[50]~18_combout\);

-- Location: LABCELL_X51_Y3_N30
\srl2[44]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[44]~44_combout\ = ( \srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\) # (\srl8[46]~14_combout\) ) ) ) # ( !\srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[46]~14_combout\ & !\ShiftCount[2]~input_o\) ) ) ) # 
-- ( \srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[44]~12_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) ) ) ) # ( !\srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[44]~12_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[48]~16_combout\,
	datab => \ALT_INV_srl8[46]~14_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[44]~12_combout\,
	datae => \ALT_INV_srl8[50]~18_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[44]~44_combout\);

-- Location: LABCELL_X53_Y6_N27
\Output~212\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~212_combout\ = ( \srl2[43]~43_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[44]~44_combout\) ) ) # ( !\srl2[43]~43_combout\ & ( (\ShiftCount[0]~input_o\ & \srl2[44]~44_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[44]~44_combout\,
	dataf => \ALT_INV_srl2[43]~43_combout\,
	combout => \Output~212_combout\);

-- Location: LABCELL_X48_Y4_N12
\Output~213\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~213_combout\ = ( \Output~155_combout\ & ( \Input[59]~input_o\ & ( (!\Output~156_combout\) # (\Input[63]~input_o\) ) ) ) # ( !\Output~155_combout\ & ( \Input[59]~input_o\ & ( (!\Output~156_combout\ & ((\Input[51]~input_o\))) # (\Output~156_combout\ 
-- & (\Input[43]~input_o\)) ) ) ) # ( \Output~155_combout\ & ( !\Input[59]~input_o\ & ( (\Output~156_combout\ & \Input[63]~input_o\) ) ) ) # ( !\Output~155_combout\ & ( !\Input[59]~input_o\ & ( (!\Output~156_combout\ & ((\Input[51]~input_o\))) # 
-- (\Output~156_combout\ & (\Input[43]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[43]~input_o\,
	datab => \ALT_INV_Output~156_combout\,
	datac => \ALT_INV_Input[51]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Output~155_combout\,
	dataf => \ALT_INV_Input[59]~input_o\,
	combout => \Output~213_combout\);

-- Location: MLABCELL_X47_Y4_N6
\Output~214\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~214_combout\ = ( \Input[45]~input_o\ & ( \Input[47]~input_o\ & ( ((!\Output~0_combout\ & (\Input[44]~input_o\)) # (\Output~0_combout\ & ((\Output~213_combout\)))) # (\Output~158_combout\) ) ) ) # ( !\Input[45]~input_o\ & ( \Input[47]~input_o\ & ( 
-- (!\Output~0_combout\ & (\Input[44]~input_o\ & ((!\Output~158_combout\)))) # (\Output~0_combout\ & (((\Output~158_combout\) # (\Output~213_combout\)))) ) ) ) # ( \Input[45]~input_o\ & ( !\Input[47]~input_o\ & ( (!\Output~0_combout\ & 
-- (((\Output~158_combout\)) # (\Input[44]~input_o\))) # (\Output~0_combout\ & (((\Output~213_combout\ & !\Output~158_combout\)))) ) ) ) # ( !\Input[45]~input_o\ & ( !\Input[47]~input_o\ & ( (!\Output~158_combout\ & ((!\Output~0_combout\ & 
-- (\Input[44]~input_o\)) # (\Output~0_combout\ & ((\Output~213_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Input[44]~input_o\,
	datac => \ALT_INV_Output~213_combout\,
	datad => \ALT_INV_Output~158_combout\,
	datae => \ALT_INV_Input[45]~input_o\,
	dataf => \ALT_INV_Input[47]~input_o\,
	combout => \Output~214_combout\);

-- Location: LABCELL_X53_Y6_N0
\Output~215\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~215_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~214_combout\ & ( (\ShiftFN[0]~input_o\) # (\Output~212_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Output~214_combout\ & ( (!\ShiftFN[0]~input_o\ & ((\Arith[43]~input_o\))) # 
-- (\ShiftFN[0]~input_o\ & (\Output~211_combout\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Output~214_combout\ & ( (\Output~212_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Output~214_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((\Arith[43]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~211_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~211_combout\,
	datab => \ALT_INV_Arith[43]~input_o\,
	datac => \ALT_INV_Output~212_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Output~214_combout\,
	combout => \Output~215_combout\);

-- Location: MLABCELL_X52_Y4_N9
\srl8[51]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[51]~19_combout\ = ( \ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[59]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[51]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[51]~input_o\,
	datac => \ALT_INV_Input[59]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[51]~19_combout\);

-- Location: LABCELL_X51_Y4_N36
\srl2[45]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[45]~45_combout\ = ( \srl8[51]~19_combout\ & ( \srl8[49]~17_combout\ & ( ((!\ShiftCount[1]~input_o\ & ((\srl8[45]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[47]~15_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[51]~19_combout\ & ( 
-- \srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\srl8[45]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[47]~15_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[1]~input_o\)))) ) ) ) # ( 
-- \srl8[51]~19_combout\ & ( !\srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\srl8[45]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[47]~15_combout\)))) # (\ShiftCount[2]~input_o\ & (((\ShiftCount[1]~input_o\)))) ) 
-- ) ) # ( !\srl8[51]~19_combout\ & ( !\srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[1]~input_o\ & ((\srl8[45]~13_combout\))) # (\ShiftCount[1]~input_o\ & (\srl8[47]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[47]~15_combout\,
	datac => \ALT_INV_ShiftCount[1]~input_o\,
	datad => \ALT_INV_srl8[45]~13_combout\,
	datae => \ALT_INV_srl8[51]~19_combout\,
	dataf => \ALT_INV_srl8[49]~17_combout\,
	combout => \srl2[45]~45_combout\);

-- Location: LABCELL_X53_Y6_N24
\Output~217\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~217_combout\ = (!\ShiftCount[0]~input_o\ & (\srl2[44]~44_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[45]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[44]~44_combout\,
	datac => \ALT_INV_srl2[45]~45_combout\,
	combout => \Output~217_combout\);

-- Location: LABCELL_X48_Y4_N18
\Output~218\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~218_combout\ = ( \Input[52]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ & ((\Input[44]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Input[52]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ 
-- & ((\Input[44]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( \Input[52]~input_o\ & ( !\Output~156_combout\ & ( (!\Output~155_combout\) # (\Input[60]~input_o\) ) ) ) # ( !\Input[52]~input_o\ & ( !\Output~156_combout\ & ( 
-- (\Input[60]~input_o\ & \Output~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[60]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_Output~155_combout\,
	datae => \ALT_INV_Input[52]~input_o\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~218_combout\);

-- Location: MLABCELL_X47_Y4_N12
\Output~219\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~219_combout\ = ( \Input[45]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & (\Input[46]~input_o\)) # (\Output~0_combout\ & ((\Input[48]~input_o\))) ) ) ) # ( !\Input[45]~input_o\ & ( \Output~158_combout\ & ( (!\Output~0_combout\ & 
-- (\Input[46]~input_o\)) # (\Output~0_combout\ & ((\Input[48]~input_o\))) ) ) ) # ( \Input[45]~input_o\ & ( !\Output~158_combout\ & ( (!\Output~0_combout\) # (\Output~218_combout\) ) ) ) # ( !\Input[45]~input_o\ & ( !\Output~158_combout\ & ( 
-- (\Output~218_combout\ & \Output~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[46]~input_o\,
	datab => \ALT_INV_Output~218_combout\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Input[48]~input_o\,
	datae => \ALT_INV_Input[45]~input_o\,
	dataf => \ALT_INV_Output~158_combout\,
	combout => \Output~219_combout\);

-- Location: IOIBUF_X8_Y0_N35
\Arith[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(44),
	o => \Arith[44]~input_o\);

-- Location: LABCELL_X56_Y5_N9
\sll16[44]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[44]~44_combout\ = ( \Input[28]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\) # (\Input[44]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[12]~input_o\ & ((!\ShiftCount[4]~input_o\)))) ) ) # ( !\Input[28]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & ((\Input[44]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[12]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[44]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \sll16[44]~44_combout\);

-- Location: LABCELL_X55_Y5_N30
\sll4[44]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[44]~45_combout\ = ( \sll16[32]~32_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[36]~36_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[32]~32_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[36]~36_combout\) ) ) 
-- ) # ( \sll16[32]~32_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[44]~44_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[40]~40_combout\))) ) ) ) # ( !\sll16[32]~32_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[44]~44_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[40]~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[44]~44_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[40]~40_combout\,
	datad => \ALT_INV_sll16[36]~36_combout\,
	datae => \ALT_INV_sll16[32]~32_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[44]~45_combout\);

-- Location: LABCELL_X53_Y6_N6
\Output~216\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~216_combout\ = ( \sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[41]~42_combout\) ) ) ) # ( !\sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[41]~42_combout\ & \ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[44]~45_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[43]~44_combout\))) ) ) ) # ( !\sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[44]~45_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[43]~44_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[41]~42_combout\,
	datab => \ALT_INV_sll4[44]~45_combout\,
	datac => \ALT_INV_sll4[43]~44_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sll4[42]~43_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~216_combout\);

-- Location: LABCELL_X53_Y6_N42
\Output~220\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~220_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~216_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Output~217_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~219_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Output~216_combout\ & ( 
-- (\ShiftFN[0]~input_o\) # (\Arith[44]~input_o\) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Output~216_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Output~217_combout\)) # (\ShiftFN[0]~input_o\ & ((\Output~219_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( 
-- !\Output~216_combout\ & ( (\Arith[44]~input_o\ & !\ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~217_combout\,
	datab => \ALT_INV_Output~219_combout\,
	datac => \ALT_INV_Arith[44]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Output~216_combout\,
	combout => \Output~220_combout\);

-- Location: LABCELL_X51_Y3_N9
\srl8[52]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[52]~20_combout\ = ( \Input[60]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Input[52]~input_o\) # (\ShiftCount[3]~input_o\)))) ) ) # ( !\Input[60]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & 
-- (!\ShiftCount[4]~input_o\ & \Input[52]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000001000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[52]~input_o\,
	dataf => \ALT_INV_Input[60]~input_o\,
	combout => \srl8[52]~20_combout\);

-- Location: LABCELL_X51_Y3_N12
\srl2[46]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[46]~46_combout\ = ( \srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) ) ) ) # ( !\srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) ) ) ) # ( \srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[46]~14_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[46]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[48]~16_combout\,
	datab => \ALT_INV_srl8[52]~20_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[46]~14_combout\,
	datae => \ALT_INV_srl8[50]~18_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[46]~46_combout\);

-- Location: MLABCELL_X47_Y4_N51
\Output~222\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~222_combout\ = ( \srl2[46]~46_combout\ & ( (\srl2[45]~45_combout\) # (\ShiftCount[0]~input_o\) ) ) # ( !\srl2[46]~46_combout\ & ( (!\ShiftCount[0]~input_o\ & \srl2[45]~45_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_srl2[45]~45_combout\,
	datae => \ALT_INV_srl2[46]~46_combout\,
	combout => \Output~222_combout\);

-- Location: MLABCELL_X59_Y4_N27
\sll16[45]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[45]~45_combout\ = ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[29]~input_o\) ) ) # ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[45]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[13]~input_o\,
	datac => \ALT_INV_Input[29]~input_o\,
	datad => \ALT_INV_Input[45]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[45]~45_combout\);

-- Location: LABCELL_X57_Y7_N48
\sll4[45]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[45]~46_combout\ = ( \sll16[37]~37_combout\ & ( \sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[45]~45_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[33]~33_combout\)))) ) 
-- ) ) # ( !\sll16[37]~37_combout\ & ( \sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[45]~45_combout\))) # (\ShiftCount[3]~input_o\ & (((\sll16[33]~33_combout\ & \ShiftCount[2]~input_o\)))) ) ) ) # ( 
-- \sll16[37]~37_combout\ & ( !\sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[45]~45_combout\ & ((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[33]~33_combout\)))) ) ) ) # ( 
-- !\sll16[37]~37_combout\ & ( !\sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[45]~45_combout\ & ((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((\sll16[33]~33_combout\ & \ShiftCount[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[45]~45_combout\,
	datab => \ALT_INV_sll16[33]~33_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sll16[37]~37_combout\,
	dataf => \ALT_INV_sll16[41]~41_combout\,
	combout => \sll4[45]~46_combout\);

-- Location: LABCELL_X53_Y6_N48
\Output~221\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~221_combout\ = ( \sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\sll4[43]~44_combout\) ) ) ) # ( !\sll4[42]~43_combout\ & ( \ShiftCount[1]~input_o\ & ( (\sll4[43]~44_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # 
-- ( \sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[45]~46_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[44]~45_combout\))) ) ) ) # ( !\sll4[42]~43_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[45]~46_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[44]~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[45]~46_combout\,
	datab => \ALT_INV_sll4[44]~45_combout\,
	datac => \ALT_INV_sll4[43]~44_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_sll4[42]~43_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~221_combout\);

-- Location: IOIBUF_X4_Y0_N52
\Arith[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(45),
	o => \Arith[45]~input_o\);

-- Location: LABCELL_X50_Y5_N42
\Output~223\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~223_combout\ = ( \Input[45]~input_o\ & ( \Input[61]~input_o\ & ( (!\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[53]~input_o\))) # (\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( 
-- !\Input[45]~input_o\ & ( \Input[61]~input_o\ & ( (!\Output~156_combout\ & (((\Output~155_combout\)) # (\Input[53]~input_o\))) # (\Output~156_combout\ & (((\Output~155_combout\ & \Input[63]~input_o\)))) ) ) ) # ( \Input[45]~input_o\ & ( 
-- !\Input[61]~input_o\ & ( (!\Output~156_combout\ & (\Input[53]~input_o\ & (!\Output~155_combout\))) # (\Output~156_combout\ & (((!\Output~155_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( !\Input[45]~input_o\ & ( !\Input[61]~input_o\ & ( 
-- (!\Output~156_combout\ & (\Input[53]~input_o\ & (!\Output~155_combout\))) # (\Output~156_combout\ & (((\Output~155_combout\ & \Input[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~156_combout\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Output~155_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[45]~input_o\,
	dataf => \ALT_INV_Input[61]~input_o\,
	combout => \Output~223_combout\);

-- Location: MLABCELL_X47_Y4_N54
\Output~224\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~224_combout\ = ( \Input[49]~input_o\ & ( \Input[47]~input_o\ & ( ((!\Output~0_combout\ & ((\Input[46]~input_o\))) # (\Output~0_combout\ & (\Output~223_combout\))) # (\Output~158_combout\) ) ) ) # ( !\Input[49]~input_o\ & ( \Input[47]~input_o\ & ( 
-- (!\Output~0_combout\ & (((\Output~158_combout\) # (\Input[46]~input_o\)))) # (\Output~0_combout\ & (\Output~223_combout\ & ((!\Output~158_combout\)))) ) ) ) # ( \Input[49]~input_o\ & ( !\Input[47]~input_o\ & ( (!\Output~0_combout\ & (((\Input[46]~input_o\ 
-- & !\Output~158_combout\)))) # (\Output~0_combout\ & (((\Output~158_combout\)) # (\Output~223_combout\))) ) ) ) # ( !\Input[49]~input_o\ & ( !\Input[47]~input_o\ & ( (!\Output~158_combout\ & ((!\Output~0_combout\ & ((\Input[46]~input_o\))) # 
-- (\Output~0_combout\ & (\Output~223_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Output~223_combout\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_Output~158_combout\,
	datae => \ALT_INV_Input[49]~input_o\,
	dataf => \ALT_INV_Input[47]~input_o\,
	combout => \Output~224_combout\);

-- Location: MLABCELL_X47_Y4_N0
\Output~225\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~225_combout\ = ( \Output~224_combout\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftFN[1]~input_o\) # (\Output~221_combout\) ) ) ) # ( !\Output~224_combout\ & ( \ShiftFN[0]~input_o\ & ( (\Output~221_combout\ & !\ShiftFN[1]~input_o\) ) ) ) # ( 
-- \Output~224_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Arith[45]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Output~222_combout\)) ) ) ) # ( !\Output~224_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((\Arith[45]~input_o\))) # (\ShiftFN[1]~input_o\ & (\Output~222_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~222_combout\,
	datab => \ALT_INV_Output~221_combout\,
	datac => \ALT_INV_Arith[45]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Output~224_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~225_combout\);

-- Location: LABCELL_X56_Y3_N0
\sll16[46]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[46]~46_combout\ = ( \Input[14]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[46]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[30]~input_o\))))) # (\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\)) ) ) # ( 
-- !\Input[14]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[46]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[30]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_Input[30]~input_o\,
	dataf => \ALT_INV_Input[14]~input_o\,
	combout => \sll16[46]~46_combout\);

-- Location: LABCELL_X55_Y6_N12
\sll4[46]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[46]~47_combout\ = ( \sll16[46]~46_combout\ & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sll16[42]~42_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[34]~34_combout\)))) ) ) ) # ( !\sll16[46]~46_combout\ 
-- & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[42]~42_combout\ & ((\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[34]~34_combout\)))) ) ) ) # ( \sll16[46]~46_combout\ & ( 
-- !\sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sll16[42]~42_combout\))) # (\ShiftCount[3]~input_o\ & (((\sll16[34]~34_combout\ & \ShiftCount[2]~input_o\)))) ) ) ) # ( !\sll16[46]~46_combout\ & ( 
-- !\sll16[38]~38_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[42]~42_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[34]~34_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll16[42]~42_combout\,
	datac => \ALT_INV_sll16[34]~34_combout\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sll16[46]~46_combout\,
	dataf => \ALT_INV_sll16[38]~38_combout\,
	combout => \sll4[46]~47_combout\);

-- Location: LABCELL_X53_Y6_N54
\Output~226\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~226_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \sll4[43]~44_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftCount[1]~input_o\ & ( \sll4[44]~45_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftCount[1]~input_o\ 
-- & ( \sll4[45]~46_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( \sll4[46]~47_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[43]~44_combout\,
	datab => \ALT_INV_sll4[44]~45_combout\,
	datac => \ALT_INV_sll4[45]~46_combout\,
	datad => \ALT_INV_sll4[46]~47_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~226_combout\);

-- Location: LABCELL_X48_Y4_N24
\Output~228\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~228_combout\ = ( \Input[54]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ & ((\Input[46]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Input[54]~input_o\ & ( \Output~156_combout\ & ( (!\Output~155_combout\ 
-- & ((\Input[46]~input_o\))) # (\Output~155_combout\ & (\Input[63]~input_o\)) ) ) ) # ( \Input[54]~input_o\ & ( !\Output~156_combout\ & ( (!\Output~155_combout\) # (\Input[62]~input_o\) ) ) ) # ( !\Input[54]~input_o\ & ( !\Output~156_combout\ & ( 
-- (\Input[62]~input_o\ & \Output~155_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[62]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_Output~155_combout\,
	datae => \ALT_INV_Input[54]~input_o\,
	dataf => \ALT_INV_Output~156_combout\,
	combout => \Output~228_combout\);

-- Location: MLABCELL_X47_Y4_N42
\Output~229\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~229_combout\ = ( \Input[48]~input_o\ & ( \Input[47]~input_o\ & ( (!\Output~0_combout\) # ((!\Output~158_combout\ & ((\Output~228_combout\))) # (\Output~158_combout\ & (\Input[50]~input_o\))) ) ) ) # ( !\Input[48]~input_o\ & ( \Input[47]~input_o\ & 
-- ( (!\Output~0_combout\ & (((!\Output~158_combout\)))) # (\Output~0_combout\ & ((!\Output~158_combout\ & ((\Output~228_combout\))) # (\Output~158_combout\ & (\Input[50]~input_o\)))) ) ) ) # ( \Input[48]~input_o\ & ( !\Input[47]~input_o\ & ( 
-- (!\Output~0_combout\ & (((\Output~158_combout\)))) # (\Output~0_combout\ & ((!\Output~158_combout\ & ((\Output~228_combout\))) # (\Output~158_combout\ & (\Input[50]~input_o\)))) ) ) ) # ( !\Input[48]~input_o\ & ( !\Input[47]~input_o\ & ( 
-- (\Output~0_combout\ & ((!\Output~158_combout\ & ((\Output~228_combout\))) # (\Output~158_combout\ & (\Input[50]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~0_combout\,
	datab => \ALT_INV_Input[50]~input_o\,
	datac => \ALT_INV_Output~228_combout\,
	datad => \ALT_INV_Output~158_combout\,
	datae => \ALT_INV_Input[48]~input_o\,
	dataf => \ALT_INV_Input[47]~input_o\,
	combout => \Output~229_combout\);

-- Location: LABCELL_X51_Y4_N30
\srl8[53]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[53]~21_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\Input[53]~input_o\)) # (\ShiftCount[3]~input_o\ & ((\Input[61]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[53]~input_o\,
	datad => \ALT_INV_Input[61]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[53]~21_combout\);

-- Location: LABCELL_X51_Y4_N12
\srl2[47]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[47]~47_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[53]~21_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[47]~15_combout\))) # 
-- (\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[49]~17_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[53]~21_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[49]~17_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[47]~15_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[53]~21_combout\,
	datac => \ALT_INV_srl8[51]~19_combout\,
	datad => \ALT_INV_srl8[47]~15_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[49]~17_combout\,
	combout => \srl2[47]~47_combout\);

-- Location: MLABCELL_X47_Y4_N36
\Output~227\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~227_combout\ = ( \srl2[46]~46_combout\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[47]~47_combout\) ) ) # ( !\srl2[46]~46_combout\ & ( (\srl2[47]~47_combout\ & \ShiftCount[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl2[47]~47_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[46]~46_combout\,
	combout => \Output~227_combout\);

-- Location: IOIBUF_X6_Y0_N35
\Arith[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(46),
	o => \Arith[46]~input_o\);

-- Location: MLABCELL_X47_Y4_N18
\Output~230\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~230_combout\ = ( \Arith[46]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Output~226_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~229_combout\))) ) ) ) # ( !\Arith[46]~input_o\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\Output~226_combout\)) # (\ShiftFN[1]~input_o\ & ((\Output~229_combout\))) ) ) ) # ( \Arith[46]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\Output~227_combout\) ) ) ) # ( !\Arith[46]~input_o\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (\Output~227_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~226_combout\,
	datab => \ALT_INV_Output~229_combout\,
	datac => \ALT_INV_Output~227_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Arith[46]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~230_combout\);

-- Location: LABCELL_X50_Y4_N39
\Output~231\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~231_combout\ = ( !\ShiftCount[2]~input_o\ & ( \ShiftCount[4]~input_o\ ) ) # ( !\ShiftCount[2]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftCount[3]~input_o\) # (\ShiftCount[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \Output~231_combout\);

-- Location: MLABCELL_X52_Y4_N12
\Output~232\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~232_combout\ = ( \Input[51]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & (\Input[47]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( !\Input[51]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & 
-- (\Input[47]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( \Input[51]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~231_combout\) # (\Input[55]~input_o\) ) ) ) # ( !\Input[51]~input_o\ & ( !\sll4[2]~1_combout\ & ( 
-- (\Output~231_combout\ & \Input[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[47]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Output~231_combout\,
	datad => \ALT_INV_Input[55]~input_o\,
	datae => \ALT_INV_Input[51]~input_o\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~232_combout\);

-- Location: LABCELL_X53_Y3_N21
\Output~233\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~233_combout\ = ( \Output~232_combout\ & ( \ShiftCount[1]~input_o\ & ( \Input[49]~input_o\ ) ) ) # ( !\Output~232_combout\ & ( \ShiftCount[1]~input_o\ & ( \Input[49]~input_o\ ) ) ) # ( \Output~232_combout\ & ( !\ShiftCount[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[49]~input_o\,
	datae => \ALT_INV_Output~232_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~233_combout\);

-- Location: LABCELL_X51_Y3_N6
\srl8[54]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[54]~22_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\Input[54]~input_o\)) # (\ShiftCount[3]~input_o\ & ((\Input[62]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[54]~input_o\,
	datad => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[54]~22_combout\);

-- Location: LABCELL_X51_Y3_N18
\srl2[48]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[48]~48_combout\ = ( \srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[54]~22_combout\) ) ) ) # ( !\srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[54]~22_combout\) ) ) ) # 
-- ( \srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) ) ) ) # ( !\srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[48]~16_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[48]~16_combout\,
	datab => \ALT_INV_srl8[52]~20_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[54]~22_combout\,
	datae => \ALT_INV_srl8[50]~18_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[48]~48_combout\);

-- Location: MLABCELL_X47_Y4_N24
\Output~234\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~234_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Input[48]~input_o\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~233_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( 
-- \srl2[48]~48_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \srl2[47]~47_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~233_combout\,
	datab => \ALT_INV_srl2[47]~47_combout\,
	datac => \ALT_INV_srl2[48]~48_combout\,
	datad => \ALT_INV_Input[48]~input_o\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~234_combout\);

-- Location: LABCELL_X62_Y4_N15
\sll16[47]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[47]~47_combout\ = ( \Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[47]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[31]~input_o\))))) # (\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\)))) ) ) # ( 
-- !\Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[47]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111000011000111011100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[47]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[31]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sll16[47]~47_combout\);

-- Location: LABCELL_X60_Y7_N0
\sll4[47]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[47]~48_combout\ = ( \sll16[39]~39_combout\ & ( \sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[35]~35_combout\)))) ) ) ) # ( !\sll16[39]~39_combout\ 
-- & ( \sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[35]~35_combout\))))) ) ) ) # ( 
-- \sll16[39]~39_combout\ & ( !\sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)) # (\ShiftCount[3]~input_o\ & 
-- ((\sll16[35]~35_combout\))))) ) ) ) # ( !\sll16[39]~39_combout\ & ( !\sll16[47]~47_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[35]~35_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[43]~43_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[35]~35_combout\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sll16[39]~39_combout\,
	dataf => \ALT_INV_sll16[47]~47_combout\,
	combout => \sll4[47]~48_combout\);

-- Location: LABCELL_X55_Y7_N0
\Output~235\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~235_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[44]~45_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[46]~47_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[45]~46_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[47]~48_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[46]~47_combout\,
	datab => \ALT_INV_sll4[45]~46_combout\,
	datac => \ALT_INV_sll4[44]~45_combout\,
	datad => \ALT_INV_sll4[47]~48_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~235_combout\);

-- Location: IOIBUF_X40_Y81_N52
\Arith[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(47),
	o => \Arith[47]~input_o\);

-- Location: MLABCELL_X47_Y5_N39
\Output~236\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~236_combout\ = ( \ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~234_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~235_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( 
-- \Output~234_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \Arith[47]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~234_combout\,
	datab => \ALT_INV_Output~235_combout\,
	datac => \ALT_INV_Arith[47]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~236_combout\);

-- Location: MLABCELL_X52_Y4_N18
\srl8[55]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[55]~23_combout\ = ( \ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\Input[63]~input_o\ & !\ShiftCount[5]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[55]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[55]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[55]~23_combout\);

-- Location: LABCELL_X51_Y4_N18
\srl2[49]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[49]~49_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[55]~23_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[49]~17_combout\ & ( 
-- (!\ShiftCount[2]~input_o\) # (\srl8[53]~21_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[49]~17_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[55]~23_combout\))) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[49]~17_combout\ & ( (\ShiftCount[2]~input_o\ & \srl8[53]~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[53]~21_combout\,
	datac => \ALT_INV_srl8[51]~19_combout\,
	datad => \ALT_INV_srl8[55]~23_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[49]~17_combout\,
	combout => \srl2[49]~49_combout\);

-- Location: MLABCELL_X52_Y3_N0
\Output~237\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~237_combout\ = ( \Input[56]~input_o\ & ( \Input[52]~input_o\ & ( (!\sll4[2]~1_combout\) # ((!\Output~231_combout\ & (\Input[48]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\)))) ) ) ) # ( !\Input[56]~input_o\ & ( \Input[52]~input_o\ & 
-- ( (!\Output~231_combout\ & (((!\sll4[2]~1_combout\)) # (\Input[48]~input_o\))) # (\Output~231_combout\ & (((\Input[63]~input_o\ & \sll4[2]~1_combout\)))) ) ) ) # ( \Input[56]~input_o\ & ( !\Input[52]~input_o\ & ( (!\Output~231_combout\ & 
-- (\Input[48]~input_o\ & ((\sll4[2]~1_combout\)))) # (\Output~231_combout\ & (((!\sll4[2]~1_combout\) # (\Input[63]~input_o\)))) ) ) ) # ( !\Input[56]~input_o\ & ( !\Input[52]~input_o\ & ( (\sll4[2]~1_combout\ & ((!\Output~231_combout\ & 
-- (\Input[48]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[48]~input_o\,
	datab => \ALT_INV_Output~231_combout\,
	datac => \ALT_INV_Input[63]~input_o\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_Input[52]~input_o\,
	combout => \Output~237_combout\);

-- Location: LABCELL_X50_Y3_N0
\Output~238\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~238_combout\ = ( \Input[50]~input_o\ & ( (\ShiftCount[1]~input_o\) # (\Output~237_combout\) ) ) # ( !\Input[50]~input_o\ & ( (\Output~237_combout\ & !\ShiftCount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Output~237_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_Input[50]~input_o\,
	combout => \Output~238_combout\);

-- Location: LABCELL_X50_Y3_N6
\Output~239\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~239_combout\ = ( \Output~238_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\Input[49]~input_o\) ) ) ) # ( !\Output~238_combout\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\ & \Input[49]~input_o\) ) ) ) # ( 
-- \Output~238_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[48]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[49]~49_combout\))) ) ) ) # ( !\Output~238_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[48]~48_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[49]~49_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_Input[49]~input_o\,
	datac => \ALT_INV_srl2[48]~48_combout\,
	datad => \ALT_INV_srl2[49]~49_combout\,
	datae => \ALT_INV_Output~238_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~239_combout\);

-- Location: IOIBUF_X38_Y81_N35
\Arith[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(48),
	o => \Arith[48]~input_o\);

-- Location: LABCELL_X57_Y5_N54
\sll16[48]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[48]~48_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[0]~input_o\ & ( (\ShiftCount[4]~input_o\) # (\Input[16]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[0]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Input[48]~input_o\))) # 
-- (\ShiftCount[4]~input_o\ & (\Input[32]~input_o\)) ) ) ) # ( \ShiftCount[5]~input_o\ & ( !\Input[0]~input_o\ & ( (\Input[16]~input_o\ & !\ShiftCount[4]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\Input[0]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- ((\Input[48]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[32]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[32]~input_o\,
	datab => \ALT_INV_Input[16]~input_o\,
	datac => \ALT_INV_Input[48]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[0]~input_o\,
	combout => \sll16[48]~48_combout\);

-- Location: LABCELL_X55_Y5_N36
\sll4[48]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[48]~49_combout\ = ( \sll16[36]~36_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[40]~40_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[36]~36_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[40]~40_combout\) ) ) 
-- ) # ( \sll16[36]~36_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[48]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[44]~44_combout\)) ) ) ) # ( !\sll16[36]~36_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\sll16[48]~48_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[44]~44_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[44]~44_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[40]~40_combout\,
	datad => \ALT_INV_sll16[48]~48_combout\,
	datae => \ALT_INV_sll16[36]~36_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[48]~49_combout\);

-- Location: LABCELL_X55_Y7_N6
\Output~240\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~240_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[45]~46_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[47]~48_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[46]~47_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[48]~49_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[46]~47_combout\,
	datab => \ALT_INV_sll4[45]~46_combout\,
	datac => \ALT_INV_sll4[48]~49_combout\,
	datad => \ALT_INV_sll4[47]~48_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~240_combout\);

-- Location: MLABCELL_X47_Y5_N12
\Output~241\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~241_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~239_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[48]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~240_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010101010100110011000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~239_combout\,
	datab => \ALT_INV_Arith[48]~input_o\,
	datac => \ALT_INV_Output~240_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~241_combout\);

-- Location: IOIBUF_X4_Y0_N35
\Arith[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(49),
	o => \Arith[49]~input_o\);

-- Location: LABCELL_X56_Y3_N15
\srl8[56]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[56]~24_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[56]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[56]~24_combout\);

-- Location: LABCELL_X51_Y3_N24
\srl2[50]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[50]~50_combout\ = ( \srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) ) ) ) # ( !\srl8[50]~18_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) ) ) ) # ( \srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[54]~22_combout\) ) ) ) # ( 
-- !\srl8[50]~18_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\ShiftCount[2]~input_o\ & \srl8[54]~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[56]~24_combout\,
	datab => \ALT_INV_srl8[52]~20_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[54]~22_combout\,
	datae => \ALT_INV_srl8[50]~18_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[50]~50_combout\);

-- Location: LABCELL_X50_Y3_N12
\Output~242\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~242_combout\ = ( \Input[63]~input_o\ & ( \sll4[2]~1_combout\ & ( (\Input[49]~input_o\) # (\Output~231_combout\) ) ) ) # ( !\Input[63]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & \Input[49]~input_o\) ) ) ) # ( \Input[63]~input_o\ 
-- & ( !\sll4[2]~1_combout\ & ( (!\Output~231_combout\ & ((\Input[53]~input_o\))) # (\Output~231_combout\ & (\Input[57]~input_o\)) ) ) ) # ( !\Input[63]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~231_combout\ & ((\Input[53]~input_o\))) # 
-- (\Output~231_combout\ & (\Input[57]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[57]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Output~231_combout\,
	datad => \ALT_INV_Input[49]~input_o\,
	datae => \ALT_INV_Input[63]~input_o\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~242_combout\);

-- Location: LABCELL_X50_Y3_N51
\Output~243\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~243_combout\ = (!\ShiftCount[1]~input_o\ & (\Output~242_combout\)) # (\ShiftCount[1]~input_o\ & ((\Input[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~242_combout\,
	datad => \ALT_INV_Input[51]~input_o\,
	combout => \Output~243_combout\);

-- Location: LABCELL_X50_Y3_N54
\Output~244\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~244_combout\ = ( \Input[50]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~243_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\Input[50]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \Output~243_combout\) ) ) ) # ( 
-- \Input[50]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[49]~49_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[50]~50_combout\)) ) ) ) # ( !\Input[50]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[49]~49_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[50]~50_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[50]~50_combout\,
	datac => \ALT_INV_Output~243_combout\,
	datad => \ALT_INV_srl2[49]~49_combout\,
	datae => \ALT_INV_Input[50]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~244_combout\);

-- Location: LABCELL_X57_Y6_N18
\sll16[49]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[49]~49_combout\ = ( \Input[1]~input_o\ & ( \Input[17]~input_o\ & ( ((!\ShiftCount[4]~input_o\ & (\Input[49]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[33]~input_o\)))) # (\ShiftCount[5]~input_o\) ) ) ) # ( !\Input[1]~input_o\ & ( 
-- \Input[17]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[49]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[33]~input_o\))))) # (\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\)))) ) ) ) # ( \Input[1]~input_o\ & ( 
-- !\Input[17]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[49]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[33]~input_o\))))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)))) ) ) ) # ( !\Input[1]~input_o\ & ( 
-- !\Input[17]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\ & (\Input[49]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[33]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[49]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[33]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[1]~input_o\,
	dataf => \ALT_INV_Input[17]~input_o\,
	combout => \sll16[49]~49_combout\);

-- Location: LABCELL_X57_Y7_N54
\sll4[49]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[49]~50_combout\ = ( \sll16[45]~45_combout\ & ( \sll16[41]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[49]~49_combout\) # (\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[37]~37_combout\))) ) 
-- ) ) # ( !\sll16[45]~45_combout\ & ( \sll16[41]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[49]~49_combout\) # (\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (\sll16[37]~37_combout\ & (\ShiftCount[3]~input_o\))) ) ) ) # ( 
-- \sll16[45]~45_combout\ & ( !\sll16[41]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \sll16[49]~49_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[37]~37_combout\))) ) ) ) # ( 
-- !\sll16[45]~45_combout\ & ( !\sll16[41]~41_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \sll16[49]~49_combout\)))) # (\ShiftCount[2]~input_o\ & (\sll16[37]~37_combout\ & (\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[37]~37_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[49]~49_combout\,
	datae => \ALT_INV_sll16[45]~45_combout\,
	dataf => \ALT_INV_sll16[41]~41_combout\,
	combout => \sll4[49]~50_combout\);

-- Location: LABCELL_X55_Y7_N12
\Output~245\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~245_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[48]~49_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[47]~48_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[46]~47_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[48]~49_combout\ & ( 
-- (\ShiftCount[0]~input_o\) # (\sll4[49]~50_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[48]~49_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[47]~48_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[46]~47_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\sll4[48]~49_combout\ & ( (\sll4[49]~50_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[46]~47_combout\,
	datab => \ALT_INV_sll4[47]~48_combout\,
	datac => \ALT_INV_sll4[49]~50_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[48]~49_combout\,
	combout => \Output~245_combout\);

-- Location: MLABCELL_X47_Y5_N18
\Output~246\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~246_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~244_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[49]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~245_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110011001101010101000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[49]~input_o\,
	datab => \ALT_INV_Output~244_combout\,
	datac => \ALT_INV_Output~245_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~246_combout\);

-- Location: LABCELL_X50_Y3_N30
\Output~247\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~247_combout\ = ( \Input[54]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & (\Input[50]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( !\Input[54]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & 
-- (\Input[50]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( \Input[54]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~231_combout\) # (\Input[58]~input_o\) ) ) ) # ( !\Input[54]~input_o\ & ( !\sll4[2]~1_combout\ & ( 
-- (\Input[58]~input_o\ & \Output~231_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[50]~input_o\,
	datab => \ALT_INV_Input[58]~input_o\,
	datac => \ALT_INV_Output~231_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[54]~input_o\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~247_combout\);

-- Location: LABCELL_X50_Y3_N48
\Output~248\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~248_combout\ = ( \Input[52]~input_o\ & ( (\Output~247_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[52]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~247_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~247_combout\,
	dataf => \ALT_INV_Input[52]~input_o\,
	combout => \Output~248_combout\);

-- Location: LABCELL_X51_Y4_N24
\srl8[57]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[57]~25_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[57]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_Input[57]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[57]~25_combout\);

-- Location: LABCELL_X51_Y4_N0
\srl2[51]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[51]~51_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[57]~25_combout\ & ( (\srl8[53]~21_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[57]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) # 
-- (\ShiftCount[2]~input_o\ & ((\srl8[55]~23_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[57]~25_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[53]~21_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[57]~25_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[51]~19_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[55]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[53]~21_combout\,
	datac => \ALT_INV_srl8[51]~19_combout\,
	datad => \ALT_INV_srl8[55]~23_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[57]~25_combout\,
	combout => \srl2[51]~51_combout\);

-- Location: LABCELL_X50_Y3_N36
\Output~249\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~249_combout\ = ( \srl2[51]~51_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\Output~248_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[51]~input_o\))) ) ) ) # ( !\srl2[51]~51_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\Output~248_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[51]~input_o\))) ) ) ) # ( \srl2[51]~51_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\srl2[50]~50_combout\) # (\ShiftCount[0]~input_o\) ) ) ) # ( !\srl2[51]~51_combout\ & 
-- ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & \srl2[50]~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_srl2[50]~50_combout\,
	datac => \ALT_INV_Output~248_combout\,
	datad => \ALT_INV_Input[51]~input_o\,
	datae => \ALT_INV_srl2[51]~51_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~249_combout\);

-- Location: IOIBUF_X36_Y81_N18
\Arith[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(50),
	o => \Arith[50]~input_o\);

-- Location: LABCELL_X55_Y6_N18
\sll16[50]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[50]~50_combout\ = ( \Input[50]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[34]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[2]~input_o\)) ) ) ) # ( !\Input[50]~input_o\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((\Input[34]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[2]~input_o\)) ) ) ) # ( \Input[50]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\) # (\Input[18]~input_o\) ) ) ) # ( !\Input[50]~input_o\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (\ShiftCount[5]~input_o\ & \Input[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_Input[2]~input_o\,
	datac => \ALT_INV_Input[34]~input_o\,
	datad => \ALT_INV_Input[18]~input_o\,
	datae => \ALT_INV_Input[50]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[50]~50_combout\);

-- Location: LABCELL_X55_Y6_N24
\sll4[50]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[50]~51_combout\ = ( \sll16[46]~46_combout\ & ( \sll16[38]~38_combout\ & ( ((!\ShiftCount[3]~input_o\ & (\sll16[50]~50_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[42]~42_combout\)))) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[46]~46_combout\ 
-- & ( \sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[50]~50_combout\ & ((!\ShiftCount[2]~input_o\)))) # (\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\) # (\sll16[42]~42_combout\)))) ) ) ) # ( \sll16[46]~46_combout\ & ( 
-- !\sll16[38]~38_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[50]~50_combout\))) # (\ShiftCount[3]~input_o\ & (((\sll16[42]~42_combout\ & !\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sll16[46]~46_combout\ & ( 
-- !\sll16[38]~38_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[50]~50_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[42]~42_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[50]~50_combout\,
	datab => \ALT_INV_sll16[42]~42_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_sll16[46]~46_combout\,
	dataf => \ALT_INV_sll16[38]~38_combout\,
	combout => \sll4[50]~51_combout\);

-- Location: LABCELL_X55_Y7_N18
\Output~250\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~250_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[47]~48_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[49]~50_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[48]~49_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[50]~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[49]~50_combout\,
	datab => \ALT_INV_sll4[50]~51_combout\,
	datac => \ALT_INV_sll4[48]~49_combout\,
	datad => \ALT_INV_sll4[47]~48_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~250_combout\);

-- Location: LABCELL_X51_Y6_N48
\Output~251\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~251_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~249_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~249_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Output~250_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[50]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~249_combout\,
	datac => \ALT_INV_Arith[50]~input_o\,
	datad => \ALT_INV_Output~250_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~251_combout\);

-- Location: LABCELL_X61_Y4_N54
\sll16[51]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[51]~51_combout\ = ( \Input[35]~input_o\ & ( \Input[51]~input_o\ & ( (!\ShiftCount[5]~input_o\) # ((!\ShiftCount[4]~input_o\ & (\Input[19]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[3]~input_o\)))) ) ) ) # ( !\Input[35]~input_o\ & ( 
-- \Input[51]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\Input[19]~input_o\))) # (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\ & \Input[3]~input_o\)))) ) ) ) # ( \Input[35]~input_o\ & ( !\Input[51]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & (\Input[19]~input_o\ & (\ShiftCount[5]~input_o\))) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\) # (\Input[3]~input_o\)))) ) ) ) # ( !\Input[35]~input_o\ & ( !\Input[51]~input_o\ & ( (\ShiftCount[5]~input_o\ & 
-- ((!\ShiftCount[4]~input_o\ & (\Input[19]~input_o\)) # (\ShiftCount[4]~input_o\ & ((\Input[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[19]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[3]~input_o\,
	datae => \ALT_INV_Input[35]~input_o\,
	dataf => \ALT_INV_Input[51]~input_o\,
	combout => \sll16[51]~51_combout\);

-- Location: LABCELL_X60_Y7_N6
\sll4[51]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[51]~52_combout\ = ( \sll16[39]~39_combout\ & ( \sll16[47]~47_combout\ & ( ((!\ShiftCount[3]~input_o\ & ((\sll16[51]~51_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\))) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[39]~39_combout\ 
-- & ( \sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[51]~51_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)))) ) ) ) # ( 
-- \sll16[39]~39_combout\ & ( !\sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[51]~51_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)))) # (\ShiftCount[2]~input_o\ & 
-- (((\ShiftCount[3]~input_o\)))) ) ) ) # ( !\sll16[39]~39_combout\ & ( !\sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[51]~51_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[43]~43_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[43]~43_combout\,
	datab => \ALT_INV_sll16[51]~51_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_sll16[39]~39_combout\,
	dataf => \ALT_INV_sll16[47]~47_combout\,
	combout => \sll4[51]~52_combout\);

-- Location: LABCELL_X55_Y7_N24
\Output~255\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~255_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[48]~49_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[50]~51_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[49]~50_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[51]~52_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[49]~50_combout\,
	datab => \ALT_INV_sll4[50]~51_combout\,
	datac => \ALT_INV_sll4[48]~49_combout\,
	datad => \ALT_INV_sll4[51]~52_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~255_combout\);

-- Location: MLABCELL_X52_Y3_N36
\Output~252\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~252_combout\ = ( \sll4[2]~1_combout\ & ( \Input[55]~input_o\ & ( (!\Output~231_combout\ & ((\Input[51]~input_o\))) # (\Output~231_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\sll4[2]~1_combout\ & ( \Input[55]~input_o\ & ( (!\Output~231_combout\) 
-- # (\Input[59]~input_o\) ) ) ) # ( \sll4[2]~1_combout\ & ( !\Input[55]~input_o\ & ( (!\Output~231_combout\ & ((\Input[51]~input_o\))) # (\Output~231_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\sll4[2]~1_combout\ & ( !\Input[55]~input_o\ & ( 
-- (\Output~231_combout\ & \Input[59]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_Output~231_combout\,
	datac => \ALT_INV_Input[59]~input_o\,
	datad => \ALT_INV_Input[51]~input_o\,
	datae => \ALT_INV_sll4[2]~1_combout\,
	dataf => \ALT_INV_Input[55]~input_o\,
	combout => \Output~252_combout\);

-- Location: LABCELL_X55_Y3_N30
\Output~253\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~253_combout\ = (!\ShiftCount[1]~input_o\ & ((\Output~252_combout\))) # (\ShiftCount[1]~input_o\ & (\Input[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Output~252_combout\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~253_combout\);

-- Location: LABCELL_X56_Y3_N12
\srl8[58]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[58]~26_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[58]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[58]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[58]~26_combout\);

-- Location: LABCELL_X51_Y3_N0
\srl2[52]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[52]~52_combout\ = ( \srl8[58]~26_combout\ & ( \ShiftCount[1]~input_o\ & ( (\srl8[54]~22_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\srl8[58]~26_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[54]~22_combout\) ) ) ) # 
-- ( \srl8[58]~26_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) ) ) ) # ( !\srl8[58]~26_combout\ & ( !\ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[52]~20_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[56]~24_combout\,
	datab => \ALT_INV_srl8[52]~20_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[54]~22_combout\,
	datae => \ALT_INV_srl8[58]~26_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[52]~52_combout\);

-- Location: MLABCELL_X52_Y6_N48
\Output~254\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~254_combout\ = ( \srl2[52]~52_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\Output~253_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[52]~input_o\))) ) ) ) # ( !\srl2[52]~52_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\Output~253_combout\)) # (\ShiftCount[0]~input_o\ & ((\Input[52]~input_o\))) ) ) ) # ( \srl2[52]~52_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\srl2[51]~51_combout\) ) ) ) # ( !\srl2[52]~52_combout\ & 
-- ( !\ShiftFN[0]~input_o\ & ( (\srl2[51]~51_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~253_combout\,
	datab => \ALT_INV_srl2[51]~51_combout\,
	datac => \ALT_INV_Input[52]~input_o\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[52]~52_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~254_combout\);

-- Location: IOIBUF_X64_Y81_N35
\Arith[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(51),
	o => \Arith[51]~input_o\);

-- Location: LABCELL_X62_Y6_N30
\Output~256\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~256_combout\ = ( \Arith[51]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Output~255_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Output~254_combout\)))) ) ) # ( !\Arith[51]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\ShiftFN[0]~input_o\ & (\Output~255_combout\))) # (\ShiftFN[1]~input_o\ & (((\Output~254_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~255_combout\,
	datad => \ALT_INV_Output~254_combout\,
	dataf => \ALT_INV_Arith[51]~input_o\,
	combout => \Output~256_combout\);

-- Location: MLABCELL_X52_Y3_N12
\Output~257\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~257_combout\ = ( \Input[56]~input_o\ & ( \Input[52]~input_o\ & ( (!\Output~231_combout\) # ((!\sll4[2]~1_combout\ & (\Input[60]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[63]~input_o\)))) ) ) ) # ( !\Input[56]~input_o\ & ( \Input[52]~input_o\ & 
-- ( (!\Output~231_combout\ & (((\sll4[2]~1_combout\)))) # (\Output~231_combout\ & ((!\sll4[2]~1_combout\ & (\Input[60]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[63]~input_o\))))) ) ) ) # ( \Input[56]~input_o\ & ( !\Input[52]~input_o\ & ( 
-- (!\Output~231_combout\ & (((!\sll4[2]~1_combout\)))) # (\Output~231_combout\ & ((!\sll4[2]~1_combout\ & (\Input[60]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[63]~input_o\))))) ) ) ) # ( !\Input[56]~input_o\ & ( !\Input[52]~input_o\ & ( 
-- (\Output~231_combout\ & ((!\sll4[2]~1_combout\ & (\Input[60]~input_o\)) # (\sll4[2]~1_combout\ & ((\Input[63]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[60]~input_o\,
	datab => \ALT_INV_Output~231_combout\,
	datac => \ALT_INV_Input[63]~input_o\,
	datad => \ALT_INV_sll4[2]~1_combout\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_Input[52]~input_o\,
	combout => \Output~257_combout\);

-- Location: LABCELL_X51_Y3_N36
\Output~258\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~258_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[54]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~257_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Input[54]~input_o\,
	datad => \ALT_INV_Output~257_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~258_combout\);

-- Location: LABCELL_X51_Y4_N6
\srl8[59]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[59]~27_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[59]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[59]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[59]~27_combout\);

-- Location: LABCELL_X51_Y4_N42
\srl2[53]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[53]~53_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[59]~27_combout\ & ( (\srl8[55]~23_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[59]~27_combout\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[53]~21_combout\))) # 
-- (\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[59]~27_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[55]~23_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[59]~27_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\srl8[53]~21_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[55]~23_combout\,
	datac => \ALT_INV_srl8[57]~25_combout\,
	datad => \ALT_INV_srl8[53]~21_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[59]~27_combout\,
	combout => \srl2[53]~53_combout\);

-- Location: LABCELL_X50_Y3_N42
\Output~259\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~259_combout\ = ( \srl2[53]~53_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\Output~258_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[53]~input_o\)) ) ) ) # ( !\srl2[53]~53_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\Output~258_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[53]~input_o\)) ) ) ) # ( \srl2[53]~53_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\srl2[52]~52_combout\) ) ) ) # ( !\srl2[53]~53_combout\ & 
-- ( !\ShiftFN[0]~input_o\ & ( (\srl2[52]~52_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[52]~52_combout\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_Output~258_combout\,
	datae => \ALT_INV_srl2[53]~53_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~259_combout\);

-- Location: LABCELL_X57_Y3_N54
\sll16[52]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[52]~52_combout\ = ( \Input[20]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[36]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[4]~input_o\)) ) ) ) # ( !\Input[20]~input_o\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((\Input[36]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[4]~input_o\)) ) ) ) # ( \Input[20]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[52]~input_o\) ) ) ) # ( !\Input[20]~input_o\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (\Input[52]~input_o\ & !\ShiftCount[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[52]~input_o\,
	datab => \ALT_INV_Input[4]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[36]~input_o\,
	datae => \ALT_INV_Input[20]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[52]~52_combout\);

-- Location: LABCELL_X55_Y5_N42
\sll4[52]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[52]~53_combout\ = ( \sll16[44]~44_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[40]~40_combout\) ) ) ) # ( !\sll16[44]~44_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[40]~40_combout\ & \ShiftCount[2]~input_o\) ) ) 
-- ) # ( \sll16[44]~44_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[52]~52_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[48]~48_combout\))) ) ) ) # ( !\sll16[44]~44_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[52]~52_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[48]~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[40]~40_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[52]~52_combout\,
	datad => \ALT_INV_sll16[48]~48_combout\,
	datae => \ALT_INV_sll16[44]~44_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[52]~53_combout\);

-- Location: LABCELL_X55_Y7_N30
\Output~260\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~260_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[49]~50_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[51]~52_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[50]~51_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[52]~53_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[49]~50_combout\,
	datab => \ALT_INV_sll4[50]~51_combout\,
	datac => \ALT_INV_sll4[52]~53_combout\,
	datad => \ALT_INV_sll4[51]~52_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~260_combout\);

-- Location: IOIBUF_X34_Y81_N75
\Arith[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(52),
	o => \Arith[52]~input_o\);

-- Location: MLABCELL_X47_Y5_N27
\Output~261\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~261_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~259_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Arith[52]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Output~260_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010101010101010100000011110011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~259_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~260_combout\,
	datad => \ALT_INV_Arith[52]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~261_combout\);

-- Location: IOIBUF_X62_Y81_N18
\Arith[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(53),
	o => \Arith[53]~input_o\);

-- Location: MLABCELL_X59_Y4_N54
\sll16[53]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[53]~53_combout\ = ( \Input[5]~input_o\ & ( \Input[37]~input_o\ & ( ((!\ShiftCount[5]~input_o\ & (\Input[53]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[21]~input_o\)))) # (\ShiftCount[4]~input_o\) ) ) ) # ( !\Input[5]~input_o\ & ( 
-- \Input[37]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[53]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[21]~input_o\))))) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)))) ) ) ) # ( \Input[5]~input_o\ & ( 
-- !\Input[37]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[53]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[21]~input_o\))))) # (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\)))) ) ) ) # ( !\Input[5]~input_o\ & ( 
-- !\Input[37]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[53]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[21]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[21]~input_o\,
	datae => \ALT_INV_Input[5]~input_o\,
	dataf => \ALT_INV_Input[37]~input_o\,
	combout => \sll16[53]~53_combout\);

-- Location: LABCELL_X57_Y7_N0
\sll4[53]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[53]~54_combout\ = ( \ShiftCount[2]~input_o\ & ( \sll16[41]~41_combout\ & ( (\sll16[49]~49_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( \sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & ((\sll16[53]~53_combout\))) 
-- # (\ShiftCount[3]~input_o\ & (\sll16[45]~45_combout\)) ) ) ) # ( \ShiftCount[2]~input_o\ & ( !\sll16[41]~41_combout\ & ( (!\ShiftCount[3]~input_o\ & \sll16[49]~49_combout\) ) ) ) # ( !\ShiftCount[2]~input_o\ & ( !\sll16[41]~41_combout\ & ( 
-- (!\ShiftCount[3]~input_o\ & ((\sll16[53]~53_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[45]~45_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[45]~45_combout\,
	datab => \ALT_INV_sll16[53]~53_combout\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[49]~49_combout\,
	datae => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_sll16[41]~41_combout\,
	combout => \sll4[53]~54_combout\);

-- Location: LABCELL_X55_Y7_N36
\Output~265\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~265_combout\ = ( \sll4[50]~51_combout\ & ( \sll4[51]~52_combout\ & ( ((!\ShiftCount[0]~input_o\ & ((\sll4[53]~54_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[52]~53_combout\))) # (\ShiftCount[1]~input_o\) ) ) ) # ( !\sll4[50]~51_combout\ & ( 
-- \sll4[51]~52_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[53]~54_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[52]~53_combout\)))) # (\ShiftCount[1]~input_o\ & (!\ShiftCount[0]~input_o\)) ) ) ) # ( \sll4[50]~51_combout\ 
-- & ( !\sll4[51]~52_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[53]~54_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[52]~53_combout\)))) # (\ShiftCount[1]~input_o\ & (\ShiftCount[0]~input_o\)) ) ) ) # ( 
-- !\sll4[50]~51_combout\ & ( !\sll4[51]~52_combout\ & ( (!\ShiftCount[1]~input_o\ & ((!\ShiftCount[0]~input_o\ & ((\sll4[53]~54_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[52]~53_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_sll4[52]~53_combout\,
	datad => \ALT_INV_sll4[53]~54_combout\,
	datae => \ALT_INV_sll4[50]~51_combout\,
	dataf => \ALT_INV_sll4[51]~52_combout\,
	combout => \Output~265_combout\);

-- Location: LABCELL_X50_Y3_N18
\Output~262\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~262_combout\ = ( \Input[57]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & (\Input[53]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( !\Input[57]~input_o\ & ( \sll4[2]~1_combout\ & ( (!\Output~231_combout\ & 
-- (\Input[53]~input_o\)) # (\Output~231_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( \Input[57]~input_o\ & ( !\sll4[2]~1_combout\ & ( (!\Output~231_combout\) # (\Input[61]~input_o\) ) ) ) # ( !\Input[57]~input_o\ & ( !\sll4[2]~1_combout\ & ( 
-- (\Input[61]~input_o\ & \Output~231_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[61]~input_o\,
	datab => \ALT_INV_Input[53]~input_o\,
	datac => \ALT_INV_Output~231_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[57]~input_o\,
	dataf => \ALT_INV_sll4[2]~1_combout\,
	combout => \Output~262_combout\);

-- Location: LABCELL_X56_Y4_N6
\Output~263\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~263_combout\ = ( \Input[55]~input_o\ & ( (\Output~262_combout\) # (\ShiftCount[1]~input_o\) ) ) # ( !\Input[55]~input_o\ & ( (!\ShiftCount[1]~input_o\ & \Output~262_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[1]~input_o\,
	datac => \ALT_INV_Output~262_combout\,
	dataf => \ALT_INV_Input[55]~input_o\,
	combout => \Output~263_combout\);

-- Location: LABCELL_X51_Y3_N42
\srl8[60]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[60]~28_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[60]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[60]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[60]~28_combout\);

-- Location: LABCELL_X51_Y3_N48
\srl2[54]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[54]~54_combout\ = ( \srl8[58]~26_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[60]~28_combout\))) ) ) ) # ( !\srl8[58]~26_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[56]~24_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[60]~28_combout\))) ) ) ) # ( \srl8[58]~26_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[54]~22_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( 
-- !\srl8[58]~26_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[54]~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[56]~24_combout\,
	datab => \ALT_INV_srl8[60]~28_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[54]~22_combout\,
	datae => \ALT_INV_srl8[58]~26_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[54]~54_combout\);

-- Location: LABCELL_X50_Y3_N24
\Output~264\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~264_combout\ = ( \Input[54]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~263_combout\) ) ) ) # ( !\Input[54]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~263_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[54]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\srl2[53]~53_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[54]~54_combout\)) ) ) ) # ( !\Input[54]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- ((\srl2[53]~53_combout\))) # (\ShiftCount[0]~input_o\ & (\srl2[54]~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~263_combout\,
	datab => \ALT_INV_srl2[54]~54_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_srl2[53]~53_combout\,
	datae => \ALT_INV_Input[54]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~264_combout\);

-- Location: MLABCELL_X59_Y5_N12
\Output~266\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~266_combout\ = ( \Output~264_combout\ & ( \ShiftFN[1]~input_o\ ) ) # ( \Output~264_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[53]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~265_combout\))) ) ) ) # ( 
-- !\Output~264_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[53]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~265_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Arith[53]~input_o\,
	datac => \ALT_INV_Output~265_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Output~264_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~266_combout\);

-- Location: IOIBUF_X34_Y0_N75
\Arith[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(54),
	o => \Arith[54]~input_o\);

-- Location: LABCELL_X56_Y3_N18
\sll16[54]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[54]~54_combout\ = ( \Input[22]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\Input[38]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[6]~input_o\))) ) ) ) # ( !\Input[22]~input_o\ & ( \ShiftCount[4]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (\Input[38]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[6]~input_o\))) ) ) ) # ( \Input[22]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (\ShiftCount[5]~input_o\) # (\Input[54]~input_o\) ) ) ) # ( !\Input[22]~input_o\ & ( 
-- !\ShiftCount[4]~input_o\ & ( (\Input[54]~input_o\ & !\ShiftCount[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[54]~input_o\,
	datab => \ALT_INV_Input[38]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_Input[6]~input_o\,
	datae => \ALT_INV_Input[22]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[54]~54_combout\);

-- Location: LABCELL_X56_Y7_N30
\sll4[54]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[54]~55_combout\ = ( \sll16[42]~42_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[46]~46_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[42]~42_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[46]~46_combout\) ) ) 
-- ) # ( \sll16[42]~42_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[54]~54_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[50]~50_combout\))) ) ) ) # ( !\sll16[42]~42_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[54]~54_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[50]~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sll16[46]~46_combout\,
	datac => \ALT_INV_sll16[54]~54_combout\,
	datad => \ALT_INV_sll16[50]~50_combout\,
	datae => \ALT_INV_sll16[42]~42_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[54]~55_combout\);

-- Location: LABCELL_X55_Y7_N42
\Output~270\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~270_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[51]~52_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[53]~54_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[52]~53_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[54]~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[54]~55_combout\,
	datab => \ALT_INV_sll4[53]~54_combout\,
	datac => \ALT_INV_sll4[52]~53_combout\,
	datad => \ALT_INV_sll4[51]~52_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~270_combout\);

-- Location: LABCELL_X51_Y4_N9
\srl8[61]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[61]~29_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[61]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[61]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[61]~29_combout\);

-- Location: LABCELL_X51_Y4_N48
\srl2[55]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[55]~55_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[59]~27_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[61]~29_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[59]~27_combout\ & ( 
-- (\srl8[55]~23_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[59]~27_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[61]~29_combout\))) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\srl8[59]~27_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[55]~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[55]~23_combout\,
	datac => \ALT_INV_srl8[57]~25_combout\,
	datad => \ALT_INV_srl8[61]~29_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[59]~27_combout\,
	combout => \srl2[55]~55_combout\);

-- Location: MLABCELL_X52_Y3_N48
\Output~267\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~267_combout\ = ( \sll4[2]~1_combout\ & ( \Input[54]~input_o\ & ( (!\Output~231_combout\) # (\Input[63]~input_o\) ) ) ) # ( !\sll4[2]~1_combout\ & ( \Input[54]~input_o\ & ( (!\Output~231_combout\ & ((\Input[58]~input_o\))) # (\Output~231_combout\ & 
-- (\Input[62]~input_o\)) ) ) ) # ( \sll4[2]~1_combout\ & ( !\Input[54]~input_o\ & ( (\Input[63]~input_o\ & \Output~231_combout\) ) ) ) # ( !\sll4[2]~1_combout\ & ( !\Input[54]~input_o\ & ( (!\Output~231_combout\ & ((\Input[58]~input_o\))) # 
-- (\Output~231_combout\ & (\Input[62]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_Output~231_combout\,
	datac => \ALT_INV_Input[62]~input_o\,
	datad => \ALT_INV_Input[58]~input_o\,
	datae => \ALT_INV_sll4[2]~1_combout\,
	dataf => \ALT_INV_Input[54]~input_o\,
	combout => \Output~267_combout\);

-- Location: LABCELL_X50_Y5_N48
\Output~268\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~268_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[56]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Output~267_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input[56]~input_o\,
	datac => \ALT_INV_Output~267_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~268_combout\);

-- Location: MLABCELL_X52_Y3_N54
\Output~269\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~269_combout\ = ( \srl2[54]~54_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\Output~268_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[55]~input_o\)) ) ) ) # ( !\srl2[54]~54_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\Output~268_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[55]~input_o\)) ) ) ) # ( \srl2[54]~54_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\) # (\srl2[55]~55_combout\) ) ) ) # ( !\srl2[54]~54_combout\ & 
-- ( !\ShiftFN[0]~input_o\ & ( (\srl2[55]~55_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[55]~55_combout\,
	datab => \ALT_INV_ShiftCount[0]~input_o\,
	datac => \ALT_INV_Input[55]~input_o\,
	datad => \ALT_INV_Output~268_combout\,
	datae => \ALT_INV_srl2[54]~54_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~269_combout\);

-- Location: LABCELL_X51_Y6_N57
\Output~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~271_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~269_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~269_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Output~270_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[54]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[54]~input_o\,
	datab => \ALT_INV_Output~270_combout\,
	datac => \ALT_INV_Output~269_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~271_combout\);

-- Location: MLABCELL_X52_Y5_N15
\Output~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~272_combout\ = ( \ShiftCount[3]~input_o\ & ( !\ShiftCount[1]~input_o\ ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( ((\ShiftCount[2]~input_o\) # (\ShiftCount[5]~input_o\)) # (\ShiftCount[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~272_combout\);

-- Location: LABCELL_X53_Y3_N24
\srlout[63]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \srlout[63]~0_combout\ = ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srlout[63]~0_combout\);

-- Location: MLABCELL_X52_Y3_N30
\Output~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~273_combout\ = ( \Input[57]~input_o\ & ( \Input[55]~input_o\ & ( (!\Output~272_combout\) # ((!\srlout[63]~0_combout\ & ((\Input[59]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\))) ) ) ) # ( !\Input[57]~input_o\ & ( 
-- \Input[55]~input_o\ & ( (!\Output~272_combout\ & (((\srlout[63]~0_combout\)))) # (\Output~272_combout\ & ((!\srlout[63]~0_combout\ & ((\Input[59]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)))) ) ) ) # ( \Input[57]~input_o\ & ( 
-- !\Input[55]~input_o\ & ( (!\Output~272_combout\ & (((!\srlout[63]~0_combout\)))) # (\Output~272_combout\ & ((!\srlout[63]~0_combout\ & ((\Input[59]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)))) ) ) ) # ( !\Input[57]~input_o\ & ( 
-- !\Input[55]~input_o\ & ( (\Output~272_combout\ & ((!\srlout[63]~0_combout\ & ((\Input[59]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_Output~272_combout\,
	datac => \ALT_INV_Input[59]~input_o\,
	datad => \ALT_INV_srlout[63]~0_combout\,
	datae => \ALT_INV_Input[57]~input_o\,
	dataf => \ALT_INV_Input[55]~input_o\,
	combout => \Output~273_combout\);

-- Location: LABCELL_X51_Y3_N45
\srl8[62]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[62]~30_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & \Input[62]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[62]~30_combout\);

-- Location: LABCELL_X51_Y3_N54
\srl2[56]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[56]~56_combout\ = ( \srl8[56]~24_combout\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[58]~26_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[62]~30_combout\))) ) ) ) # ( !\srl8[56]~24_combout\ & ( \ShiftCount[1]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[58]~26_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[62]~30_combout\))) ) ) ) # ( \srl8[56]~24_combout\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\srl8[60]~28_combout\) ) ) ) # ( 
-- !\srl8[56]~24_combout\ & ( !\ShiftCount[1]~input_o\ & ( (\srl8[60]~28_combout\ & \ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl8[58]~26_combout\,
	datab => \ALT_INV_srl8[60]~28_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_srl8[62]~30_combout\,
	datae => \ALT_INV_srl8[56]~24_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[56]~56_combout\);

-- Location: MLABCELL_X52_Y3_N6
\Output~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~274_combout\ = ( \Input[56]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\Output~273_combout\) ) ) ) # ( !\Input[56]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (\Output~273_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( 
-- \Input[56]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[55]~55_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[56]~56_combout\))) ) ) ) # ( !\Input[56]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & 
-- (\srl2[55]~55_combout\)) # (\ShiftCount[0]~input_o\ & ((\srl2[56]~56_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[55]~55_combout\,
	datab => \ALT_INV_Output~273_combout\,
	datac => \ALT_INV_srl2[56]~56_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~274_combout\);

-- Location: LABCELL_X60_Y5_N12
\sll16[55]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[55]~55_combout\ = ( \Input[39]~input_o\ & ( \Input[23]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\) # (\Input[55]~input_o\)))) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\Input[7]~input_o\))) ) ) ) # ( 
-- !\Input[39]~input_o\ & ( \Input[23]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\) # (\Input[55]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[7]~input_o\ & ((\ShiftCount[5]~input_o\)))) ) ) ) # ( \Input[39]~input_o\ & ( 
-- !\Input[23]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\Input[55]~input_o\ & !\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)) # (\Input[7]~input_o\))) ) ) ) # ( !\Input[39]~input_o\ & ( !\Input[23]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & (((\Input[55]~input_o\ & !\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ & (\Input[7]~input_o\ & ((\ShiftCount[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[7]~input_o\,
	datab => \ALT_INV_Input[55]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Input[39]~input_o\,
	dataf => \ALT_INV_Input[23]~input_o\,
	combout => \sll16[55]~55_combout\);

-- Location: LABCELL_X60_Y7_N12
\sll4[55]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[55]~56_combout\ = ( \ShiftCount[3]~input_o\ & ( \sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[43]~43_combout\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \sll16[47]~47_combout\ & ( (!\ShiftCount[2]~input_o\ & (\sll16[55]~55_combout\)) 
-- # (\ShiftCount[2]~input_o\ & ((\sll16[51]~51_combout\))) ) ) ) # ( \ShiftCount[3]~input_o\ & ( !\sll16[47]~47_combout\ & ( (\sll16[43]~43_combout\ & \ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\sll16[47]~47_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\sll16[55]~55_combout\)) # (\ShiftCount[2]~input_o\ & ((\sll16[51]~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[43]~43_combout\,
	datab => \ALT_INV_sll16[55]~55_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[51]~51_combout\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_sll16[47]~47_combout\,
	combout => \sll4[55]~56_combout\);

-- Location: LABCELL_X55_Y7_N48
\Output~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~275_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[52]~53_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[54]~55_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[53]~54_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[55]~56_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[54]~55_combout\,
	datab => \ALT_INV_sll4[53]~54_combout\,
	datac => \ALT_INV_sll4[52]~53_combout\,
	datad => \ALT_INV_sll4[55]~56_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~275_combout\);

-- Location: IOIBUF_X26_Y0_N92
\Arith[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(55),
	o => \Arith[55]~input_o\);

-- Location: MLABCELL_X47_Y5_N33
\Output~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~276_combout\ = ( \Arith[55]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Output~275_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~274_combout\)) ) ) # ( !\Arith[55]~input_o\ & ( (!\ShiftFN[1]~input_o\ & 
-- (((\ShiftFN[0]~input_o\ & \Output~275_combout\)))) # (\ShiftFN[1]~input_o\ & (\Output~274_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~274_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Output~275_combout\,
	datae => \ALT_INV_Arith[55]~input_o\,
	combout => \Output~276_combout\);

-- Location: IOIBUF_X6_Y0_N1
\Arith[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(56),
	o => \Arith[56]~input_o\);

-- Location: LABCELL_X56_Y5_N18
\sll16[56]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[56]~56_combout\ = ( \ShiftCount[5]~input_o\ & ( \Input[8]~input_o\ & ( (\Input[24]~input_o\) # (\ShiftCount[4]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( \Input[8]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((\Input[56]~input_o\))) # 
-- (\ShiftCount[4]~input_o\ & (\Input[40]~input_o\)) ) ) ) # ( \ShiftCount[5]~input_o\ & ( !\Input[8]~input_o\ & ( (!\ShiftCount[4]~input_o\ & \Input[24]~input_o\) ) ) ) # ( !\ShiftCount[5]~input_o\ & ( !\Input[8]~input_o\ & ( (!\ShiftCount[4]~input_o\ & 
-- ((\Input[56]~input_o\))) # (\ShiftCount[4]~input_o\ & (\Input[40]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[40]~input_o\,
	datac => \ALT_INV_Input[56]~input_o\,
	datad => \ALT_INV_Input[24]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_Input[8]~input_o\,
	combout => \sll16[56]~56_combout\);

-- Location: LABCELL_X55_Y5_N18
\sll4[56]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[56]~57_combout\ = ( \sll16[48]~48_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[44]~44_combout\) ) ) ) # ( !\sll16[48]~48_combout\ & ( \ShiftCount[3]~input_o\ & ( (\ShiftCount[2]~input_o\ & \sll16[44]~44_combout\) ) ) 
-- ) # ( \sll16[48]~48_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[56]~56_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[52]~52_combout\)) ) ) ) # ( !\sll16[48]~48_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\sll16[56]~56_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[52]~52_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[52]~52_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[44]~44_combout\,
	datad => \ALT_INV_sll16[56]~56_combout\,
	datae => \ALT_INV_sll16[48]~48_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[56]~57_combout\);

-- Location: LABCELL_X55_Y7_N54
\Output~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~279_combout\ = ( \ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[53]~54_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \ShiftCount[0]~input_o\ & ( \sll4[55]~56_combout\ ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ 
-- & ( \sll4[54]~55_combout\ ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( \sll4[56]~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[54]~55_combout\,
	datab => \ALT_INV_sll4[53]~54_combout\,
	datac => \ALT_INV_sll4[56]~57_combout\,
	datad => \ALT_INV_sll4[55]~56_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~279_combout\);

-- Location: MLABCELL_X52_Y3_N42
\Output~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~277_combout\ = ( \Input[56]~input_o\ & ( \Output~272_combout\ & ( (!\srlout[63]~0_combout\ & ((\Input[60]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Input[56]~input_o\ & ( \Output~272_combout\ & ( 
-- (!\srlout[63]~0_combout\ & ((\Input[60]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)) ) ) ) # ( \Input[56]~input_o\ & ( !\Output~272_combout\ & ( (\srlout[63]~0_combout\) # (\Input[58]~input_o\) ) ) ) # ( !\Input[56]~input_o\ & ( 
-- !\Output~272_combout\ & ( (\Input[58]~input_o\ & !\srlout[63]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_Input[58]~input_o\,
	datac => \ALT_INV_Input[60]~input_o\,
	datad => \ALT_INV_srlout[63]~0_combout\,
	datae => \ALT_INV_Input[56]~input_o\,
	dataf => \ALT_INV_Output~272_combout\,
	combout => \Output~277_combout\);

-- Location: LABCELL_X51_Y4_N27
\srl8[63]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl8[63]~31_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & \Input[63]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_Input[63]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl8[63]~31_combout\);

-- Location: LABCELL_X51_Y4_N54
\srl2[57]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[57]~57_combout\ = ( \ShiftCount[1]~input_o\ & ( \srl8[63]~31_combout\ & ( (\srl8[59]~27_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \srl8[63]~31_combout\ & ( (!\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) # 
-- (\ShiftCount[2]~input_o\ & ((\srl8[61]~29_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\srl8[63]~31_combout\ & ( (!\ShiftCount[2]~input_o\ & \srl8[59]~27_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\srl8[63]~31_combout\ & ( 
-- (!\ShiftCount[2]~input_o\ & (\srl8[57]~25_combout\)) # (\ShiftCount[2]~input_o\ & ((\srl8[61]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[59]~27_combout\,
	datac => \ALT_INV_srl8[57]~25_combout\,
	datad => \ALT_INV_srl8[61]~29_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_srl8[63]~31_combout\,
	combout => \srl2[57]~57_combout\);

-- Location: MLABCELL_X52_Y3_N18
\Output~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~278_combout\ = ( \srl2[57]~57_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftCount[0]~input_o\ & ((\Output~277_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[57]~input_o\)) ) ) ) # ( !\srl2[57]~57_combout\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\Output~277_combout\))) # (\ShiftCount[0]~input_o\ & (\Input[57]~input_o\)) ) ) ) # ( \srl2[57]~57_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\ShiftCount[0]~input_o\) # (\srl2[56]~56_combout\) ) ) ) # ( !\srl2[57]~57_combout\ & 
-- ( !\ShiftFN[0]~input_o\ & ( (\srl2[56]~56_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[57]~input_o\,
	datab => \ALT_INV_Output~277_combout\,
	datac => \ALT_INV_srl2[56]~56_combout\,
	datad => \ALT_INV_ShiftCount[0]~input_o\,
	datae => \ALT_INV_srl2[57]~57_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~278_combout\);

-- Location: LABCELL_X53_Y4_N0
\Output~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~280_combout\ = ( \ShiftFN[1]~input_o\ & ( \Output~278_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Arith[56]~input_o\)) # (\ShiftFN[0]~input_o\ & ((\Output~279_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[56]~input_o\,
	datab => \ALT_INV_Output~279_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Output~278_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~280_combout\);

-- Location: IOIBUF_X34_Y81_N58
\Arith[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(57),
	o => \Arith[57]~input_o\);

-- Location: LABCELL_X51_Y3_N39
\srl2[58]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[58]~58_combout\ = ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \srl8[60]~28_combout\) ) ) # ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\srl8[58]~26_combout\))) # (\ShiftCount[2]~input_o\ & (\srl8[62]~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_srl8[62]~30_combout\,
	datac => \ALT_INV_srl8[60]~28_combout\,
	datad => \ALT_INV_srl8[58]~26_combout\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[58]~58_combout\);

-- Location: LABCELL_X53_Y4_N39
\Output~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~281_combout\ = ( \Input[59]~input_o\ & ( \Input[57]~input_o\ & ( (!\Output~272_combout\) # ((!\srlout[63]~0_combout\ & ((\Input[61]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\))) ) ) ) # ( !\Input[59]~input_o\ & ( 
-- \Input[57]~input_o\ & ( (!\srlout[63]~0_combout\ & (((\Output~272_combout\ & \Input[61]~input_o\)))) # (\srlout[63]~0_combout\ & (((!\Output~272_combout\)) # (\Input[63]~input_o\))) ) ) ) # ( \Input[59]~input_o\ & ( !\Input[57]~input_o\ & ( 
-- (!\srlout[63]~0_combout\ & (((!\Output~272_combout\) # (\Input[61]~input_o\)))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\ & (\Output~272_combout\))) ) ) ) # ( !\Input[59]~input_o\ & ( !\Input[57]~input_o\ & ( (\Output~272_combout\ & 
-- ((!\srlout[63]~0_combout\ & ((\Input[61]~input_o\))) # (\srlout[63]~0_combout\ & (\Input[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_srlout[63]~0_combout\,
	datac => \ALT_INV_Output~272_combout\,
	datad => \ALT_INV_Input[61]~input_o\,
	datae => \ALT_INV_Input[59]~input_o\,
	dataf => \ALT_INV_Input[57]~input_o\,
	combout => \Output~281_combout\);

-- Location: LABCELL_X53_Y4_N45
\Output~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~282_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Input[58]~input_o\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~281_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( 
-- \srl2[58]~58_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \srl2[57]~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[58]~input_o\,
	datab => \ALT_INV_srl2[58]~58_combout\,
	datac => \ALT_INV_Output~281_combout\,
	datad => \ALT_INV_srl2[57]~57_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~282_combout\);

-- Location: LABCELL_X60_Y3_N24
\sll16[57]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[57]~57_combout\ = ( \Input[9]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (\Input[41]~input_o\) # (\ShiftCount[5]~input_o\) ) ) ) # ( !\Input[9]~input_o\ & ( \ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & \Input[41]~input_o\) ) ) ) # ( 
-- \Input[9]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & ((\Input[57]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[25]~input_o\)) ) ) ) # ( !\Input[9]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & 
-- ((\Input[57]~input_o\))) # (\ShiftCount[5]~input_o\ & (\Input[25]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[25]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[41]~input_o\,
	datad => \ALT_INV_Input[57]~input_o\,
	datae => \ALT_INV_Input[9]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll16[57]~57_combout\);

-- Location: LABCELL_X57_Y7_N36
\sll4[57]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[57]~58_combout\ = ( \sll16[49]~49_combout\ & ( \sll16[53]~53_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[57]~57_combout\) # (\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[45]~45_combout\))) ) 
-- ) ) # ( !\sll16[49]~49_combout\ & ( \sll16[53]~53_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \sll16[57]~57_combout\)))) # (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\)) # (\sll16[45]~45_combout\))) ) ) ) # ( 
-- \sll16[49]~49_combout\ & ( !\sll16[53]~53_combout\ & ( (!\ShiftCount[2]~input_o\ & (((\sll16[57]~57_combout\) # (\ShiftCount[3]~input_o\)))) # (\ShiftCount[2]~input_o\ & (\sll16[45]~45_combout\ & (\ShiftCount[3]~input_o\))) ) ) ) # ( 
-- !\sll16[49]~49_combout\ & ( !\sll16[53]~53_combout\ & ( (!\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \sll16[57]~57_combout\)))) # (\ShiftCount[2]~input_o\ & (\sll16[45]~45_combout\ & (\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[45]~45_combout\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[3]~input_o\,
	datad => \ALT_INV_sll16[57]~57_combout\,
	datae => \ALT_INV_sll16[49]~49_combout\,
	dataf => \ALT_INV_sll16[53]~53_combout\,
	combout => \sll4[57]~58_combout\);

-- Location: LABCELL_X56_Y7_N36
\Output~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~283_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[55]~56_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[54]~55_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[55]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\sll4[56]~57_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[55]~56_combout\ & ( (\sll4[54]~55_combout\ & \ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sll4[55]~56_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[56]~57_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[56]~57_combout\,
	datab => \ALT_INV_sll4[54]~55_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[57]~58_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[55]~56_combout\,
	combout => \Output~283_combout\);

-- Location: LABCELL_X53_Y6_N39
\Output~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~284_combout\ = ( \Output~283_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\Arith[57]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~282_combout\)))) ) ) # ( !\Output~283_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Arith[57]~input_o\ & (!\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Output~282_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[57]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~282_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Output~283_combout\,
	combout => \Output~284_combout\);

-- Location: IOIBUF_X38_Y81_N18
\Arith[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(58),
	o => \Arith[58]~input_o\);

-- Location: LABCELL_X51_Y5_N42
\srl2[59]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[59]~61_combout\ = ( !\ShiftCount[5]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\ShiftCount[2]~input_o\ & (\Input[63]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_Input[63]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_ShiftCount[5]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[59]~61_combout\);

-- Location: LABCELL_X51_Y5_N30
\srl2[59]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[59]~59_combout\ = ( \Input[61]~input_o\ & ( \ShiftCount[1]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (!\ShiftCount[2]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	datae => \ALT_INV_Input[61]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[59]~59_combout\);

-- Location: LABCELL_X51_Y5_N6
\srl2[59]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[59]~60_combout\ = ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\Input[59]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[59]~input_o\,
	datac => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[59]~60_combout\);

-- Location: LABCELL_X51_Y5_N48
\srl2[59]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[59]~62_combout\ = ( !\srl2[59]~60_combout\ & ( (!\srl2[59]~61_combout\ & !\srl2[59]~59_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_srl2[59]~61_combout\,
	datac => \ALT_INV_srl2[59]~59_combout\,
	dataf => \ALT_INV_srl2[59]~60_combout\,
	combout => \srl2[59]~62_combout\);

-- Location: MLABCELL_X52_Y3_N24
\Output~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~285_combout\ = ( \Input[62]~input_o\ & ( \srlout[63]~0_combout\ & ( (!\Output~272_combout\ & ((\Input[58]~input_o\))) # (\Output~272_combout\ & (\Input[63]~input_o\)) ) ) ) # ( !\Input[62]~input_o\ & ( \srlout[63]~0_combout\ & ( 
-- (!\Output~272_combout\ & ((\Input[58]~input_o\))) # (\Output~272_combout\ & (\Input[63]~input_o\)) ) ) ) # ( \Input[62]~input_o\ & ( !\srlout[63]~0_combout\ & ( (\Output~272_combout\) # (\Input[60]~input_o\) ) ) ) # ( !\Input[62]~input_o\ & ( 
-- !\srlout[63]~0_combout\ & ( (\Input[60]~input_o\ & !\Output~272_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[63]~input_o\,
	datab => \ALT_INV_Input[58]~input_o\,
	datac => \ALT_INV_Input[60]~input_o\,
	datad => \ALT_INV_Output~272_combout\,
	datae => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_srlout[63]~0_combout\,
	combout => \Output~285_combout\);

-- Location: LABCELL_X53_Y4_N48
\Output~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~286_combout\ = ( \ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Input[59]~input_o\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( \ShiftFN[0]~input_o\ & ( \Output~285_combout\ ) ) ) # ( \ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( 
-- !\srl2[59]~62_combout\ ) ) ) # ( !\ShiftCount[0]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \srl2[58]~58_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[59]~62_combout\,
	datab => \ALT_INV_srl2[58]~58_combout\,
	datac => \ALT_INV_Input[59]~input_o\,
	datad => \ALT_INV_Output~285_combout\,
	datae => \ALT_INV_ShiftCount[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~286_combout\);

-- Location: LABCELL_X55_Y3_N24
\sll16[58]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[58]~58_combout\ = ( \Input[10]~input_o\ & ( \Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[42]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[26]~input_o\))) ) ) ) # ( 
-- !\Input[10]~input_o\ & ( \Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[42]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[26]~input_o\ & ((!\ShiftCount[4]~input_o\)))) ) ) ) # ( \Input[10]~input_o\ & ( 
-- !\Input[58]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((\Input[42]~input_o\ & \ShiftCount[4]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[26]~input_o\))) ) ) ) # ( !\Input[10]~input_o\ & ( !\Input[58]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((\Input[42]~input_o\ & \ShiftCount[4]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[26]~input_o\ & ((!\ShiftCount[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[26]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[42]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[10]~input_o\,
	dataf => \ALT_INV_Input[58]~input_o\,
	combout => \sll16[58]~58_combout\);

-- Location: LABCELL_X56_Y7_N42
\sll4[58]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[58]~59_combout\ = ( \sll16[50]~50_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\) # (\sll16[46]~46_combout\) ) ) ) # ( !\sll16[50]~50_combout\ & ( \ShiftCount[3]~input_o\ & ( (\ShiftCount[2]~input_o\ & \sll16[46]~46_combout\) ) ) 
-- ) # ( \sll16[50]~50_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll16[58]~58_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[54]~54_combout\)) ) ) ) # ( !\sll16[50]~50_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\sll16[58]~58_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[54]~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[54]~54_combout\,
	datab => \ALT_INV_sll16[58]~58_combout\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[46]~46_combout\,
	datae => \ALT_INV_sll16[50]~50_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[58]~59_combout\);

-- Location: LABCELL_X56_Y7_N48
\Output~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~287_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[55]~56_combout\ & ( (\ShiftCount[0]~input_o\) # (\sll4[56]~57_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[55]~56_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[58]~59_combout\)) # 
-- (\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[55]~56_combout\ & ( (\sll4[56]~57_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sll4[55]~56_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[58]~59_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[56]~57_combout\,
	datab => \ALT_INV_sll4[58]~59_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[57]~58_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[55]~56_combout\,
	combout => \Output~287_combout\);

-- Location: MLABCELL_X47_Y5_N9
\Output~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~288_combout\ = ( \ShiftFN[0]~input_o\ & ( \Output~287_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Output~286_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Output~287_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Arith[58]~input_o\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Output~286_combout\))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Output~287_combout\ & ( (\Output~286_combout\ & \ShiftFN[1]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Output~287_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- (\Arith[58]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Output~286_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000110000001101010011010100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[58]~input_o\,
	datab => \ALT_INV_Output~286_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Output~287_combout\,
	combout => \Output~288_combout\);

-- Location: LABCELL_X60_Y5_N48
\sll16[59]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[59]~59_combout\ = ( \Input[59]~input_o\ & ( \Input[11]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[43]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[27]~input_o\))) ) ) ) # ( 
-- !\Input[59]~input_o\ & ( \Input[11]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\ & \Input[43]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[27]~input_o\))) ) ) ) # ( \Input[59]~input_o\ & ( 
-- !\Input[11]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[43]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[27]~input_o\ & (!\ShiftCount[4]~input_o\))) ) ) ) # ( !\Input[59]~input_o\ & ( !\Input[11]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\ & \Input[43]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[27]~input_o\ & (!\ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[27]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[43]~input_o\,
	datae => \ALT_INV_Input[59]~input_o\,
	dataf => \ALT_INV_Input[11]~input_o\,
	combout => \sll16[59]~59_combout\);

-- Location: LABCELL_X60_Y7_N48
\sll4[59]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[59]~60_combout\ = ( \sll16[51]~51_combout\ & ( \sll16[59]~59_combout\ & ( (!\ShiftCount[2]~input_o\) # ((!\ShiftCount[3]~input_o\ & ((\sll16[55]~55_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[47]~47_combout\))) ) ) ) # ( !\sll16[51]~51_combout\ 
-- & ( \sll16[59]~59_combout\ & ( (!\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\) # (\sll16[55]~55_combout\)))) # (\ShiftCount[3]~input_o\ & (\sll16[47]~47_combout\ & (\ShiftCount[2]~input_o\))) ) ) ) # ( \sll16[51]~51_combout\ & ( 
-- !\sll16[59]~59_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\ & \sll16[55]~55_combout\)))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\)) # (\sll16[47]~47_combout\))) ) ) ) # ( !\sll16[51]~51_combout\ & ( 
-- !\sll16[59]~59_combout\ & ( (\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & ((\sll16[55]~55_combout\))) # (\ShiftCount[3]~input_o\ & (\sll16[47]~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[47]~47_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[55]~55_combout\,
	datae => \ALT_INV_sll16[51]~51_combout\,
	dataf => \ALT_INV_sll16[59]~59_combout\,
	combout => \sll4[59]~60_combout\);

-- Location: LABCELL_X56_Y7_N24
\Output~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~289_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[56]~57_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( 
-- (!\ShiftCount[0]~input_o\) # (\sll4[58]~59_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[57]~58_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[56]~57_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (\sll4[58]~59_combout\ & \ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[56]~57_combout\,
	datab => \ALT_INV_sll4[58]~59_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[57]~58_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[59]~60_combout\,
	combout => \Output~289_combout\);

-- Location: IOIBUF_X28_Y81_N52
\Arith[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(59),
	o => \Arith[59]~input_o\);

-- Location: MLABCELL_X52_Y5_N48
\Output~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~291_combout\ = ( \ShiftCount[3]~input_o\ & ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( \ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ ) ) ) # ( \ShiftCount[3]~input_o\ & ( 
-- !\ShiftCount[1]~input_o\ & ( !\ShiftCount[0]~input_o\ ) ) ) # ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (((\ShiftCount[5]~input_o\) # (\ShiftCount[2]~input_o\)) # (\ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \Output~291_combout\);

-- Location: MLABCELL_X52_Y5_N24
\Output~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~292_combout\ = ( \Input[60]~input_o\ & ( \Output~291_combout\ & ( (!\Output~0_combout\ & (\Input[61]~input_o\)) # (\Output~0_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( !\Input[60]~input_o\ & ( \Output~291_combout\ & ( (!\Output~0_combout\ & 
-- (\Input[61]~input_o\)) # (\Output~0_combout\ & ((\Input[63]~input_o\))) ) ) ) # ( \Input[60]~input_o\ & ( !\Output~291_combout\ & ( (!\Output~0_combout\) # (\Input[59]~input_o\) ) ) ) # ( !\Input[60]~input_o\ & ( !\Output~291_combout\ & ( 
-- (\Input[59]~input_o\ & \Output~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[61]~input_o\,
	datab => \ALT_INV_Input[59]~input_o\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[60]~input_o\,
	dataf => \ALT_INV_Output~291_combout\,
	combout => \Output~292_combout\);

-- Location: LABCELL_X51_Y5_N27
\srl2[61]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[61]~64_combout\ = ( !\ShiftCount[3]~input_o\ & ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & !\ShiftCount[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datae => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \srl2[61]~64_combout\);

-- Location: LABCELL_X51_Y5_N51
\srl2[60]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[60]~63_combout\ = ( \ShiftCount[1]~input_o\ & ( \Input[62]~input_o\ ) ) # ( !\ShiftCount[1]~input_o\ & ( \Input[60]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[60]~input_o\,
	datac => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[60]~63_combout\);

-- Location: LABCELL_X51_Y5_N0
\Output~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~290_combout\ = ( \srl2[59]~60_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\srl2[61]~64_combout\) # (!\srl2[60]~63_combout\) ) ) ) # ( !\srl2[59]~60_combout\ & ( \ShiftCount[0]~input_o\ & ( (!\srl2[61]~64_combout\) # (!\srl2[60]~63_combout\) ) ) ) # 
-- ( !\srl2[59]~60_combout\ & ( !\ShiftCount[0]~input_o\ & ( (!\srl2[59]~59_combout\ & !\srl2[59]~61_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[61]~64_combout\,
	datab => \ALT_INV_srl2[59]~59_combout\,
	datac => \ALT_INV_srl2[60]~63_combout\,
	datad => \ALT_INV_srl2[59]~61_combout\,
	datae => \ALT_INV_srl2[59]~60_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \Output~290_combout\);

-- Location: MLABCELL_X52_Y5_N30
\Output~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~293_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Output~292_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( !\Output~290_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( 
-- \Output~289_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Arith[59]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010111111111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~289_combout\,
	datab => \ALT_INV_Arith[59]~input_o\,
	datac => \ALT_INV_Output~292_combout\,
	datad => \ALT_INV_Output~290_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~293_combout\);

-- Location: MLABCELL_X52_Y5_N6
\Output~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~296_combout\ = ( \Input[62]~input_o\ & ( \Output~291_combout\ & ( (!\Output~0_combout\) # (\Input[63]~input_o\) ) ) ) # ( !\Input[62]~input_o\ & ( \Output~291_combout\ & ( (\Output~0_combout\ & \Input[63]~input_o\) ) ) ) # ( \Input[62]~input_o\ & 
-- ( !\Output~291_combout\ & ( (!\Output~0_combout\ & (\Input[61]~input_o\)) # (\Output~0_combout\ & ((\Input[60]~input_o\))) ) ) ) # ( !\Input[62]~input_o\ & ( !\Output~291_combout\ & ( (!\Output~0_combout\ & (\Input[61]~input_o\)) # (\Output~0_combout\ & 
-- ((\Input[60]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[61]~input_o\,
	datab => \ALT_INV_Input[60]~input_o\,
	datac => \ALT_INV_Output~0_combout\,
	datad => \ALT_INV_Input[63]~input_o\,
	datae => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_Output~291_combout\,
	combout => \Output~296_combout\);

-- Location: LABCELL_X51_Y5_N36
\Output~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~295_combout\ = ( \srl2[61]~64_combout\ & ( \Input[63]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[60]~63_combout\)) # (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\) # (\Input[61]~input_o\)))) ) ) ) # ( \srl2[61]~64_combout\ & ( 
-- !\Input[63]~input_o\ & ( (!\ShiftCount[0]~input_o\ & (\srl2[60]~63_combout\)) # (\ShiftCount[0]~input_o\ & (((\Input[61]~input_o\ & !\ShiftCount[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[60]~63_combout\,
	datab => \ALT_INV_Input[61]~input_o\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_ShiftCount[1]~input_o\,
	datae => \ALT_INV_srl2[61]~64_combout\,
	dataf => \ALT_INV_Input[63]~input_o\,
	combout => \Output~295_combout\);

-- Location: LABCELL_X56_Y5_N54
\sll4[60]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[60]~61_combout\ = ( \Input[60]~input_o\ & ( \Input[28]~input_o\ & ( (!\ShiftCount[4]~input_o\) # ((!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[12]~input_o\)))) ) ) ) # ( !\Input[60]~input_o\ & ( 
-- \Input[28]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[12]~input_o\))))) ) ) ) # ( \Input[60]~input_o\ & ( 
-- !\Input[28]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\)))) # (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[12]~input_o\))))) ) ) ) # ( !\Input[60]~input_o\ & 
-- ( !\Input[28]~input_o\ & ( (\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\ & (\Input[44]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_Input[44]~input_o\,
	datac => \ALT_INV_Input[12]~input_o\,
	datad => \ALT_INV_ShiftCount[5]~input_o\,
	datae => \ALT_INV_Input[60]~input_o\,
	dataf => \ALT_INV_Input[28]~input_o\,
	combout => \sll4[60]~61_combout\);

-- Location: LABCELL_X55_Y5_N54
\sll4[60]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[60]~62_combout\ = ( \sll16[48]~48_combout\ & ( \ShiftCount[2]~input_o\ & ( (\sll16[56]~56_combout\) # (\ShiftCount[3]~input_o\) ) ) ) # ( !\sll16[48]~48_combout\ & ( \ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & \sll16[56]~56_combout\) ) ) 
-- ) # ( \sll16[48]~48_combout\ & ( !\ShiftCount[2]~input_o\ & ( (!\ShiftCount[3]~input_o\ & (\sll4[60]~61_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[52]~52_combout\))) ) ) ) # ( !\sll16[48]~48_combout\ & ( !\ShiftCount[2]~input_o\ & ( 
-- (!\ShiftCount[3]~input_o\ & (\sll4[60]~61_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[52]~52_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_sll4[60]~61_combout\,
	datac => \ALT_INV_sll16[52]~52_combout\,
	datad => \ALT_INV_sll16[56]~56_combout\,
	datae => \ALT_INV_sll16[48]~48_combout\,
	dataf => \ALT_INV_ShiftCount[2]~input_o\,
	combout => \sll4[60]~62_combout\);

-- Location: LABCELL_X56_Y7_N0
\Output~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~294_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[58]~59_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[57]~58_combout\)) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( 
-- (\ShiftCount[0]~input_o\) # (\sll4[60]~62_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[58]~59_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[57]~58_combout\)) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (\sll4[60]~62_combout\ & !\ShiftCount[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[60]~62_combout\,
	datab => \ALT_INV_sll4[57]~58_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[58]~59_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[59]~60_combout\,
	combout => \Output~294_combout\);

-- Location: IOIBUF_X40_Y81_N35
\Arith[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(60),
	o => \Arith[60]~input_o\);

-- Location: LABCELL_X48_Y5_N36
\Output~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~297_combout\ = ( \Arith[60]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Output~295_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~296_combout\)) ) ) ) # ( !\Arith[60]~input_o\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & ((\Output~295_combout\))) # (\ShiftFN[0]~input_o\ & (\Output~296_combout\)) ) ) ) # ( \Arith[60]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Output~294_combout\) ) ) ) # ( !\Arith[60]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \Output~294_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Output~296_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Output~295_combout\,
	datad => \ALT_INV_Output~294_combout\,
	datae => \ALT_INV_Arith[60]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~297_combout\);

-- Location: IOIBUF_X52_Y81_N18
\Arith[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(61),
	o => \Arith[61]~input_o\);

-- Location: LABCELL_X60_Y4_N24
\sll4[61]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[61]~64_combout\ = ( \Input[61]~input_o\ & ( \Input[13]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\) # ((\Input[29]~input_o\)))) # (\ShiftCount[4]~input_o\ & (((\Input[45]~input_o\)) # (\ShiftCount[5]~input_o\))) ) ) ) # ( 
-- !\Input[61]~input_o\ & ( \Input[13]~input_o\ & ( (!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & ((\Input[29]~input_o\)))) # (\ShiftCount[4]~input_o\ & (((\Input[45]~input_o\)) # (\ShiftCount[5]~input_o\))) ) ) ) # ( \Input[61]~input_o\ & ( 
-- !\Input[13]~input_o\ & ( (!\ShiftCount[4]~input_o\ & ((!\ShiftCount[5]~input_o\) # ((\Input[29]~input_o\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[45]~input_o\))) ) ) ) # ( !\Input[61]~input_o\ & ( !\Input[13]~input_o\ & ( 
-- (!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & ((\Input[29]~input_o\)))) # (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Input[45]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[4]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_Input[45]~input_o\,
	datad => \ALT_INV_Input[29]~input_o\,
	datae => \ALT_INV_Input[61]~input_o\,
	dataf => \ALT_INV_Input[13]~input_o\,
	combout => \sll4[61]~64_combout\);

-- Location: LABCELL_X57_Y7_N12
\sll4[61]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[61]~65_combout\ = ( \sll16[49]~49_combout\ & ( \sll4[61]~64_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sll16[57]~57_combout\)))) # (\ShiftCount[3]~input_o\ & (((\sll16[53]~53_combout\)) # (\ShiftCount[2]~input_o\))) ) 
-- ) ) # ( !\sll16[49]~49_combout\ & ( \sll4[61]~64_combout\ & ( (!\ShiftCount[3]~input_o\ & ((!\ShiftCount[2]~input_o\) # ((\sll16[57]~57_combout\)))) # (\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (\sll16[53]~53_combout\))) ) ) ) # ( 
-- \sll16[49]~49_combout\ & ( !\sll4[61]~64_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & ((\sll16[57]~57_combout\)))) # (\ShiftCount[3]~input_o\ & (((\sll16[53]~53_combout\)) # (\ShiftCount[2]~input_o\))) ) ) ) # ( 
-- !\sll16[49]~49_combout\ & ( !\sll4[61]~64_combout\ & ( (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & ((\sll16[57]~57_combout\)))) # (\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (\sll16[53]~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[3]~input_o\,
	datab => \ALT_INV_ShiftCount[2]~input_o\,
	datac => \ALT_INV_sll16[53]~53_combout\,
	datad => \ALT_INV_sll16[57]~57_combout\,
	datae => \ALT_INV_sll16[49]~49_combout\,
	dataf => \ALT_INV_sll4[61]~64_combout\,
	combout => \sll4[61]~65_combout\);

-- Location: LABCELL_X56_Y7_N6
\sllout[61]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllout[61]~0_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\) # (\sll4[58]~59_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) # 
-- (\ShiftCount[0]~input_o\ & ((\sll4[60]~62_combout\))) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (\ShiftCount[0]~input_o\ & \sll4[58]~59_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[60]~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[61]~65_combout\,
	datab => \ALT_INV_sll4[60]~62_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[58]~59_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[59]~60_combout\,
	combout => \sllout[61]~0_combout\);

-- Location: MLABCELL_X52_Y5_N36
\sll4[4]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[4]~63_combout\ = ( !\ShiftCount[4]~input_o\ & ( (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datad => \ALT_INV_ShiftCount[3]~input_o\,
	dataf => \ALT_INV_ShiftCount[4]~input_o\,
	combout => \sll4[4]~63_combout\);

-- Location: MLABCELL_X52_Y5_N45
\sra2[61]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sra2[61]~7_combout\ = ( \Input[61]~input_o\ & ( ((\srlout[63]~0_combout\ & \sll4[4]~63_combout\)) # (\Input[63]~input_o\) ) ) # ( !\Input[61]~input_o\ & ( (\Input[63]~input_o\ & ((!\srlout[63]~0_combout\) # (!\sll4[4]~63_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srlout[63]~0_combout\,
	datab => \ALT_INV_Input[63]~input_o\,
	datad => \ALT_INV_sll4[4]~63_combout\,
	dataf => \ALT_INV_Input[61]~input_o\,
	combout => \sra2[61]~7_combout\);

-- Location: LABCELL_X51_Y5_N15
\srl2[61]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[61]~65_combout\ = ( \ShiftCount[1]~input_o\ & ( (\srl2[61]~64_combout\ & \Input[63]~input_o\) ) ) # ( !\ShiftCount[1]~input_o\ & ( (\srl2[61]~64_combout\ & \Input[61]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srl2[61]~64_combout\,
	datac => \ALT_INV_Input[61]~input_o\,
	datad => \ALT_INV_Input[63]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[61]~65_combout\);

-- Location: LABCELL_X51_Y5_N21
\srl2[62]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \srl2[62]~66_combout\ = ( \Input[62]~input_o\ & ( !\ShiftCount[1]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & !\ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_ShiftCount[4]~input_o\,
	datae => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[1]~input_o\,
	combout => \srl2[62]~66_combout\);

-- Location: LABCELL_X51_Y5_N54
\y2[61]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \y2[61]~3_combout\ = ( \Input[62]~input_o\ & ( \ShiftCount[0]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\srl2[62]~66_combout\) ) ) ) # ( !\Input[62]~input_o\ & ( \ShiftCount[0]~input_o\ & ( (\srl2[62]~66_combout\ & !\ShiftFN[0]~input_o\) ) ) ) # ( 
-- \Input[62]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\srl2[61]~65_combout\))) # (\ShiftFN[0]~input_o\ & (\sra2[61]~7_combout\)) ) ) ) # ( !\Input[62]~input_o\ & ( !\ShiftCount[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((\srl2[61]~65_combout\))) # (\ShiftFN[0]~input_o\ & (\sra2[61]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sra2[61]~7_combout\,
	datab => \ALT_INV_srl2[61]~65_combout\,
	datac => \ALT_INV_srl2[62]~66_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \y2[61]~3_combout\);

-- Location: LABCELL_X51_Y6_N30
\Output~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~298_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sllout[61]~0_combout\)) # (\ShiftFN[1]~input_o\ & ((\y2[61]~3_combout\))) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Arith[61]~input_o\)) # 
-- (\ShiftFN[1]~input_o\ & ((\y2[61]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[61]~input_o\,
	datab => \ALT_INV_sllout[61]~0_combout\,
	datac => \ALT_INV_y2[61]~3_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~298_combout\);

-- Location: IOIBUF_X52_Y81_N52
\Arith[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(62),
	o => \Arith[62]~input_o\);

-- Location: MLABCELL_X52_Y5_N42
\sraout[62]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sraout[62]~0_combout\ = ( \ShiftCount[0]~input_o\ & ( \Input[63]~input_o\ ) ) # ( !\ShiftCount[0]~input_o\ & ( (!\srlout[63]~0_combout\ & (\Input[63]~input_o\)) # (\srlout[63]~0_combout\ & ((!\sll4[4]~63_combout\ & (\Input[63]~input_o\)) # 
-- (\sll4[4]~63_combout\ & ((\Input[62]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110111001100100011011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srlout[63]~0_combout\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_sll4[4]~63_combout\,
	datad => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \sraout[62]~0_combout\);

-- Location: MLABCELL_X52_Y5_N18
\srlout[62]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \srlout[62]~1_combout\ = ( \srlout[63]~0_combout\ & ( !\ShiftCount[5]~input_o\ & ( (\Output~156_combout\ & ((!\ShiftCount[0]~input_o\ & ((\Input[62]~input_o\))) # (\ShiftCount[0]~input_o\ & (\Input[63]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[0]~input_o\,
	datab => \ALT_INV_Input[63]~input_o\,
	datac => \ALT_INV_Output~156_combout\,
	datad => \ALT_INV_Input[62]~input_o\,
	datae => \ALT_INV_srlout[63]~0_combout\,
	dataf => \ALT_INV_ShiftCount[5]~input_o\,
	combout => \srlout[62]~1_combout\);

-- Location: LABCELL_X56_Y3_N24
\sll4[62]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[62]~66_combout\ = ( \Input[62]~input_o\ & ( \Input[30]~input_o\ & ( (!\ShiftCount[4]~input_o\) # ((!\ShiftCount[5]~input_o\ & (\Input[46]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[14]~input_o\)))) ) ) ) # ( !\Input[62]~input_o\ & ( 
-- \Input[30]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & (\Input[46]~input_o\))) # (\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\Input[14]~input_o\)))) ) ) ) # ( \Input[62]~input_o\ & ( !\Input[30]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & ((!\ShiftCount[4]~input_o\) # ((\Input[46]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\ & ((\Input[14]~input_o\)))) ) ) ) # ( !\Input[62]~input_o\ & ( !\Input[30]~input_o\ & ( (\ShiftCount[4]~input_o\ & 
-- ((!\ShiftCount[5]~input_o\ & (\Input[46]~input_o\)) # (\ShiftCount[5]~input_o\ & ((\Input[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[5]~input_o\,
	datab => \ALT_INV_ShiftCount[4]~input_o\,
	datac => \ALT_INV_Input[46]~input_o\,
	datad => \ALT_INV_Input[14]~input_o\,
	datae => \ALT_INV_Input[62]~input_o\,
	dataf => \ALT_INV_Input[30]~input_o\,
	combout => \sll4[62]~66_combout\);

-- Location: LABCELL_X56_Y7_N12
\sll4[62]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[62]~67_combout\ = ( \sll16[50]~50_combout\ & ( \ShiftCount[3]~input_o\ & ( (\sll16[54]~54_combout\) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[50]~50_combout\ & ( \ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & \sll16[54]~54_combout\) ) ) 
-- ) # ( \sll16[50]~50_combout\ & ( !\ShiftCount[3]~input_o\ & ( (!\ShiftCount[2]~input_o\ & ((\sll4[62]~66_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[58]~58_combout\)) ) ) ) # ( !\sll16[50]~50_combout\ & ( !\ShiftCount[3]~input_o\ & ( 
-- (!\ShiftCount[2]~input_o\ & ((\sll4[62]~66_combout\))) # (\ShiftCount[2]~input_o\ & (\sll16[58]~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftCount[2]~input_o\,
	datab => \ALT_INV_sll16[58]~58_combout\,
	datac => \ALT_INV_sll16[54]~54_combout\,
	datad => \ALT_INV_sll4[62]~66_combout\,
	datae => \ALT_INV_sll16[50]~50_combout\,
	dataf => \ALT_INV_ShiftCount[3]~input_o\,
	combout => \sll4[62]~67_combout\);

-- Location: LABCELL_X56_Y7_N18
\sllout[62]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllout[62]~1_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (\ShiftCount[0]~input_o\) # (\sll4[60]~62_combout\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[59]~60_combout\ & ( (!\ShiftCount[0]~input_o\ & ((\sll4[62]~67_combout\))) # 
-- (\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( (\sll4[60]~62_combout\ & !\ShiftCount[0]~input_o\) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( !\sll4[59]~60_combout\ & ( 
-- (!\ShiftCount[0]~input_o\ & ((\sll4[62]~67_combout\))) # (\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[61]~65_combout\,
	datab => \ALT_INV_sll4[60]~62_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[62]~67_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[59]~60_combout\,
	combout => \sllout[62]~1_combout\);

-- Location: MLABCELL_X52_Y5_N54
\Output~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~299_combout\ = ( \sllout[62]~1_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\srlout[62]~1_combout\))) # (\ShiftFN[0]~input_o\ & (\sraout[62]~0_combout\)) ) ) ) # ( !\sllout[62]~1_combout\ & ( \ShiftFN[1]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & ((\srlout[62]~1_combout\))) # (\ShiftFN[0]~input_o\ & (\sraout[62]~0_combout\)) ) ) ) # ( \sllout[62]~1_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\) # (\Arith[62]~input_o\) ) ) ) # ( !\sllout[62]~1_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (\Arith[62]~input_o\ & !\ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Arith[62]~input_o\,
	datab => \ALT_INV_sraout[62]~0_combout\,
	datac => \ALT_INV_srlout[62]~1_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_sllout[62]~1_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Output~299_combout\);

-- Location: LABCELL_X53_Y4_N3
\srlout[63]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \srlout[63]~2_combout\ = ( !\ShiftCount[0]~input_o\ & ( (\srl8[63]~31_combout\ & \srlout[63]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_srl8[63]~31_combout\,
	datad => \ALT_INV_srlout[63]~0_combout\,
	dataf => \ALT_INV_ShiftCount[0]~input_o\,
	combout => \srlout[63]~2_combout\);

-- Location: LABCELL_X60_Y5_N24
\sll16[63]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll16[63]~60_combout\ = ( \Input[63]~input_o\ & ( \Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[47]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[31]~input_o\))) ) ) ) # ( 
-- !\Input[63]~input_o\ & ( \Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\ & \Input[47]~input_o\)))) # (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\)) # (\Input[31]~input_o\))) ) ) ) # ( \Input[63]~input_o\ & ( 
-- !\Input[15]~input_o\ & ( (!\ShiftCount[5]~input_o\ & (((!\ShiftCount[4]~input_o\) # (\Input[47]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[31]~input_o\ & (!\ShiftCount[4]~input_o\))) ) ) ) # ( !\Input[63]~input_o\ & ( !\Input[15]~input_o\ & ( 
-- (!\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\ & \Input[47]~input_o\)))) # (\ShiftCount[5]~input_o\ & (\Input[31]~input_o\ & (!\ShiftCount[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[31]~input_o\,
	datab => \ALT_INV_ShiftCount[5]~input_o\,
	datac => \ALT_INV_ShiftCount[4]~input_o\,
	datad => \ALT_INV_Input[47]~input_o\,
	datae => \ALT_INV_Input[63]~input_o\,
	dataf => \ALT_INV_Input[15]~input_o\,
	combout => \sll16[63]~60_combout\);

-- Location: LABCELL_X60_Y7_N24
\sll4[63]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \sll4[63]~68_combout\ = ( \sll16[51]~51_combout\ & ( \sll16[59]~59_combout\ & ( ((!\ShiftCount[3]~input_o\ & (\sll16[63]~60_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[55]~55_combout\)))) # (\ShiftCount[2]~input_o\) ) ) ) # ( !\sll16[51]~51_combout\ 
-- & ( \sll16[59]~59_combout\ & ( (!\ShiftCount[3]~input_o\ & (((\ShiftCount[2]~input_o\)) # (\sll16[63]~60_combout\))) # (\ShiftCount[3]~input_o\ & (((!\ShiftCount[2]~input_o\ & \sll16[55]~55_combout\)))) ) ) ) # ( \sll16[51]~51_combout\ & ( 
-- !\sll16[59]~59_combout\ & ( (!\ShiftCount[3]~input_o\ & (\sll16[63]~60_combout\ & (!\ShiftCount[2]~input_o\))) # (\ShiftCount[3]~input_o\ & (((\sll16[55]~55_combout\) # (\ShiftCount[2]~input_o\)))) ) ) ) # ( !\sll16[51]~51_combout\ & ( 
-- !\sll16[59]~59_combout\ & ( (!\ShiftCount[2]~input_o\ & ((!\ShiftCount[3]~input_o\ & (\sll16[63]~60_combout\)) # (\ShiftCount[3]~input_o\ & ((\sll16[55]~55_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll16[63]~60_combout\,
	datab => \ALT_INV_ShiftCount[3]~input_o\,
	datac => \ALT_INV_ShiftCount[2]~input_o\,
	datad => \ALT_INV_sll16[55]~55_combout\,
	datae => \ALT_INV_sll16[51]~51_combout\,
	dataf => \ALT_INV_sll16[59]~59_combout\,
	combout => \sll4[63]~68_combout\);

-- Location: LABCELL_X56_Y7_N54
\sllout[63]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sllout[63]~2_combout\ = ( \ShiftCount[1]~input_o\ & ( \sll4[63]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[60]~62_combout\))) ) ) ) # ( !\ShiftCount[1]~input_o\ & ( \sll4[63]~68_combout\ & ( 
-- (!\ShiftCount[0]~input_o\) # (\sll4[62]~67_combout\) ) ) ) # ( \ShiftCount[1]~input_o\ & ( !\sll4[63]~68_combout\ & ( (!\ShiftCount[0]~input_o\ & (\sll4[61]~65_combout\)) # (\ShiftCount[0]~input_o\ & ((\sll4[60]~62_combout\))) ) ) ) # ( 
-- !\ShiftCount[1]~input_o\ & ( !\sll4[63]~68_combout\ & ( (\ShiftCount[0]~input_o\ & \sll4[62]~67_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sll4[61]~65_combout\,
	datab => \ALT_INV_sll4[60]~62_combout\,
	datac => \ALT_INV_ShiftCount[0]~input_o\,
	datad => \ALT_INV_sll4[62]~67_combout\,
	datae => \ALT_INV_ShiftCount[1]~input_o\,
	dataf => \ALT_INV_sll4[63]~68_combout\,
	combout => \sllout[63]~2_combout\);

-- Location: IOIBUF_X26_Y0_N58
\Arith[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Arith(63),
	o => \Arith[63]~input_o\);

-- Location: LABCELL_X53_Y4_N54
\Output~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~300_combout\ = ( \Arith[63]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\sllout[63]~2_combout\)) # (\ShiftFN[1]~input_o\ & ((\Input[63]~input_o\))) ) ) ) # ( !\Arith[63]~input_o\ & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\sllout[63]~2_combout\)) # (\ShiftFN[1]~input_o\ & ((\Input[63]~input_o\))) ) ) ) # ( \Arith[63]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\srlout[63]~2_combout\) ) ) ) # ( !\Arith[63]~input_o\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (\srlout[63]~2_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_srlout[63]~2_combout\,
	datab => \ALT_INV_sllout[63]~2_combout\,
	datac => \ALT_INV_Input[63]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Arith[63]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Output~300_combout\);

-- Location: IOIBUF_X26_Y81_N41
\ExtWord~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X86_Y81_N35
\ShiftCount[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(6),
	o => \ShiftCount[6]~input_o\);

-- Location: LABCELL_X31_Y32_N0
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


