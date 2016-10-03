-- Sean Stappas, Gabriel Chootong
-- Group 30
library ieee;

use ieee.std_logic_1164.all;

entity g30_16_4_encoder is
	port (
		INPUTS_16 : in std_logic_vector(15 downto 0);
		ERROR_16 : out std_logic;
		CODE_16 : out std_logic_vector(3 downto 0)
	);
end g30_16_4_encoder;

architecture encoder of g30_16_4_encoder is
signal ERROR_AND_CODE: std_logic_vector(4 downto 0);
begin
	ERROR_AND_CODE <=
	"00000" when INPUTS_16(0) = '1' else
	"00001" when INPUTS_16(1) = '1' else
	"00010" when INPUTS_16(2) = '1' else
	"00011" when INPUTS_16(3) = '1' else
	"00100" when INPUTS_16(4) = '1' else
	"00101" when INPUTS_16(5) = '1' else
	"00110" when INPUTS_16(6) = '1' else
	"00111" when INPUTS_16(7) = '1' else
	"01000" when INPUTS_16(8) = '1' else
	"01001" when INPUTS_16(9) = '1' else
	"01010" when INPUTS_16(10) = '1' else
	"01011" when INPUTS_16(11) = '1' else
	"01100" when INPUTS_16(12) = '1' else
	"01101" when INPUTS_16(13) = '1' else
	"01110" when INPUTS_16(14) = '1' else
	"01111" when INPUTS_16(15) = '1' else
	"10000";
	
	ERROR_16 <= ERROR_AND_CODE(4);
	CODE_16 <= ERROR_AND_CODE(3 downto 0);
	
end encoder;