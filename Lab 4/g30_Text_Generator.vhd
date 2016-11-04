------------------------------------------------------------------------------------------
--
-- Text Generator
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong.
--
------------------------------------------------------------------------------------------
--
-- ECSE 323: Lab 3, Group 30
-- November 3, 2016
--
-- Produces single line of text indicating the score, level and lives, at the bottom of the screen.
--
-- Authors: Gabriel Chootong, Sean Stappas

library ieee, lpm;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g30_Text_Generator is
	port(TEXT_ROW   : in  std_logic_vector(4 downto 0);
		 TEXT_COL   : in  std_logic_vector(5 downto 0);
		 LIFE       : in  std_logic_vector(2 downto 0);
		 LEVEL      : in  std_logic_vector(2 downto 0);
		 SCORE      : in  std_logic_vector(15 downto 0);
		 ASCII_CODE : out std_logic_vector(6 downto 0);
		 R, G, B    : out std_logic_vector(3 downto 0) -- colors
	);

	---- binary to bcd converter (takes in a 16-bit binary number and gives 5 BCD digits)
	-- (code taken from
	-- http://vhdlguru.blogspot.ca/2010/04/8-bit-binary-to-bcd-converter-double.html)
	--
	function to_bcd(bin : std_logic_vector((15) downto 0)) return std_logic_vector is
		variable i    : integer                         := 0;
		variable j    : integer                         := 1;
		variable bcd  : std_logic_vector((19) downto 0) := (others => '0');
		variable bint : std_logic_vector((15) downto 0) := bin;
	begin
		for i in 0 to 15 loop           -- repeat 16 times (once for each input bit).
			bcd((19) downto 1)  := bcd((18) downto 0); --shift the bcd bits.
			bcd(0)              := bint(15);
			bint((15) downto 1) := bint((14) downto 0); -- shift the input bits.
			bint(0)             := '0';
			loop1 : for j in 1 to 5 loop -- for each BCD digit add 3 if it is greater than 4.
				if (i < 15 and bcd(((4 * j) - 1) downto ((4 * j) - 4)) > "0100") then
					bcd(((4 * j) - 1) downto ((4 * j) - 4)) := std_logic_vector(unsigned(bcd(((4 * j) - 1) downto ((4 * j) - 4))) + "0011");
				end if;
			end loop loop1;             -- no ADD3 is done on the last loop iteration (just shifting)
		end loop;
		return bcd;                     -- this produces the value that is returned by the function
	end to_bcd;

	function bcd_to_ascii(x : std_logic_vector(4 downto 0)) return std_logic_vector(6 downto 0) is
	begin
		return std_logic_vector(("00" & unsigned(x)) + unsigned(x"30"));
	end to_ascii;

end g30_Text_Generator;

architecture arch of g30_Text_Generator is
	signal BCD_SCORE : std_logic_vector(19 downto 0);
	signal ROW       : unsigned(4 downto 0);
	signal COL       : unsigned(5 downto 0);
	signal RGB       : std_logic_vector(11 downto 0);
begin
	BCD_SCORE <= to_bcd(SCORE);
	ROW       <= unsigned(TEXT_ROW);
	COL       <= unsigned(TEXT_COL);
	process
	begin
		if ROW = 18 then
			case COL is
				-- SCORE (RED)
				when 0 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"53"; -- S
				when 1 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"43"; -- C
				when 2 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"4F"; -- O
				when 3 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"52"; -- R
				when 4 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"45"; -- E
				when 5 =>
					RGB        <= x"F00";
					ASCII_CODE <= x"3A"; -- :

				-- SCORE VALUE (WHITE)
				when 7 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(BCD_SCORE(19 downto 16));
				when 8 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(BCD_SCORE(15 downto 12));
				when 9 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(BCD_SCORE(11 downto 8));
				when 10 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(BCD_SCORE(7 downto 4));
				when 11 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(BCD_SCORE(3 downto 0));

				-- LEVEL (YELLOW)
				when 14 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"4C"; -- L
				when 15 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"45"; -- E
				when 16 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"56"; -- V
				when 17 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"45"; -- E
				when 18 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"4C"; -- L
				when 19 =>
					RGB        <= x"FF0";
					ASCII_CODE <= x"3A"; -- L

				-- LEVEL VALUE (WHITE)
				when 20 =>
					RGB        <= x"FFF";
					ASCII_CODE <= bcd_to_ascii(LEVEL);

				-- LIFE COUNT (PINK)
				when 23 to 29 =>
					RGB <= x"F0F";
					if unsigned(LIFE) > (29 - COL) then
						ASCII_CODE <= x"03";
					else
						ASCII_CODE <= x"20";
					end if;

				-- BLANK SPACES
				when others =>
					RGB        <= x"000";
					ASCII_CODE <= x"20";
			end case;
		else
			RGB        <= x"000";
			ASCII_CODE <= x"20";
		end if;
	end process;
end arch;

------------------------------------------------------------------------------
-- Revision History
-- v1.0 original version  November 3, 2016