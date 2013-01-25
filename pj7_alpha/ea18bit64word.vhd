----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    03:00:04 10/01/2012 
-- Design Name: 6 bit 64 word 
-- Module Name:    ea6bit64word - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description 6 bit 64 word
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ea18bit64word is
    Port ( e : in  std_logic_vector(63 downto 0);
           z : out std_logic_vector(17 downto 0));
end ea18bit64word;

architecture struct of ea18bit64word is

component eainv18buf
    Port ( a : in  std_logic_vector(17 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(17 downto 0));
end component;
begin
 wd0 : eainv18buf port map("000000000000000000",e(0),z);
 wd1 : eainv18buf port map("001000001001000101",e(1),z);
 wd2 : eainv18buf port map("001000001000000111",e(2),z);
 wd3 : eainv18buf port map("000000000101000100",e(3),z);
 wd4 : eainv18buf port map("000000000111000110",e(4),z);
 wd5 : eainv18buf port map("000100000100000110",e(5),z);
 wd6 : eainv18buf port map("000110000101000111",e(6),z);
 wd7 : eainv18buf port map("100000111111000000",e(7),z);
 wd8 : eainv18buf port map("010010000111000000",e(8),z);
 wd9 : eainv18buf port map("010000000000000011",e(9),z);
wd10 : eainv18buf port map("000000000000000000",e(10),z);
wd11 : eainv18buf port map("000000000000000000",e(11),z);
wd12 : eainv18buf port map("000000000000000000",e(12),z);
wd13 : eainv18buf port map("000000000000000000",e(13),z);
wd14 : eainv18buf port map("000000000000000000",e(14),z);
wd15 : eainv18buf port map("000000000000000000",e(15),z);
wd16 : eainv18buf port map("000000000000000000",e(16),z);
wd17 : eainv18buf port map("000000000000000000",e(17),z);
wd18 : eainv18buf port map("000000000000000000",e(18),z);
wd19 : eainv18buf port map("000000000000000000",e(19),z);
wd20 : eainv18buf port map("000000000000000000",e(20),z);
wd21 : eainv18buf port map("000000000000000000",e(21),z);
wd22 : eainv18buf port map("000000000000000000",e(22),z);
wd23 : eainv18buf port map("000000000000000000",e(23),z);
wd24 : eainv18buf port map("000000000000000000",e(24),z);
wd25 : eainv18buf port map("000000000000000000",e(25),z);
wd26 : eainv18buf port map("000000000000000000",e(26),z);
wd27 : eainv18buf port map("000000000000000000",e(27),z);
wd28 : eainv18buf port map("000000000000000000",e(28),z);
wd29 : eainv18buf port map("000000000000000000",e(29),z);
wd30 : eainv18buf port map("000000000000000000",e(30),z);
wd31 : eainv18buf port map("000000000000000000",e(31),z);
wd32 : eainv18buf port map("000000000000000000",e(32),z);
wd33 : eainv18buf port map("000000000000000000",e(33),z);
wd34 : eainv18buf port map("000000000000000000",e(34),z);
wd35 : eainv18buf port map("000000000000000000",e(35),z);
wd36 : eainv18buf port map("000000000000000000",e(36),z);
wd37 : eainv18buf port map("000000000000000000",e(37),z);
wd38 : eainv18buf port map("000000000000000000",e(38),z);
wd39 : eainv18buf port map("000000000000000000",e(39),z);
wd40 : eainv18buf port map("000000000000000000",e(40),z);
wd41 : eainv18buf port map("000000000000000000",e(41),z);
wd42 : eainv18buf port map("000000000000000000",e(42),z);
wd43 : eainv18buf port map("000000000000000000",e(43),z);
wd44 : eainv18buf port map("000000000000000000",e(44),z);
wd45 : eainv18buf port map("000000000000000000",e(45),z);
wd46 : eainv18buf port map("000000000000000000",e(46),z);
wd47 : eainv18buf port map("000000000000000000",e(47),z);
wd48 : eainv18buf port map("000000000000000000",e(48),z);
wd49 : eainv18buf port map("000000000000000000",e(49),z);
wd50 : eainv18buf port map("000000000000000000",e(50),z);
wd51 : eainv18buf port map("000000000000000000",e(51),z);
wd52 : eainv18buf port map("000000000000000000",e(52),z);
wd53 : eainv18buf port map("000000000000000000",e(53),z);
wd54 : eainv18buf port map("000000000000000000",e(54),z);
wd55 : eainv18buf port map("000000000000000000",e(55),z);
wd56 : eainv18buf port map("000000000000000000",e(56),z);
wd57 : eainv18buf port map("000000000000000000",e(57),z);
wd58 : eainv18buf port map("000000000000000000",e(58),z);
wd59 : eainv18buf port map("000000000000000000",e(59),z);
wd60 : eainv18buf port map("000000000000000000",e(60),z);
wd61 : eainv18buf port map("000000000000000000",e(61),z);
wd62 : eainv18buf port map("000000000000000000",e(62),z);
wd63 : eainv18buf port map("000000000000000000",e(63),z);

end struct;

