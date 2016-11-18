------------------------------------------------------------------------------------------
--
-- Text Address Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 4, Group 30
-- November 3, 2016
--
-- Determines the character to be displayed (TEXT_ROW, TEXT_COL) and location of the pixel inside that character
-- (FONT_ROW, FONT_COL) based on the ROW and COLUMN values from g30_VGA.
--
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g30_Text_Address_Generator is
	port(ROW      : in unsigned(9 downto 0); -- line 0 to 599
		 COLUMN   : in unsigned(9 downto 0); -- column 0 to 799
		 TEXT_ROW : out std_logic_vector(4 downto 0);
		 TEXT_COL : out std_logic_vector(5 downto 0);
		 FONT_ROW : out std_logic_vector(3 downto 0);
		 FONT_COL : out std_logic_vector(2 downto 0));
end g30_Text_Address_Generator;

architecture arch of g30_Text_Address_Generator is
begin
	TEXT_ROW <= std_logic_vector(resize(ROW/32, 5));
	TEXT_COL <= std_logic_vector(resize(COLUMN/16, 6));
	FONT_ROW <= std_logic_vector(resize(ROW/2, 4));
	FONT_COL <= std_logic_vector(resize(COLUMN/2, 3));
end arch;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 3, 2016