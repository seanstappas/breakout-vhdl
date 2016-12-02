------------------------------------------------------------------------------------------
--
-- Breakout Game
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 5, Group 30
-- November 24, 2016
--
-- Final code for the Breakout game.
-- 
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use lpm.lpm_components.all;

entity g30_Breakout_Game is
	port(
		clock        : in  std_logic;   -- 50MHz
		rst          : in  std_logic;   -- reset
		PADDLE_LEFT  : in  std_logic;   -- user input button to move the paddle left
		PADDLE_RIGHT : in  std_logic;   -- user input button to move the paddle right
		LAUNCH       : in  std_logic;
		R, G, B      : out std_logic_vector(3 downto 0); -- colors
		HSYNC        : out std_logic;   -- horizontal sync signal
		VSYNC        : out std_logic);  -- vertical sync signal
end g30_Breakout_Game;

architecture test_pattern of g30_Breakout_Game is

	-- Components from Lab 4
	component g30_Text_Generator
		port(
			TEXT_ROW   : in  std_logic_vector(4 downto 0);
			TEXT_COL   : in  std_logic_vector(5 downto 0);
			LIFE       : in  std_logic_vector(2 downto 0);
			LEVEL      : in  std_logic_vector(2 downto 0);
			SCORE      : in  std_logic_vector(15 downto 0);
			ASCII_CODE : out std_logic_vector(6 downto 0);
			R, G, B    : out std_logic_vector(3 downto 0)
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
			font_bit  : out std_logic   -- pixel value at the given row and column
		);
	end component;

	component g30_Text_Address_Generator
		port(
			ROW      : in  unsigned(9 downto 0); -- line 0 to 599
			COLUMN   : in  unsigned(9 downto 0); -- column 0 to 799
			TEXT_ROW : out std_logic_vector(4 downto 0);
			TEXT_COL : out std_logic_vector(5 downto 0);
			FONT_ROW : out std_logic_vector(3 downto 0);
			FONT_COL : out std_logic_vector(2 downto 0));
	end component;

	component g30_VGA
		port(
			clock    : in  std_logic;   -- 50MHz
			rst      : in  std_logic;   -- reset
			BLANKING : out std_logic;   -- blank display when zero
			ROW      : out unsigned(9 downto 0); -- line 0 to 599
			COLUMN   : out unsigned(9 downto 0); -- column 0 to 799
			HSYNC    : out std_logic;   -- horizontal sync signal
			VSYNC    : out std_logic);
	end component;

	-- Display
	signal BLANKING    : std_logic;
	signal ROW, COLUMN : unsigned(9 downto 0);
	signal TEXT_ROW    : std_logic_vector(4 downto 0);
	signal TEXT_COL    : std_logic_vector(5 downto 0);
	signal ASCII_CODE  : std_logic_vector(6 downto 0);

	-- Font control
	signal font_row     : std_logic_vector(3 downto 0);
	signal font_col     : std_logic_vector(2 downto 0);
	signal font_bit     : std_logic;
	signal old_font_row : std_logic_vector(3 downto 0); -- Registers to allow proper display
	signal old_font_col : std_logic_vector(2 downto 0);

	-- RGB
	signal RGB                                                  : std_logic_vector(11 downto 0);
	signal R_Text_Generator, G_Text_Generator, B_Text_Generator : std_logic_vector(3 downto 0);
	signal RGB_text                                             : std_logic_vector(11 downto 0);

	-- Colour control
	--
	-- Every element in the following array indicates the RGB color of the blocks at the associated
	-- level. For example, level 1 has color "00F" (blue), level 2 has "0F0" (green)
	--
	type std_logic_vector_array_7_12 is array (0 to 6) of std_logic_vector(11 downto 0); -- 9-element array with length 12 std_logic_vector
	signal LEVEL_COLOURS : std_logic_vector_array_7_12 := (
		x"00F",
		x"0F0",
		x"F00",
		x"F0F",
		x"0FF",
		x"FFF",
		x"FF0");
	signal current_level_colour : unsigned(11 downto 0);

	-- Ball
	signal slow_ball_row_clock_reset     : std_logic;
	signal slow_ball_col_clock_reset     : std_logic;
	signal slow_ball_row_clock           : std_logic;
	signal slow_ball_col_clock           : std_logic;
	signal slow_ball_row_clock_count     : std_logic_vector(19 downto 0);
	signal slow_ball_col_clock_count     : std_logic_vector(19 downto 0);
	signal max_slow_ball_row_clock_count : std_logic_vector(19 downto 0);
	signal max_slow_ball_col_clock_count : std_logic_vector(19 downto 0);
	signal ball_row                      : std_logic_vector(9 downto 0);
	signal ball_col                      : std_logic_vector(9 downto 0);
	signal ball_row_value                : unsigned(9 downto 0);
	signal ball_col_value                : unsigned(9 downto 0);
	signal ball_row_increment            : std_logic;
	signal ball_col_increment            : std_logic;
	signal last_ball_col						 : unsigned(9 downto 0);
	signal last_ball_row 					 : unsigned(9 downto 0);
	signal row_col_clock_diff 				 : integer;

	-- Ball speed control
	--
	-- Every element in the following array indicates the maximum value of the "slow" counter for
	-- the ball movement. A higher maximum count indicates that the ball will move more slowly. This
	-- works by using an extra counter to set the ball row and column values. When this extra "slow"
	-- counter reaches a maximum value set here, the clock for the column and row values of the ball
	-- goes HIGH, which moves the ball. A similar counter is present to control the paddle speed.
	--
	-- Therefore, at every level, the ball will move faster, making the game get progressively
	-- harder.
	-- 
	type std_logic_vector_array_7_20 is array (0 to 6) of std_logic_vector(19 downto 0); -- 7-element array with length 20 std_logic_vector
	signal MAX_BALL_CLOCK_COUNTS : std_logic_vector_array_7_20 := (
		x"1FFFF",
		x"1EFFF",
		x"1DFFF",
		x"1CFFF",
		x"1BFFF",
		x"1AFFF",
		x"19FFF");
		
	-- Last positions and colours of the ball (used for the ball-trailing visual effect).
	type unsigned_array_5_10 is array (0 to 4) of unsigned(9 downto 0); -- 5-element array with length 10 unsigned
	type std_logic_vector_array_5_12 is array (0 to 4) of std_logic_vector(11 downto 0); -- 5-element array with length 12 std_logic_vector
	signal LAST_BALL_ROWS    			 : unsigned_array_5_10;
	signal LAST_BALL_COLUMNS 			 : unsigned_array_5_10;
	signal LAST_BALL_COLOURS			 : std_logic_vector_array_5_12 := (
		x"F00",
		x"0F0",
		x"00F",
		x"F0F",
		x"FF0");
	signal last_ball_position_counter : integer range 0 to 4 := 0;
	signal last_ball_position_slow_counter : integer range 0 to 25 := 0;
	
	-- Blocks
	--
	-- A '1' at the nth index of this vector indicates that the nth block is still intact. If '0',
	-- the block is broken. The block indices follow the following pattern in 2D space:
	--
	-- ┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┬────┐
	-- │  0 │  1 │  2 │  3 │  4 │  5 │  6 │  7 │  8 │  9 │ 10 │ 11 │
	-- ├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
	-- │ 12 │ 13 │ 14 │ 15 │ 16 │ 17 │ 18 │ 19 │ 20 │ 21 │ 22 │ 23 │
	-- ├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
	-- │ 24 │ 25 │ 26 │ 27 │ 28 │ 29 │ 30 │ 31 │ 32 │ 33 │ 34 │ 35 │
	-- ├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
	-- │ 36 │ 37 │ 38 │ 39 │ 40 │ 41 │ 42 │ 43 │ 44 │ 45 │ 46 │ 47 │
	-- ├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼────┤
	-- │ 48 │ 49 │ 50 │ 51 │ 52 │ 53 │ 54 │ 55 │ 56 │ 57 │ 58 │ 59 │
	-- └────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┴────┘
	--
	signal blocks 				: std_logic_vector(59 downto 0) := (others => '1');
	signal block_count      : integer range 0 to 59;
	signal block_ball_count : integer range 0 to 59;
	signal col_offset       : unsigned(9 downto 0);
	signal row_offset       : unsigned(9 downto 0);
	signal block_hit 			: std_logic;

	-- Paddle
	signal paddle_col              : std_logic_vector(9 downto 0);
	signal paddle_row_value        : unsigned(9 downto 0);
	signal paddle_col_value        : unsigned(9 downto 0);
	signal slow_paddle_clock_count : std_logic_vector(15 downto 0);
	signal slow_paddle_clock       : std_logic;
	signal paddle_inside_borders   : std_logic := '1';
	signal paddle_width            : integer range 0 to 128 := 128;

	-- Score, life and level
	signal SCORE       : std_logic_vector(15 downto 0);
	signal score_bonus : unsigned(15 downto 0)        := to_unsigned(1, 16);
	signal LIFE        : std_logic_vector(2 downto 0) := std_logic_vector(to_unsigned(5, 3));
	signal LEVEL       : std_logic_vector(2 downto 0) := std_logic_vector(to_unsigned(1, 3));

	-- Control signals
	signal start             : std_logic; -- HIGH once the user moves the paddle (starts ball movement)
	signal async_reset       : std_logic; -- HIGH when the user presses pushbutton 1 (PIN_R21)
	signal paddle_ball_reset : std_logic; -- HIGH to reset the paddle and ball position (at every level or when a user loses a life)
	signal game_reset        : std_logic; -- Resets the entire game (when the user wins or loses)

	-- Powerups
	signal blocks_hit_count         : unsigned(2 downto 0);
	signal powerup_enable           : std_logic;
	signal powerup_reset            : std_logic;
	signal slow_powerup_clock_count : std_logic_vector(18 downto 0);
	signal slow_powerup_clock       : std_logic;
	signal powerup_load             : std_logic;
	signal powerup_row              : std_logic_vector(9 downto 0);
	signal powerup_col              : std_logic_vector(9 downto 0);
	signal powerup_row_value        : unsigned(9 downto 0);
	signal powerup_col_value        : unsigned(9 downto 0);
	signal powerup_type             : integer range 0 to 3;
	signal ball_penetrate           : std_logic;
	signal left_control             : std_logic;
	signal right_control            : std_logic;
	signal left_right_flipped       : std_logic;
	
	-- Powerup colours
	--
	-- Every element in the following array indicates the RGB color of a powerup.
	--
	type std_logic_vector_array4 is array (0 to 3) of std_logic_vector(11 downto 0);
	signal POWERUP_COLOURS : std_logic_vector_array4 := (
		x"F0F",  -- 1UP
		x"F00",  -- Shrinker
		x"0F0",  -- Penetrator
		x"FF0"); -- Flipper

begin
	-- Lab 4 Component Mapping
	VGA1 : g30_VGA port map(
			clock    => clock,
			rst      => '0', -- The display doesn't need to be reset
			BLANKING => BLANKING,
			ROW      => ROW,
			COLUMN   => COLUMN,
			HSYNC    => HSYNC,
			VSYNC    => VSYNC);

	TEXT_GENERATOR1 : g30_Text_Generator port map(
			TEXT_ROW   => TEXT_ROW,
			TEXT_COL   => TEXT_COL,
			LIFE       => LIFE,
			LEVEL      => LEVEL,
			SCORE      => SCORE,
			ASCII_CODE => ASCII_CODE,
			R          => R_Text_Generator,
			G          => G_Text_Generator,
			B          => B_Text_Generator);

	ROM1 : fontROM port map(
			clkA      => clock,
			char_code => ASCII_CODE,
			font_row  => old_font_row,
			font_col  => old_font_col,
			font_bit  => font_bit);

	TEXT_ADDRESS_GENERATOR1 : g30_Text_Address_Generator port map(
			ROW      => ROW,
			COLUMN   => COLUMN,
			TEXT_ROW => TEXT_ROW,
			TEXT_COL => TEXT_COL,
			FONT_ROW => font_row,
			FONT_COL => font_col);

	-- Ball counters
	Slow_ball_row_counter : lpm_counter -- "slow" counter that controls the speed of the ball
		generic map(LPM_WIDTH => slow_ball_row_clock_count'length)
		port map(
			clock => clock,
			q     => slow_ball_row_clock_count,
			aclr  => slow_ball_row_clock_reset);

	Slow_ball_col_counter : lpm_counter -- "slow" counter that controls the speed of the ball
		generic map(LPM_WIDTH => slow_ball_col_clock_count'length)
		port map(
			clock => clock,
			q     => slow_ball_col_clock_count,
			aclr  => slow_ball_col_clock_reset);

	Ball_row_counter : lpm_counter
		generic map(LPM_WIDTH => ball_row'length)
		port map(
			cnt_en => start,
			clock  => slow_ball_row_clock,
			q      => ball_row,
			updown => ball_row_increment,
			aload  => async_reset or paddle_ball_reset or not start,
			data   => std_logic_vector(paddle_row_value - 10));

	Ball_col_counter : lpm_counter
		generic map(LPM_WIDTH => ball_col'length)
		port map(
			cnt_en => start,
			clock  => slow_ball_col_clock,
			q      => ball_col,
			updown => ball_col_increment,
			aload  => async_reset or paddle_ball_reset or not start,
			data   => std_logic_vector(paddle_col_value + paddle_width / 2 - 4));

	-- Paddle counters		
	Slow_paddle_col_counter : lpm_counter -- "slow" counter that controls the speed of the paddle
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
			updown => left_control,
			aload  => async_reset or paddle_ball_reset,
			data   => std_logic_vector(to_unsigned(336, paddle_col'length)));

	-- Powerup counters	
	Slow_powerup_counter : lpm_counter  -- "slow" counter that controls the speed of the powerups
		generic map(LPM_WIDTH => slow_powerup_clock_count'length)
		port map(
			cnt_en => powerup_enable,
			clock  => clock,
			q      => slow_powerup_clock_count);

	Powerup_counter : lpm_counter
		generic map(LPM_WIDTH => powerup_row'length)
		port map(
			clock => slow_powerup_clock,
			q     => powerup_row,
			aload => powerup_load,
			data  => ball_row);

	-- User reset (pushbutton is active LOW)
	async_reset <= not rst;

	-- Left and right controls (flip when Flipper powerup is acquired)
	left_control  <= PADDLE_LEFT  when left_right_flipped = '0' else PADDLE_RIGHT;
	right_control <= PADDLE_RIGHT when left_right_flipped = '0' else PADDLE_LEFT;

	-- Ball signals
	ball_row_value                <= unsigned(ball_row);
	ball_col_value                <= unsigned(ball_col);
	max_slow_ball_row_clock_count <= MAX_BALL_CLOCK_COUNTS(to_integer(unsigned(LEVEL)) - 1);
	max_slow_ball_col_clock_count <= std_logic_vector(signed(max_slow_ball_row_clock_count) + 2000 * row_col_clock_diff);

	-- Paddle signals
	paddle_row_value      <= to_unsigned(552, 10);
	paddle_col_value      <= unsigned(paddle_col);
	paddle_inside_borders <= '0' when (paddle_col_value >= (783 - paddle_width) and right_control = '0') or (paddle_col_value <= 17 and left_control = '0') else '1';

	-- Block signals
	row_offset       <= (ball_row_value - 16) mod 32;
	col_offset       <= (ball_col_value - 16) mod 64;
	block_count      <= to_integer(((ROW - 16) / 32) * 12 + (COLUMN - 16) / 64);
	block_ball_count <= to_integer(((ball_row_value - 16) / 32) * 12 + (ball_col_value - 16) / 64);

	-- RGB values
	RGB_text             <= R_Text_Generator & G_Text_Generator & B_Text_Generator;
	R                    <= RGB(11 downto 8);
	G                    <= RGB(7 downto 4);
	B                    <= RGB(3 downto 0);
	current_level_colour <= unsigned(LEVEL_COLOURS(to_integer(unsigned(LEVEL)) - 1));
	
	-- Powerups
	powerup_row_value <= unsigned(powerup_row);
	powerup_col_value <= unsigned(powerup_col);

	P2 : process(clock)
	variable last_ball_position_index : integer;
	begin
		if (rising_edge(clock)) then

			-- User starts the game by pressing the LAUNCH button
			if LAUNCH = '0' then
				start <= '1';
			end if;

			-- Reset signals
			if slow_ball_row_clock_reset = '1' then
				slow_ball_row_clock_reset <= '0';
			end if;
			if slow_ball_col_clock_reset = '1' then
				slow_ball_col_clock_reset <= '0';
			end if;
			if paddle_ball_reset = '1' then
				row_col_clock_diff <= 0;
				paddle_ball_reset  <= '0';
			end if;

			-- End of a level (all blocks are broken)
			if unsigned(blocks) = 0 then
				paddle_ball_reset <= '1';
				if unsigned(LEVEL) = 9 then -- Win condition
					game_reset <= '1';
				else                    -- Next level
					LEVEL              <= std_logic_vector(unsigned(LEVEL) + 1);
					blocks             <= (others => '1');
					ball_row_increment <= '0';
					ball_col_increment <= '0';
					score_bonus        <= to_unsigned(1, score_bonus'length);
					start <= '0';
					powerup_enable     <= '0';
				end if;
			end if;

			-- Font registers
			old_font_row <= font_row;
			old_font_col <= font_col;

			-- Ball speed control
			if slow_ball_row_clock_count = max_slow_ball_row_clock_count then
				slow_ball_row_clock       <= '1';
				slow_ball_row_clock_reset <= '1';
			else
				slow_ball_row_clock <= '0';
			end if;

			if slow_ball_col_clock_count = max_slow_ball_col_clock_count then
				slow_ball_col_clock       <= '1';
				slow_ball_col_clock_reset <= '1';
			else
				slow_ball_col_clock <= '0';
			end if;

			-- Powerup speed control
			if slow_powerup_clock_count = (slow_powerup_clock_count'range => '1') then
				slow_powerup_clock <= '1';
			else
				slow_powerup_clock <= '0';
			end if;

			-- Paddle speed control
			if slow_paddle_clock_count = (slow_paddle_clock_count'range => '1') then
				slow_paddle_clock <= '1';
			else
				slow_paddle_clock <= '0';
			end if;

			-- Reset conditions (user-input reset, or win condition, or loss condition)
			if async_reset = '1' or game_reset = '1' then
				ball_row_increment <= '0';
				ball_col_increment <= '0';
				blocks             <= (others => '1');
				LIFE               <= std_logic_vector(to_unsigned(5, LIFE'length));
				LEVEL              <= std_logic_vector(to_unsigned(1, LEVEL'length));
				SCORE              <= (others => '0');
				score_bonus        <= to_unsigned(1, 16);
				game_reset         <= '0';
				start              <= '0';
				row_col_clock_diff <=  0;
				powerup_reset      <= '1';
				powerup_enable     <= '0';
				powerup_type 		 <=  0;
			end if;

			-- Ball collision detection
			if ball_col_value /= last_ball_col or ball_row_value /= last_ball_row then -- Only check when ball position changes (it changes much slower than the clock)
				-- Last ball positions
				last_ball_col <= ball_col_value;
				last_ball_row <= ball_row_value;
				last_ball_position_slow_counter <= last_ball_position_slow_counter + 1;
				if last_ball_position_slow_counter = 25 then
					last_ball_position_slow_counter <= 0;
					LAST_BALL_ROWS(last_ball_position_counter) <= ball_row_value;
					LAST_BALL_COLUMNS(last_ball_position_counter) <= ball_col_value;
					last_ball_position_counter <= (last_ball_position_counter + 1) mod 5;
				end if;
				if ball_col_value < 16 then -- Left wall
					ball_col_increment <= '1';
				elsif ball_col_value >= 784 then -- Right wall
					ball_col_increment <= '0';
				elsif ball_row_value < 16 then -- Top wall
					ball_row_increment <= '1';
				elsif ball_row_value <= 176 and row_offset /= 0 and col_offset /= 0 then -- Blocks area (not on border)
					if blocks(block_ball_count) = '1' then
						if row_offset = 31 or row_offset = 1 then -- Top or bottom side of block
								if ball_penetrate = '0' then
									ball_row_increment <= not ball_row_increment;
								end if;
								blocks(block_ball_count) <= '0';
								block_hit <= '1';
						elsif col_offset = 63 or col_offset = 1 then -- Left or right side of block
								if ball_penetrate = '0' then
									ball_col_increment <= not ball_col_increment;
								end if;
								blocks(block_ball_count) <= '0';
								block_hit <= '1';
						end if;
					end if;
				elsif ball_row_value >= (paddle_row_value - 8) and --  Paddle
						ball_row_value < paddle_row_value and
						ball_col_value > paddle_col_value and
						ball_col_value < paddle_col_value + paddle_width then
					if ball_col_value < paddle_col_value + (paddle_width / 2) then -- Left of paddle (bounce to the left)
						ball_col_increment <= '0';
						row_col_clock_diff <= to_integer((signed(std_logic_vector(ball_col_value)) - signed(std_logic_vector(paddle_col_value)) - (paddle_width / 4)));
					else  																			-- Right of paddle (bounce to the right)
						ball_col_increment <= '1';
						row_col_clock_diff <= to_integer(((3 * paddle_width / 4) - signed(std_logic_vector(ball_col_value)) + signed(std_logic_vector(paddle_col_value))));
					end if;
					ball_row_increment <= '0';
					score_bonus        <= to_unsigned(1, score_bonus'length);
				elsif ball_row_value >= 567 then -- Bottom of screen
					powerup_reset <= '1';
					paddle_ball_reset <= '1';
					if unsigned(LIFE) = 1 then -- Loss condition
						game_reset <= '1';
					else                       -- Lose a life
						LIFE               <= std_logic_vector(unsigned(LIFE) - 1);
						ball_row_increment <= '0';
						ball_col_increment <= '0';
						start              <= '0';
						score_bonus        <= to_unsigned(1, score_bonus'length);
					end if;
				end if;
			end if;
			
			if block_hit = '1' then
				if powerup_enable = '0' then
					if blocks_hit_count = 7 then -- Create a powerup after 7 blocks are hit (while there isn't another powerup on the screen)
						powerup_enable <= '1';
						powerup_load <= '1';
						powerup_type <= (powerup_type + 1) mod 4;
					end if;				
					blocks_hit_count <= blocks_hit_count + 1;
				end if;
				SCORE       <= std_logic_vector(unsigned(SCORE) + score_bonus);
				score_bonus <= score_bonus + 1;
				block_hit <= '0';
			end if;
			
			-- Powerups
			if powerup_load = '1' then
				powerup_col <= ball_col;
				powerup_load <= '0';
			end if;
			
			if powerup_enable = '1' and
						powerup_row_value >= (paddle_row_value - 7) and -- Powerup obtained
						powerup_row_value < paddle_row_value + 16 and
						powerup_col_value >= paddle_col_value and
						powerup_col_value < paddle_col_value + paddle_width then
				case powerup_type is 
					when 0 => -- 1UP (extra life)
						SCORE <= std_logic_vector(unsigned(SCORE) + 10);
						if (unsigned(LIFE) < 7) then
							LIFE <= std_logic_vector(unsigned(LIFE) + 1);
						end if;
					when 1 => -- Shrinker (halve paddle width)
						SCORE <= std_logic_vector(unsigned(SCORE) + 50);
						paddle_width <= 64;
					when 2 => -- Penetrator (penetrating ball)
						SCORE <= std_logic_vector(unsigned(SCORE) + 5);
						ball_penetrate <= '1';
					when others => -- Flipper (switch left/right controls)
						SCORE <= std_logic_vector(unsigned(SCORE) + 25);
						left_right_flipped <= '1';
				end case;
				powerup_enable <= '0';
			end if;
			
			if powerup_enable = '1' and powerup_row_value >= 567 then -- Discard powerup
				powerup_enable <= '0';
			end if;
			
			if powerup_reset = '1' then -- Powerup effects removed (when you lose a life or the game resets)
				powerup_reset <= '0';
				paddle_width <= 128;
				ball_penetrate <= '0';
				left_right_flipped <= '0';
			end if;

			-- Colour control
			if BLANKING = '1' then
				if font_bit = '0' then
					if TEXT_ROW = "10010" then
						RGB <= x"000";
					elsif COLUMN < 16 or   -- Left wall
						   COLUMN >= 784 or -- Right wall
					 	   ROW < 16 then    -- Top wall
						RGB <= x"0FF";
					elsif COLUMN >= ball_col_value and -- Ball 
						   COLUMN < (ball_col_value + 8) and
						   ROW >= ball_row_value and
						   ROW < (ball_row_value + 8) then
						RGB <= x"FFF";
					elsif COLUMN >= paddle_col_value and -- Paddle 
						   COLUMN < (paddle_col_value + paddle_width) and 
						   ROW >= paddle_row_value and 
						   ROW < (paddle_row_value + 16) then
						RGB <= x"FFF";
					elsif powerup_enable = '1' and -- Powerups
							ROW >= powerup_row_value and
							ROW < powerup_row_value + 7 and
							COLUMN >= powerup_col_value and
							COLUMN < powerup_col_value + 7 then
						RGB <= POWERUP_COLOURS(powerup_type);
					elsif ROW < 176 and -- Blocks
						  (ROW - 16) mod 32 /= 0 and -- Not on black border of the blocks
						  (COLUMN - 16) mod 64 /= 0 and 
						   COLUMN /= 783 then
						if blocks(block_count) = '1' then -- Intact block
							RGB <= std_logic_vector(current_level_colour - resize(to_unsigned(block_count mod 12, RGB'length) * (current_level_colour and x"111"), 12) ); -- Various shades of colour
						else
							RGB <= x"000";
						end if;
					else
						RGB <= x"000";
					end if;
				else
					RGB <= RGB_text; -- Map to RGB signals from text generator
				end if;
				
				if ball_penetrate = '1' and start = '1' then -- Ball trailing effect
					for i in 0 to (LAST_BALL_COLUMNS'length - 1) loop
						last_ball_position_index := (i + last_ball_position_counter) mod 5;
						if COLUMN >= LAST_BALL_COLUMNS(last_ball_position_index) and
							COLUMN < LAST_BALL_COLUMNS(last_ball_position_index) + 8 and
							ROW >= LAST_BALL_ROWS(last_ball_position_index) and
							ROW < LAST_BALL_ROWS(last_ball_position_index) + 8 then
							RGB <= LAST_BALL_COLOURS(last_ball_position_index);
						end if;
					end loop;
				end if;	
			else
				RGB <= x"000";
			end if;
		end if;
	end process;
end test_pattern;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 24, 2016
