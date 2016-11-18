------------------------------------------------------------------------------------------
--
-- Testbench of VGA Test Pattern Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 4, Group 30
-- November 4, 2016
--
-- Tests the VGA test pattern generator by simply connecting a 50 MHz clock to the clock input.
--
-- Authors: Gabriel Chootong, Sean Stappas

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY g30_Text_Address_Generator_vhd_tst IS
END g30_Text_Address_Generator_vhd_tst;
ARCHITECTURE g30_Text_Address_Generator_arch OF g30_Text_Address_Generator_vhd_tst IS                                        
	SIGNAL ROW      : unsigned(9 downto 0); -- line 0 to 599
	SIGNAL COLUMN   : unsigned(9 downto 0); -- column 0 to 799
	SIGNAL TEXT_ROW : std_logic_vector(4 downto 0);
	SIGNAL TEXT_COL : std_logic_vector(5 downto 0);
	SIGNAL FONT_ROW : std_logic_vector(3 downto 0);
	SIGNAL FONT_COL : std_logic_vector(2 downto 0);
	SIGNAL CLOCK : std_logic;
	SIGNAL RST : std_logic;
	SIGNAL BLANKING : STD_LOGIC;
	SIGNAL HSYNC    : STD_LOGIC;
	SIGNAL VSYNC    : STD_LOGIC;
	COMPONENT g30_Text_Address_Generator
		PORT(
			ROW      : in  unsigned(9 downto 0); -- line 0 to 599
			COLUMN   : in  unsigned(9 downto 0); -- column 0 to 799
		 	TEXT_ROW : out std_logic_vector(4 downto 0);
		 	TEXT_COL : out std_logic_vector(5 downto 0);
			FONT_ROW : out std_logic_vector(3 downto 0);
			FONT_COL : out std_logic_vector(2 downto 0)
		);
	END COMPONENT;
	COMPONENT g30_VGA
		PORT(CLOCK    : in  std_logic;  -- 50MHz
			 RST      : in  std_logic;  -- reset
			 BLANKING : out std_logic;  -- blank display when zero
			 ROW      : out unsigned(9 downto 0); -- line 0 to 599
			 COLUMN   : out unsigned(9 downto 0); -- column 0 to 799
			 HSYNC    : out std_logic;  -- horizontal sync signal
			 VSYNC    : out std_logic); -- vertical sync signal
	END COMPONENT;
BEGIN
	i1 : g30_Text_Address_Generator
		PORT MAP(
			ROW      => ROW,
			COLUMN   => COLUMN,
			TEXT_ROW => TEXT_ROW,
			TEXT_COL => TEXT_COL,
			FONT_ROW => FONT_ROW,
			FONT_COL => FONT_COL
		);
	i2 : g30_VGA
		PORT MAP(
			BLANKING => BLANKING,
			clock    => clock,
			COLUMN   => COLUMN,
			HSYNC    => HSYNC,
			ROW      => ROW,
			rst      => rst,
			VSYNC    => VSYNC
		);

	always : PROCESS                                
	BEGIN
		L1 : loop
			CLOCK <= '0';
			wait for 10 ns;
			CLOCK <= '1';
			wait for 10 ns;
		end loop;
	END PROCESS always;
END g30_Text_Address_Generator_arch;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 4, 2016
