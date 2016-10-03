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

-- DATE "10/02/2016 13:01:39"

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

ENTITY 	g30_64_6_encoder IS
    PORT (
	INPUTS : IN std_logic_vector(63 DOWNTO 0);
	CODE : OUT std_logic_vector(5 DOWNTO 0);
	ERROR : OUT std_logic
	);
END g30_64_6_encoder;

-- Design Ports Information
-- CODE[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODE[1]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODE[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODE[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODE[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CODE[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ERROR	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- INPUTS[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[3]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[12]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[13]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[14]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[15]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[6]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[7]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[4]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[5]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[10]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[11]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[8]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[9]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[17]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[16]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[18]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[28]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[29]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[30]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[31]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[22]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[23]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[20]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[21]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[26]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[27]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[24]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[25]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[19]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[34]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[32]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[35]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[37]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[39]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[38]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[36]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[52]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[54]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[55]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[53]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[56]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[57]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[58]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[59]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[60]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[62]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[61]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[63]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[42]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[43]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[40]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[41]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[44]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[45]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[46]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[47]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[50]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[48]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[49]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[51]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[33]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[2]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUTS[0]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g30_64_6_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INPUTS : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_CODE : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ERROR : std_logic;
SIGNAL \CODE~2_combout\ : std_logic;
SIGNAL \CODE~4_combout\ : std_logic;
SIGNAL \CODE~5_combout\ : std_logic;
SIGNAL \CODE~6_combout\ : std_logic;
SIGNAL \CODE~7_combout\ : std_logic;
SIGNAL \CODE~8_combout\ : std_logic;
SIGNAL \CODE~19_combout\ : std_logic;
SIGNAL \CODE~20_combout\ : std_logic;
SIGNAL \CODE~21_combout\ : std_logic;
SIGNAL \CODE~28_combout\ : std_logic;
SIGNAL \CODE~29_combout\ : std_logic;
SIGNAL \CODE~30_combout\ : std_logic;
SIGNAL \CODE~31_combout\ : std_logic;
SIGNAL \CODE~32_combout\ : std_logic;
SIGNAL \CODE~41_combout\ : std_logic;
SIGNAL \CODE~42_combout\ : std_logic;
SIGNAL \CODE~49_combout\ : std_logic;
SIGNAL \CODE~50_combout\ : std_logic;
SIGNAL \CODE~51_combout\ : std_logic;
SIGNAL \CODE~52_combout\ : std_logic;
SIGNAL \CODE~53_combout\ : std_logic;
SIGNAL \CODE~54_combout\ : std_logic;
SIGNAL \CODE~55_combout\ : std_logic;
SIGNAL \CODE~56_combout\ : std_logic;
SIGNAL \CODE~57_combout\ : std_logic;
SIGNAL \CODE~58_combout\ : std_logic;
SIGNAL \CODE~59_combout\ : std_logic;
SIGNAL \CODE~60_combout\ : std_logic;
SIGNAL \CODE~62_combout\ : std_logic;
SIGNAL \CODE~63_combout\ : std_logic;
SIGNAL \CODE~64_combout\ : std_logic;
SIGNAL \CODE~68_combout\ : std_logic;
SIGNAL \CODE~72_combout\ : std_logic;
SIGNAL \CODE~82_combout\ : std_logic;
SIGNAL \CODE~95_combout\ : std_logic;
SIGNAL \CODE~96_combout\ : std_logic;
SIGNAL \CODE~9_combout\ : std_logic;
SIGNAL \CODE~12_combout\ : std_logic;
SIGNAL \CODE~10_combout\ : std_logic;
SIGNAL \CODE~11_combout\ : std_logic;
SIGNAL \CODE~13_combout\ : std_logic;
SIGNAL \CODE~34_combout\ : std_logic;
SIGNAL \CODE~35_combout\ : std_logic;
SIGNAL \CODE~36_combout\ : std_logic;
SIGNAL \CODE~37_combout\ : std_logic;
SIGNAL \CODE~38_combout\ : std_logic;
SIGNAL \CODE~15_combout\ : std_logic;
SIGNAL \CODE~16_combout\ : std_logic;
SIGNAL \CODE~14_combout\ : std_logic;
SIGNAL \Encoder3|ERROR_AND_CODE~1_combout\ : std_logic;
SIGNAL \CODE~26_combout\ : std_logic;
SIGNAL \CODE~18_combout\ : std_logic;
SIGNAL \CODE~17_combout\ : std_logic;
SIGNAL \Encoder3|ERROR_AND_CODE~0_combout\ : std_logic;
SIGNAL \CODE~27_combout\ : std_logic;
SIGNAL \CODE~33_combout\ : std_logic;
SIGNAL \CODE~39_combout\ : std_logic;
SIGNAL \CODE~40_combout\ : std_logic;
SIGNAL \CODE~43_combout\ : std_logic;
SIGNAL \CODE~44_combout\ : std_logic;
SIGNAL \CODE~45_combout\ : std_logic;
SIGNAL \CODE~65_combout\ : std_logic;
SIGNAL \CODE~66_combout\ : std_logic;
SIGNAL \CODE~46_combout\ : std_logic;
SIGNAL \CODE~47_combout\ : std_logic;
SIGNAL \CODE~48_combout\ : std_logic;
SIGNAL \CODE~61_combout\ : std_logic;
SIGNAL \CODE~67_combout\ : std_logic;
SIGNAL \CODE~75_combout\ : std_logic;
SIGNAL \CODE~71_combout\ : std_logic;
SIGNAL \CODE~76_combout\ : std_logic;
SIGNAL \CODE~77_combout\ : std_logic;
SIGNAL \CODE~70_combout\ : std_logic;
SIGNAL \CODE~1_combout\ : std_logic;
SIGNAL \CODE~0_combout\ : std_logic;
SIGNAL \CODE~3_combout\ : std_logic;
SIGNAL \CODE~23_combout\ : std_logic;
SIGNAL \CODE~24_combout\ : std_logic;
SIGNAL \CODE~22_combout\ : std_logic;
SIGNAL \CODE~25_combout\ : std_logic;
SIGNAL \CODE~73_combout\ : std_logic;
SIGNAL \CODE~74_combout\ : std_logic;
SIGNAL \CODE~79_combout\ : std_logic;
SIGNAL \Encoder3|ERROR_AND_CODE~2_combout\ : std_logic;
SIGNAL \CODE~78_combout\ : std_logic;
SIGNAL \CODE~80_combout\ : std_logic;
SIGNAL \CODE~81_combout\ : std_logic;
SIGNAL \CODE~83_combout\ : std_logic;
SIGNAL \CODE~84_combout\ : std_logic;
SIGNAL \CODE~69_combout\ : std_logic;
SIGNAL \CODE~85_combout\ : std_logic;
SIGNAL \CODE~91_combout\ : std_logic;
SIGNAL \CODE~87_combout\ : std_logic;
SIGNAL \CODE~88_combout\ : std_logic;
SIGNAL \CODE~89_combout\ : std_logic;
SIGNAL \CODE~90_combout\ : std_logic;
SIGNAL \CODE~86_combout\ : std_logic;
SIGNAL \CODE~92_combout\ : std_logic;
SIGNAL \Encoder1|ERROR_16~0_combout\ : std_logic;
SIGNAL \Encoder0|ERROR_16~0_combout\ : std_logic;
SIGNAL \Encoder3|ERROR_16~0_combout\ : std_logic;
SIGNAL \CODE~93_combout\ : std_logic;
SIGNAL \CODE~94_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \INPUTS~combout\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_INPUTS <= INPUTS;
CODE <= ww_CODE;
ERROR <= ww_ERROR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X49_Y9_N12
\CODE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~2_combout\ = (!\INPUTS~combout\(11) & (!\INPUTS~combout\(10) & (!\INPUTS~combout\(8) & !\INPUTS~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(11),
	datab => \INPUTS~combout\(10),
	datac => \INPUTS~combout\(8),
	datad => \INPUTS~combout\(9),
	combout => \CODE~2_combout\);

-- Location: LCCOMB_X49_Y13_N0
\CODE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~4_combout\ = (\INPUTS~combout\(3)) # ((\INPUTS~combout\(17) & (!\INPUTS~combout\(16) & \CODE~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(17),
	datab => \INPUTS~combout\(3),
	datac => \INPUTS~combout\(16),
	datad => \CODE~3_combout\,
	combout => \CODE~4_combout\);

-- Location: LCCOMB_X49_Y9_N24
\CODE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~5_combout\ = (!\INPUTS~combout\(12) & ((\INPUTS~combout\(13)) # ((\INPUTS~combout\(15) & !\INPUTS~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(12),
	datab => \INPUTS~combout\(15),
	datac => \INPUTS~combout\(14),
	datad => \INPUTS~combout\(13),
	combout => \CODE~5_combout\);

-- Location: LCCOMB_X49_Y9_N18
\CODE~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~6_combout\ = (\INPUTS~combout\(9)) # ((!\INPUTS~combout\(10) & ((\CODE~5_combout\) # (\INPUTS~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(9),
	datab => \INPUTS~combout\(10),
	datac => \CODE~5_combout\,
	datad => \INPUTS~combout\(11),
	combout => \CODE~6_combout\);

-- Location: LCCOMB_X49_Y9_N28
\CODE~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~7_combout\ = (!\INPUTS~combout\(6) & ((\INPUTS~combout\(7)) # ((\CODE~6_combout\ & !\INPUTS~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(6),
	datab => \CODE~6_combout\,
	datac => \INPUTS~combout\(7),
	datad => \INPUTS~combout\(8),
	combout => \CODE~7_combout\);

-- Location: LCCOMB_X49_Y9_N6
\CODE~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~8_combout\ = (\CODE~4_combout\) # ((!\INPUTS~combout\(4) & ((\CODE~7_combout\) # (\INPUTS~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~4_combout\,
	datab => \CODE~7_combout\,
	datac => \INPUTS~combout\(5),
	datad => \INPUTS~combout\(4),
	combout => \CODE~8_combout\);

-- Location: LCCOMB_X49_Y23_N24
\CODE~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~19_combout\ = (\INPUTS~combout\(59)) # ((\INPUTS~combout\(61) & !\INPUTS~combout\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(61),
	datac => \INPUTS~combout\(59),
	datad => \INPUTS~combout\(60),
	combout => \CODE~19_combout\);

-- Location: LCCOMB_X49_Y23_N26
\CODE~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~20_combout\ = (!\INPUTS~combout\(56) & ((\INPUTS~combout\(57)) # ((!\INPUTS~combout\(58) & \CODE~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(58),
	datab => \INPUTS~combout\(57),
	datac => \CODE~19_combout\,
	datad => \INPUTS~combout\(56),
	combout => \CODE~20_combout\);

-- Location: LCCOMB_X49_Y23_N12
\CODE~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~21_combout\ = (\INPUTS~combout\(53)) # ((!\INPUTS~combout\(54) & ((\CODE~20_combout\) # (\INPUTS~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~20_combout\,
	datab => \INPUTS~combout\(53),
	datac => \INPUTS~combout\(54),
	datad => \INPUTS~combout\(55),
	combout => \CODE~21_combout\);

-- Location: LCCOMB_X49_Y21_N2
\CODE~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~28_combout\ = (!\INPUTS~combout\(44) & ((\INPUTS~combout\(45)) # ((\INPUTS~combout\(47) & !\INPUTS~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(44),
	datab => \INPUTS~combout\(47),
	datac => \INPUTS~combout\(46),
	datad => \INPUTS~combout\(45),
	combout => \CODE~28_combout\);

-- Location: LCCOMB_X49_Y21_N28
\CODE~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~29_combout\ = (\INPUTS~combout\(41)) # ((!\INPUTS~combout\(42) & ((\CODE~28_combout\) # (\INPUTS~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~28_combout\,
	datab => \INPUTS~combout\(42),
	datac => \INPUTS~combout\(41),
	datad => \INPUTS~combout\(43),
	combout => \CODE~29_combout\);

-- Location: LCCOMB_X49_Y21_N22
\CODE~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~30_combout\ = (!\INPUTS~combout\(38) & (\CODE~29_combout\ & (!\INPUTS~combout\(40) & !\INPUTS~combout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(38),
	datab => \CODE~29_combout\,
	datac => \INPUTS~combout\(40),
	datad => \INPUTS~combout\(36),
	combout => \CODE~30_combout\);

-- Location: LCCOMB_X49_Y23_N30
\CODE~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~31_combout\ = (!\INPUTS~combout\(58) & (!\INPUTS~combout\(56) & (!\INPUTS~combout\(54) & !\INPUTS~combout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(58),
	datab => \INPUTS~combout\(56),
	datac => \INPUTS~combout\(54),
	datad => \INPUTS~combout\(52),
	combout => \CODE~31_combout\);

-- Location: LCCOMB_X49_Y23_N8
\CODE~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~32_combout\ = (!\INPUTS~combout\(60) & (\CODE~31_combout\ & (!\INPUTS~combout\(62) & \INPUTS~combout\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(60),
	datab => \CODE~31_combout\,
	datac => \INPUTS~combout\(62),
	datad => \INPUTS~combout\(63),
	combout => \CODE~32_combout\);

-- Location: LCCOMB_X49_Y9_N8
\CODE~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~41_combout\ = (!\INPUTS~combout\(12) & (!\INPUTS~combout\(13) & ((\INPUTS~combout\(15)) # (\INPUTS~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(12),
	datab => \INPUTS~combout\(15),
	datac => \INPUTS~combout\(14),
	datad => \INPUTS~combout\(13),
	combout => \CODE~41_combout\);

-- Location: LCCOMB_X49_Y9_N10
\CODE~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~42_combout\ = (!\INPUTS~combout\(8) & ((\INPUTS~combout\(11)) # ((\INPUTS~combout\(10)) # (\CODE~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(11),
	datab => \INPUTS~combout\(10),
	datac => \CODE~41_combout\,
	datad => \INPUTS~combout\(8),
	combout => \CODE~42_combout\);

-- Location: LCCOMB_X49_Y21_N24
\CODE~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~49_combout\ = (!\INPUTS~combout\(43) & ((\INPUTS~combout\(44)) # (\INPUTS~combout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(44),
	datab => \INPUTS~combout\(43),
	datad => \INPUTS~combout\(45),
	combout => \CODE~49_combout\);

-- Location: LCCOMB_X49_Y21_N10
\CODE~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~50_combout\ = (!\INPUTS~combout\(40) & (!\INPUTS~combout\(41) & ((\INPUTS~combout\(42)) # (!\CODE~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(40),
	datab => \INPUTS~combout\(41),
	datac => \INPUTS~combout\(42),
	datad => \CODE~49_combout\,
	combout => \CODE~50_combout\);

-- Location: LCCOMB_X49_Y20_N6
\CODE~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~51_combout\ = (!\INPUTS~combout\(51) & ((\INPUTS~combout\(53)) # (\INPUTS~combout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(51),
	datab => \INPUTS~combout\(53),
	datac => \INPUTS~combout\(52),
	combout => \CODE~51_combout\);

-- Location: LCCOMB_X49_Y20_N0
\CODE~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~52_combout\ = (!\INPUTS~combout\(48) & (!\INPUTS~combout\(49) & ((\INPUTS~combout\(50)) # (!\CODE~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~51_combout\,
	datab => \INPUTS~combout\(48),
	datac => \INPUTS~combout\(49),
	datad => \INPUTS~combout\(50),
	combout => \CODE~52_combout\);

-- Location: LCCOMB_X49_Y23_N2
\CODE~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~53_combout\ = (!\INPUTS~combout\(61) & (!\INPUTS~combout\(60) & ((\INPUTS~combout\(63)) # (\INPUTS~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(61),
	datab => \INPUTS~combout\(63),
	datac => \INPUTS~combout\(62),
	datad => \INPUTS~combout\(60),
	combout => \CODE~53_combout\);

-- Location: LCCOMB_X49_Y23_N28
\CODE~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~54_combout\ = (\CODE~18_combout\ & ((\INPUTS~combout\(58)) # ((\CODE~53_combout\) # (\INPUTS~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(58),
	datab => \CODE~53_combout\,
	datac => \INPUTS~combout\(59),
	datad => \CODE~18_combout\,
	combout => \CODE~54_combout\);

-- Location: LCCOMB_X49_Y23_N6
\CODE~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~55_combout\ = (\INPUTS~combout\(50)) # ((\INPUTS~combout\(54)) # (\INPUTS~combout\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(50),
	datac => \INPUTS~combout\(54),
	datad => \INPUTS~combout\(55),
	combout => \CODE~55_combout\);

-- Location: LCCOMB_X49_Y23_N16
\CODE~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~56_combout\ = (\CODE~55_combout\) # ((\CODE~54_combout\) # (\INPUTS~combout\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~55_combout\,
	datab => \CODE~54_combout\,
	datad => \INPUTS~combout\(51),
	combout => \CODE~56_combout\);

-- Location: LCCOMB_X49_Y21_N20
\CODE~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~57_combout\ = (\INPUTS~combout\(42)) # ((\INPUTS~combout\(43)) # ((\CODE~56_combout\ & \CODE~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~56_combout\,
	datab => \INPUTS~combout\(42),
	datac => \CODE~52_combout\,
	datad => \INPUTS~combout\(43),
	combout => \CODE~57_combout\);

-- Location: LCCOMB_X49_Y21_N30
\CODE~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~58_combout\ = (\INPUTS~combout\(46)) # ((\CODE~57_combout\) # (\INPUTS~combout\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUTS~combout\(46),
	datac => \CODE~57_combout\,
	datad => \INPUTS~combout\(47),
	combout => \CODE~58_combout\);

-- Location: LCCOMB_X49_Y21_N0
\CODE~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~59_combout\ = (\INPUTS~combout\(39)) # ((\CODE~50_combout\ & \CODE~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~50_combout\,
	datab => \CODE~58_combout\,
	datad => \INPUTS~combout\(39),
	combout => \CODE~59_combout\);

-- Location: LCCOMB_X49_Y21_N18
\CODE~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~60_combout\ = (!\INPUTS~combout\(37) & (!\INPUTS~combout\(36) & ((\INPUTS~combout\(38)) # (\CODE~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(38),
	datab => \CODE~59_combout\,
	datac => \INPUTS~combout\(37),
	datad => \INPUTS~combout\(36),
	combout => \CODE~60_combout\);

-- Location: LCCOMB_X49_Y12_N16
\CODE~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~62_combout\ = (!\INPUTS~combout\(29) & (!\INPUTS~combout\(28) & ((\INPUTS~combout\(30)) # (\INPUTS~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(29),
	datab => \INPUTS~combout\(28),
	datac => \INPUTS~combout\(30),
	datad => \INPUTS~combout\(31),
	combout => \CODE~62_combout\);

-- Location: LCCOMB_X49_Y12_N2
\CODE~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~63_combout\ = (\INPUTS~combout\(27)) # ((\CODE~62_combout\) # (\INPUTS~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(27),
	datac => \CODE~62_combout\,
	datad => \INPUTS~combout\(26),
	combout => \CODE~63_combout\);

-- Location: LCCOMB_X49_Y12_N12
\CODE~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~64_combout\ = (\INPUTS~combout\(23)) # ((\CODE~63_combout\ & (!\INPUTS~combout\(24) & !\INPUTS~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~63_combout\,
	datab => \INPUTS~combout\(23),
	datac => \INPUTS~combout\(24),
	datad => \INPUTS~combout\(25),
	combout => \CODE~64_combout\);

-- Location: LCCOMB_X49_Y20_N12
\CODE~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~68_combout\ = (!\INPUTS~combout\(34) & (!\INPUTS~combout\(35) & (!\INPUTS~combout\(33) & !\INPUTS~combout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(34),
	datab => \INPUTS~combout\(35),
	datac => \INPUTS~combout\(33),
	datad => \INPUTS~combout\(32),
	combout => \CODE~68_combout\);

-- Location: LCCOMB_X49_Y13_N14
\CODE~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~72_combout\ = (((!\CODE~3_combout\) # (!\CODE~70_combout\)) # (!\CODE~13_combout\)) # (!\CODE~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~71_combout\,
	datab => \CODE~13_combout\,
	datac => \CODE~70_combout\,
	datad => \CODE~3_combout\,
	combout => \CODE~72_combout\);

-- Location: LCCOMB_X49_Y13_N26
\CODE~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~82_combout\ = (!\INPUTS~combout\(0) & (!\INPUTS~combout\(1) & (!\INPUTS~combout\(2) & !\INPUTS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datab => \INPUTS~combout\(1),
	datac => \INPUTS~combout\(2),
	datad => \INPUTS~combout\(3),
	combout => \CODE~82_combout\);

-- Location: LCCOMB_X49_Y20_N10
\CODE~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~95_combout\ = (\INPUTS~combout\(49)) # ((!\INPUTS~combout\(50) & ((\CODE~32_combout\) # (\INPUTS~combout\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~32_combout\,
	datab => \INPUTS~combout\(49),
	datac => \INPUTS~combout\(51),
	datad => \INPUTS~combout\(50),
	combout => \CODE~95_combout\);

-- Location: LCCOMB_X49_Y20_N20
\CODE~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~96_combout\ = (\CODE~30_combout\) # ((\CODE~95_combout\ & (\CODE~25_combout\ & !\INPUTS~combout\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~95_combout\,
	datab => \CODE~30_combout\,
	datac => \CODE~25_combout\,
	datad => \INPUTS~combout\(48),
	combout => \CODE~96_combout\);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[12]~I\ : cycloneii_io
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
	padio => ww_INPUTS(12),
	combout => \INPUTS~combout\(12));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[10]~I\ : cycloneii_io
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
	padio => ww_INPUTS(10),
	combout => \INPUTS~combout\(10));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[11]~I\ : cycloneii_io
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
	padio => ww_INPUTS(11),
	combout => \INPUTS~combout\(11));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[8]~I\ : cycloneii_io
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
	padio => ww_INPUTS(8),
	combout => \INPUTS~combout\(8));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[29]~I\ : cycloneii_io
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
	padio => ww_INPUTS(29),
	combout => \INPUTS~combout\(29));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[27]~I\ : cycloneii_io
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
	padio => ww_INPUTS(27),
	combout => \INPUTS~combout\(27));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[38]~I\ : cycloneii_io
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
	padio => ww_INPUTS(38),
	combout => \INPUTS~combout\(38));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[55]~I\ : cycloneii_io
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
	padio => ww_INPUTS(55),
	combout => \INPUTS~combout\(55));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[58]~I\ : cycloneii_io
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
	padio => ww_INPUTS(58),
	combout => \INPUTS~combout\(58));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[61]~I\ : cycloneii_io
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
	padio => ww_INPUTS(61),
	combout => \INPUTS~combout\(61));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[40]~I\ : cycloneii_io
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
	padio => ww_INPUTS(40),
	combout => \INPUTS~combout\(40));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[44]~I\ : cycloneii_io
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
	padio => ww_INPUTS(44),
	combout => \INPUTS~combout\(44));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[0]~I\ : cycloneii_io
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
	padio => ww_INPUTS(0),
	combout => \INPUTS~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[1]~I\ : cycloneii_io
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
	padio => ww_INPUTS(1),
	combout => \INPUTS~combout\(1));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[16]~I\ : cycloneii_io
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
	padio => ww_INPUTS(16),
	combout => \INPUTS~combout\(16));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[18]~I\ : cycloneii_io
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
	padio => ww_INPUTS(18),
	combout => \INPUTS~combout\(18));

-- Location: LCCOMB_X49_Y13_N18
\CODE~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~9_combout\ = (\CODE~3_combout\ & (!\INPUTS~combout\(16) & !\INPUTS~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~3_combout\,
	datac => \INPUTS~combout\(16),
	datad => \INPUTS~combout\(18),
	combout => \CODE~9_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[19]~I\ : cycloneii_io
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
	padio => ww_INPUTS(19),
	combout => \INPUTS~combout\(19));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[33]~I\ : cycloneii_io
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
	padio => ww_INPUTS(33),
	combout => \INPUTS~combout\(33));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[25]~I\ : cycloneii_io
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
	padio => ww_INPUTS(25),
	combout => \INPUTS~combout\(25));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[24]~I\ : cycloneii_io
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
	padio => ww_INPUTS(24),
	combout => \INPUTS~combout\(24));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[26]~I\ : cycloneii_io
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
	padio => ww_INPUTS(26),
	combout => \INPUTS~combout\(26));

-- Location: LCCOMB_X49_Y12_N4
\CODE~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~12_combout\ = (!\INPUTS~combout\(27) & (!\INPUTS~combout\(25) & (!\INPUTS~combout\(24) & !\INPUTS~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(27),
	datab => \INPUTS~combout\(25),
	datac => \INPUTS~combout\(24),
	datad => \INPUTS~combout\(26),
	combout => \CODE~12_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[28]~I\ : cycloneii_io
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
	padio => ww_INPUTS(28),
	combout => \INPUTS~combout\(28));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[30]~I\ : cycloneii_io
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
	padio => ww_INPUTS(30),
	combout => \INPUTS~combout\(30));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[31]~I\ : cycloneii_io
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
	padio => ww_INPUTS(31),
	combout => \INPUTS~combout\(31));

-- Location: LCCOMB_X49_Y12_N24
\CODE~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~10_combout\ = (!\INPUTS~combout\(29) & (!\INPUTS~combout\(28) & (!\INPUTS~combout\(30) & !\INPUTS~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(29),
	datab => \INPUTS~combout\(28),
	datac => \INPUTS~combout\(30),
	datad => \INPUTS~combout\(31),
	combout => \CODE~10_combout\);

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[21]~I\ : cycloneii_io
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
	padio => ww_INPUTS(21),
	combout => \INPUTS~combout\(21));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[22]~I\ : cycloneii_io
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
	padio => ww_INPUTS(22),
	combout => \INPUTS~combout\(22));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[23]~I\ : cycloneii_io
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
	padio => ww_INPUTS(23),
	combout => \INPUTS~combout\(23));

-- Location: LCCOMB_X49_Y12_N26
\CODE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~11_combout\ = (!\INPUTS~combout\(20) & (!\INPUTS~combout\(21) & (!\INPUTS~combout\(22) & !\INPUTS~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(20),
	datab => \INPUTS~combout\(21),
	datac => \INPUTS~combout\(22),
	datad => \INPUTS~combout\(23),
	combout => \CODE~11_combout\);

-- Location: LCCOMB_X49_Y12_N14
\CODE~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~13_combout\ = (!\INPUTS~combout\(19) & (\CODE~12_combout\ & (\CODE~10_combout\ & \CODE~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(19),
	datab => \CODE~12_combout\,
	datac => \CODE~10_combout\,
	datad => \CODE~11_combout\,
	combout => \CODE~13_combout\);

-- Location: LCCOMB_X49_Y20_N18
\CODE~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~34_combout\ = (\INPUTS~combout\(19)) # ((!\INPUTS~combout\(32) & (\INPUTS~combout\(33) & \CODE~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(32),
	datab => \INPUTS~combout\(19),
	datac => \INPUTS~combout\(33),
	datad => \CODE~13_combout\,
	combout => \CODE~34_combout\);

-- Location: LCCOMB_X49_Y12_N8
\CODE~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~35_combout\ = (!\INPUTS~combout\(28) & ((\INPUTS~combout\(29)) # ((!\INPUTS~combout\(30) & \INPUTS~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(29),
	datab => \INPUTS~combout\(28),
	datac => \INPUTS~combout\(30),
	datad => \INPUTS~combout\(31),
	combout => \CODE~35_combout\);

-- Location: LCCOMB_X49_Y12_N18
\CODE~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~36_combout\ = (\INPUTS~combout\(25)) # ((!\INPUTS~combout\(26) & ((\INPUTS~combout\(27)) # (\CODE~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(27),
	datab => \INPUTS~combout\(25),
	datac => \CODE~35_combout\,
	datad => \INPUTS~combout\(26),
	combout => \CODE~36_combout\);

-- Location: LCCOMB_X49_Y12_N20
\CODE~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~37_combout\ = (!\INPUTS~combout\(22) & ((\INPUTS~combout\(23)) # ((!\INPUTS~combout\(24) & \CODE~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(24),
	datab => \CODE~36_combout\,
	datac => \INPUTS~combout\(22),
	datad => \INPUTS~combout\(23),
	combout => \CODE~37_combout\);

-- Location: LCCOMB_X49_Y12_N30
\CODE~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~38_combout\ = (\CODE~34_combout\) # ((!\INPUTS~combout\(20) & ((\CODE~37_combout\) # (\INPUTS~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(20),
	datab => \CODE~34_combout\,
	datac => \CODE~37_combout\,
	datad => \INPUTS~combout\(21),
	combout => \CODE~38_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[35]~I\ : cycloneii_io
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
	padio => ww_INPUTS(35),
	combout => \INPUTS~combout\(35));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[39]~I\ : cycloneii_io
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
	padio => ww_INPUTS(39),
	combout => \INPUTS~combout\(39));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[37]~I\ : cycloneii_io
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
	padio => ww_INPUTS(37),
	combout => \INPUTS~combout\(37));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[36]~I\ : cycloneii_io
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
	padio => ww_INPUTS(36),
	combout => \INPUTS~combout\(36));

-- Location: LCCOMB_X49_Y21_N8
\CODE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~15_combout\ = (!\INPUTS~combout\(36) & ((\INPUTS~combout\(37)) # ((!\INPUTS~combout\(38) & \INPUTS~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(38),
	datab => \INPUTS~combout\(39),
	datac => \INPUTS~combout\(37),
	datad => \INPUTS~combout\(36),
	combout => \CODE~15_combout\);

-- Location: LCCOMB_X49_Y20_N2
\CODE~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~16_combout\ = (\INPUTS~combout\(35)) # (\CODE~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUTS~combout\(35),
	datac => \CODE~15_combout\,
	combout => \CODE~16_combout\);

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[32]~I\ : cycloneii_io
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
	padio => ww_INPUTS(32),
	combout => \INPUTS~combout\(32));

-- Location: LCCOMB_X49_Y20_N8
\CODE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~14_combout\ = (!\INPUTS~combout\(34) & (!\INPUTS~combout\(32) & \CODE~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(34),
	datac => \INPUTS~combout\(32),
	datad => \CODE~13_combout\,
	combout => \CODE~14_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[63]~I\ : cycloneii_io
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
	padio => ww_INPUTS(63),
	combout => \INPUTS~combout\(63));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[62]~I\ : cycloneii_io
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
	padio => ww_INPUTS(62),
	combout => \INPUTS~combout\(62));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[60]~I\ : cycloneii_io
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
	padio => ww_INPUTS(60),
	combout => \INPUTS~combout\(60));

-- Location: LCCOMB_X49_Y23_N22
\Encoder3|ERROR_AND_CODE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder3|ERROR_AND_CODE~1_combout\ = (!\INPUTS~combout\(61) & (!\INPUTS~combout\(63) & (!\INPUTS~combout\(62) & !\INPUTS~combout\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(61),
	datab => \INPUTS~combout\(63),
	datac => \INPUTS~combout\(62),
	datad => \INPUTS~combout\(60),
	combout => \Encoder3|ERROR_AND_CODE~1_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[48]~I\ : cycloneii_io
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
	padio => ww_INPUTS(48),
	combout => \INPUTS~combout\(48));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[52]~I\ : cycloneii_io
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
	padio => ww_INPUTS(52),
	combout => \INPUTS~combout\(52));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[50]~I\ : cycloneii_io
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
	padio => ww_INPUTS(50),
	combout => \INPUTS~combout\(50));

-- Location: LCCOMB_X49_Y20_N4
\CODE~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~26_combout\ = (\CODE~25_combout\ & (!\INPUTS~combout\(48) & (!\INPUTS~combout\(52) & !\INPUTS~combout\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~25_combout\,
	datab => \INPUTS~combout\(48),
	datac => \INPUTS~combout\(52),
	datad => \INPUTS~combout\(50),
	combout => \CODE~26_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[57]~I\ : cycloneii_io
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
	padio => ww_INPUTS(57),
	combout => \INPUTS~combout\(57));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[56]~I\ : cycloneii_io
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
	padio => ww_INPUTS(56),
	combout => \INPUTS~combout\(56));

-- Location: LCCOMB_X49_Y23_N18
\CODE~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~18_combout\ = (!\INPUTS~combout\(57) & !\INPUTS~combout\(56))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUTS~combout\(57),
	datad => \INPUTS~combout\(56),
	combout => \CODE~18_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[59]~I\ : cycloneii_io
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
	padio => ww_INPUTS(59),
	combout => \INPUTS~combout\(59));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[54]~I\ : cycloneii_io
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
	padio => ww_INPUTS(54),
	combout => \INPUTS~combout\(54));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[53]~I\ : cycloneii_io
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
	padio => ww_INPUTS(53),
	combout => \INPUTS~combout\(53));

-- Location: LCCOMB_X49_Y23_N0
\CODE~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~17_combout\ = (!\INPUTS~combout\(55) & (!\INPUTS~combout\(52) & (!\INPUTS~combout\(54) & !\INPUTS~combout\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(55),
	datab => \INPUTS~combout\(52),
	datac => \INPUTS~combout\(54),
	datad => \INPUTS~combout\(53),
	combout => \CODE~17_combout\);

-- Location: LCCOMB_X49_Y23_N20
\Encoder3|ERROR_AND_CODE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder3|ERROR_AND_CODE~0_combout\ = (!\INPUTS~combout\(58) & (\CODE~18_combout\ & (!\INPUTS~combout\(59) & \CODE~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(58),
	datab => \CODE~18_combout\,
	datac => \INPUTS~combout\(59),
	datad => \CODE~17_combout\,
	combout => \Encoder3|ERROR_AND_CODE~0_combout\);

-- Location: LCCOMB_X49_Y20_N30
\CODE~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~27_combout\ = (\CODE~21_combout\ & (\CODE~26_combout\ & ((!\Encoder3|ERROR_AND_CODE~0_combout\) # (!\Encoder3|ERROR_AND_CODE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~21_combout\,
	datab => \Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \CODE~26_combout\,
	datad => \Encoder3|ERROR_AND_CODE~0_combout\,
	combout => \CODE~27_combout\);

-- Location: LCCOMB_X49_Y20_N24
\CODE~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~33_combout\ = (\CODE~14_combout\ & ((\CODE~96_combout\) # ((\CODE~16_combout\) # (\CODE~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~96_combout\,
	datab => \CODE~16_combout\,
	datac => \CODE~14_combout\,
	datad => \CODE~27_combout\,
	combout => \CODE~33_combout\);

-- Location: LCCOMB_X49_Y13_N28
\CODE~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~39_combout\ = (\CODE~8_combout\) # ((\CODE~9_combout\ & ((\CODE~38_combout\) # (\CODE~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~8_combout\,
	datab => \CODE~9_combout\,
	datac => \CODE~38_combout\,
	datad => \CODE~33_combout\,
	combout => \CODE~39_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[2]~I\ : cycloneii_io
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
	padio => ww_INPUTS(2),
	combout => \INPUTS~combout\(2));

-- Location: LCCOMB_X49_Y13_N22
\CODE~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~40_combout\ = (!\INPUTS~combout\(0) & ((\INPUTS~combout\(1)) # ((\CODE~39_combout\ & !\INPUTS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datab => \INPUTS~combout\(1),
	datac => \CODE~39_combout\,
	datad => \INPUTS~combout\(2),
	combout => \CODE~40_combout\);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[5]~I\ : cycloneii_io
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
	padio => ww_INPUTS(5),
	combout => \INPUTS~combout\(5));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[7]~I\ : cycloneii_io
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
	padio => ww_INPUTS(7),
	combout => \INPUTS~combout\(7));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[6]~I\ : cycloneii_io
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
	padio => ww_INPUTS(6),
	combout => \INPUTS~combout\(6));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[9]~I\ : cycloneii_io
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
	padio => ww_INPUTS(9),
	combout => \INPUTS~combout\(9));

-- Location: LCCOMB_X49_Y9_N20
\CODE~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~43_combout\ = (\INPUTS~combout\(7)) # ((\INPUTS~combout\(6)) # ((\CODE~42_combout\ & !\INPUTS~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~42_combout\,
	datab => \INPUTS~combout\(7),
	datac => \INPUTS~combout\(6),
	datad => \INPUTS~combout\(9),
	combout => \CODE~43_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[3]~I\ : cycloneii_io
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
	padio => ww_INPUTS(3),
	combout => \INPUTS~combout\(3));

-- Location: LCCOMB_X49_Y9_N22
\CODE~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~44_combout\ = (\INPUTS~combout\(3)) # ((!\INPUTS~combout\(4) & (!\INPUTS~combout\(5) & \CODE~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(4),
	datab => \INPUTS~combout\(5),
	datac => \CODE~43_combout\,
	datad => \INPUTS~combout\(3),
	combout => \CODE~44_combout\);

-- Location: LCCOMB_X49_Y13_N24
\CODE~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~45_combout\ = (!\INPUTS~combout\(0) & (!\INPUTS~combout\(1) & ((\CODE~44_combout\) # (\INPUTS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datab => \INPUTS~combout\(1),
	datac => \CODE~44_combout\,
	datad => \INPUTS~combout\(2),
	combout => \CODE~45_combout\);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[20]~I\ : cycloneii_io
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
	padio => ww_INPUTS(20),
	combout => \INPUTS~combout\(20));

-- Location: LCCOMB_X49_Y12_N22
\CODE~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~65_combout\ = (!\INPUTS~combout\(21) & (!\INPUTS~combout\(20) & ((\CODE~64_combout\) # (\INPUTS~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~64_combout\,
	datab => \INPUTS~combout\(21),
	datac => \INPUTS~combout\(22),
	datad => \INPUTS~combout\(20),
	combout => \CODE~65_combout\);

-- Location: LCCOMB_X49_Y13_N30
\CODE~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~66_combout\ = (\CODE~65_combout\) # ((\INPUTS~combout\(19)) # (\INPUTS~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CODE~65_combout\,
	datac => \INPUTS~combout\(19),
	datad => \INPUTS~combout\(18),
	combout => \CODE~66_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[17]~I\ : cycloneii_io
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
	padio => ww_INPUTS(17),
	combout => \INPUTS~combout\(17));

-- Location: LCCOMB_X49_Y13_N10
\CODE~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~46_combout\ = (!\INPUTS~combout\(0) & (!\INPUTS~combout\(17) & !\INPUTS~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datac => \INPUTS~combout\(17),
	datad => \INPUTS~combout\(1),
	combout => \CODE~46_combout\);

-- Location: LCCOMB_X49_Y13_N4
\CODE~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~47_combout\ = (\CODE~3_combout\ & (!\INPUTS~combout\(16) & \CODE~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~3_combout\,
	datac => \INPUTS~combout\(16),
	datad => \CODE~46_combout\,
	combout => \CODE~47_combout\);

-- Location: LCCOMB_X49_Y20_N28
\CODE~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~48_combout\ = (!\INPUTS~combout\(32) & (!\INPUTS~combout\(33) & \CODE~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(32),
	datab => \INPUTS~combout\(33),
	datad => \CODE~13_combout\,
	combout => \CODE~48_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[34]~I\ : cycloneii_io
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
	padio => ww_INPUTS(34),
	combout => \INPUTS~combout\(34));

-- Location: LCCOMB_X49_Y20_N26
\CODE~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~61_combout\ = (\CODE~48_combout\ & ((\CODE~60_combout\) # ((\INPUTS~combout\(35)) # (\INPUTS~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~60_combout\,
	datab => \CODE~48_combout\,
	datac => \INPUTS~combout\(35),
	datad => \INPUTS~combout\(34),
	combout => \CODE~61_combout\);

-- Location: LCCOMB_X49_Y13_N8
\CODE~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~67_combout\ = (\CODE~45_combout\) # ((\CODE~47_combout\ & ((\CODE~66_combout\) # (\CODE~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~45_combout\,
	datab => \CODE~66_combout\,
	datac => \CODE~47_combout\,
	datad => \CODE~61_combout\,
	combout => \CODE~67_combout\);

-- Location: LCCOMB_X49_Y13_N16
\CODE~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~75_combout\ = (!\INPUTS~combout\(17) & (!\INPUTS~combout\(19) & (!\INPUTS~combout\(16) & !\INPUTS~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(17),
	datab => \INPUTS~combout\(19),
	datac => \INPUTS~combout\(16),
	datad => \INPUTS~combout\(18),
	combout => \CODE~75_combout\);

-- Location: LCCOMB_X49_Y13_N20
\CODE~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~71_combout\ = (!\INPUTS~combout\(17) & (!\INPUTS~combout\(16) & !\INPUTS~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(17),
	datac => \INPUTS~combout\(16),
	datad => \INPUTS~combout\(18),
	combout => \CODE~71_combout\);

-- Location: LCCOMB_X49_Y12_N0
\CODE~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~76_combout\ = (\INPUTS~combout\(19)) # (((!\CODE~71_combout\) # (!\CODE~12_combout\)) # (!\CODE~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(19),
	datab => \CODE~11_combout\,
	datac => \CODE~12_combout\,
	datad => \CODE~71_combout\,
	combout => \CODE~76_combout\);

-- Location: LCCOMB_X49_Y12_N10
\CODE~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~77_combout\ = (\CODE~10_combout\ & (!\CODE~11_combout\ & (\CODE~75_combout\))) # (!\CODE~10_combout\ & (((!\CODE~11_combout\ & \CODE~75_combout\)) # (!\CODE~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~10_combout\,
	datab => \CODE~11_combout\,
	datac => \CODE~75_combout\,
	datad => \CODE~76_combout\,
	combout => \CODE~77_combout\);

-- Location: LCCOMB_X49_Y13_N2
\CODE~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~70_combout\ = (!\INPUTS~combout\(0) & (!\INPUTS~combout\(1) & !\INPUTS~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datab => \INPUTS~combout\(1),
	datad => \INPUTS~combout\(2),
	combout => \CODE~70_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[4]~I\ : cycloneii_io
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
	padio => ww_INPUTS(4),
	combout => \INPUTS~combout\(4));

-- Location: LCCOMB_X49_Y9_N26
\CODE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~1_combout\ = (!\INPUTS~combout\(6) & (!\INPUTS~combout\(5) & (!\INPUTS~combout\(7) & !\INPUTS~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(6),
	datab => \INPUTS~combout\(5),
	datac => \INPUTS~combout\(7),
	datad => \INPUTS~combout\(4),
	combout => \CODE~1_combout\);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[15]~I\ : cycloneii_io
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
	padio => ww_INPUTS(15),
	combout => \INPUTS~combout\(15));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[14]~I\ : cycloneii_io
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
	padio => ww_INPUTS(14),
	combout => \INPUTS~combout\(14));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[13]~I\ : cycloneii_io
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
	padio => ww_INPUTS(13),
	combout => \INPUTS~combout\(13));

-- Location: LCCOMB_X49_Y9_N16
\CODE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~0_combout\ = (!\INPUTS~combout\(12) & (!\INPUTS~combout\(15) & (!\INPUTS~combout\(14) & !\INPUTS~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(12),
	datab => \INPUTS~combout\(15),
	datac => \INPUTS~combout\(14),
	datad => \INPUTS~combout\(13),
	combout => \CODE~0_combout\);

-- Location: LCCOMB_X49_Y9_N14
\CODE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~3_combout\ = (\CODE~2_combout\ & (\CODE~1_combout\ & (\CODE~0_combout\ & !\INPUTS~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~2_combout\,
	datab => \CODE~1_combout\,
	datac => \CODE~0_combout\,
	datad => \INPUTS~combout\(3),
	combout => \CODE~3_combout\);

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[41]~I\ : cycloneii_io
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
	padio => ww_INPUTS(41),
	combout => \INPUTS~combout\(41));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[42]~I\ : cycloneii_io
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
	padio => ww_INPUTS(42),
	combout => \INPUTS~combout\(42));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[43]~I\ : cycloneii_io
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
	padio => ww_INPUTS(43),
	combout => \INPUTS~combout\(43));

-- Location: LCCOMB_X49_Y21_N4
\CODE~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~23_combout\ = (!\INPUTS~combout\(40) & (!\INPUTS~combout\(41) & (!\INPUTS~combout\(42) & !\INPUTS~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(40),
	datab => \INPUTS~combout\(41),
	datac => \INPUTS~combout\(42),
	datad => \INPUTS~combout\(43),
	combout => \CODE~23_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[47]~I\ : cycloneii_io
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
	padio => ww_INPUTS(47),
	combout => \INPUTS~combout\(47));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[46]~I\ : cycloneii_io
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
	padio => ww_INPUTS(46),
	combout => \INPUTS~combout\(46));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[45]~I\ : cycloneii_io
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
	padio => ww_INPUTS(45),
	combout => \INPUTS~combout\(45));

-- Location: LCCOMB_X49_Y21_N14
\CODE~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~24_combout\ = (!\INPUTS~combout\(44) & (!\INPUTS~combout\(47) & (!\INPUTS~combout\(46) & !\INPUTS~combout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(44),
	datab => \INPUTS~combout\(47),
	datac => \INPUTS~combout\(46),
	datad => \INPUTS~combout\(45),
	combout => \CODE~24_combout\);

-- Location: LCCOMB_X49_Y21_N26
\CODE~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~22_combout\ = (!\INPUTS~combout\(38) & (!\INPUTS~combout\(39) & (!\INPUTS~combout\(37) & !\INPUTS~combout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(38),
	datab => \INPUTS~combout\(39),
	datac => \INPUTS~combout\(37),
	datad => \INPUTS~combout\(36),
	combout => \CODE~22_combout\);

-- Location: LCCOMB_X49_Y21_N16
\CODE~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~25_combout\ = (!\INPUTS~combout\(35) & (\CODE~23_combout\ & (\CODE~24_combout\ & \CODE~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(35),
	datab => \CODE~23_combout\,
	datac => \CODE~24_combout\,
	datad => \CODE~22_combout\,
	combout => \CODE~25_combout\);

-- Location: LCCOMB_X49_Y20_N22
\CODE~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~73_combout\ = (!\INPUTS~combout\(34) & (!\INPUTS~combout\(33) & (\CODE~25_combout\ & !\INPUTS~combout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(34),
	datab => \INPUTS~combout\(33),
	datac => \CODE~25_combout\,
	datad => \INPUTS~combout\(32),
	combout => \CODE~73_combout\);

-- Location: LCCOMB_X49_Y16_N8
\CODE~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~74_combout\ = (((!\CODE~72_combout\ & !\CODE~73_combout\)) # (!\CODE~3_combout\)) # (!\CODE~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~72_combout\,
	datab => \CODE~70_combout\,
	datac => \CODE~3_combout\,
	datad => \CODE~73_combout\,
	combout => \CODE~74_combout\);

-- Location: LCCOMB_X49_Y16_N28
\CODE~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~79_combout\ = (\INPUTS~combout\(48)) # ((\Encoder3|ERROR_AND_CODE~2_combout\ & (\Encoder3|ERROR_AND_CODE~1_combout\ & \Encoder3|ERROR_AND_CODE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder3|ERROR_AND_CODE~2_combout\,
	datab => \Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder3|ERROR_AND_CODE~0_combout\,
	datad => \INPUTS~combout\(48),
	combout => \CODE~79_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[49]~I\ : cycloneii_io
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
	padio => ww_INPUTS(49),
	combout => \INPUTS~combout\(49));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUTS[51]~I\ : cycloneii_io
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
	padio => ww_INPUTS(51),
	combout => \INPUTS~combout\(51));

-- Location: LCCOMB_X49_Y20_N16
\Encoder3|ERROR_AND_CODE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder3|ERROR_AND_CODE~2_combout\ = (!\INPUTS~combout\(49) & (!\INPUTS~combout\(51) & !\INPUTS~combout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUTS~combout\(49),
	datac => \INPUTS~combout\(51),
	datad => \INPUTS~combout\(50),
	combout => \Encoder3|ERROR_AND_CODE~2_combout\);

-- Location: LCCOMB_X49_Y16_N26
\CODE~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~78_combout\ = (\Encoder3|ERROR_AND_CODE~2_combout\ & (((!\Encoder3|ERROR_AND_CODE~1_combout\ & \Encoder3|ERROR_AND_CODE~0_combout\)) # (!\CODE~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~17_combout\,
	datab => \Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder3|ERROR_AND_CODE~0_combout\,
	datad => \Encoder3|ERROR_AND_CODE~2_combout\,
	combout => \CODE~78_combout\);

-- Location: LCCOMB_X49_Y16_N22
\CODE~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~80_combout\ = (!\CODE~79_combout\ & \CODE~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CODE~79_combout\,
	datad => \CODE~78_combout\,
	combout => \CODE~80_combout\);

-- Location: LCCOMB_X49_Y16_N24
\CODE~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~81_combout\ = (\CODE~72_combout\ & ((\CODE~77_combout\) # ((\CODE~74_combout\)))) # (!\CODE~72_combout\ & (((!\CODE~74_combout\ & \CODE~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~72_combout\,
	datab => \CODE~77_combout\,
	datac => \CODE~74_combout\,
	datad => \CODE~80_combout\,
	combout => \CODE~81_combout\);

-- Location: LCCOMB_X49_Y9_N0
\CODE~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~83_combout\ = (((\INPUTS~combout\(3)) # (!\CODE~70_combout\)) # (!\CODE~1_combout\)) # (!\CODE~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~2_combout\,
	datab => \CODE~1_combout\,
	datac => \CODE~70_combout\,
	datad => \INPUTS~combout\(3),
	combout => \CODE~83_combout\);

-- Location: LCCOMB_X49_Y9_N2
\CODE~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~84_combout\ = (\CODE~82_combout\ & (((!\CODE~0_combout\ & !\CODE~83_combout\)) # (!\CODE~1_combout\))) # (!\CODE~82_combout\ & (((!\CODE~0_combout\ & !\CODE~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~82_combout\,
	datab => \CODE~1_combout\,
	datac => \CODE~0_combout\,
	datad => \CODE~83_combout\,
	combout => \CODE~84_combout\);

-- Location: LCCOMB_X49_Y21_N12
\CODE~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~69_combout\ = (\CODE~68_combout\ & (((\CODE~23_combout\ & !\CODE~24_combout\)) # (!\CODE~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~68_combout\,
	datab => \CODE~23_combout\,
	datac => \CODE~24_combout\,
	datad => \CODE~22_combout\,
	combout => \CODE~69_combout\);

-- Location: LCCOMB_X49_Y16_N2
\CODE~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~85_combout\ = (\CODE~81_combout\ & (((\CODE~84_combout\)) # (!\CODE~74_combout\))) # (!\CODE~81_combout\ & (\CODE~74_combout\ & ((\CODE~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~81_combout\,
	datab => \CODE~74_combout\,
	datac => \CODE~84_combout\,
	datad => \CODE~69_combout\,
	combout => \CODE~85_combout\);

-- Location: LCCOMB_X49_Y9_N4
\CODE~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~91_combout\ = (\CODE~83_combout\ & (\CODE~82_combout\ & (\CODE~1_combout\))) # (!\CODE~83_combout\ & (((!\CODE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~82_combout\,
	datab => \CODE~1_combout\,
	datac => \CODE~0_combout\,
	datad => \CODE~83_combout\,
	combout => \CODE~91_combout\);

-- Location: LCCOMB_X49_Y12_N28
\CODE~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~87_combout\ = (\CODE~76_combout\ & (((\CODE~11_combout\ & \CODE~75_combout\)))) # (!\CODE~76_combout\ & (!\CODE~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~10_combout\,
	datab => \CODE~11_combout\,
	datac => \CODE~75_combout\,
	datad => \CODE~76_combout\,
	combout => \CODE~87_combout\);

-- Location: LCCOMB_X49_Y16_N12
\CODE~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~88_combout\ = (\Encoder3|ERROR_AND_CODE~2_combout\ & ((\Encoder3|ERROR_AND_CODE~0_combout\ & ((!\Encoder3|ERROR_AND_CODE~1_combout\))) # (!\Encoder3|ERROR_AND_CODE~0_combout\ & (\CODE~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~17_combout\,
	datab => \Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder3|ERROR_AND_CODE~0_combout\,
	datad => \Encoder3|ERROR_AND_CODE~2_combout\,
	combout => \CODE~88_combout\);

-- Location: LCCOMB_X49_Y16_N30
\CODE~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~89_combout\ = (!\CODE~79_combout\ & \CODE~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CODE~79_combout\,
	datad => \CODE~88_combout\,
	combout => \CODE~89_combout\);

-- Location: LCCOMB_X49_Y16_N0
\CODE~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~90_combout\ = (\CODE~72_combout\ & ((\CODE~87_combout\) # ((\CODE~74_combout\)))) # (!\CODE~72_combout\ & (((!\CODE~74_combout\ & \CODE~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~72_combout\,
	datab => \CODE~87_combout\,
	datac => \CODE~74_combout\,
	datad => \CODE~89_combout\,
	combout => \CODE~90_combout\);

-- Location: LCCOMB_X49_Y21_N6
\CODE~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~86_combout\ = (\CODE~68_combout\ & (\CODE~22_combout\ & ((!\CODE~24_combout\) # (!\CODE~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~68_combout\,
	datab => \CODE~23_combout\,
	datac => \CODE~24_combout\,
	datad => \CODE~22_combout\,
	combout => \CODE~86_combout\);

-- Location: LCCOMB_X49_Y16_N18
\CODE~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~92_combout\ = (\CODE~90_combout\ & ((\CODE~91_combout\) # ((!\CODE~74_combout\)))) # (!\CODE~90_combout\ & (((\CODE~74_combout\ & \CODE~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CODE~91_combout\,
	datab => \CODE~90_combout\,
	datac => \CODE~74_combout\,
	datad => \CODE~86_combout\,
	combout => \CODE~92_combout\);

-- Location: LCCOMB_X49_Y13_N6
\Encoder1|ERROR_16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder1|ERROR_16~0_combout\ = (!\INPUTS~combout\(17) & (\CODE~13_combout\ & (!\INPUTS~combout\(16) & !\INPUTS~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(17),
	datab => \CODE~13_combout\,
	datac => \INPUTS~combout\(16),
	datad => \INPUTS~combout\(18),
	combout => \Encoder1|ERROR_16~0_combout\);

-- Location: LCCOMB_X49_Y13_N12
\Encoder0|ERROR_16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder0|ERROR_16~0_combout\ = (!\INPUTS~combout\(0) & (!\INPUTS~combout\(1) & (!\INPUTS~combout\(2) & \CODE~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUTS~combout\(0),
	datab => \INPUTS~combout\(1),
	datac => \INPUTS~combout\(2),
	datad => \CODE~3_combout\,
	combout => \Encoder0|ERROR_16~0_combout\);

-- Location: LCCOMB_X49_Y16_N20
\Encoder3|ERROR_16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Encoder3|ERROR_16~0_combout\ = (((\INPUTS~combout\(48)) # (!\Encoder3|ERROR_AND_CODE~0_combout\)) # (!\Encoder3|ERROR_AND_CODE~1_combout\)) # (!\Encoder3|ERROR_AND_CODE~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder3|ERROR_AND_CODE~2_combout\,
	datab => \Encoder3|ERROR_AND_CODE~1_combout\,
	datac => \Encoder3|ERROR_AND_CODE~0_combout\,
	datad => \INPUTS~combout\(48),
	combout => \Encoder3|ERROR_16~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\CODE~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~93_combout\ = (\Encoder0|ERROR_16~0_combout\ & (((\Encoder3|ERROR_16~0_combout\ & \CODE~73_combout\)) # (!\Encoder1|ERROR_16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder1|ERROR_16~0_combout\,
	datab => \Encoder0|ERROR_16~0_combout\,
	datac => \Encoder3|ERROR_16~0_combout\,
	datad => \CODE~73_combout\,
	combout => \CODE~93_combout\);

-- Location: LCCOMB_X49_Y16_N16
\CODE~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \CODE~94_combout\ = (\Encoder1|ERROR_16~0_combout\ & (\Encoder0|ERROR_16~0_combout\ & ((\Encoder3|ERROR_16~0_combout\) # (!\CODE~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder1|ERROR_16~0_combout\,
	datab => \Encoder0|ERROR_16~0_combout\,
	datac => \Encoder3|ERROR_16~0_combout\,
	datad => \CODE~73_combout\,
	combout => \CODE~94_combout\);

-- Location: LCCOMB_X49_Y16_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Encoder1|ERROR_16~0_combout\ & (\Encoder0|ERROR_16~0_combout\ & (!\Encoder3|ERROR_16~0_combout\ & \CODE~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder1|ERROR_16~0_combout\,
	datab => \Encoder0|ERROR_16~0_combout\,
	datac => \Encoder3|ERROR_16~0_combout\,
	datad => \CODE~73_combout\,
	combout => \Equal0~0_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[0]~I\ : cycloneii_io
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
	datain => \CODE~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(0));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[1]~I\ : cycloneii_io
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
	datain => \CODE~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(1));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[2]~I\ : cycloneii_io
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
	datain => \CODE~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(2));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[3]~I\ : cycloneii_io
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
	datain => \CODE~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(3));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[4]~I\ : cycloneii_io
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
	datain => \CODE~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(4));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CODE[5]~I\ : cycloneii_io
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
	datain => \CODE~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CODE(5));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ERROR~I\ : cycloneii_io
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
	datain => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ERROR);
END structure;


