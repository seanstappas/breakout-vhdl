-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/05/2016 13:25:03"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g30_keyboard_to_LED IS
    PORT (
	KEYS : IN std_logic_vector(63 DOWNTO 0);
	SEGMENTS : OUT std_logic_vector(6 DOWNTO 0)
	);
END g30_keyboard_to_LED;

-- Design Ports Information
-- SEGMENTS[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[1]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[2]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[3]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[4]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[5]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[6]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEYS[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[28]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[29]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[30]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[31]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[22]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[23]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[20]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[21]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[26]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[27]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[24]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[25]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[19]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[18]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[16]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[17]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[36]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[37]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[38]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[39]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[42]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[43]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[40]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[41]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[44]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[45]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[46]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[47]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[34]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[32]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[33]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[35]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[12]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[13]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[14]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[15]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[6]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[4]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[5]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[10]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[11]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[8]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[9]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[3]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[48]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[52]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[54]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[55]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[53]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[58]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[59]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[56]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[57]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[60]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[62]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[61]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[63]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[50]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[51]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[49]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g30_keyboard_to_LED IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEYS : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_SEGMENTS : std_logic_vector(6 DOWNTO 0);
SIGNAL \Encoder|Encoder|CODE[2]~4_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~6_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~11_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder3|ERROR~0_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~17_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~18_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~19_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~20_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~21_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~22_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~23_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~24_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~25_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~26_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~27_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~28_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~29_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~30_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~31_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~32_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~33_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~34_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~35_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~36_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~37_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~38_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~39_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~40_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~41_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~52_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~53_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~54_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~55_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~56_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~57_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~58_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~59_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~60_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~61_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~62_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~63_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~64_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~65_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~66_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~67_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~68_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~69_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~70_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~72_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~73_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~80_combout\ : std_logic;
SIGNAL \Decoder|Mux3~0_combout\ : std_logic;
SIGNAL \Decoder|Mux5~1_combout\ : std_logic;
SIGNAL \Decoder|Mux4~0_combout\ : std_logic;
SIGNAL \Decoder|Mux0~3_combout\ : std_logic;
SIGNAL \Decoder|Mux3~4_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~10_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~12_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~13_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder0|ERROR~2_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~1_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~0_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~3_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder1|ERROR~2_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~7_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~8_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~5_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~9_combout\ : std_logic;
SIGNAL \Encoder|Mux2~0_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~74_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~75_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~14_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~77_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~76_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~78_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~79_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~2_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~81_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~82_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~15_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~16_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~83_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~84_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[2]~85_combout\ : std_logic;
SIGNAL \Encoder|Encoder|Equal0~0_combout\ : std_logic;
SIGNAL \Encoder|Mux4~0_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~71_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~47_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~48_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~49_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~50_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[1]~51_combout\ : std_logic;
SIGNAL \Encoder|Mux5~0_combout\ : std_logic;
SIGNAL \Encoder|Mux5~1_combout\ : std_logic;
SIGNAL \Decoder|Mux6~0_combout\ : std_logic;
SIGNAL \Decoder|Mux6~3_combout\ : std_logic;
SIGNAL \Encoder|Mux1~0_combout\ : std_logic;
SIGNAL \Decoder|Mux6~1_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE~90_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~91_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~89_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~92_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~87_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~86_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[3]~88_combout\ : std_logic;
SIGNAL \Encoder|Mux3~0_combout\ : std_logic;
SIGNAL \Decoder|Mux6~2_combout\ : std_logic;
SIGNAL \Decoder|Mux6~4_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~43_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~44_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~45_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~42_combout\ : std_logic;
SIGNAL \Encoder|Encoder|CODE[0]~46_combout\ : std_logic;
SIGNAL \Encoder|Mux6~0_combout\ : std_logic;
SIGNAL \Encoder|Mux6~1_combout\ : std_logic;
SIGNAL \Decoder|Mux5~2_combout\ : std_logic;
SIGNAL \Decoder|Mux5~3_combout\ : std_logic;
SIGNAL \Decoder|Mux5~4_combout\ : std_logic;
SIGNAL \Decoder|Mux5~0_combout\ : std_logic;
SIGNAL \Decoder|Mux5~5_combout\ : std_logic;
SIGNAL \Decoder|Mux4~3_combout\ : std_logic;
SIGNAL \Decoder|Mux4~1_combout\ : std_logic;
SIGNAL \Decoder|Mux4~2_combout\ : std_logic;
SIGNAL \Decoder|Mux4~4_combout\ : std_logic;
SIGNAL \Decoder|Mux3~5_combout\ : std_logic;
SIGNAL \Decoder|Mux3~2_combout\ : std_logic;
SIGNAL \Decoder|Mux3~1_combout\ : std_logic;
SIGNAL \Decoder|Mux3~3_combout\ : std_logic;
SIGNAL \Decoder|Mux2~1_combout\ : std_logic;
SIGNAL \Decoder|Mux2~0_combout\ : std_logic;
SIGNAL \Decoder|Mux2~3_combout\ : std_logic;
SIGNAL \Decoder|Mux2~4_combout\ : std_logic;
SIGNAL \Decoder|Mux2~2_combout\ : std_logic;
SIGNAL \Decoder|Mux1~1_combout\ : std_logic;
SIGNAL \Decoder|Mux1~2_combout\ : std_logic;
SIGNAL \Decoder|Mux1~3_combout\ : std_logic;
SIGNAL \Decoder|Mux1~0_combout\ : std_logic;
SIGNAL \Decoder|Mux1~4_combout\ : std_logic;
SIGNAL \Decoder|Mux0~4_combout\ : std_logic;
SIGNAL \Decoder|Mux0~1_combout\ : std_logic;
SIGNAL \Decoder|Mux0~0_combout\ : std_logic;
SIGNAL \Decoder|Mux0~2_combout\ : std_logic;
SIGNAL \KEYS~combout\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_KEYS <= KEYS;
SEGMENTS <= ww_SEGMENTS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X49_Y16_N24
\Encoder|Encoder|CODE[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~4_combout\ = (!\KEYS~combout\(17) & (!\KEYS~combout\(18) & !\KEYS~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(17),
	datac => \KEYS~combout\(18),
	datad => \KEYS~combout\(16),
	combout => \Encoder|Encoder|CODE[2]~4_combout\);

-- Location: LCCOMB_X49_Y23_N18
\Encoder|Encoder|CODE[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~6_combout\ = (!\KEYS~combout\(40) & (!\KEYS~combout\(43) & (!\KEYS~combout\(42) & !\KEYS~combout\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(40),
	datab => \KEYS~combout\(43),
	datac => \KEYS~combout\(42),
	datad => \KEYS~combout\(41),
	combout => \Encoder|Encoder|CODE[3]~6_combout\);

-- Location: LCCOMB_X49_Y9_N10
\Encoder|Encoder|CODE[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~11_combout\ = (!\KEYS~combout\(5) & (!\KEYS~combout\(7) & (!\KEYS~combout\(6) & !\KEYS~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(7),
	datac => \KEYS~combout\(6),
	datad => \KEYS~combout\(4),
	combout => \Encoder|Encoder|CODE[2]~11_combout\);

-- Location: LCCOMB_X48_Y20_N18
\Encoder|Encoder|Encoder3|ERROR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder3|ERROR~0_combout\ = ((\KEYS~combout\(48)) # (!\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\)) # (!\Encoder|Encoder|CODE~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Encoder|CODE~16_combout\,
	datac => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\,
	datad => \KEYS~combout\(48),
	combout => \Encoder|Encoder|Encoder3|ERROR~0_combout\);

-- Location: LCCOMB_X49_Y16_N28
\Encoder|Encoder|CODE[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~17_combout\ = (\Encoder|Encoder|CODE[1]~13_combout\ & !\KEYS~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Encoder|Encoder|CODE[1]~13_combout\,
	datad => \KEYS~combout\(16),
	combout => \Encoder|Encoder|CODE[1]~17_combout\);

-- Location: LCCOMB_X49_Y19_N4
\Encoder|Encoder|CODE~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~18_combout\ = (\Encoder|Encoder|CODE~3_combout\ & (!\KEYS~combout\(32) & !\KEYS~combout\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Encoder|CODE~3_combout\,
	datac => \KEYS~combout\(32),
	datad => \KEYS~combout\(34),
	combout => \Encoder|Encoder|CODE~18_combout\);

-- Location: LCCOMB_X49_Y23_N30
\Encoder|Encoder|CODE~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~19_combout\ = (!\KEYS~combout\(36) & ((\KEYS~combout\(37)) # ((\KEYS~combout\(39) & !\KEYS~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(39),
	datab => \KEYS~combout\(37),
	datac => \KEYS~combout\(38),
	datad => \KEYS~combout\(36),
	combout => \Encoder|Encoder|CODE~19_combout\);

-- Location: LCCOMB_X49_Y23_N16
\Encoder|Encoder|CODE~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~20_combout\ = (\Encoder|Encoder|CODE~19_combout\) # (\KEYS~combout\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Encoder|CODE~19_combout\,
	datad => \KEYS~combout\(35),
	combout => \Encoder|Encoder|CODE~20_combout\);

-- Location: LCCOMB_X49_Y19_N6
\Encoder|Encoder|CODE~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~21_combout\ = (!\KEYS~combout\(35) & (!\KEYS~combout\(48) & !\KEYS~combout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(35),
	datab => \KEYS~combout\(48),
	datac => \KEYS~combout\(50),
	combout => \Encoder|Encoder|CODE~21_combout\);

-- Location: LCCOMB_X49_Y19_N24
\Encoder|Encoder|CODE~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~22_combout\ = (\Encoder|Encoder|CODE~21_combout\ & (\Encoder|Encoder|CODE[3]~6_combout\ & (\Encoder|Encoder|CODE[2]~5_combout\ & \Encoder|Encoder|CODE[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~21_combout\,
	datab => \Encoder|Encoder|CODE[3]~6_combout\,
	datac => \Encoder|Encoder|CODE[2]~5_combout\,
	datad => \Encoder|Encoder|CODE[2]~7_combout\,
	combout => \Encoder|Encoder|CODE~22_combout\);

-- Location: LCCOMB_X48_Y23_N8
\Encoder|Encoder|CODE~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~23_combout\ = (\KEYS~combout\(59)) # ((!\KEYS~combout\(60) & \KEYS~combout\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(60),
	datab => \KEYS~combout\(59),
	datad => \KEYS~combout\(61),
	combout => \Encoder|Encoder|CODE~23_combout\);

-- Location: LCCOMB_X48_Y23_N10
\Encoder|Encoder|CODE~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~24_combout\ = (!\KEYS~combout\(56) & ((\KEYS~combout\(57)) # ((!\KEYS~combout\(58) & \Encoder|Encoder|CODE~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(58),
	datab => \Encoder|Encoder|CODE~23_combout\,
	datac => \KEYS~combout\(57),
	datad => \KEYS~combout\(56),
	combout => \Encoder|Encoder|CODE~24_combout\);

-- Location: LCCOMB_X48_Y23_N12
\Encoder|Encoder|CODE~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~25_combout\ = (\KEYS~combout\(53)) # ((!\KEYS~combout\(54) & ((\Encoder|Encoder|CODE~24_combout\) # (\KEYS~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~24_combout\,
	datab => \KEYS~combout\(54),
	datac => \KEYS~combout\(53),
	datad => \KEYS~combout\(55),
	combout => \Encoder|Encoder|CODE~25_combout\);

-- Location: LCCOMB_X48_Y23_N30
\Encoder|Encoder|CODE~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~26_combout\ = (!\Encoder|Encoder|CODE~16_combout\ & (\Encoder|Encoder|CODE~22_combout\ & (!\KEYS~combout\(52) & \Encoder|Encoder|CODE~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~16_combout\,
	datab => \Encoder|Encoder|CODE~22_combout\,
	datac => \KEYS~combout\(52),
	datad => \Encoder|Encoder|CODE~25_combout\,
	combout => \Encoder|Encoder|CODE~26_combout\);

-- Location: LCCOMB_X49_Y23_N2
\Encoder|Encoder|CODE~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~27_combout\ = (!\KEYS~combout\(44) & ((\KEYS~combout\(45)) # ((!\KEYS~combout\(46) & \KEYS~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(45),
	datab => \KEYS~combout\(44),
	datac => \KEYS~combout\(46),
	datad => \KEYS~combout\(47),
	combout => \Encoder|Encoder|CODE~27_combout\);

-- Location: LCCOMB_X49_Y23_N4
\Encoder|Encoder|CODE~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~28_combout\ = (\KEYS~combout\(41)) # ((!\KEYS~combout\(42) & ((\Encoder|Encoder|CODE~27_combout\) # (\KEYS~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(42),
	datab => \Encoder|Encoder|CODE~27_combout\,
	datac => \KEYS~combout\(43),
	datad => \KEYS~combout\(41),
	combout => \Encoder|Encoder|CODE~28_combout\);

-- Location: LCCOMB_X49_Y23_N14
\Encoder|Encoder|CODE~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~29_combout\ = (!\KEYS~combout\(40) & (!\KEYS~combout\(38) & (\Encoder|Encoder|CODE~28_combout\ & !\KEYS~combout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(40),
	datab => \KEYS~combout\(38),
	datac => \Encoder|Encoder|CODE~28_combout\,
	datad => \KEYS~combout\(36),
	combout => \Encoder|Encoder|CODE~29_combout\);

-- Location: LCCOMB_X49_Y19_N2
\Encoder|Encoder|CODE~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~30_combout\ = (!\KEYS~combout\(35) & (\Encoder|Encoder|CODE[3]~6_combout\ & (\Encoder|Encoder|CODE[2]~5_combout\ & \Encoder|Encoder|CODE[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(35),
	datab => \Encoder|Encoder|CODE[3]~6_combout\,
	datac => \Encoder|Encoder|CODE[2]~5_combout\,
	datad => \Encoder|Encoder|CODE[2]~7_combout\,
	combout => \Encoder|Encoder|CODE~30_combout\);

-- Location: LCCOMB_X49_Y23_N0
\Encoder|Encoder|CODE~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~31_combout\ = (\Encoder|Encoder|CODE~29_combout\) # ((\Encoder|Encoder|CODE~30_combout\ & (!\KEYS~combout\(48) & \KEYS~combout\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~30_combout\,
	datab => \Encoder|Encoder|CODE~29_combout\,
	datac => \KEYS~combout\(48),
	datad => \KEYS~combout\(49),
	combout => \Encoder|Encoder|CODE~31_combout\);

-- Location: LCCOMB_X48_Y23_N16
\Encoder|Encoder|CODE~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~32_combout\ = (!\KEYS~combout\(58) & (!\KEYS~combout\(54) & (!\KEYS~combout\(52) & !\KEYS~combout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(58),
	datab => \KEYS~combout\(54),
	datac => \KEYS~combout\(52),
	datad => \KEYS~combout\(56),
	combout => \Encoder|Encoder|CODE~32_combout\);

-- Location: LCCOMB_X48_Y23_N18
\Encoder|Encoder|CODE~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~33_combout\ = (!\KEYS~combout\(62) & (\KEYS~combout\(63) & (\Encoder|Encoder|CODE~32_combout\ & !\KEYS~combout\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(62),
	datab => \KEYS~combout\(63),
	datac => \Encoder|Encoder|CODE~32_combout\,
	datad => \KEYS~combout\(60),
	combout => \Encoder|Encoder|CODE~33_combout\);

-- Location: LCCOMB_X48_Y23_N4
\Encoder|Encoder|CODE~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~34_combout\ = (\Encoder|Encoder|CODE~31_combout\) # ((\Encoder|Encoder|CODE~22_combout\ & ((\KEYS~combout\(51)) # (\Encoder|Encoder|CODE~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(51),
	datab => \Encoder|Encoder|CODE~22_combout\,
	datac => \Encoder|Encoder|CODE~31_combout\,
	datad => \Encoder|Encoder|CODE~33_combout\,
	combout => \Encoder|Encoder|CODE~34_combout\);

-- Location: LCCOMB_X48_Y23_N6
\Encoder|Encoder|CODE~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~35_combout\ = (\Encoder|Encoder|CODE~18_combout\ & ((\Encoder|Encoder|CODE~34_combout\) # ((\Encoder|Encoder|CODE~20_combout\) # (\Encoder|Encoder|CODE~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~18_combout\,
	datab => \Encoder|Encoder|CODE~34_combout\,
	datac => \Encoder|Encoder|CODE~20_combout\,
	datad => \Encoder|Encoder|CODE~26_combout\,
	combout => \Encoder|Encoder|CODE~35_combout\);

-- Location: LCCOMB_X49_Y19_N12
\Encoder|Encoder|CODE~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~36_combout\ = (\KEYS~combout\(19)) # ((\KEYS~combout\(33) & (\Encoder|Encoder|CODE~3_combout\ & !\KEYS~combout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(33),
	datab => \Encoder|Encoder|CODE~3_combout\,
	datac => \KEYS~combout\(32),
	datad => \KEYS~combout\(19),
	combout => \Encoder|Encoder|CODE~36_combout\);

-- Location: LCCOMB_X49_Y15_N16
\Encoder|Encoder|CODE~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~37_combout\ = (!\KEYS~combout\(28) & ((\KEYS~combout\(29)) # ((!\KEYS~combout\(30) & \KEYS~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(30),
	datab => \KEYS~combout\(31),
	datac => \KEYS~combout\(29),
	datad => \KEYS~combout\(28),
	combout => \Encoder|Encoder|CODE~37_combout\);

-- Location: LCCOMB_X49_Y15_N10
\Encoder|Encoder|CODE~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~38_combout\ = (\KEYS~combout\(25)) # ((!\KEYS~combout\(26) & ((\Encoder|Encoder|CODE~37_combout\) # (\KEYS~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~37_combout\,
	datab => \KEYS~combout\(27),
	datac => \KEYS~combout\(26),
	datad => \KEYS~combout\(25),
	combout => \Encoder|Encoder|CODE~38_combout\);

-- Location: LCCOMB_X49_Y15_N20
\Encoder|Encoder|CODE~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~39_combout\ = (!\KEYS~combout\(22) & ((\KEYS~combout\(23)) # ((\Encoder|Encoder|CODE~38_combout\ & !\KEYS~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~38_combout\,
	datab => \KEYS~combout\(23),
	datac => \KEYS~combout\(24),
	datad => \KEYS~combout\(22),
	combout => \Encoder|Encoder|CODE~39_combout\);

-- Location: LCCOMB_X49_Y15_N6
\Encoder|Encoder|CODE~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~40_combout\ = (\Encoder|Encoder|CODE~36_combout\) # ((!\KEYS~combout\(20) & ((\KEYS~combout\(21)) # (\Encoder|Encoder|CODE~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(20),
	datab => \Encoder|Encoder|CODE~36_combout\,
	datac => \KEYS~combout\(21),
	datad => \Encoder|Encoder|CODE~39_combout\,
	combout => \Encoder|Encoder|CODE~40_combout\);

-- Location: LCCOMB_X49_Y16_N6
\Encoder|Encoder|CODE[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~41_combout\ = (!\KEYS~combout\(18) & (\Encoder|Encoder|CODE[1]~17_combout\ & ((\Encoder|Encoder|CODE~40_combout\) # (\Encoder|Encoder|CODE~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~40_combout\,
	datab => \Encoder|Encoder|CODE~35_combout\,
	datac => \KEYS~combout\(18),
	datad => \Encoder|Encoder|CODE[1]~17_combout\,
	combout => \Encoder|Encoder|CODE[0]~41_combout\);

-- Location: LCCOMB_X49_Y15_N24
\Encoder|Encoder|CODE~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~52_combout\ = (!\KEYS~combout\(29) & (!\KEYS~combout\(28) & ((\KEYS~combout\(30)) # (\KEYS~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(30),
	datab => \KEYS~combout\(31),
	datac => \KEYS~combout\(29),
	datad => \KEYS~combout\(28),
	combout => \Encoder|Encoder|CODE~52_combout\);

-- Location: LCCOMB_X49_Y15_N2
\Encoder|Encoder|CODE~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~53_combout\ = (\Encoder|Encoder|CODE~52_combout\) # ((\KEYS~combout\(27)) # (\KEYS~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~52_combout\,
	datab => \KEYS~combout\(27),
	datac => \KEYS~combout\(26),
	combout => \Encoder|Encoder|CODE~53_combout\);

-- Location: LCCOMB_X49_Y15_N28
\Encoder|Encoder|CODE~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~54_combout\ = (\KEYS~combout\(23)) # ((!\KEYS~combout\(25) & (\Encoder|Encoder|CODE~53_combout\ & !\KEYS~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(25),
	datab => \Encoder|Encoder|CODE~53_combout\,
	datac => \KEYS~combout\(24),
	datad => \KEYS~combout\(23),
	combout => \Encoder|Encoder|CODE~54_combout\);

-- Location: LCCOMB_X49_Y15_N30
\Encoder|Encoder|CODE~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~55_combout\ = (!\KEYS~combout\(21) & (!\KEYS~combout\(20) & ((\KEYS~combout\(22)) # (\Encoder|Encoder|CODE~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(22),
	datab => \KEYS~combout\(21),
	datac => \KEYS~combout\(20),
	datad => \Encoder|Encoder|CODE~54_combout\,
	combout => \Encoder|Encoder|CODE~55_combout\);

-- Location: LCCOMB_X49_Y15_N8
\Encoder|Encoder|CODE~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~56_combout\ = (\KEYS~combout\(18)) # ((\Encoder|Encoder|CODE~55_combout\) # (\KEYS~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(18),
	datab => \Encoder|Encoder|CODE~55_combout\,
	datac => \KEYS~combout\(19),
	combout => \Encoder|Encoder|CODE~56_combout\);

-- Location: LCCOMB_X49_Y19_N30
\Encoder|Encoder|CODE~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~57_combout\ = (!\KEYS~combout\(33) & (\Encoder|Encoder|CODE~3_combout\ & !\KEYS~combout\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(33),
	datab => \Encoder|Encoder|CODE~3_combout\,
	datac => \KEYS~combout\(32),
	combout => \Encoder|Encoder|CODE~57_combout\);

-- Location: LCCOMB_X48_Y23_N0
\Encoder|Encoder|CODE~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~58_combout\ = (!\KEYS~combout\(60) & (!\KEYS~combout\(61) & ((\KEYS~combout\(63)) # (\KEYS~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(60),
	datab => \KEYS~combout\(63),
	datac => \KEYS~combout\(62),
	datad => \KEYS~combout\(61),
	combout => \Encoder|Encoder|CODE~58_combout\);

-- Location: LCCOMB_X48_Y23_N2
\Encoder|Encoder|CODE~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~59_combout\ = (!\KEYS~combout\(56) & ((\KEYS~combout\(59)) # ((\Encoder|Encoder|CODE~58_combout\) # (\KEYS~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(59),
	datab => \Encoder|Encoder|CODE~58_combout\,
	datac => \KEYS~combout\(58),
	datad => \KEYS~combout\(56),
	combout => \Encoder|Encoder|CODE~59_combout\);

-- Location: LCCOMB_X48_Y23_N20
\Encoder|Encoder|CODE~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~60_combout\ = (\KEYS~combout\(55)) # ((\KEYS~combout\(54)) # ((!\KEYS~combout\(57) & \Encoder|Encoder|CODE~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(57),
	datab => \KEYS~combout\(55),
	datac => \KEYS~combout\(54),
	datad => \Encoder|Encoder|CODE~59_combout\,
	combout => \Encoder|Encoder|CODE~60_combout\);

-- Location: LCCOMB_X48_Y23_N14
\Encoder|Encoder|CODE~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~61_combout\ = (!\KEYS~combout\(50) & ((\KEYS~combout\(52)) # ((\KEYS~combout\(53)) # (!\Encoder|Encoder|CODE~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(50),
	datab => \KEYS~combout\(52),
	datac => \KEYS~combout\(53),
	datad => \Encoder|Encoder|CODE~60_combout\,
	combout => \Encoder|Encoder|CODE~61_combout\);

-- Location: LCCOMB_X49_Y23_N10
\Encoder|Encoder|CODE~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~62_combout\ = (!\KEYS~combout\(48) & (!\KEYS~combout\(49) & ((\KEYS~combout\(51)) # (!\Encoder|Encoder|CODE~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~61_combout\,
	datab => \KEYS~combout\(51),
	datac => \KEYS~combout\(48),
	datad => \KEYS~combout\(49),
	combout => \Encoder|Encoder|CODE~62_combout\);

-- Location: LCCOMB_X49_Y23_N12
\Encoder|Encoder|CODE~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~63_combout\ = (!\KEYS~combout\(43) & !\KEYS~combout\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEYS~combout\(43),
	datac => \KEYS~combout\(42),
	combout => \Encoder|Encoder|CODE~63_combout\);

-- Location: LCCOMB_X49_Y23_N6
\Encoder|Encoder|CODE~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~64_combout\ = (!\KEYS~combout\(41) & (!\KEYS~combout\(36) & (!\KEYS~combout\(40) & !\KEYS~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(41),
	datab => \KEYS~combout\(36),
	datac => \KEYS~combout\(40),
	datad => \KEYS~combout\(37),
	combout => \Encoder|Encoder|CODE~64_combout\);

-- Location: LCCOMB_X49_Y23_N8
\Encoder|Encoder|CODE~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~65_combout\ = (\Encoder|Encoder|CODE~64_combout\ & (((!\KEYS~combout\(44) & !\KEYS~combout\(45))) # (!\Encoder|Encoder|CODE~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~63_combout\,
	datab => \KEYS~combout\(44),
	datac => \KEYS~combout\(45),
	datad => \Encoder|Encoder|CODE~64_combout\,
	combout => \Encoder|Encoder|CODE~65_combout\);

-- Location: LCCOMB_X49_Y23_N26
\Encoder|Encoder|CODE~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~66_combout\ = (\KEYS~combout\(46)) # ((\KEYS~combout\(43)) # ((\KEYS~combout\(42)) # (\KEYS~combout\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(46),
	datab => \KEYS~combout\(43),
	datac => \KEYS~combout\(42),
	datad => \KEYS~combout\(47),
	combout => \Encoder|Encoder|CODE~66_combout\);

-- Location: LCCOMB_X49_Y23_N28
\Encoder|Encoder|CODE~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~67_combout\ = (!\KEYS~combout\(37) & (!\KEYS~combout\(36) & ((\KEYS~combout\(39)) # (\KEYS~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(39),
	datab => \KEYS~combout\(37),
	datac => \KEYS~combout\(38),
	datad => \KEYS~combout\(36),
	combout => \Encoder|Encoder|CODE~67_combout\);

-- Location: LCCOMB_X49_Y23_N22
\Encoder|Encoder|CODE~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~68_combout\ = (\Encoder|Encoder|CODE~67_combout\) # ((\Encoder|Encoder|CODE~65_combout\ & ((\Encoder|Encoder|CODE~62_combout\) # (\Encoder|Encoder|CODE~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~62_combout\,
	datab => \Encoder|Encoder|CODE~66_combout\,
	datac => \Encoder|Encoder|CODE~65_combout\,
	datad => \Encoder|Encoder|CODE~67_combout\,
	combout => \Encoder|Encoder|CODE~68_combout\);

-- Location: LCCOMB_X49_Y19_N8
\Encoder|Encoder|CODE~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~69_combout\ = (\KEYS~combout\(34)) # (\KEYS~combout\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEYS~combout\(34),
	datad => \KEYS~combout\(35),
	combout => \Encoder|Encoder|CODE~69_combout\);

-- Location: LCCOMB_X49_Y19_N10
\Encoder|Encoder|CODE~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~70_combout\ = (\Encoder|Encoder|CODE~56_combout\) # ((\Encoder|Encoder|CODE~57_combout\ & ((\Encoder|Encoder|CODE~68_combout\) # (\Encoder|Encoder|CODE~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~68_combout\,
	datab => \Encoder|Encoder|CODE~56_combout\,
	datac => \Encoder|Encoder|CODE~69_combout\,
	datad => \Encoder|Encoder|CODE~57_combout\,
	combout => \Encoder|Encoder|CODE~70_combout\);

-- Location: LCCOMB_X48_Y16_N26
\Encoder|Encoder|CODE[3]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~72_combout\ = (((\Encoder|Encoder|Encoder1|ERROR~2_combout\ & !\Encoder|Encoder|CODE[3]~9_combout\)) # (!\Encoder|Encoder|CODE[1]~13_combout\)) # (!\Encoder|Encoder|CODE[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~14_combout\,
	datab => \Encoder|Encoder|CODE[1]~13_combout\,
	datac => \Encoder|Encoder|Encoder1|ERROR~2_combout\,
	datad => \Encoder|Encoder|CODE[3]~9_combout\,
	combout => \Encoder|Encoder|CODE[3]~72_combout\);

-- Location: LCCOMB_X48_Y16_N12
\Encoder|Encoder|CODE[3]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~73_combout\ = (((!\Encoder|Encoder|CODE[2]~4_combout\) # (!\Encoder|Encoder|CODE[2]~14_combout\)) # (!\Encoder|Encoder|CODE[1]~13_combout\)) # (!\Encoder|Encoder|CODE~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~3_combout\,
	datab => \Encoder|Encoder|CODE[1]~13_combout\,
	datac => \Encoder|Encoder|CODE[2]~14_combout\,
	datad => \Encoder|Encoder|CODE[2]~4_combout\,
	combout => \Encoder|Encoder|CODE[3]~73_combout\);

-- Location: LCCOMB_X49_Y16_N12
\Encoder|Encoder|CODE[2]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~80_combout\ = (!\KEYS~combout\(17) & (!\KEYS~combout\(16) & (!\KEYS~combout\(18) & !\KEYS~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(17),
	datab => \KEYS~combout\(16),
	datac => \KEYS~combout\(18),
	datad => \KEYS~combout\(19),
	combout => \Encoder|Encoder|CODE[2]~80_combout\);

-- Location: LCCOMB_X46_Y16_N10
\Decoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~0_combout\ = (\Encoder|Mux2~0_combout\ & (!\Encoder|Mux4~0_combout\ & !\Encoder|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y16_N10
\Decoder|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~1_combout\ = (\Encoder|Mux3~0_combout\ & (\Encoder|Mux5~1_combout\ & ((\Encoder|Mux1~0_combout\) # (\Encoder|Mux6~1_combout\)))) # (!\Encoder|Mux3~0_combout\ & (!\Encoder|Mux1~0_combout\ & ((\Encoder|Mux6~1_combout\) # 
-- (\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux5~1_combout\);

-- Location: LCCOMB_X47_Y16_N20
\Decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~0_combout\ = (\Encoder|Mux4~0_combout\ & (\Encoder|Mux3~0_combout\)) # (!\Encoder|Mux4~0_combout\ & (\Encoder|Mux5~1_combout\ & ((\Encoder|Mux3~0_combout\) # (!\Encoder|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux3~0_combout\,
	datab => \Encoder|Mux4~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y16_N12
\Decoder|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~3_combout\ = (\Encoder|Mux4~0_combout\ & ((\Encoder|Mux3~0_combout\) # ((\Encoder|Mux6~1_combout\ & \Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux4~0_combout\ & (\Encoder|Mux3~0_combout\ $ (((!\Encoder|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux3~0_combout\,
	datab => \Encoder|Mux4~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux0~3_combout\);

-- Location: LCCOMB_X46_Y16_N12
\Decoder|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~4_combout\ = (\Encoder|Mux6~1_combout\ & ((\Encoder|Mux3~0_combout\) # (\Encoder|Mux4~0_combout\ $ (!\Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux6~1_combout\ & ((\Encoder|Mux5~1_combout\ & (\Encoder|Mux3~0_combout\)) # 
-- (!\Encoder|Mux5~1_combout\ & ((\Encoder|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux3~4_combout\);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(30),
	combout => \KEYS~combout\(30));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(22),
	combout => \KEYS~combout\(22));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(24),
	combout => \KEYS~combout\(24));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(39),
	combout => \KEYS~combout\(39));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(42),
	combout => \KEYS~combout\(42));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(43),
	combout => \KEYS~combout\(43));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(40),
	combout => \KEYS~combout\(40));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(41),
	combout => \KEYS~combout\(41));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(45),
	combout => \KEYS~combout\(45));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(33),
	combout => \KEYS~combout\(33));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(12),
	combout => \KEYS~combout\(12));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(5),
	combout => \KEYS~combout\(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(8),
	combout => \KEYS~combout\(8));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(53),
	combout => \KEYS~combout\(53));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(58),
	combout => \KEYS~combout\(58));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(60),
	combout => \KEYS~combout\(60));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(51),
	combout => \KEYS~combout\(51));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(1),
	combout => \KEYS~combout\(1));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(14),
	combout => \KEYS~combout\(14));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(15),
	combout => \KEYS~combout\(15));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(13),
	combout => \KEYS~combout\(13));

-- Location: LCCOMB_X49_Y9_N0
\Encoder|Encoder|CODE[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~10_combout\ = (!\KEYS~combout\(12) & (!\KEYS~combout\(14) & (!\KEYS~combout\(15) & !\KEYS~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(12),
	datab => \KEYS~combout\(14),
	datac => \KEYS~combout\(15),
	datad => \KEYS~combout\(13),
	combout => \Encoder|Encoder|CODE[2]~10_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(11),
	combout => \KEYS~combout\(11));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(9),
	combout => \KEYS~combout\(9));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(10),
	combout => \KEYS~combout\(10));

-- Location: LCCOMB_X49_Y9_N4
\Encoder|Encoder|CODE[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~12_combout\ = (!\KEYS~combout\(8) & (!\KEYS~combout\(11) & (!\KEYS~combout\(9) & !\KEYS~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(8),
	datab => \KEYS~combout\(11),
	datac => \KEYS~combout\(9),
	datad => \KEYS~combout\(10),
	combout => \Encoder|Encoder|CODE[3]~12_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(3),
	combout => \KEYS~combout\(3));

-- Location: LCCOMB_X49_Y9_N30
\Encoder|Encoder|CODE[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~13_combout\ = (\Encoder|Encoder|CODE[2]~11_combout\ & (\Encoder|Encoder|CODE[2]~10_combout\ & (\Encoder|Encoder|CODE[3]~12_combout\ & !\KEYS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~11_combout\,
	datab => \Encoder|Encoder|CODE[2]~10_combout\,
	datac => \Encoder|Encoder|CODE[3]~12_combout\,
	datad => \KEYS~combout\(3),
	combout => \Encoder|Encoder|CODE[1]~13_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(2),
	combout => \KEYS~combout\(2));

-- Location: LCCOMB_X49_Y16_N0
\Encoder|Encoder|Encoder0|ERROR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder0|ERROR~2_combout\ = (!\KEYS~combout\(0) & (!\KEYS~combout\(1) & (\Encoder|Encoder|CODE[1]~13_combout\ & !\KEYS~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(0),
	datab => \KEYS~combout\(1),
	datac => \Encoder|Encoder|CODE[1]~13_combout\,
	datad => \KEYS~combout\(2),
	combout => \Encoder|Encoder|Encoder0|ERROR~2_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(18),
	combout => \KEYS~combout\(18));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(21),
	combout => \KEYS~combout\(21));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(20),
	combout => \KEYS~combout\(20));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(23),
	combout => \KEYS~combout\(23));

-- Location: LCCOMB_X49_Y15_N26
\Encoder|Encoder|CODE[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~1_combout\ = (!\KEYS~combout\(22) & (!\KEYS~combout\(21) & (!\KEYS~combout\(20) & !\KEYS~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(22),
	datab => \KEYS~combout\(21),
	datac => \KEYS~combout\(20),
	datad => \KEYS~combout\(23),
	combout => \Encoder|Encoder|CODE[2]~1_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(19),
	combout => \KEYS~combout\(19));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(31),
	combout => \KEYS~combout\(31));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(29),
	combout => \KEYS~combout\(29));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(28),
	combout => \KEYS~combout\(28));

-- Location: LCCOMB_X49_Y15_N0
\Encoder|Encoder|CODE[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~0_combout\ = (!\KEYS~combout\(30) & (!\KEYS~combout\(31) & (!\KEYS~combout\(29) & !\KEYS~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(30),
	datab => \KEYS~combout\(31),
	datac => \KEYS~combout\(29),
	datad => \KEYS~combout\(28),
	combout => \Encoder|Encoder|CODE[2]~0_combout\);

-- Location: LCCOMB_X49_Y15_N22
\Encoder|Encoder|CODE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~3_combout\ = (\Encoder|Encoder|CODE[3]~2_combout\ & (\Encoder|Encoder|CODE[2]~1_combout\ & (!\KEYS~combout\(19) & \Encoder|Encoder|CODE[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~2_combout\,
	datab => \Encoder|Encoder|CODE[2]~1_combout\,
	datac => \KEYS~combout\(19),
	datad => \Encoder|Encoder|CODE[2]~0_combout\,
	combout => \Encoder|Encoder|CODE~3_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(16),
	combout => \KEYS~combout\(16));

-- Location: LCCOMB_X49_Y16_N14
\Encoder|Encoder|Encoder1|ERROR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder1|ERROR~2_combout\ = (!\KEYS~combout\(17) & (!\KEYS~combout\(18) & (\Encoder|Encoder|CODE~3_combout\ & !\KEYS~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(17),
	datab => \KEYS~combout\(18),
	datac => \Encoder|Encoder|CODE~3_combout\,
	datad => \KEYS~combout\(16),
	combout => \Encoder|Encoder|Encoder1|ERROR~2_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(44),
	combout => \KEYS~combout\(44));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(46),
	combout => \KEYS~combout\(46));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(47),
	combout => \KEYS~combout\(47));

-- Location: LCCOMB_X49_Y23_N20
\Encoder|Encoder|CODE[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~7_combout\ = (!\KEYS~combout\(45) & (!\KEYS~combout\(44) & (!\KEYS~combout\(46) & !\KEYS~combout\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(45),
	datab => \KEYS~combout\(44),
	datac => \KEYS~combout\(46),
	datad => \KEYS~combout\(47),
	combout => \Encoder|Encoder|CODE[2]~7_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(34),
	combout => \KEYS~combout\(34));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(32),
	combout => \KEYS~combout\(32));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(35),
	combout => \KEYS~combout\(35));

-- Location: LCCOMB_X49_Y19_N0
\Encoder|Encoder|CODE[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~8_combout\ = (!\KEYS~combout\(33) & (!\KEYS~combout\(34) & (!\KEYS~combout\(32) & !\KEYS~combout\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(33),
	datab => \KEYS~combout\(34),
	datac => \KEYS~combout\(32),
	datad => \KEYS~combout\(35),
	combout => \Encoder|Encoder|CODE[3]~8_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(37),
	combout => \KEYS~combout\(37));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(38),
	combout => \KEYS~combout\(38));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(36),
	combout => \KEYS~combout\(36));

-- Location: LCCOMB_X49_Y23_N24
\Encoder|Encoder|CODE[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~5_combout\ = (!\KEYS~combout\(39) & (!\KEYS~combout\(37) & (!\KEYS~combout\(38) & !\KEYS~combout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(39),
	datab => \KEYS~combout\(37),
	datac => \KEYS~combout\(38),
	datad => \KEYS~combout\(36),
	combout => \Encoder|Encoder|CODE[2]~5_combout\);

-- Location: LCCOMB_X49_Y19_N18
\Encoder|Encoder|CODE[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~9_combout\ = (\Encoder|Encoder|CODE[3]~6_combout\ & (\Encoder|Encoder|CODE[2]~7_combout\ & (\Encoder|Encoder|CODE[3]~8_combout\ & \Encoder|Encoder|CODE[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~6_combout\,
	datab => \Encoder|Encoder|CODE[2]~7_combout\,
	datac => \Encoder|Encoder|CODE[3]~8_combout\,
	datad => \Encoder|Encoder|CODE[2]~5_combout\,
	combout => \Encoder|Encoder|CODE[3]~9_combout\);

-- Location: LCCOMB_X48_Y16_N20
\Encoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux2~0_combout\ = (\Encoder|Encoder|Encoder0|ERROR~2_combout\ & (((\Encoder|Encoder|Encoder3|ERROR~0_combout\ & \Encoder|Encoder|CODE[3]~9_combout\)) # (!\Encoder|Encoder|Encoder1|ERROR~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Encoder3|ERROR~0_combout\,
	datab => \Encoder|Encoder|Encoder0|ERROR~2_combout\,
	datac => \Encoder|Encoder|Encoder1|ERROR~2_combout\,
	datad => \Encoder|Encoder|CODE[3]~9_combout\,
	combout => \Encoder|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y19_N28
\Encoder|Encoder|CODE[2]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~74_combout\ = (!\KEYS~combout\(33) & (!\KEYS~combout\(34) & (!\KEYS~combout\(32) & !\KEYS~combout\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(33),
	datab => \KEYS~combout\(34),
	datac => \KEYS~combout\(32),
	datad => \KEYS~combout\(35),
	combout => \Encoder|Encoder|CODE[2]~74_combout\);

-- Location: LCCOMB_X49_Y19_N22
\Encoder|Encoder|CODE[2]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~75_combout\ = (\Encoder|Encoder|CODE[2]~74_combout\ & (((\Encoder|Encoder|CODE[3]~6_combout\ & !\Encoder|Encoder|CODE[2]~7_combout\)) # (!\Encoder|Encoder|CODE[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~6_combout\,
	datab => \Encoder|Encoder|CODE[2]~7_combout\,
	datac => \Encoder|Encoder|CODE[2]~74_combout\,
	datad => \Encoder|Encoder|CODE[2]~5_combout\,
	combout => \Encoder|Encoder|CODE[2]~75_combout\);

-- Location: LCCOMB_X49_Y16_N26
\Encoder|Encoder|CODE[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~14_combout\ = (!\KEYS~combout\(0) & (!\KEYS~combout\(1) & !\KEYS~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(0),
	datac => \KEYS~combout\(1),
	datad => \KEYS~combout\(2),
	combout => \Encoder|Encoder|CODE[2]~14_combout\);

-- Location: LCCOMB_X49_Y9_N24
\Encoder|Encoder|CODE[3]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~77_combout\ = (((\KEYS~combout\(3)) # (!\Encoder|Encoder|CODE[3]~12_combout\)) # (!\Encoder|Encoder|CODE[2]~14_combout\)) # (!\Encoder|Encoder|CODE[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~11_combout\,
	datab => \Encoder|Encoder|CODE[2]~14_combout\,
	datac => \Encoder|Encoder|CODE[3]~12_combout\,
	datad => \KEYS~combout\(3),
	combout => \Encoder|Encoder|CODE[3]~77_combout\);

-- Location: LCCOMB_X49_Y16_N10
\Encoder|Encoder|CODE[2]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~76_combout\ = (!\KEYS~combout\(0) & (!\KEYS~combout\(2) & (!\KEYS~combout\(1) & !\KEYS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(0),
	datab => \KEYS~combout\(2),
	datac => \KEYS~combout\(1),
	datad => \KEYS~combout\(3),
	combout => \Encoder|Encoder|CODE[2]~76_combout\);

-- Location: LCCOMB_X49_Y9_N2
\Encoder|Encoder|CODE[2]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~78_combout\ = (\Encoder|Encoder|CODE[2]~11_combout\ & (!\Encoder|Encoder|CODE[2]~10_combout\ & (!\Encoder|Encoder|CODE[3]~77_combout\))) # (!\Encoder|Encoder|CODE[2]~11_combout\ & ((\Encoder|Encoder|CODE[2]~76_combout\) # 
-- ((!\Encoder|Encoder|CODE[2]~10_combout\ & !\Encoder|Encoder|CODE[3]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~11_combout\,
	datab => \Encoder|Encoder|CODE[2]~10_combout\,
	datac => \Encoder|Encoder|CODE[3]~77_combout\,
	datad => \Encoder|Encoder|CODE[2]~76_combout\,
	combout => \Encoder|Encoder|CODE[2]~78_combout\);

-- Location: LCCOMB_X48_Y16_N22
\Encoder|Encoder|CODE[2]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~79_combout\ = (\Encoder|Encoder|CODE[3]~73_combout\ & ((\Encoder|Encoder|CODE[2]~78_combout\))) # (!\Encoder|Encoder|CODE[3]~73_combout\ & (\Encoder|Encoder|CODE[2]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~73_combout\,
	datab => \Encoder|Encoder|CODE[2]~75_combout\,
	datad => \Encoder|Encoder|CODE[2]~78_combout\,
	combout => \Encoder|Encoder|CODE[2]~79_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(26),
	combout => \KEYS~combout\(26));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(27),
	combout => \KEYS~combout\(27));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(25),
	combout => \KEYS~combout\(25));

-- Location: LCCOMB_X49_Y15_N12
\Encoder|Encoder|CODE[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~2_combout\ = (!\KEYS~combout\(24) & (!\KEYS~combout\(26) & (!\KEYS~combout\(27) & !\KEYS~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(24),
	datab => \KEYS~combout\(26),
	datac => \KEYS~combout\(27),
	datad => \KEYS~combout\(25),
	combout => \Encoder|Encoder|CODE[3]~2_combout\);

-- Location: LCCOMB_X49_Y15_N18
\Encoder|Encoder|CODE[3]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~81_combout\ = (((\KEYS~combout\(19)) # (!\Encoder|Encoder|CODE[3]~2_combout\)) # (!\Encoder|Encoder|CODE[2]~1_combout\)) # (!\Encoder|Encoder|CODE[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~4_combout\,
	datab => \Encoder|Encoder|CODE[2]~1_combout\,
	datac => \KEYS~combout\(19),
	datad => \Encoder|Encoder|CODE[3]~2_combout\,
	combout => \Encoder|Encoder|CODE[3]~81_combout\);

-- Location: LCCOMB_X49_Y15_N4
\Encoder|Encoder|CODE[2]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~82_combout\ = (\Encoder|Encoder|CODE[2]~80_combout\ & (((!\Encoder|Encoder|CODE[3]~81_combout\ & !\Encoder|Encoder|CODE[2]~0_combout\)) # (!\Encoder|Encoder|CODE[2]~1_combout\))) # (!\Encoder|Encoder|CODE[2]~80_combout\ & 
-- (!\Encoder|Encoder|CODE[3]~81_combout\ & ((!\Encoder|Encoder|CODE[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~80_combout\,
	datab => \Encoder|Encoder|CODE[3]~81_combout\,
	datac => \Encoder|Encoder|CODE[2]~1_combout\,
	datad => \Encoder|Encoder|CODE[2]~0_combout\,
	combout => \Encoder|Encoder|CODE[2]~82_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(63),
	combout => \KEYS~combout\(63));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(62),
	combout => \KEYS~combout\(62));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(61),
	combout => \KEYS~combout\(61));

-- Location: LCCOMB_X48_Y23_N28
\Encoder|Encoder|Encoder3|ERROR_AND_CODE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\ = (!\KEYS~combout\(60) & (!\KEYS~combout\(63) & (!\KEYS~combout\(62) & !\KEYS~combout\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(60),
	datab => \KEYS~combout\(63),
	datac => \KEYS~combout\(62),
	datad => \KEYS~combout\(61),
	combout => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(59),
	combout => \KEYS~combout\(59));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(57),
	combout => \KEYS~combout\(57));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(56),
	combout => \KEYS~combout\(56));

-- Location: LCCOMB_X48_Y23_N26
\Encoder|Encoder|Encoder3|ERROR_AND_CODE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\ = (!\KEYS~combout\(58) & (!\KEYS~combout\(59) & (!\KEYS~combout\(57) & !\KEYS~combout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(58),
	datab => \KEYS~combout\(59),
	datac => \KEYS~combout\(57),
	datad => \KEYS~combout\(56),
	combout => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(52),
	combout => \KEYS~combout\(52));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(54),
	combout => \KEYS~combout\(54));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(55),
	combout => \KEYS~combout\(55));

-- Location: LCCOMB_X48_Y23_N24
\Encoder|Encoder|CODE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~15_combout\ = (!\KEYS~combout\(53) & (!\KEYS~combout\(52) & (!\KEYS~combout\(54) & !\KEYS~combout\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(53),
	datab => \KEYS~combout\(52),
	datac => \KEYS~combout\(54),
	datad => \KEYS~combout\(55),
	combout => \Encoder|Encoder|CODE~15_combout\);

-- Location: LCCOMB_X48_Y20_N0
\Encoder|Encoder|CODE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~16_combout\ = (\Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\ & (\Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\ & \Encoder|Encoder|CODE~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\,
	datad => \Encoder|Encoder|CODE~15_combout\,
	combout => \Encoder|Encoder|CODE~16_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(50),
	combout => \KEYS~combout\(50));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(49),
	combout => \KEYS~combout\(49));

-- Location: LCCOMB_X48_Y23_N22
\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\ = (!\KEYS~combout\(51) & (!\KEYS~combout\(50) & !\KEYS~combout\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(51),
	datac => \KEYS~combout\(50),
	datad => \KEYS~combout\(49),
	combout => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\);

-- Location: LCCOMB_X48_Y20_N28
\Encoder|Encoder|CODE~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~83_combout\ = (\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\ & (((\Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\ & !\Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\)) # (!\Encoder|Encoder|CODE~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\,
	datab => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\,
	datad => \Encoder|Encoder|CODE~15_combout\,
	combout => \Encoder|Encoder|CODE~83_combout\);

-- Location: LCCOMB_X48_Y20_N6
\Encoder|Encoder|CODE[2]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~84_combout\ = (!\KEYS~combout\(48) & (\Encoder|Encoder|CODE~83_combout\ & ((!\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\) # (!\Encoder|Encoder|CODE~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(48),
	datab => \Encoder|Encoder|CODE~16_combout\,
	datac => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\,
	datad => \Encoder|Encoder|CODE~83_combout\,
	combout => \Encoder|Encoder|CODE[2]~84_combout\);

-- Location: LCCOMB_X48_Y16_N8
\Encoder|Encoder|CODE[2]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[2]~85_combout\ = (\Encoder|Encoder|CODE[3]~73_combout\ & (\Encoder|Encoder|CODE[2]~82_combout\)) # (!\Encoder|Encoder|CODE[3]~73_combout\ & ((\Encoder|Encoder|CODE[2]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~73_combout\,
	datab => \Encoder|Encoder|CODE[2]~82_combout\,
	datac => \Encoder|Encoder|CODE[2]~84_combout\,
	combout => \Encoder|Encoder|CODE[2]~85_combout\);

-- Location: LCCOMB_X48_Y16_N0
\Encoder|Encoder|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|Equal0~0_combout\ = (!\Encoder|Encoder|Encoder3|ERROR~0_combout\ & (\Encoder|Encoder|Encoder0|ERROR~2_combout\ & (\Encoder|Encoder|Encoder1|ERROR~2_combout\ & \Encoder|Encoder|CODE[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Encoder3|ERROR~0_combout\,
	datab => \Encoder|Encoder|Encoder0|ERROR~2_combout\,
	datac => \Encoder|Encoder|Encoder1|ERROR~2_combout\,
	datad => \Encoder|Encoder|CODE[3]~9_combout\,
	combout => \Encoder|Encoder|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y16_N10
\Encoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux4~0_combout\ = (!\Encoder|Encoder|Equal0~0_combout\ & ((\Encoder|Encoder|CODE[3]~72_combout\ & (\Encoder|Encoder|CODE[2]~79_combout\)) # (!\Encoder|Encoder|CODE[3]~72_combout\ & ((\Encoder|Encoder|CODE[2]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~72_combout\,
	datab => \Encoder|Encoder|CODE[2]~79_combout\,
	datac => \Encoder|Encoder|CODE[2]~85_combout\,
	datad => \Encoder|Encoder|Equal0~0_combout\,
	combout => \Encoder|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y16_N22
\Encoder|Encoder|CODE[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~71_combout\ = (!\KEYS~combout\(17) & (\Encoder|Encoder|CODE[1]~13_combout\ & !\KEYS~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(17),
	datac => \Encoder|Encoder|CODE[1]~13_combout\,
	datad => \KEYS~combout\(16),
	combout => \Encoder|Encoder|CODE[1]~71_combout\);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(6),
	combout => \KEYS~combout\(6));

-- Location: LCCOMB_X49_Y9_N16
\Encoder|Encoder|CODE[1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~47_combout\ = (!\KEYS~combout\(12) & (!\KEYS~combout\(13) & ((\KEYS~combout\(14)) # (\KEYS~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(12),
	datab => \KEYS~combout\(14),
	datac => \KEYS~combout\(15),
	datad => \KEYS~combout\(13),
	combout => \Encoder|Encoder|CODE[1]~47_combout\);

-- Location: LCCOMB_X49_Y9_N26
\Encoder|Encoder|CODE[1]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~48_combout\ = (\KEYS~combout\(10)) # ((\KEYS~combout\(11)) # (\Encoder|Encoder|CODE[1]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(10),
	datab => \KEYS~combout\(11),
	datac => \Encoder|Encoder|CODE[1]~47_combout\,
	combout => \Encoder|Encoder|CODE[1]~48_combout\);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(7),
	combout => \KEYS~combout\(7));

-- Location: LCCOMB_X49_Y9_N20
\Encoder|Encoder|CODE[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~49_combout\ = (\KEYS~combout\(7)) # ((!\KEYS~combout\(8) & (\Encoder|Encoder|CODE[1]~48_combout\ & !\KEYS~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(8),
	datab => \Encoder|Encoder|CODE[1]~48_combout\,
	datac => \KEYS~combout\(9),
	datad => \KEYS~combout\(7),
	combout => \Encoder|Encoder|CODE[1]~49_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(4),
	combout => \KEYS~combout\(4));

-- Location: LCCOMB_X49_Y9_N6
\Encoder|Encoder|CODE[1]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~50_combout\ = (!\KEYS~combout\(5) & (!\KEYS~combout\(4) & ((\KEYS~combout\(6)) # (\Encoder|Encoder|CODE[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(6),
	datac => \Encoder|Encoder|CODE[1]~49_combout\,
	datad => \KEYS~combout\(4),
	combout => \Encoder|Encoder|CODE[1]~50_combout\);

-- Location: LCCOMB_X49_Y16_N20
\Encoder|Encoder|CODE[1]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[1]~51_combout\ = (\KEYS~combout\(3)) # ((\Encoder|Encoder|CODE[1]~50_combout\) # (\KEYS~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(3),
	datac => \Encoder|Encoder|CODE[1]~50_combout\,
	datad => \KEYS~combout\(2),
	combout => \Encoder|Encoder|CODE[1]~51_combout\);

-- Location: LCCOMB_X49_Y16_N18
\Encoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux5~0_combout\ = (!\KEYS~combout\(0) & (!\KEYS~combout\(1) & !\Encoder|Encoder|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(0),
	datab => \KEYS~combout\(1),
	datac => \Encoder|Encoder|Equal0~0_combout\,
	combout => \Encoder|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y16_N16
\Encoder|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux5~1_combout\ = (\Encoder|Mux5~0_combout\ & ((\Encoder|Encoder|CODE[1]~51_combout\) # ((\Encoder|Encoder|CODE~70_combout\ & \Encoder|Encoder|CODE[1]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE~70_combout\,
	datab => \Encoder|Encoder|CODE[1]~71_combout\,
	datac => \Encoder|Encoder|CODE[1]~51_combout\,
	datad => \Encoder|Mux5~0_combout\,
	combout => \Encoder|Mux5~1_combout\);

-- Location: LCCOMB_X46_Y16_N16
\Decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~0_combout\ = (\Encoder|Mux2~0_combout\ & (!\Encoder|Mux4~0_combout\ & ((\Encoder|Mux5~1_combout\) # (!\Encoder|Mux6~1_combout\)))) # (!\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\) # ((\Encoder|Mux4~0_combout\ & 
-- \Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y16_N8
\Decoder|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~3_combout\ = (\Encoder|Mux6~1_combout\ & (!\Encoder|Mux2~0_combout\ & ((\Encoder|Mux4~0_combout\) # (!\Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux6~1_combout\ & (\Encoder|Mux2~0_combout\ & (!\Encoder|Mux4~0_combout\ & 
-- \Encoder|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux6~3_combout\);

-- Location: LCCOMB_X48_Y16_N6
\Encoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux1~0_combout\ = (!\Encoder|Encoder|Encoder0|ERROR~2_combout\) # (!\Encoder|Encoder|Encoder1|ERROR~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Encoder|Encoder|Encoder1|ERROR~2_combout\,
	datac => \Encoder|Encoder|Encoder0|ERROR~2_combout\,
	combout => \Encoder|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y16_N4
\Decoder|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~1_combout\ = (\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\ & ((\Encoder|Mux4~0_combout\) # (\Encoder|Mux5~1_combout\))) # (!\Encoder|Mux6~1_combout\ & (!\Encoder|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux6~1_combout\);

-- Location: LCCOMB_X48_Y20_N8
\Encoder|Encoder|CODE~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE~90_combout\ = (\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\ & (\Encoder|Encoder|CODE~15_combout\ & ((!\Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\) # (!\Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~0_combout\,
	datab => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\,
	datad => \Encoder|Encoder|CODE~15_combout\,
	combout => \Encoder|Encoder|CODE~90_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(48),
	combout => \KEYS~combout\(48));

-- Location: LCCOMB_X48_Y20_N10
\Encoder|Encoder|CODE[3]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~91_combout\ = (\Encoder|Encoder|CODE~90_combout\ & (!\KEYS~combout\(48) & ((!\Encoder|Encoder|CODE~16_combout\) # (!\Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Encoder3|ERROR_AND_CODE~2_combout\,
	datab => \Encoder|Encoder|CODE~16_combout\,
	datac => \Encoder|Encoder|CODE~90_combout\,
	datad => \KEYS~combout\(48),
	combout => \Encoder|Encoder|CODE[3]~91_combout\);

-- Location: LCCOMB_X49_Y15_N14
\Encoder|Encoder|CODE[3]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~89_combout\ = (\Encoder|Encoder|CODE[3]~81_combout\ & (\Encoder|Encoder|CODE[2]~80_combout\ & (\Encoder|Encoder|CODE[2]~1_combout\))) # (!\Encoder|Encoder|CODE[3]~81_combout\ & (((!\Encoder|Encoder|CODE[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~80_combout\,
	datab => \Encoder|Encoder|CODE[3]~81_combout\,
	datac => \Encoder|Encoder|CODE[2]~1_combout\,
	datad => \Encoder|Encoder|CODE[2]~0_combout\,
	combout => \Encoder|Encoder|CODE[3]~89_combout\);

-- Location: LCCOMB_X48_Y16_N2
\Encoder|Encoder|CODE[3]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~92_combout\ = (\Encoder|Encoder|CODE[3]~73_combout\ & ((\Encoder|Encoder|CODE[3]~89_combout\))) # (!\Encoder|Encoder|CODE[3]~73_combout\ & (\Encoder|Encoder|CODE[3]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~73_combout\,
	datac => \Encoder|Encoder|CODE[3]~91_combout\,
	datad => \Encoder|Encoder|CODE[3]~89_combout\,
	combout => \Encoder|Encoder|CODE[3]~92_combout\);

-- Location: LCCOMB_X49_Y9_N12
\Encoder|Encoder|CODE[3]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~87_combout\ = (\Encoder|Encoder|CODE[3]~77_combout\ & (\Encoder|Encoder|CODE[2]~11_combout\ & ((\Encoder|Encoder|CODE[2]~76_combout\)))) # (!\Encoder|Encoder|CODE[3]~77_combout\ & (((!\Encoder|Encoder|CODE[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[2]~11_combout\,
	datab => \Encoder|Encoder|CODE[2]~10_combout\,
	datac => \Encoder|Encoder|CODE[3]~77_combout\,
	datad => \Encoder|Encoder|CODE[2]~76_combout\,
	combout => \Encoder|Encoder|CODE[3]~87_combout\);

-- Location: LCCOMB_X49_Y19_N16
\Encoder|Encoder|CODE[3]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~86_combout\ = (\Encoder|Encoder|CODE[2]~74_combout\ & (\Encoder|Encoder|CODE[2]~5_combout\ & ((!\Encoder|Encoder|CODE[2]~7_combout\) # (!\Encoder|Encoder|CODE[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~6_combout\,
	datab => \Encoder|Encoder|CODE[2]~7_combout\,
	datac => \Encoder|Encoder|CODE[2]~74_combout\,
	datad => \Encoder|Encoder|CODE[2]~5_combout\,
	combout => \Encoder|Encoder|CODE[3]~86_combout\);

-- Location: LCCOMB_X48_Y16_N16
\Encoder|Encoder|CODE[3]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[3]~88_combout\ = (\Encoder|Encoder|CODE[3]~73_combout\ & (\Encoder|Encoder|CODE[3]~87_combout\)) # (!\Encoder|Encoder|CODE[3]~73_combout\ & ((\Encoder|Encoder|CODE[3]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~73_combout\,
	datac => \Encoder|Encoder|CODE[3]~87_combout\,
	datad => \Encoder|Encoder|CODE[3]~86_combout\,
	combout => \Encoder|Encoder|CODE[3]~88_combout\);

-- Location: LCCOMB_X48_Y16_N28
\Encoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux3~0_combout\ = (!\Encoder|Encoder|Equal0~0_combout\ & ((\Encoder|Encoder|CODE[3]~72_combout\ & ((\Encoder|Encoder|CODE[3]~88_combout\))) # (!\Encoder|Encoder|CODE[3]~72_combout\ & (\Encoder|Encoder|CODE[3]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[3]~72_combout\,
	datab => \Encoder|Encoder|CODE[3]~92_combout\,
	datac => \Encoder|Encoder|CODE[3]~88_combout\,
	datad => \Encoder|Encoder|Equal0~0_combout\,
	combout => \Encoder|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y16_N14
\Decoder|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~2_combout\ = (\Encoder|Mux1~0_combout\ & ((\Encoder|Mux3~0_combout\ & (!\Decoder|Mux3~0_combout\)) # (!\Encoder|Mux3~0_combout\ & ((!\Decoder|Mux6~1_combout\))))) # (!\Encoder|Mux1~0_combout\ & (((\Encoder|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux3~0_combout\,
	datab => \Encoder|Mux1~0_combout\,
	datac => \Decoder|Mux6~1_combout\,
	datad => \Encoder|Mux3~0_combout\,
	combout => \Decoder|Mux6~2_combout\);

-- Location: LCCOMB_X46_Y16_N18
\Decoder|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~4_combout\ = (\Encoder|Mux1~0_combout\ & (((\Decoder|Mux6~2_combout\)))) # (!\Encoder|Mux1~0_combout\ & ((\Decoder|Mux6~2_combout\ & ((!\Decoder|Mux6~3_combout\))) # (!\Decoder|Mux6~2_combout\ & (!\Decoder|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux6~0_combout\,
	datab => \Decoder|Mux6~3_combout\,
	datac => \Encoder|Mux1~0_combout\,
	datad => \Decoder|Mux6~2_combout\,
	combout => \Decoder|Mux6~4_combout\);

-- Location: LCCOMB_X49_Y9_N8
\Encoder|Encoder|CODE[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~43_combout\ = (!\KEYS~combout\(12) & ((\KEYS~combout\(13)) # ((!\KEYS~combout\(14) & \KEYS~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(12),
	datab => \KEYS~combout\(14),
	datac => \KEYS~combout\(15),
	datad => \KEYS~combout\(13),
	combout => \Encoder|Encoder|CODE[0]~43_combout\);

-- Location: LCCOMB_X49_Y9_N18
\Encoder|Encoder|CODE[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~44_combout\ = (\KEYS~combout\(9)) # ((!\KEYS~combout\(10) & ((\Encoder|Encoder|CODE[0]~43_combout\) # (\KEYS~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(10),
	datab => \Encoder|Encoder|CODE[0]~43_combout\,
	datac => \KEYS~combout\(11),
	datad => \KEYS~combout\(9),
	combout => \Encoder|Encoder|CODE[0]~44_combout\);

-- Location: LCCOMB_X49_Y9_N28
\Encoder|Encoder|CODE[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~45_combout\ = (!\KEYS~combout\(6) & ((\KEYS~combout\(7)) # ((!\KEYS~combout\(8) & \Encoder|Encoder|CODE[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(8),
	datab => \Encoder|Encoder|CODE[0]~44_combout\,
	datac => \KEYS~combout\(6),
	datad => \KEYS~combout\(7),
	combout => \Encoder|Encoder|CODE[0]~45_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(17),
	combout => \KEYS~combout\(17));

-- Location: LCCOMB_X49_Y16_N8
\Encoder|Encoder|CODE[0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~42_combout\ = (\KEYS~combout\(3)) # ((!\KEYS~combout\(16) & (\Encoder|Encoder|CODE[1]~13_combout\ & \KEYS~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(3),
	datab => \KEYS~combout\(16),
	datac => \Encoder|Encoder|CODE[1]~13_combout\,
	datad => \KEYS~combout\(17),
	combout => \Encoder|Encoder|CODE[0]~42_combout\);

-- Location: LCCOMB_X49_Y9_N14
\Encoder|Encoder|CODE[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Encoder|CODE[0]~46_combout\ = (\Encoder|Encoder|CODE[0]~42_combout\) # ((!\KEYS~combout\(4) & ((\KEYS~combout\(5)) # (\Encoder|Encoder|CODE[0]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \Encoder|Encoder|CODE[0]~45_combout\,
	datac => \Encoder|Encoder|CODE[0]~42_combout\,
	datad => \KEYS~combout\(4),
	combout => \Encoder|Encoder|CODE[0]~46_combout\);

-- Location: LCCOMB_X49_Y16_N2
\Encoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux6~0_combout\ = (\Encoder|Encoder|Equal0~0_combout\) # ((!\KEYS~combout\(2) & ((\Encoder|Encoder|CODE[0]~41_combout\) # (\Encoder|Encoder|CODE[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|CODE[0]~41_combout\,
	datab => \KEYS~combout\(2),
	datac => \Encoder|Encoder|Equal0~0_combout\,
	datad => \Encoder|Encoder|CODE[0]~46_combout\,
	combout => \Encoder|Mux6~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEYS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEYS(0),
	combout => \KEYS~combout\(0));

-- Location: LCCOMB_X49_Y16_N4
\Encoder|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder|Mux6~1_combout\ = (!\KEYS~combout\(0) & ((\Encoder|Encoder|Equal0~0_combout\ & (\Encoder|Mux6~0_combout\ & \KEYS~combout\(1))) # (!\Encoder|Encoder|Equal0~0_combout\ & ((\Encoder|Mux6~0_combout\) # (\KEYS~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Encoder|Equal0~0_combout\,
	datab => \Encoder|Mux6~0_combout\,
	datac => \KEYS~combout\(1),
	datad => \KEYS~combout\(0),
	combout => \Encoder|Mux6~1_combout\);

-- Location: LCCOMB_X47_Y16_N28
\Decoder|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~2_combout\ = (!\Encoder|Mux1~0_combout\ & ((\Encoder|Mux6~1_combout\ & ((!\Encoder|Mux5~1_combout\))) # (!\Encoder|Mux6~1_combout\ & (\Encoder|Mux3~0_combout\ & \Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux5~2_combout\);

-- Location: LCCOMB_X47_Y16_N6
\Decoder|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~3_combout\ = (\Encoder|Mux4~0_combout\ & (((\Encoder|Mux2~0_combout\)))) # (!\Encoder|Mux4~0_combout\ & ((\Encoder|Mux2~0_combout\ & (\Decoder|Mux5~1_combout\)) # (!\Encoder|Mux2~0_combout\ & ((!\Decoder|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux5~1_combout\,
	datab => \Decoder|Mux5~2_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux2~0_combout\,
	combout => \Decoder|Mux5~3_combout\);

-- Location: LCCOMB_X47_Y16_N8
\Decoder|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~4_combout\ = (\Encoder|Mux3~0_combout\) # (\Encoder|Mux1~0_combout\ $ (\Encoder|Mux6~1_combout\ $ (!\Encoder|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux5~4_combout\);

-- Location: LCCOMB_X47_Y16_N0
\Decoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~0_combout\ = (!\Encoder|Mux1~0_combout\ & ((\Encoder|Mux3~0_combout\ & (\Encoder|Mux6~1_combout\)) # (!\Encoder|Mux3~0_combout\ & (!\Encoder|Mux6~1_combout\ & !\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y16_N18
\Decoder|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~5_combout\ = (\Decoder|Mux5~3_combout\ & ((\Decoder|Mux5~4_combout\) # ((!\Encoder|Mux4~0_combout\)))) # (!\Decoder|Mux5~3_combout\ & (((\Encoder|Mux4~0_combout\ & !\Decoder|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux5~3_combout\,
	datab => \Decoder|Mux5~4_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Decoder|Mux5~0_combout\,
	combout => \Decoder|Mux5~5_combout\);

-- Location: LCCOMB_X47_Y16_N26
\Decoder|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~3_combout\ = (\Encoder|Mux3~0_combout\ & (!\Encoder|Mux4~0_combout\ & ((!\Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux3~0_combout\ & ((\Encoder|Mux6~1_combout\) # ((\Encoder|Mux4~0_combout\ & \Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux3~0_combout\,
	datab => \Encoder|Mux4~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux4~3_combout\);

-- Location: LCCOMB_X47_Y16_N14
\Decoder|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~1_combout\ = (\Encoder|Mux3~0_combout\ & ((\Encoder|Mux4~0_combout\ & ((\Encoder|Mux6~1_combout\) # (\Encoder|Mux5~1_combout\))) # (!\Encoder|Mux4~0_combout\ & ((!\Encoder|Mux5~1_combout\) # (!\Encoder|Mux6~1_combout\))))) # 
-- (!\Encoder|Mux3~0_combout\ & (\Encoder|Mux4~0_combout\ $ (\Encoder|Mux6~1_combout\ $ (\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux3~0_combout\,
	datab => \Encoder|Mux4~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y16_N16
\Decoder|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~2_combout\ = (\Encoder|Mux2~0_combout\ & (\Decoder|Mux4~0_combout\ & ((\Encoder|Mux1~0_combout\)))) # (!\Encoder|Mux2~0_combout\ & (((\Encoder|Mux1~0_combout\) # (!\Decoder|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux4~0_combout\,
	datab => \Decoder|Mux4~1_combout\,
	datac => \Encoder|Mux2~0_combout\,
	datad => \Encoder|Mux1~0_combout\,
	combout => \Decoder|Mux4~2_combout\);

-- Location: LCCOMB_X47_Y16_N4
\Decoder|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~4_combout\ = (\Decoder|Mux4~2_combout\) # ((\Encoder|Mux2~0_combout\ & (!\Decoder|Mux4~3_combout\ & !\Encoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux2~0_combout\,
	datab => \Decoder|Mux4~3_combout\,
	datac => \Decoder|Mux4~2_combout\,
	datad => \Encoder|Mux1~0_combout\,
	combout => \Decoder|Mux4~4_combout\);

-- Location: LCCOMB_X46_Y16_N30
\Decoder|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~5_combout\ = (\Encoder|Mux1~0_combout\ & ((\Decoder|Mux3~4_combout\) # ((!\Encoder|Mux2~0_combout\)))) # (!\Encoder|Mux1~0_combout\ & (((\Encoder|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux3~4_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux1~0_combout\,
	datad => \Encoder|Mux3~0_combout\,
	combout => \Decoder|Mux3~5_combout\);

-- Location: LCCOMB_X46_Y16_N22
\Decoder|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~2_combout\ = (\Encoder|Mux4~0_combout\ & (!\Encoder|Mux2~0_combout\ & (\Encoder|Mux6~1_combout\ $ (!\Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux4~0_combout\ & (\Encoder|Mux6~1_combout\ $ (((\Encoder|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux3~2_combout\);

-- Location: LCCOMB_X46_Y16_N28
\Decoder|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~1_combout\ = (\Encoder|Mux4~0_combout\ & ((\Encoder|Mux6~1_combout\) # ((!\Encoder|Mux5~1_combout\)))) # (!\Encoder|Mux4~0_combout\ & ((\Encoder|Mux2~0_combout\ & (\Encoder|Mux6~1_combout\)) # (!\Encoder|Mux2~0_combout\ & 
-- ((\Encoder|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y16_N24
\Decoder|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~3_combout\ = (\Decoder|Mux3~5_combout\ & (((\Encoder|Mux1~0_combout\)) # (!\Decoder|Mux3~2_combout\))) # (!\Decoder|Mux3~5_combout\ & (((!\Encoder|Mux1~0_combout\ & !\Decoder|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux3~5_combout\,
	datab => \Decoder|Mux3~2_combout\,
	datac => \Encoder|Mux1~0_combout\,
	datad => \Decoder|Mux3~1_combout\,
	combout => \Decoder|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y16_N24
\Decoder|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~1_combout\ = (\Encoder|Mux4~0_combout\ & (((\Encoder|Mux2~0_combout\)))) # (!\Encoder|Mux4~0_combout\ & (\Encoder|Mux6~1_combout\ & ((\Encoder|Mux2~0_combout\) # (!\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux5~1_combout\,
	datad => \Encoder|Mux4~0_combout\,
	combout => \Decoder|Mux2~1_combout\);

-- Location: LCCOMB_X48_Y16_N30
\Decoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~0_combout\ = (\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\ $ (!\Encoder|Mux4~0_combout\)) # (!\Encoder|Mux5~1_combout\))) # (!\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\) # ((\Encoder|Mux5~1_combout\) # 
-- (\Encoder|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux5~1_combout\,
	datad => \Encoder|Mux4~0_combout\,
	combout => \Decoder|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y16_N4
\Decoder|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~3_combout\ = (\Encoder|Mux6~1_combout\) # (((!\Encoder|Mux5~1_combout\ & \Encoder|Mux4~0_combout\)) # (!\Encoder|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux5~1_combout\,
	datad => \Encoder|Mux4~0_combout\,
	combout => \Decoder|Mux2~3_combout\);

-- Location: LCCOMB_X48_Y16_N14
\Decoder|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~4_combout\ = (\Encoder|Mux1~0_combout\ & ((\Decoder|Mux2~3_combout\) # ((\Encoder|Mux5~1_combout\ & \Encoder|Mux3~0_combout\)))) # (!\Encoder|Mux1~0_combout\ & (((\Encoder|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Decoder|Mux2~3_combout\,
	datac => \Encoder|Mux5~1_combout\,
	datad => \Encoder|Mux3~0_combout\,
	combout => \Decoder|Mux2~4_combout\);

-- Location: LCCOMB_X48_Y16_N18
\Decoder|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~2_combout\ = (\Decoder|Mux2~4_combout\ & ((\Decoder|Mux2~1_combout\) # ((\Encoder|Mux1~0_combout\)))) # (!\Decoder|Mux2~4_combout\ & (((!\Decoder|Mux2~0_combout\ & !\Encoder|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux2~1_combout\,
	datab => \Decoder|Mux2~0_combout\,
	datac => \Decoder|Mux2~4_combout\,
	datad => \Encoder|Mux1~0_combout\,
	combout => \Decoder|Mux2~2_combout\);

-- Location: LCCOMB_X46_Y16_N20
\Decoder|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~1_combout\ = (\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\ & (\Encoder|Mux4~0_combout\ & !\Encoder|Mux5~1_combout\)) # (!\Encoder|Mux6~1_combout\ & ((\Encoder|Mux4~0_combout\) # (!\Encoder|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux1~1_combout\);

-- Location: LCCOMB_X46_Y16_N6
\Decoder|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~2_combout\ = (\Encoder|Mux1~0_combout\ & ((\Encoder|Mux3~0_combout\ & (!\Decoder|Mux3~0_combout\)) # (!\Encoder|Mux3~0_combout\ & ((!\Decoder|Mux1~1_combout\))))) # (!\Encoder|Mux1~0_combout\ & (((\Encoder|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux3~0_combout\,
	datab => \Encoder|Mux1~0_combout\,
	datac => \Decoder|Mux1~1_combout\,
	datad => \Encoder|Mux3~0_combout\,
	combout => \Decoder|Mux1~2_combout\);

-- Location: LCCOMB_X46_Y16_N0
\Decoder|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~3_combout\ = (\Encoder|Mux6~1_combout\ & (\Encoder|Mux2~0_combout\ $ (((!\Encoder|Mux4~0_combout\ & !\Encoder|Mux5~1_combout\))))) # (!\Encoder|Mux6~1_combout\ & ((\Encoder|Mux5~1_combout\) # ((\Encoder|Mux2~0_combout\ & 
-- \Encoder|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux1~3_combout\);

-- Location: LCCOMB_X46_Y16_N26
\Decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~0_combout\ = (\Encoder|Mux6~1_combout\ & ((\Encoder|Mux4~0_combout\ $ (\Encoder|Mux5~1_combout\)) # (!\Encoder|Mux2~0_combout\))) # (!\Encoder|Mux6~1_combout\ & ((\Encoder|Mux2~0_combout\) # ((\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux6~1_combout\,
	datab => \Encoder|Mux2~0_combout\,
	datac => \Encoder|Mux4~0_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y16_N2
\Decoder|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~4_combout\ = (\Decoder|Mux1~2_combout\ & ((\Decoder|Mux1~3_combout\) # ((\Encoder|Mux1~0_combout\)))) # (!\Decoder|Mux1~2_combout\ & (((!\Encoder|Mux1~0_combout\ & !\Decoder|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux1~2_combout\,
	datab => \Decoder|Mux1~3_combout\,
	datac => \Encoder|Mux1~0_combout\,
	datad => \Decoder|Mux1~0_combout\,
	combout => \Decoder|Mux1~4_combout\);

-- Location: LCCOMB_X47_Y16_N30
\Decoder|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~4_combout\ = (\Encoder|Mux1~0_combout\ & ((\Decoder|Mux0~3_combout\) # ((!\Encoder|Mux2~0_combout\)))) # (!\Encoder|Mux1~0_combout\ & (((\Encoder|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux0~3_combout\,
	datab => \Encoder|Mux4~0_combout\,
	datac => \Encoder|Mux2~0_combout\,
	datad => \Encoder|Mux1~0_combout\,
	combout => \Decoder|Mux0~4_combout\);

-- Location: LCCOMB_X47_Y16_N24
\Decoder|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~1_combout\ = (\Encoder|Mux5~1_combout\ & ((\Encoder|Mux2~0_combout\) # ((\Encoder|Mux6~1_combout\)))) # (!\Encoder|Mux5~1_combout\ & ((\Encoder|Mux3~0_combout\) # ((\Encoder|Mux2~0_combout\ & \Encoder|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux2~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y16_N22
\Decoder|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~0_combout\ = (\Encoder|Mux2~0_combout\ & ((\Encoder|Mux3~0_combout\ $ (\Encoder|Mux6~1_combout\)) # (!\Encoder|Mux5~1_combout\))) # (!\Encoder|Mux2~0_combout\ & ((\Encoder|Mux6~1_combout\) # (\Encoder|Mux3~0_combout\ $ 
-- (\Encoder|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux2~0_combout\,
	datab => \Encoder|Mux3~0_combout\,
	datac => \Encoder|Mux6~1_combout\,
	datad => \Encoder|Mux5~1_combout\,
	combout => \Decoder|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y16_N2
\Decoder|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~2_combout\ = (\Encoder|Mux1~0_combout\ & (\Decoder|Mux0~4_combout\)) # (!\Encoder|Mux1~0_combout\ & ((\Decoder|Mux0~4_combout\ & (\Decoder|Mux0~1_combout\)) # (!\Decoder|Mux0~4_combout\ & ((!\Decoder|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|Mux1~0_combout\,
	datab => \Decoder|Mux0~4_combout\,
	datac => \Decoder|Mux0~1_combout\,
	datad => \Decoder|Mux0~0_combout\,
	combout => \Decoder|Mux0~2_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(0));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(1));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(2));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(3));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(4));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(5));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEGMENTS[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Decoder|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(6));
END structure;


