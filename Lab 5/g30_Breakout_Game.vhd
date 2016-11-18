------------------------------------------------------------------------------------------
--
-- Breakout Game
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 5, Group 30
-- November 17, 2016
--
-- Generates a VGA test pattern
-- 
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use lpm.lpm_components.all;

entity g30_Breakout_Game is
	port(clock   : in  std_logic;       -- 50MHz
		 rst     : in  std_logic;       -- reset
		 LIFE    : in  std_logic_vector(2 downto 0);
		 LEVEL   : in  std_logic_vector(2 downto 0);
		 R, G, B : out std_logic_vector(3 downto 0); -- colors
		 HSYNC   : out std_logic;       -- horizontal sync signal
		 VSYNC   : out std_logic);      -- vertical sync signal
end g30_Breakout_Game;

architecture test_pattern of g30_Breakout_Game is

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
	
	signal slow_score_clock : std_logic;
	signal slow_score_clock_count : std_logic_vector(23 downto 0);
	
	signal slow_ball_clock : std_logic;
	signal slow_ball_clock_count : std_logic_vector(15 downto 0);

	-- Added Registers
	signal old_font_row  : std_logic_vector(3 downto 0);
	signal old_font_col  : std_logic_vector(2 downto 0);

	signal RGB : std_logic_vector(11 downto 0);
	signal ball_row : std_logic_vector(9 downto 0); -- 0 to 599
	signal ball_col : std_logic_vector(9 downto 0); -- 0 to 799

	signal ball_row_value : unsigned(9 downto 0);
	signal ball_col_value : unsigned(9 downto 0);

	signal ball_row_increment : std_logic := '1';
	signal ball_col_increment : std_logic := '1';
	
	signal ball_load : std_logic := '0';
	signal ball_row_load : std_logic_vector(9 downto 0) := std_logic_vector(to_unsigned(500, 10));
	signal ball_col_load : std_logic_vector(9 downto 0) := std_logic_vector(to_unsigned(400, 10));
	
	signal not_rst : std_logic;
	
	signal RGB_text : std_logic_vector(11 downto 0);
	
	signal blocks : std_logic_vector(59 downto 0) := (others => '1');
	
	signal not_ball_row_increment : std_logic;
	signal not_ball_col_increment : std_logic;
	
	signal level_complete : boolean;

begin
	ball_row_value <= unsigned(ball_row);
	ball_col_value <= unsigned(ball_col);
	
	not_rst <= not rst;
	not_ball_row_increment <= not ball_row_increment;
	not_ball_col_increment <= not ball_col_increment;
	
	level_complete <= (blocks = x"FFFFFFFFFFFFFFF");
	
	-- RGB values
	RGB_text <= R_Text_Generator & G_Text_Generator & B_Text_Generator;
	R <= RGB(11 downto 8);
	G <= RGB(7 downto 4);
	B <= RGB(3 downto 0);
	
	-- Component Mapping
	VGA1 : g30_VGA port map(clock => clock, rst => '0', BLANKING => BLANKING, ROW => ROW, COLUMN => COLUMN, HSYNC => HSYNC, VSYNC => VSYNC);
	TEXT_GENERATOR1 : g30_Text_Generator port map(TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, LIFE => LIFE, LEVEL => LEVEL, SCORE => SCORE, ASCII_CODE => ASCII_CODE, R => R_Text_Generator, G => G_Text_Generator, B => B_Text_Generator);
	ROM1 : fontROM port map(clkA => clock, char_code => ASCII_CODE, font_row => old_font_row, font_col => old_font_col, font_bit => font_bit);
	TEXT_ADDRESS_GENERATOR1 : g30_Text_Address_Generator port map(ROW => ROW, COLUMN => COLUMN, TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, FONT_ROW => font_row, FONT_COL => font_col);

	-- Counters
	Slow_score_clock_counter : lpm_counter
		generic map(LPM_WIDTH => 24)
		port map(clock => clock, q => slow_score_clock_count);
		
	Slow_ball_clock_counter : lpm_counter
		generic map(LPM_WIDTH => 16)
		port map(clock => clock, q => slow_ball_clock_count);
		
	Ball_row_counter : lpm_counter
		generic map(LPM_WIDTH => 10)
		port map(clock => slow_ball_clock, q => ball_row, updown => ball_row_increment, aload => not_rst, data => std_logic_vector(to_unsigned(500, 10)));
		
	Ball_col_counter : lpm_counter
		generic map(LPM_WIDTH => 10)
		port map(clock => slow_ball_clock, q => ball_col, updown => ball_col_increment, aload => not_rst, data => std_logic_vector(to_unsigned(400, 10)));

	Score_counter : lpm_counter
		generic map(LPM_WIDTH => 16)
		port map(clock => slow_score_clock, q => SCORE);

	P2 : process(clock)
		variable block_count : integer;
		variable block_ball_count : integer;
	begin
		if (rising_edge(clock)) then
			-- Font registers
			old_font_row <= font_row;
			old_font_col <= font_col;
		
			-- Slow clocks
			if slow_score_clock_count = x"FFFFFF" then
				slow_score_clock <= '1';
			else
				slow_score_clock <= '0';
			end if;
		
			if slow_ball_clock_count = x"FFFF" then
				slow_ball_clock <= '1';
			else
				slow_ball_clock <= '0';
			end if;

			-- Reset conditions
			if not_rst = '1' then
				ball_row_increment <= '0';
				ball_col_increment <= '0';
				blocks <= (others => '1');
			end if;

			-- Ball collision detection
			if ball_col_value < 16 then -- Left wall
				ball_col_increment <= '1';
			elsif ball_col_value >= 784 then -- Right wall
				ball_col_increment <= '0';
			elsif ball_row_value < 16 then -- Top wall
				ball_row_increment <= '1';
			elsif ball_row_value >= 584 then -- Bottom wall (for testing)
				ball_row_increment <= '0';
			elsif ball_row_value < 176 then  -- Blocks area
				block_ball_count := to_integer(((ball_row_value - 16) / 32) * 12  + (ball_col_value - 16) / 64);
				if blocks(block_ball_count) = '1' then -- Intact block
					blocks(block_ball_count) <= '0';
					if (ball_row_value - 16) mod 32 /= 0 then -- Bottom/Top of block
						ball_row_increment <= not_ball_row_increment;
					elsif (ball_col_value - 16) mod 64 /= 0 then -- Left/Right of block
						ball_col_increment <= not_ball_col_increment;
					end if;
				end if;
			end if;
			
			 -- Drawing colors
			if BLANKING = '1' then
				if font_bit = '0' then
					if TEXT_ROW = "10010" then
						RGB <= x"000";
					elsif (COLUMN < 16 or COLUMN >= 784 or ROW < 16) then -- left, right and top walls
						RGB <= x"0FF";
					elsif (COLUMN >= ball_col_value and COLUMN < (ball_col_value + 8)) and
				       	(ROW    >= ball_row_value and ROW    < (ball_row_value + 8)) then -- Ball coloring
						RGB <= x"FFF";
					elsif ROW < 176 and -- Inside block area
					      ((ROW - 16) mod 32 /= 0 and (COLUMN - 16) mod 64 /= 0) then -- Not on border
						block_count := to_integer(((ROW - 16) / 32) * 12  + (COLUMN - 16) / 64);
						if blocks(block_count) = '1' then -- Not on block border
							RGB <= x"00F";
						else
							RGB <= x"000";
						end if;
					else
						RGB <= x"000";
					end if;
				else
					-- map to r,g,b signals from text generator
					RGB <= RGB_text;
				end if;
			else
				RGB <= x"000";
			end if;
		end if;
	end process;
end test_pattern;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 17, 2016
		 