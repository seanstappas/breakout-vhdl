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
                                                            
-- Vhdl Test Bench template for design  :  g30_7_segment_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 
--
-- entity name: g30_7_segment_decoder_vhd_tst
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

ENTITY g30_7_segment_decoder_vhd_tst IS
END g30_7_segment_decoder_vhd_tst;
ARCHITECTURE g30_7_segment_decoder_arch OF g30_7_segment_decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL asci_code : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g30_7_segment_decoder
	PORT (
	asci_code : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g30_7_segment_decoder
	PORT MAP (
-- list connections between master ports and signals
	asci_code => asci_code,
	segments => segments
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
		
		asci_code <= "0000000"; -- first value of input code
		wait for 10 ns;
		
		for i in 0 to 127 loop  -- loop through all possibilities at least once (since input has 7 bits, there are 128 possibilities)
			asci_code <= std_logic_vector(unsigned(asci_code) + 1); -- increment signal by one each time.
			wait for 10 ns;     
		end loop;                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g30_7_segment_decoder_arch;
