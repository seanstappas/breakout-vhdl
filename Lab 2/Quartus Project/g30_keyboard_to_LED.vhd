library ieee;

use ieee.std_logic_1164.all;

entity g30_keyboard_to_LED is
  port (
	KEYS : in std_logic_vector(63 downto 0);
	SEGMENTS : out std_logic_vector(6 downto 0)
  );
end entity;

architecture arch of g30_keyboard_to_LED is

	signal ASCII_CODE : std_logic_vector(6 downto 0);

	component g30_keyboard_encoder is
	port (
		KEYS : in std_logic_vector(63 downto 0);
		ASCII_CODE : out std_logic_vector(6 downto 0)
	);
	end component;

	component g30_7_segment_decoder 
		port (
			ASCII_CODE : in std_logic_vector(6 downto 0);
			SEGMENTS : out std_logic_vector(6 downto 0)
		);
	end component;

begin

	Encoder : g30_keyboard_encoder
		port map (
			KEYS => KEYS,
			ASCII_CODE => ASCII_CODE
		);

	Decoder : g30_7_segment_decoder
		port map (
			ASCII_CODE => ASCII_CODE,
			SEGMENTS => SEGMENTS
		);

end arch;