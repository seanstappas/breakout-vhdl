------------------------------------------------------------------------------------------
--
-- Keyboard Encoder
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 2, Group 30
-- October 3, 2016
--
-- The purpose of this component is to output the 7-bit ASCII code value (ASCII_CODE) associated with certain keyboard keys pressed,
-- represented by the KEYS input port. The mapping we chose was such that the first key has ASCII value 20, increasing until 5F.
-- If multiple keys are pressed simulaneously, the ASCII code of the least significant '1' key will be output.
-- If no keys are pressed, the output will have value 0 (error case).
--
-- Input ports:
--        KEYS       - 64 bits : the binary number representing keyboard keys (bit i is HIGH = KEY i is pressed)
-- Output ports:
--        ASCII_CODE - 7  bits : the ASCII code
--
-- Authors: Gabriel Chootong, Sean Stappas

--
-- entity name: g30_keyboard_encoder
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong
-- Version 1.0
-- Author: Sean Stappas, Gabriel Chootong
-- Date: October 3, 2016

library ieee;
use ieee.std_logic_1164.all;

entity g30_keyboard_encoder is
	port (
		KEYS : in std_logic_vector(63 downto 0);
		ASCII_CODE : out std_logic_vector(6 downto 0)
	);
end g30_keyboard_encoder;

architecture keyboard_encoder of g30_keyboard_encoder is
	signal ENCODER_CODE : std_logic_vector(5 downto 0);
	signal ENCODER_ERROR : std_logic;
	signal ERROR_AND_CODE : std_logic_vector(6 downto 0);
	component g30_64_6_encoder
		port (
			INPUTS : in std_logic_vector(63 downto 0);
			CODE : out std_logic_vector(5 downto 0);
			ERROR : out std_logic
		);
	end component;
begin
	Encoder : g30_64_6_encoder
		port map (
			INPUTS => KEYS,
			CODE => ENCODER_CODE,
			ERROR => ENCODER_ERROR
		);
		
	ERROR_AND_CODE <= ENCODER_ERROR & ENCODER_CODE;
	
	with ERROR_AND_CODE select ASCII_CODE <=
		"0100000" when "0000000",
		"0100001" when "0000001",
		"0100010" when "0000010",
		"0100011" when "0000011",
		"0100100" when "0000100",
		"0100101" when "0000101",
		"0100110" when "0000110",
		"0100111" when "0000111",
		"0101000" when "0001000",
		"0101001" when "0001001",
		"0101010" when "0001010",
		"0101011" when "0001011",
		"0101100" when "0001100",
		"0101101" when "0001101",
		"0101110" when "0001110",
		"0101111" when "0001111",
		"0110000" when "0010000",
		"0110001" when "0010001",
		"0110010" when "0010010",
		"0110011" when "0010011",
		"0110100" when "0010100",
		"0110101" when "0010101",
		"0110110" when "0010110",
		"0110111" when "0010111",
		"0111000" when "0011000",
		"0111001" when "0011001",
		"0111010" when "0011010",
		"0111011" when "0011011",
		"0111100" when "0011100",
		"0111101" when "0011101",
		"0111110" when "0011110",
		"0111111" when "0011111",
		"1000000" when "0100000",
		"1000001" when "0100001",
		"1000010" when "0100010",
		"1000011" when "0100011",
		"1000100" when "0100100",
		"1000101" when "0100101",
		"1000110" when "0100110",
		"1000111" when "0100111",
		"1001000" when "0101000",
		"1001001" when "0101001",
		"1001010" when "0101010",
		"1001011" when "0101011",
		"1001100" when "0101100",
		"1001101" when "0101101",
		"1001110" when "0101110",
		"1001111" when "0101111",
		"1010000" when "0110000",
		"1010001" when "0110001",
		"1010010" when "0110010",
		"1010011" when "0110011",
		"1010100" when "0110100",
		"1010101" when "0110101",
		"1010110" when "0110110",
		"1010111" when "0110111",
		"1011000" when "0111000",
		"1011001" when "0111001",
		"1011010" when "0111010",
		"1011011" when "0111011",
		"1011100" when "0111100",
		"1011101" when "0111101",
		"1011110" when "0111110",
		"1011111" when "0111111",
		"0000000" when others;
end keyboard_encoder;
------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 3, 2016
