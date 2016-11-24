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
	port(clock        : in  std_logic;  -- 50MHz
		 rst          : in  std_logic;  -- reset
		 PADDLE_LEFT  : in  std_logic;
		 PADDLE_RIGHT : in  std_logic;
		 test : in  std_logic;
		 R, G, B      : out std_logic_vector(3 downto 0); -- colors
		 HSYNC        : out std_logic;  -- horizontal sync signal
		 VSYNC        : out std_logic); -- vertical sync signal
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

	-- Display signals
	signal BLANKING    : std_logic;
	signal ROW, COLUMN : unsigned(9 downto 0);
	signal TEXT_ROW    : std_logic_vector(4 downto 0);
	signal TEXT_COL    : std_logic_vector(5 downto 0);
	signal ASCII_CODE  : std_logic_vector(6 downto 0);

	-- Font control
	signal font_row     : std_logic_vector(3 downto 0);
	signal font_col     : std_logic_vector(2 downto 0);
	signal font_bit     : std_logic;
	signal old_font_row : std_logic_vector(3 downto 0);
	signal old_font_col : std_logic_vector(2 downto 0);

	-- RGB signals
	signal RGB                                                  : std_logic_vector(11 downto 0);
	signal R_Text_Generator, G_Text_Generator, B_Text_Generator : std_logic_vector(3 downto 0);
	signal RGB_text                                             : std_logic_vector(11 downto 0);

	-- Ball
	signal slow_ball_clock_reset : std_logic;
	signal slow_ball_clock       : std_logic;
	signal slow_ball_clock_count : std_logic_vector(19 downto 0);
	signal ball_row              : std_logic_vector(9 downto 0); -- 0 to 599
	signal ball_col              : std_logic_vector(9 downto 0); -- 0 to 799
	signal ball_row_value        : unsigned(9 downto 0);
	signal ball_col_value        : unsigned(9 downto 0);
	signal ball_row_increment    : std_logic;
	signal ball_col_increment    : std_logic;

	-- Blocks
	signal blocks : std_logic_vector(59 downto 0) := (others => '1');

	-- Paddle
	signal paddle_col              : std_logic_vector(9 downto 0); -- 0 to 799
	signal paddle_row_value        : unsigned(9 downto 0);
	signal paddle_col_value        : unsigned(9 downto 0);
	signal slow_paddle_clock_count : std_logic_vector(15 downto 0);
	signal slow_paddle_clock       : std_logic;
	signal paddle_inside_borders   : std_logic := '1';

	-- Score, life and level
	signal SCORE       : std_logic_vector(15 downto 0);
	signal score_bonus : unsigned(15 downto 0)        := to_unsigned(1, 16);
	signal LIFE        : std_logic_vector(2 downto 0) := std_logic_vector(to_unsigned(5, 3));
	signal LEVEL       : std_logic_vector(2 downto 0) := std_logic_vector(to_unsigned(1, 3));

	-- Control signals
	signal start       : std_logic;
	signal async_reset : std_logic;
	signal paddle_ball_reset  : std_logic;
	signal game_reset  : std_logic;
	
	-- Colour control
	type std_logic_vector_array12 is array (0 to 6) of std_logic_vector(11 downto 0);
	signal LEVEL_COLOURS : std_logic_vector_array12 := (x"00F", x"0F0", x"F00", x"F0F", x"0FF", x"FFF", x"FF0");
	
	-- Ball speed control
	type std_logic_vector_array20 is array (0 to 6) of std_logic_vector(19 downto 0);
	signal LEVEL_MAX_SLOW_CLOCK_COUNTS : std_logic_vector_array20 := (x"1FFFF", x"1FFF0", x"1FF00", x"1F000", x"10000", x"0FFF0", x"0FF00");

begin
	ball_row_value <= unsigned(ball_row);
	ball_col_value <= unsigned(ball_col);

	paddle_row_value <= to_unsigned(552, 10);
	paddle_col_value <= unsigned(paddle_col);

	async_reset <= not rst;

	-- RGB values
	RGB_text <= R_Text_Generator & G_Text_Generator & B_Text_Generator;
	R        <= RGB(11 downto 8);
	G        <= RGB(7 downto 4);
	B        <= RGB(3 downto 0);

	-- Component Mapping
	VGA1 : g30_VGA port map(clock => clock, rst => '0', BLANKING => BLANKING, ROW => ROW, COLUMN => COLUMN, HSYNC => HSYNC, VSYNC => VSYNC);
	TEXT_GENERATOR1 : g30_Text_Generator port map(TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, LIFE => LIFE, LEVEL => LEVEL, SCORE => SCORE, ASCII_CODE => ASCII_CODE, R => R_Text_Generator, G => G_Text_Generator, B => B_Text_Generator);
	ROM1 : fontROM port map(clkA => clock, char_code => ASCII_CODE, font_row => old_font_row, font_col => old_font_col, font_bit => font_bit);
	TEXT_ADDRESS_GENERATOR1 : g30_Text_Address_Generator port map(ROW => ROW, COLUMN => COLUMN, TEXT_ROW => TEXT_ROW, TEXT_COL => TEXT_COL, FONT_ROW => font_row, FONT_COL => font_col);

	-- Counters
	Slow_ball_clock_counter : lpm_counter
		generic map(LPM_WIDTH => slow_ball_clock_count'length)
		port map(
			clock => clock,
			q     => slow_ball_clock_count,
			aclr  => slow_ball_clock_reset);

	Ball_row_counter : lpm_counter
		generic map(LPM_WIDTH => ball_row'length)
		port map(
			cnt_en => start,
			clock  => slow_ball_clock,
			q      => ball_row,
			updown => ball_row_increment,
			aload  => async_reset or paddle_ball_reset,
			data => std_logic_vector(to_unsigned(500, ball_row'length)));

	Ball_col_counter : lpm_counter
		generic map(LPM_WIDTH => ball_col'length)
		port map(
			cnt_en => start,
			clock  => slow_ball_clock,
			q      => ball_col,
			updown => ball_col_increment,
			aload  => async_reset or paddle_ball_reset,
			data => std_logic_vector(to_unsigned(392, ball_col'length)));

	-- Added Paddle Counter for Movement		
	Slow_paddle_col_counter : lpm_counter
		generic map(LPM_WIDTH => slow_paddle_clock_count'length)
		port map(
			cnt_en => (PADDLE_LEFT xor PADDLE_RIGHT) and paddle_inside_borders,
			clock  => clock,
			q      => slow_paddle_clock_count);

	Paddle_col_counter : lpm_counter
		generic map(LPM_WIDTH => paddle_col'length)
		port map(
			clock  => slow_paddle_clock,
			q      => paddle_col,
			updown => PADDLE_LEFT,
			aload  => async_reset or paddle_ball_reset,
			data => std_logic_vector(to_unsigned(336, paddle_col'length)));

	P2 : process(clock)
		variable block_count      : integer;
		variable block_ball_count : integer;
		variable col_offset       : unsigned(9 downto 0);
		variable row_offset       : unsigned(9 downto 0);
	begin
		if (rising_edge(clock)) then
			if PADDLE_LEFT = '0' or PADDLE_RIGHT = '0' then
				start <= '1';
			end if;
			
			-- Paddle screen borders
			if (paddle_col_value >= 655 and PADDLE_RIGHT = '0') or (paddle_col_value <= 17 and PADDLE_LEFT = '0') then
				paddle_inside_borders <= '0';
			else
				paddle_inside_borders <= '1';
			end if;
				
			if slow_ball_clock_reset = '1' then
				slow_ball_clock_reset <= '0';
			end if;

			if paddle_ball_reset = '1' then
				paddle_ball_reset <= '0';
			end if;

			if unsigned(blocks) = 0 then
				LEVEL              <= std_logic_vector(unsigned(LEVEL) + 1);
				paddle_ball_reset  <= '1';
				blocks             <= (others => '1');
				ball_row_increment <= '0';
				ball_col_increment <= '0';
				score_bonus        <= to_unsigned(1, score_bonus'length);
			end if;

			-- Font registers
			old_font_row <= font_row;
			old_font_col <= font_col;

			if slow_ball_clock_count = LEVEL_MAX_SLOW_CLOCK_COUNTS(to_integer(unsigned(LEVEL)) - 1) then
				slow_ball_clock <= '1';
				slow_ball_clock_reset <= '1';
			else
				slow_ball_clock <= '0';
			end if;

			-- Continuous paddle movement
			if slow_paddle_clock_count = (slow_paddle_clock_count'range => '1') then
				slow_paddle_clock <= '1';
			else
				slow_paddle_clock <= '0';
			end if;
			
			-- Testing levels
			if start = '1' and test = '0' then
				LEVEL              <= std_logic_vector(unsigned(LEVEL) + 1);
				paddle_ball_reset  <= '1';
				blocks             <= (others => '1');
				ball_row_increment <= '0';
				ball_col_increment <= '0';
				score_bonus        <= to_unsigned(1, score_bonus'length);
				start              <= '0';
			end if;
				
			-- Reset conditions
			if async_reset = '1' or game_reset = '1' then
				ball_row_increment <= '0';
				ball_col_increment <= '0';
				blocks             <= (others => '1');
				LIFE               <= std_logic_vector(to_unsigned(5, LIFE'length)); -- changed reset life from 7 to 5 as specified on lab
				LEVEL              <= std_logic_vector(to_unsigned(1, LEVEL'length));
				SCORE              <= (others => '0');
				score_bonus        <= to_unsigned(1, 16);
				game_reset         <= '0';
				start              <= '0';
			end if;

			-- Ball collision detection
			if ball_col_value < 16 then -- Left wall
				ball_col_increment <= '1';
			elsif ball_col_value >= 784 then -- Right wall
				ball_col_increment <= '0';
			elsif ball_row_value < 16 then -- Top wall
				ball_row_increment <= '1';
			elsif ball_row_value >= paddle_row_value and ball_col_value >= paddle_col_value and ball_col_value < paddle_col_value + 128 then -- Paddle
				ball_row_increment <= '0';
				score_bonus        <= to_unsigned(1, score_bonus'length);
			-- Losing conditions	
			elsif ball_row_value >= 567 then
				score_bonus        <= to_unsigned(1, score_bonus'length);
				paddle_ball_reset  <= '1';
				if unsigned(LIFE) = 1 then -- GAME OVER
					game_reset <= '1';
				else                    -- Lose a life
					LIFE               <= std_logic_vector(unsigned(LIFE) - 1);
					ball_row_increment <= '0';
					ball_col_increment <= '0';
					start              <= '0';
				end if;
			elsif ball_row_value < 176 then -- Blocks area
				block_ball_count := to_integer(((ball_row_value - 16) / 32) * 12 + (ball_col_value - 16) / 64);
				if blocks(block_ball_count) = '1' then -- Intact block
					-- Break block
					blocks(block_ball_count) <= '0';

					-- Adjust score
					SCORE       <= std_logic_vector(unsigned(SCORE) + score_bonus);
					score_bonus <= resize(score_bonus + 1, 16);

					-- Bounce ball accordingly
					row_offset := (ball_row_value - 16) mod 32;
					col_offset := (ball_col_value - 16) mod 64;
					if row_offset < 1 or row_offset > 30 then -- Bottom/Top of block
						ball_row_increment <= not ball_row_increment;
					end if;
					if col_offset < 1 or col_offset > 62 then -- Left/Right of block
						ball_col_increment <= not ball_col_increment;
					end if;
				end if;
			end if;

			-- Drawing colors
			if BLANKING = '1' then
				if font_bit = '0' then
					if TEXT_ROW = "10010" then
						RGB <= x"000";
					elsif (COLUMN < 16 or COLUMN >= 784 or ROW < 16) then -- Left, right and top walls
						RGB <= x"0FF";
					elsif (COLUMN >= ball_col_value and COLUMN < (ball_col_value + 8)) and (ROW >= ball_row_value and ROW < (ball_row_value + 8)) then -- Ball
						RGB <= x"FFF";
					elsif (COLUMN >= paddle_col_value and COLUMN < (paddle_col_value + 128)) and (ROW >= paddle_row_value and ROW < (paddle_row_value + 16)) then -- Paddle
						RGB <= x"FFF";
					elsif ROW < 176 and -- Blocks
					(ROW - 16) mod 32 /= 0 and (COLUMN - 16) mod 64 /= 0 and COLUMN /= 783 then -- Not on border
						block_count := to_integer(((ROW - 16) / 32) * 12 + (COLUMN - 16) / 64);
						if blocks(block_count) = '1' then -- Not on block border
							RGB <= LEVEL_COLOURS(to_integer(unsigned(LEVEL)) - 1);
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
		 