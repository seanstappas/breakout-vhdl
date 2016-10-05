--
-- Testbench of g30_64_6_encoder
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong
-- Version 1.0
-- Author: Sean Stappas, Gabriel Chootong
-- Date: October 3, 2016

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;

ENTITY g30_64_6_encoder_vhd_tst IS
END g30_64_6_encoder_vhd_tst;
ARCHITECTURE g30_64_6_encoder_arch OF g30_64_6_encoder_vhd_tst IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL CODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL ERROR : STD_LOGIC;
	SIGNAL INPUTS : STD_LOGIC_VECTOR(63 DOWNTO 0);
	COMPONENT g30_64_6_encoder
		PORT (
			CODE : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			ERROR : OUT STD_LOGIC;
			INPUTS : IN STD_LOGIC_VECTOR(63 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	i1 : g30_64_6_encoder
	PORT MAP (
-- list connections between master ports and signals
		CODE => CODE,
		ERROR => ERROR,
		INPUTS => INPUTS
	);
	init : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
			  -- code that executes only once                      
	WAIT;                                                       
	END PROCESS init;
														  
	always : PROCESS
	BEGIN
		--- test 64 valid input patterns (bit at index 0, 1, 2 ... 62, 63)
		for i in 0 to 63 loop
			INPUTS <= (i => '1', others => '0');
			wait for 10 ns;
		end loop;
		
		--- test 0-input (error condition)
		INPUTS <= (63 downto 0 => '0');
		wait for 10 ns;
		
		--- test some arbitrary input
		INPUTS <= (63 => '1', 35 => '1', 21 => '1', 5 => '1', 2 => '1', others => '0');
		wait for 10 ns;
		INPUTS <= (63 => '1', 62 => '1', 61 => '1', 60 => '1', 59 => '1', others => '0');
		wait for 10 ns;
		INPUTS <= (40 => '1', 39 => '1', 38 => '1', 37 => '1', 36 => '1', others => '0');
		wait for 10 ns;
		INPUTS <= (30 => '1', 28 => '1', 25 => '1', 20 => '1', 18 => '1', others => '0');
		wait for 10 ns;
		INPUTS <= (10 => '1', 8 => '1', 6 => '1', 5 => '1', 1 => '1', others => '0');
		wait for 10 ns;
		
		wait;                                                     
	END PROCESS always;                 
END g30_64_6_encoder_arch;
