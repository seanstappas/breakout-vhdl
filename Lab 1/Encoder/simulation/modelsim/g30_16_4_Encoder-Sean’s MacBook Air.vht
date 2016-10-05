-- Sean Stappas, Gabriel Chootong
-- Group 30

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY g30_16_4_Encoder_vhd_tst IS
END g30_16_4_Encoder_vhd_tst;
ARCHITECTURE g30_16_4_Encoder_arch OF g30_16_4_Encoder_vhd_tst IS
	SIGNAL BLOCK_COL : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL CODE      : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ERROR     : STD_LOGIC;
	COMPONENT g30_16_4_Encoder
		PORT(
			BLOCK_COL : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			CODE      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			ERROR     : OUT STD_LOGIC
		);
	END COMPONENT;
BEGIN
	i1 : g30_16_4_Encoder
		PORT MAP(
			BLOCK_COL => BLOCK_COL,
			CODE      => CODE,
			ERROR     => ERROR
		);
	init : PROCESS                                 
	BEGIN                    
		WAIT;
	END PROCESS init;

	always : PROCESS
		type TEST_ARRAY is array (0 to 9) of integer;
		constant ARBITRARY_INPUT : TEST_ARRAY := (3, 7, 29, 301, 452, 1502, 12304, 20433, 30001, 32000);
	BEGIN
		--- test 16 valid input patterns (1 to 2^15)
		for i in 0 to 15 loop
			BLOCK_COL <= (i => '1', others => '0');
			wait for 10 ns;
		end loop;

		--- test 0-input (error condition)
		BLOCK_COL <= (15 downto 0 => '0');
		wait for 10 ns;

		--- test some arbitrary input (set in above array)
		for i in 0 to 9 loop
			BLOCK_COL <= std_logic_vector(to_unsigned(ARBITRARY_INPUT(i), BLOCK_COL'length));
			wait for 10 ns;
		end loop;

		wait;
	END PROCESS always;
END g30_16_4_Encoder_arch;
