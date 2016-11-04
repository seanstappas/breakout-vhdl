------------------------------------------------------------------------------------------
--
-- Testbench of VGA Test Pattern Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 2, Group 30
-- October 30, 2016
--
-- Tests the VGA test pattern generator by simply connecting a 50 MHz clock to the clock input.
--
-- Authors: Gabriel Chootong, Sean Stappas

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g30_VGA_Test_Pattern_vhd_tst IS
END g30_VGA_Test_Pattern_vhd_tst;
ARCHITECTURE g30_VGA_Test_Pattern_arch OF g30_VGA_Test_Pattern_vhd_tst IS
	SIGNAL B     : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL clock : STD_LOGIC;
	SIGNAL G     : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL HSYNC : STD_LOGIC;
	SIGNAL R     : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL rst   : STD_LOGIC;
	SIGNAL VSYNC : STD_LOGIC;
	COMPONENT g30_VGA_Test_Pattern
		PORT(
			B     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			clock : IN  STD_LOGIC;
			G     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			HSYNC : OUT STD_LOGIC;
			R     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			rst   : IN  STD_LOGIC;
			VSYNC : OUT STD_LOGIC
		);
	END COMPONENT;
BEGIN
	i1 : g30_VGA_Test_Pattern
		PORT MAP(
			B     => B,
			clock => clock,
			G     => G,
			HSYNC => HSYNC,
			R     => R,
			rst   => rst,
			VSYNC => VSYNC
		);
	always : PROCESS
	BEGIN
		L1 : loop
			clock <= '0';
			wait for 10 ns;
			clock <= '1';
			wait for 10 ns;
		end loop;

	END PROCESS always;
END g30_VGA_Test_Pattern_arch;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  October 30, 2016
