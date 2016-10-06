--
-- entity name: g30_7_segment_decoder
--
-- Copyright (C) 2016 Sean Stappas, Gabriel Chootong
-- Version 1.0
-- Authors: Sean Stappas, Gabriel Chootong
-- Date: October 4, 2016

-- The purpose of this decoder is to drive a 7-segment LED on an Altera board. It takes a 7-bit ASCII code and generates the associated 7-segment display.
-- 

library ieee;

use ieee.std_logic_1164.all;

entity g30_7_segment_decoder is
port( ASCII_CODE : in std_logic_vector(6 downto 0);
		SEGMENTS : out std_logic_vector(6 downto 0));

end g30_7_segment_decoder;

architecture segment_decoder of g30_7_segment_decoder is

begin
with ASCII_CODE select
SEGMENTS <=
	"1000000" when "0110000",-- 0
	"1111001" when "0110001",-- 1
	"0100100" when "0110010",-- 2
	"0110000" when "0110011",-- 3
	"0011001" when "0110100",-- 4
	"0010010" when "0110101",-- 5
	"0000011" when "0110110",-- 6
	"1111000" when "0110111",-- 7
	"0000000" when "0111000",-- 8
	"0011000" when "0111001",-- 9
	
	"0001000" when "1000001",-- A
	"0000011" when "1000010",-- B
	"0000110" when "1000011",-- C
	"0100001" when "1000100",-- D
	"0000110" when "1000101",-- E
	"0001110" when "1000110",-- F
	"1000010" when "1000111",-- G
	"0001011" when "1001000",-- H
	"0110000" when "1001001",-- I
	"1100001" when "1001010",-- J 
	"0001111" when "1001011",-- K
	"1000111" when "1001100",-- L
	"1001000" when "1001101",-- M 
	"0101011" when "1001110",-- N 
	"1000000" when "1001111",-- O
	"0001100" when "1010000",-- P 
	"0100011" when "1010001",-- Q
	"1001110" when "1010010",-- R 
	"0010010" when "1010011",-- S 
	"0000111" when "1010100",-- T
	"1000001" when "1010101",-- U
	"1011001" when "1010110",-- V 
	"1100011" when "1010111",-- W
	"0001001" when "1011000",-- X
	"0010001" when "1011001",-- Y 
	"0100100" when "1011010",-- Z
	
	
	"0001000" when "1100001",-- a
	"0000011" when "1100010",-- b
	"0000110" when "1100011",-- c
	"0100001" when "1100100",-- d
	"0000110" when "1100101",-- e
	"0001110" when "1100110",-- f
	"1000010" when "1100111",-- g
	"0001011" when "1101000",-- h
	"0110000" when "1101001",-- i
	"1100001" when "1101010",-- j 
	"0001111" when "1101011",-- k
	"1000111" when "1101100",-- l
	"1001000" when "1101101",-- m 
	"0101011" when "1101110",-- n 
	"1000000" when "1101111",-- o
	"0001100" when "1110000",-- p 
	"0100011" when "1110001",-- q
	"1001110" when "1110010",-- r 
	"0010010" when "1110011",-- s 
	"0000111" when "1110100",-- t
	"1000001" when "1110101",-- u
	"1011001" when "1110110",-- v 
	"1100011" when "1110111",-- w
	"0001001" when "1111000",-- x
	"0010001" when "1111001",-- y 
	"0100100" when "1111010",-- z
	"1111111" when others; -- blank for all other possibilities
	
	
end segment_decoder;	