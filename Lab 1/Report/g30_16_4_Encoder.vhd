-- 16-4 Encoder
--
-- ECSE 323: Lab 1, Group 30
-- Authors: Gabriel Chootong, Sean Stappas
-- September 26, 2016
--
-- The purpose of this component is to output the index of the least significant bit that is set to "1" of a 16-bit signal.
-- This component has two output signals, a 4-bit signal called "CODE" and a 1-bit signal called "ERROR".
-- The index will be represented by the "CODE" signal.
-- Moreover, if all the 16 bits are set to "0", the "ERROR" signal is set to "1".


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;

entity g30_16_4_Encoder is
	port(BLOCK_COL : in  std_logic_vector(15 downto 0);
		 ERROR     : out std_logic;
		 CODE      : out std_logic_vector(3 downto 0));

end g30_16_4_Encoder;

architecture implementation1 of g30_16_4_Encoder is
	-- Signal "C" is an internal signal used to carry both of the two output signals "CODE" and "ERROR" in a single signal.
	-- This signal is used in order to satisfy the design constraint of one conditional assignment.
	-- The bits 0 to 3 of the "C" signal correspond to the "CODE" output signal, and the bit 4 carries the value of the "ERROR" signal.
	signal C : std_logic_vector(4 downto 0);
begin
	C <= "00000" when BLOCK_COL(0) = '1' else
		 "00001" when BLOCK_COL(1) = '1' else
		 "00010" when BLOCK_COL(2) = '1' else
		 "00011" when BLOCK_COL(3) = '1' else
		 "00100" when BLOCK_COL(4) = '1' else
		 "00101" when BLOCK_COL(5) = '1' else
		 "00110" when BLOCK_COL(6) = '1' else
		 "00111" when BLOCK_COL(7) = '1' else
		 "01000" when BLOCK_COL(8) = '1' else
		 "01001" when BLOCK_COL(9) = '1' else
		 "01010" when BLOCK_COL(10) = '1' else
		 "01011" when BLOCK_COL(11) = '1' else
		 "01100" when BLOCK_COL(12) = '1' else
		 "01101" when BLOCK_COL(13) = '1' else
		 "01110" when BLOCK_COL(14) = '1' else
		 "01111" when BLOCK_COL(15) = '1' else
		 "10000";	-- our design choice to output "0000" for the code signal when the "ERROR" signal must be set to "1".
	CODE  <= C(3 downto 0);
	ERROR <= C(4);

end implementation1;