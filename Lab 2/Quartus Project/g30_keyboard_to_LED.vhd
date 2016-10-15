------------------------------------------------------------------------------------------
--
-- Keyboard to LED
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 2, Group 30
-- October 3, 2016
--
-- This circuit combines the previously created Keyboard Encoder with the LED Decoder. It is to be used on the
-- Altera DE1 board, which is limited to 10 switches, hence why there are only 10 input bits available. The rest
-- of the 64 input bits of the Keyboard Decoder are set to 0. For the purpose of testing on the board, the bits 
-- corresponding to characters '0' to '9' are available as inputs.
--
-- Input ports:
--        KEYS     - 10 bits : the binary number representing keyboard keys (bit i is HIGH = KEY i is pressed)
-- Output ports:
--        SEGMENTS - 7  bits : the code to turn on the proper segments on the 7-segment LED.
--
-- Authors: Gabriel Chootong, Sean Stappas

library ieee;

use ieee.std_logic_1164.all;

entity g30_keyboard_to_LED is
	port(
		KEYS     : in  std_logic_vector(9 downto 0);
		SEGMENTS : out std_logic_vector(6 downto 0)
	);
end entity;

architecture arch of g30_keyboard_to_LED is
	signal CODE : std_logic_vector(6 downto 0);

	component g30_keyboard_encoder is
		port(
			KEYS       : in  std_logic_vector(63 downto 0);
			ASCII_CODE : out std_logic_vector(6 downto 0)
		);
	end component;

	component g30_7_segment_decoder
		port(
			ASCII_CODE : in  std_logic_vector(6 downto 0);
			SEGMENTS   : out std_logic_vector(6 downto 0)
		);
	end component;

begin
	Encoder : g30_keyboard_encoder
		port map(
			KEYS       => "00000000000000000000000000000000000000" & KEYS & "0000000000000000", -- Set the rest of the bits to '0'
			ASCII_CODE => CODE
		);

	Decoder : g30_7_segment_decoder
		port map(
			ASCII_CODE => CODE,
			SEGMENTS   => SEGMENTS
		);

end arch;
------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 3, 2016