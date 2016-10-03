--
-- entity name: g30_64_6_encoder
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong
-- Version 1.0
-- Authors: Sean Stappas, Gabriel Chootong
-- Date: October 3, 2016

library ieee;

use ieee.std_logic_1164.all;

entity g30_64_6_encoder is
	port (
		INPUTS : in std_logic_vector(63 downto 0);
		CODE : out std_logic_vector(5 downto 0);
		ERROR : out std_logic
	);
end g30_64_6_encoder;

architecture encoder of g30_64_6_encoder is
	signal ALL_CODES: std_logic_vector(15 downto 0);
	signal ALL_ERRORS: std_logic_vector(3 downto 0);
	component g30_16_4_encoder 
		port (
			INPUTS_16 : in std_logic_vector(15 downto 0);
			ERROR_16 : out std_logic;
			CODE_16 : out std_logic_vector(3 downto 0)
		);
	end component;
begin
	Encoder3 : g30_16_4_encoder
		port map(
			INPUTS_16 => INPUTS(63 downto 48),
			ERROR_16 => ALL_ERRORS(3),
			CODE_16 => ALL_CODES(15 downto 12)
		);
	Encoder2 : g30_16_4_encoder
		port map(
			INPUTS_16 => INPUTS(47 downto 32),
			ERROR_16 => ALL_ERRORS(2),
			CODE_16 => ALL_CODES(11 downto 8)
		);
	Encoder1 : g30_16_4_encoder
		port map(
			INPUTS_16 => INPUTS(31 downto 16),
			ERROR_16 => ALL_ERRORS(1),
			CODE_16 => ALL_CODES(7 downto 4)
		);
	Encoder0 : g30_16_4_encoder
		port map(
			INPUTS_16 => INPUTS(15 downto 0),
			ERROR_16 => ALL_ERRORS(0),
			CODE_16 => ALL_CODES(3 downto 0)
		);
		
	CODE <= 
		"00" & ALL_CODES(3 downto 0)   when ALL_ERRORS(0) = '0' else
		"01" & ALL_CODES(7 downto 4)   when ALL_ERRORS(1) = '0' else
		"10" & ALL_CODES(11 downto 8)  when ALL_ERRORS(2) = '0' else
		"11" & ALL_CODES(15 downto 12) when ALL_ERRORS(3) = '0' else
		"000000";

	ERROR <=
		'1' when ALL_ERRORS = "1111" else
	 	'0';
end encoder;