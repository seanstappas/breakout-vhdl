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
-- Generated on "10/05/2016 00:28:15"
                                                            
-- Vhdl Test Bench template for design  :  g30_keyboard_to_LED
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 
--
-- entity name: g30_keyboard_to_LED_vhd_tst
--
-- Copyright (C) 2016 Gabriel Chootong, Sean Stappas
-- Version 1.0
-- Authors: Gabriel Chootong, Sean Stappas
-- Date: October 4, 2016
--
-- This testbench's purpose is to test the 7-segment decoder circuit

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.ALL;

ENTITY g30_keyboard_to_LED_vhd_tst IS
END g30_keyboard_to_LED_vhd_tst;
ARCHITECTURE g30_keyboard_to_LED_arch OF g30_keyboard_to_LED_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL KEYS : std_logic_vector(63 downto 0);
SIGNAL SEGMENTS : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g30_keyboard_to_LED
	PORT (
	KEYS : IN std_logic_vector(63 downto 0);
	SEGMENTS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g30_keyboard_to_LED
	PORT MAP (
-- list connections between master ports and signals
	KEYS => KEYS,
	SEGMENTS => SEGMENTS
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                
		for i in 0 to 63 loop  -- loop through all possibilities at least once (since input has 7 bits, there are 128 possibilities)
			KEYS <= (i => '1', others => '0'); -- increment signal by one each time.
			wait for 10 ns;     
		end loop;                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g30_keyboard_to_LED_arch;
