------------------------------------------------------------------------------------------
--
-- VGA Test Pattern Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 4, Group 30
-- November 7, 2016
--
-- Generates a VGA test pattern
-- 
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use lpm.lpm_components.all;

entity g30_VGA_Test_Pattern is
	port(clock   : in  std_logic;       -- 50MHz
		 rst     : in  std_logic;       -- reset
		 LIFE    : in  std_logic_vector(2 downto 0);
		 LEVEL   : in  std_logic_vector(2 downto 0);
		 R, G, B : out std_logic_vector(3 downto 0); -- colors
		 HSYNC   : out std_logic;       -- horizontal sync signal
		 VSYNC   : out std_logic);      -- vertical sync signal
end g30_VGA_Test_Pattern;

architecture test_pattern of g30_VGA_Test_Pattern is

	-- Begin Lab 4 component additions
	-- if pixel bit off, use rainbow values, else use r,b,g values from text generator.

	component g30_Text_Generator
		port(TEXT_ROW   : in  std_logic_vector(4 downto 0);
			 TEXT_COL   : in  std_logic_vector(5 downto 0);
			 LIFE       : in  std_logic_vector(2 downto 0);
			 LEVEL      : in  std_logic_vector(2 downto 0);
			 SCORE      : in  std_logic_vector(15 downto 0);
			 ASCII_CODE : out std_logic_vector(6 downto 0);
			 R, G, B    : out std_logic_vector(3 downto 0) -- colors
		);
	end component;

	component fontROM
		generic(
			addrWidth : integer := 11;
			dataWidth : integer := 8
		);
		port(
			clkA      : in  std_logic;
			char_code : in  std_logic_vector(6 downto 0); -- 7-bit ASCII character code
			font_row  : in  std_logic_vector(3 downto 0); -- 0-15 row address in single character
			font_col  : in  std_logic_vector(2 downto 0); -- 0-7 column address in single character
			font_bit  : out std_logic   -- pixel value at the given row and column for the selected character code
		);
	end component;

	component g30_Text_Address_Generator
		port(ROW      : in  unsigned(9 downto 0); -- line 0 to 599
			 COLUMN   : in  unsigned(9 downto 0); -- column 0 to 799
			 TEXT_ROW : out std_logic_vector(4 downto 0);
			 TEXT_COL : out std_logic_vector(5 downto 0);
			 FONT_ROW : out std_logic_vector(3 downto 0);
			 FONT_COL : out std_logic_vector(2 downto 0));
	end component;

	-- End Lab 4 component additions

	component g30_VGA
		port(clock    : in  std_logic;  -- 50MHz
			 rst      : in  std_logic;  -- reset
			 BLANKING : out std_logic;  -- blank display when zero
			 ROW      : out unsigned(9 downto 0); -- line 0 to 599
			 COLUMN   : out unsigned(9 downto 0); -- column 0 to 799
			 HSYNC    : out std_logic;  -- horizontal sync signal
			 VSYNC    : out std_logic);
	end component;
	signal BLANKING    : std_logic;
	signal ROW, COLUMN : unsigned(9 downto 0);

	-- Begin Lab 4 internal signal additions
	signal TEXT_ROW                                             : std_logic_vector(4 downto 0);
	signal TEXT_COL                                             : std_logic_vector(5 downto 0);
	signal SCORE                                                : std_logic_vector(15 downto 0);
	signal ASCII_CODE                                           : std_logic_vector(6 downto 0);
	signal R_Text_Generator, G_Text_Generator, B_Text_Generator : std_logic_vector(3 downto 0);

	signal char_code : std_logic_vector(6 downto 0);
	signal font_row  : std_logic_vector(3 downto 0);
	signal font_col  : std_logic_vector(2 downto 0);
	signal font_bit  : std_logic;
	
	signal counter_clock : std_logic;
	signal score_clock_count : std_logic_vector(23 downto 0);
-- End Lab 4 internal signal additions		 

	-- Added Registers
	signal old_font_row  : std_logic_vector(3 downto 0);
	signal old_font_col  : std_logic_vector(2 downto 0);

begin
	-- SCORE counter
	Score_clock_counter : lpm_counter
		generic map(LPM_WIDTH => 24)
		port map(clock => clock, q => score_clock_count);
		
	Score_counter : lpm_counter
		generic map(LPM_WIDTH => 16)
		port map(clock => counter_clock, q => SCORE);

	-- Begin Lab 4 component mapping
	VGA1 : g30_VGA port map(clock => clock, rst => rst, BLANKING => BLANKING, ROW => ROW, COLUMN => COLUMN, HSYNC => HSYNC, VSYNC => VSYNC);

	TEXT_GENERATOR1 : g30_Text_Generator port map(TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, LIFE => LIFE, LEVEL => LEVEL, SCORE => SCORE, ASCII_CODE => ASCII_CODE, R => R_Text_Generator, G => G_Text_Generator, B => B_Text_Generator);
	
	ROM1 : fontROM port map(clkA => clock, char_code => ASCII_CODE, font_row => old_font_row, font_col => old_font_col, font_bit => font_bit);

	TEXT_ADDRESS_GENERATOR1 : g30_Text_Address_Generator port map(ROW => ROW, COLUMN => COLUMN, TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, FONT_ROW => font_row, FONT_COL => font_col);
	-- End Lab 4 component mapping
	
	-- P1 process: if pixel bit off, use rainbow values, else use r,b,g values from text generator.
	P2 : process(clock)
	begin
		if (rising_edge(clock)) then
			old_font_row <= font_row;
			old_font_col <= font_col;
		
			if score_clock_count = x"FFFFFF" then
				counter_clock <= '1';
			else
				counter_clock <= '0';
			end if;
			
			if BLANKING = '1' then
				if font_bit = '0' then
					--map to rainbow values

					--RED 
					if (((COLUMN >= 0) AND (COLUMN <= 199)) OR ((COLUMN >= 400) AND (COLUMN <= 599))) AND TEXT_ROW /= "10010" then
						R <= "1111";
					else
						R <= "0000";
					end if;                 -- end if RED

					-- GREEN
					if (COLUMN >= 0) AND (COLUMN <= 399) AND TEXT_ROW /= "10010" then
						G <= "1111";
					else
						G <= "0000";
					end if;                 -- end if GREEN

					-- BLUE
					if (((COLUMN >= 0) AND (COLUMN <= 99)) OR ((COLUMN >= 200) AND (COLUMN <= 299)) OR ((COLUMN >= 400) AND (COLUMN <= 499)) OR ((COLUMN >= 600) AND (COLUMN <= 699))) AND TEXT_ROW /= "10010" then
						B <= "1111";
					else
						B <= "0000";
					end if;                 -- end if BLUE

				-- Condition FONT_BIT = 1
				else
					--map to r,g,b signals from text generator
					R <= R_Text_Generator;
					G <= G_Text_Generator;
					B <= B_Text_Generator;
				end if;                     -- end if font_bit
			end if;
		end if;                         -- end if rising_edge(clock)
	end process;

end test_pattern;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 7, 2016
		 