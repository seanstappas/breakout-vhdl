-- Sean Stappas, Gabriel Chootong
-- Group 30
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/24/2016 19:09:09"
                                                            
-- Vhdl Test Bench template for design  :  g30_BlockerGame
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY g30_BlockerGame_vhd_tst IS
END g30_BlockerGame_vhd_tst;
ARCHITECTURE g30_BlockerGame_arch OF g30_BlockerGame_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BLOCK_COL : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CODE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ERROR : STD_LOGIC;
COMPONENT g30_BlockerGame
	PORT (
	BLOCK_COL : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	CODE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ERROR : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g30_BlockerGame
	PORT MAP (
-- list connections between master ports and signals
	BLOCK_COL => BLOCK_COL,
	CODE => CODE,
	ERROR => ERROR
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;
                                           
always : PROCESS
	variable i : integer := 1;
	type TEST_ARRAY is array(0 to 9) of integer;
	constant ARBITRARY_INPUT : TEST_ARRAY := (3,7,29,301,452,1502,12304,20433,30001,32000);
BEGIN
	--- test 16 valid input patterns (1 to 2^15)
	while i <= 32768 loop
		BLOCK_COL <= std_logic_vector(to_unsigned(i, BLOCK_COL'length));
		i := i * 2;
		wait for 10 ns;
	end loop;
	
	--- test 0-input (error condition)
	BLOCK_COL <= std_logic_vector(to_unsigned(0, BLOCK_COL'length));
	wait for 10 ns;
	
	--- test some arbitrary input (set in above array)
	i := 0;
	while i < 10 loop
		BLOCK_COL <= std_logic_vector(to_unsigned(ARBITRARY_INPUT(i), BLOCK_COL'length));
		i := i + 1;
		wait for 10 ns;
	end loop;
	
	wait;                                                     
END PROCESS always;

END g30_BlockerGame_arch;
