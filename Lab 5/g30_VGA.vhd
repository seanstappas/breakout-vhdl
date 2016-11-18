------------------------------------------------------------------------------------------
--
-- VGA Signal Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 3, Group 30
-- October 24, 2016
--
-- Generates a VGA signal.
--
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use lpm.lpm_components.all;

entity g30_VGA is
	port(clock    : in  std_logic;      -- 50MHz
		 rst      : in  std_logic;      -- reset
		 BLANKING : out std_logic;      -- blank display when zero
		 ROW      : out unsigned(9 downto 0); -- line 0 to 599
		 COLUMN   : out unsigned(9 downto 0); -- column 0 to 799
		 HSYNC    : out std_logic;      -- horizontal sync signal
		 VSYNC    : out std_logic);     -- vertical sync signal
end g30_VGA;

architecture VGA of g30_VGA is
	signal horizontal_count : std_logic_vector(10 downto 0);
	signal vertical_count : std_logic_vector(9 downto 0);
	signal horizontal_clear, vertical_clear, vertical_enable : std_logic;
	signal horizontal_value : integer range 0 to 1039;
	signal vertical_value : integer range 0 to 665;
begin
	-- Setup counters
	horizontal_counter : lpm_counter
		generic map(LPM_WIDTH => horizontal_count'length)
		port map(clock => clock, sclr => horizontal_clear, q => horizontal_count, aclr => rst);
		
	vertical_counter : lpm_counter
		generic map(LPM_WIDTH => vertical_count'length)
		port map(clock => clock, sclr => vertical_clear, q => vertical_count, cnt_en => vertical_enable, aclr => rst);

	horizontal_clear <=
		'1' when (horizontal_count = "10000001111") else -- Counts up to 1039
		'0';
	vertical_clear  <=
		'1' when (vertical_count = "1010011001") else -- Counts up to 665
		'0';
	vertical_enable <=
		'1' when horizontal_count = "10000001111" else -- Enabled when horizontal counter reaches maximum value (1039)
		'0';
	
	-- Assign ROW and COLUMN values
	vertical_value <= to_integer(unsigned(vertical_count));
	ROW <=
		"1001010111" when (vertical_value > 642) or (vertical_value < 43) else 
		to_unsigned(vertical_value - 43, ROW'length);

	horizontal_value <= to_integer(unsigned(horizontal_count));
	COLUMN <=
		"1100011111" when (horizontal_value > 975) or (horizontal_value < 176) else
		to_unsigned(horizontal_value - 176, COLUMN'length);

	-- Assign BLANKING, HSYNC and VSYNC
	BLANKING <=
		'0' when (vertical_value > 642) or (vertical_value < 43) or (horizontal_value > 975) or (horizontal_value < 176) else  -- Off-screen limits
		'1';
	HSYNC <=
		'0' when (horizontal_value < 120) else
		'1';
	VSYNC <=
		'0' when (vertical_value < 6) else
		'1';
end VGA;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 24, 2016