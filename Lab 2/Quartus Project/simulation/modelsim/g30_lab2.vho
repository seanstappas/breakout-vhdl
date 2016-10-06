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

-- DATE "10/06/2016 13:55:22"

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
	KEYS : IN std_logic_vector(9 DOWNTO 0);
	SEGMENTS : OUT std_logic_vector(6 DOWNTO 0)
	);
END g30_keyboard_to_LED;

-- Design Ports Information
-- SEGMENTS[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEGMENTS[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEYS[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEYS[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEYS : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SEGMENTS : std_logic_vector(6 DOWNTO 0);
SIGNAL \Decoder|Mux6~6_combout\ : std_logic;
SIGNAL \Decoder|Mux6~3_combout\ : std_logic;
SIGNAL \Decoder|Mux6~22_combout\ : std_logic;
SIGNAL \Decoder|Mux5~3_combout\ : std_logic;
SIGNAL \Decoder|Mux5~22_combout\ : std_logic;
SIGNAL \Decoder|Mux4~8_combout\ : std_logic;
SIGNAL \Decoder|Mux4~5_combout\ : std_logic;
SIGNAL \Decoder|Mux4~24_combout\ : std_logic;
SIGNAL \Decoder|Mux3~6_combout\ : std_logic;
SIGNAL \Decoder|Mux3~3_combout\ : std_logic;
SIGNAL \Decoder|Mux3~19_combout\ : std_logic;
SIGNAL \Decoder|Mux2~3_combout\ : std_logic;
SIGNAL \Decoder|Mux2~19_combout\ : std_logic;
SIGNAL \Decoder|Mux1~6_combout\ : std_logic;
SIGNAL \Decoder|Mux1~3_combout\ : std_logic;
SIGNAL \Decoder|Mux1~22_combout\ : std_logic;
SIGNAL \Decoder|Mux0~6_combout\ : std_logic;
SIGNAL \Decoder|Mux0~3_combout\ : std_logic;
SIGNAL \Decoder|Mux0~22_combout\ : std_logic;
SIGNAL \KEYS~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Decoder|ALT_INV_Mux0~22_combout\ : std_logic;

BEGIN

ww_KEYS <= KEYS;
SEGMENTS <= ww_SEGMENTS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Decoder|ALT_INV_Mux0~22_combout\ <= NOT \Decoder|Mux0~22_combout\;

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

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y13_N18
\Decoder|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~6_combout\ = (\KEYS~combout\(6)) # ((!\KEYS~combout\(7) & (!\KEYS~combout\(9) & !\KEYS~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(7),
	datab => \KEYS~combout\(9),
	datac => \KEYS~combout\(6),
	datad => \KEYS~combout\(8),
	combout => \Decoder|Mux6~6_combout\);

-- Location: LCCOMB_X27_Y13_N8
\Decoder|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~3_combout\ = (!\KEYS~combout\(3) & ((\KEYS~combout\(4)) # ((!\KEYS~combout\(5) & \Decoder|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(4),
	datac => \KEYS~combout\(3),
	datad => \Decoder|Mux6~6_combout\,
	combout => \Decoder|Mux6~3_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y19_N16
\Decoder|Mux6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux6~22_combout\ = (!\KEYS~combout\(0) & ((\KEYS~combout\(1)) # ((\Decoder|Mux6~3_combout\ & !\KEYS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(1),
	datab => \KEYS~combout\(0),
	datac => \Decoder|Mux6~3_combout\,
	datad => \KEYS~combout\(2),
	combout => \Decoder|Mux6~22_combout\);

-- Location: LCCOMB_X27_Y13_N22
\Decoder|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~3_combout\ = (!\KEYS~combout\(4) & (!\KEYS~combout\(3) & ((\KEYS~combout\(5)) # (\Decoder|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(4),
	datac => \KEYS~combout\(3),
	datad => \Decoder|Mux6~6_combout\,
	combout => \Decoder|Mux5~3_combout\);

-- Location: LCCOMB_X27_Y13_N28
\Decoder|Mux5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux5~22_combout\ = (!\KEYS~combout\(1) & (\Decoder|Mux5~3_combout\ & (!\KEYS~combout\(0) & !\KEYS~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(1),
	datab => \Decoder|Mux5~3_combout\,
	datac => \KEYS~combout\(0),
	datad => \KEYS~combout\(2),
	combout => \Decoder|Mux5~22_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y13_N10
\Decoder|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~8_combout\ = (!\KEYS~combout\(3) & (!\KEYS~combout\(4) & (!\KEYS~combout\(7) & !\KEYS~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(3),
	datab => \KEYS~combout\(4),
	datac => \KEYS~combout\(7),
	datad => \KEYS~combout\(5),
	combout => \Decoder|Mux4~8_combout\);

-- Location: LCCOMB_X27_Y13_N16
\Decoder|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~5_combout\ = (!\KEYS~combout\(8) & (!\KEYS~combout\(9) & (!\KEYS~combout\(6) & \Decoder|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(8),
	datab => \KEYS~combout\(9),
	datac => \KEYS~combout\(6),
	datad => \Decoder|Mux4~8_combout\,
	combout => \Decoder|Mux4~5_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Decoder|Mux4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux4~24_combout\ = (!\KEYS~combout\(1) & (!\KEYS~combout\(0) & ((\Decoder|Mux4~5_combout\) # (\KEYS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(1),
	datab => \KEYS~combout\(0),
	datac => \Decoder|Mux4~5_combout\,
	datad => \KEYS~combout\(2),
	combout => \Decoder|Mux4~24_combout\);

-- Location: LCCOMB_X27_Y13_N30
\Decoder|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~6_combout\ = (!\KEYS~combout\(6) & ((\KEYS~combout\(7)) # (!\KEYS~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(7),
	datab => \KEYS~combout\(6),
	datac => \KEYS~combout\(8),
	combout => \Decoder|Mux3~6_combout\);

-- Location: LCCOMB_X27_Y13_N4
\Decoder|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~3_combout\ = (!\KEYS~combout\(3) & ((\KEYS~combout\(4)) # ((!\KEYS~combout\(5) & \Decoder|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(4),
	datac => \KEYS~combout\(3),
	datad => \Decoder|Mux3~6_combout\,
	combout => \Decoder|Mux3~3_combout\);

-- Location: LCCOMB_X26_Y19_N12
\Decoder|Mux3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux3~19_combout\ = (!\KEYS~combout\(0) & ((\KEYS~combout\(1)) # ((\Decoder|Mux3~3_combout\ & !\KEYS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(1),
	datab => \KEYS~combout\(0),
	datac => \Decoder|Mux3~3_combout\,
	datad => \KEYS~combout\(2),
	combout => \Decoder|Mux3~19_combout\);

-- Location: LCCOMB_X27_Y13_N26
\Decoder|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~3_combout\ = (\KEYS~combout\(5)) # ((\KEYS~combout\(4)) # ((\KEYS~combout\(3)) # (\Decoder|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(4),
	datac => \KEYS~combout\(3),
	datad => \Decoder|Mux3~6_combout\,
	combout => \Decoder|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y13_N24
\Decoder|Mux2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux2~19_combout\ = (!\KEYS~combout\(0) & ((\KEYS~combout\(1)) # ((\Decoder|Mux2~3_combout\ & !\KEYS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(1),
	datab => \Decoder|Mux2~3_combout\,
	datac => \KEYS~combout\(0),
	datad => \KEYS~combout\(2),
	combout => \Decoder|Mux2~19_combout\);

-- Location: LCCOMB_X27_Y13_N0
\Decoder|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~6_combout\ = (!\KEYS~combout\(4) & ((\KEYS~combout\(7)) # ((!\KEYS~combout\(9) & !\KEYS~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(7),
	datab => \KEYS~combout\(9),
	datac => \KEYS~combout\(4),
	datad => \KEYS~combout\(8),
	combout => \Decoder|Mux1~6_combout\);

-- Location: LCCOMB_X27_Y13_N14
\Decoder|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~3_combout\ = (\KEYS~combout\(3)) # ((!\KEYS~combout\(5) & (!\KEYS~combout\(6) & \Decoder|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(6),
	datac => \KEYS~combout\(3),
	datad => \Decoder|Mux1~6_combout\,
	combout => \Decoder|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y13_N20
\Decoder|Mux1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux1~22_combout\ = (!\KEYS~combout\(0) & ((\KEYS~combout\(2)) # ((\Decoder|Mux1~3_combout\) # (\KEYS~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(0),
	datab => \KEYS~combout\(2),
	datac => \Decoder|Mux1~3_combout\,
	datad => \KEYS~combout\(1),
	combout => \Decoder|Mux1~22_combout\);

-- Location: LCCOMB_X27_Y13_N6
\Decoder|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~6_combout\ = (\KEYS~combout\(3)) # ((!\KEYS~combout\(7) & ((\KEYS~combout\(9)) # (\KEYS~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(7),
	datab => \KEYS~combout\(9),
	datac => \KEYS~combout\(3),
	datad => \KEYS~combout\(8),
	combout => \Decoder|Mux0~6_combout\);

-- Location: LCCOMB_X27_Y13_N12
\Decoder|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~3_combout\ = (\KEYS~combout\(5)) # ((\KEYS~combout\(6)) # ((\KEYS~combout\(4)) # (\Decoder|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYS~combout\(5),
	datab => \KEYS~combout\(6),
	datac => \KEYS~combout\(4),
	datad => \Decoder|Mux0~6_combout\,
	combout => \Decoder|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y13_N2
\Decoder|Mux0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder|Mux0~22_combout\ = (!\KEYS~combout\(0) & (!\KEYS~combout\(1) & ((\Decoder|Mux0~3_combout\) # (\KEYS~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|Mux0~3_combout\,
	datab => \KEYS~combout\(2),
	datac => \KEYS~combout\(0),
	datad => \KEYS~combout\(1),
	combout => \Decoder|Mux0~22_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux6~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux2~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|Mux1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Decoder|ALT_INV_Mux0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEGMENTS(6));
END structure;


