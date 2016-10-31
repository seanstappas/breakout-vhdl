------------------------------------------------------------------------------------------
--
-- VGA Test Pattern Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 3, Group 30
-- October 30, 2016
--
-- Generates a VGA test pattern
-- 
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use lpm.lpm_components.all;

entity g30_VGA_Test_Pattern is
port( clock : in std_logic; -- 50MHz
		rst   : in std_logic; -- reset
		R,G,B : out std_logic_vector(3 downto 0); -- colors
		HSYNC : out std_logic; -- horizontal sync signal
		VSYNC : out std_logic ); -- vertical sync signal
end g30_VGA_Test_Pattern;		

architecture test_pattern of g30_VGA_Test_Pattern is

component g30_VGA
port(  clock    : in  std_logic;      -- 50MHz
		 rst      : in  std_logic;      -- reset
		 BLANKING : out std_logic;      -- blank display when zero
		 ROW      : out unsigned(9 downto 0); -- line 0 to 599
		 COLUMN   : out unsigned(9 downto 0); -- column 0 to 799
		 HSYNC    : out std_logic;      -- horizontal sync signal
		 VSYNC    : out std_logic);
end component;
signal BLANKING : std_logic;
signal ROW, COLUMN : unsigned(9 downto 0);
		 
begin 
VGA1: g30_VGA port map(clock => clock, rst => rst, BLANKING => BLANKING, ROW => ROW, COLUMN => COLUMN, HSYNC => HSYNC, VSYNC => VSYNC);

R <= 
	"1111" when ( (COLUMN  >= 0) AND (COLUMN <= 199) ) else -- white and yellow
	"1111" when ( (COLUMN >= 400) AND (COLUMN <= 599) ) else -- purple and red
	"0000";-- right now its always on this condition. 
	
G <= 
	"1111" when ( (COLUMN >= 0) AND (COLUMN <= 399) ) else --white, yellow, light blue, green
	"0000";
	
B <= 
	"1111" when ( (COLUMN >= 0) AND (COLUMN <= 99) ) else -- white 
	"1111" when ( (COLUMN >= 200) AND (COLUMN <= 299) ) else -- light blue
	"1111" when ( (COLUMN >= 400) AND (COLUMN <= 499) ) else -- purple
	"1111" when ( (COLUMN >= 600) AND (COLUMN <= 699) ) else -- blue
	"0000";

end test_pattern;	
		 