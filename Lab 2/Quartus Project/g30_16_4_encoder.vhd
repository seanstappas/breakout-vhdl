-- Sean Stappas, Gabriel Chootong
-- Group 30
library ieee;

use ieee.std_logic_1164.all;

entity g30_16_4_encoder is
	port (
		INPUTS : in std_logic_vector(15 downto 0);
		ERROR : out std_logic;
		CODE : out std_logic_vector(3 downto 0)
	);
end g30_16_4_encoder;

architecture encoder of g30_16_4_encoder is
signal ERROR_AND_CODE: std_logic_vector(4 downto 0);
begin
	ERROR_AND_CODE <=
	"00000" when INPUTS(0) = '1' else
	"00001" when INPUTS(1) = '1' else
	"00010" when INPUTS(2) = '1' else
	"00011" when INPUTS(3) = '1' else
	"00100" when INPUTS(4) = '1' else
	"00101" when INPUTS(5) = '1' else
	"00110" when INPUTS(6) = '1' else
	"00111" when INPUTS(7) = '1' else
	"01000" when INPUTS(8) = '1' else
	"01001" when INPUTS(9) = '1' else
	"01010" when INPUTS(10) = '1' else
	"01011" when INPUTS(11) = '1' else
	"01100" when INPUTS(12) = '1' else
	"01101" when INPUTS(13) = '1' else
	"01110" when INPUTS(14) = '1' else
	"01111" when INPUTS(15) = '1' else
	"10000";
	
	ERROR <= ERROR_AND_CODE(4);
	CODE <= ERROR_AND_CODE(3 downto 0);
	
end encoder;