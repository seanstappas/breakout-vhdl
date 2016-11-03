------------------------------------------------------------------------------------------
--
-- Testbench of VGA Signal Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 2, Group 30
-- October 3, 2016
--
-- Tests the VGA signal generator by simply connecting a 50 MHz clock to the clock input.
--
-- Authors: Gabriel Chootong, Sean Stappas

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY g30_VGA_vhd_tst IS
END g30_VGA_vhd_tst;
ARCHITECTURE g30_VGA_arch OF g30_VGA_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL BLANKING : STD_LOGIC;
	SIGNAL clock    : STD_LOGIC;
	SIGNAL COLUMN   : unsigned(9 DOWNTO 0);
	SIGNAL HSYNC    : STD_LOGIC;
	SIGNAL ROW      : unsigned(9 DOWNTO 0);
	SIGNAL rst      : STD_LOGIC;
	SIGNAL VSYNC    : STD_LOGIC;
	COMPONENT g30_VGA
		PORT(
			BLANKING : OUT STD_LOGIC;
			clock    : IN  STD_LOGIC;
			COLUMN   : OUT unsigned(9 DOWNTO 0);
			HSYNC    : OUT STD_LOGIC;
			ROW      : OUT unsigned(9 DOWNTO 0);
			rst      : IN  STD_LOGIC;
			VSYNC    : OUT STD_LOGIC
		);
	END COMPONENT;
BEGIN
	i1 : g30_VGA
		PORT MAP(
			-- list connections between master ports and signals
			BLANKING => BLANKING,
			clock    => clock,
			COLUMN   => COLUMN,
			HSYNC    => HSYNC,
			ROW      => ROW,
			rst      => rst,
			VSYNC    => VSYNC
		);

	init : PROCESS
	-- variable declarations                                     
	BEGIN
		-- code that executes only once                      
		WAIT;
	END PROCESS init;

	always : PROCESS
	-- optional sensitivity list  

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 24, 2016                                
	-- (        )                                                 
	-- variable declarations                                      
	BEGIN
		L1 : loop
			clock <= '0';
			wait for 10 ns;
			clock <= '1';
			wait for 10 ns;
		end loop;
	END PROCESS always;
END g30_VGA_arch;
------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 3, 2016
