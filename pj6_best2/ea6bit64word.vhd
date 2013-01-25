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

entity ea6bit64word is
    Port ( e : in  std_logic_vector(63 downto 0);
           z : out std_logic_vector(5 downto 0));
end ea6bit64word;

architecture struct of ea6bit64word is

component eainv6buf
    Port ( a : in  std_logic_vector(5 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(5 downto 0));
end component;
begin
wd0 : eainv6buf port map("000000",e(0),z);
wd1 : eainv6buf port map("000000",e(1),z);
wd2 : eainv6buf port map("010000",e(2),z);
wd3 : eainv6buf port map("000101",e(3),z);
wd4 : eainv6buf port map("101000",e(4),z);
wd5 : eainv6buf port map("000001",e(5),z);
wd6 : eainv6buf port map("101000",e(6),z);
wd7 : eainv6buf port map("000011",e(7),z);

 wd8 : eainv6buf port map("000000",e(8),z);
 wd9 : eainv6buf port map("000000",e(9),z);
wd10 : eainv6buf port map("101000",e(10),z);
wd11 : eainv6buf port map("000010",e(11),z);
wd12 : eainv6buf port map("010000",e(12),z);
wd13 : eainv6buf port map("001001",e(13),z);
wd14 : eainv6buf port map("101000",e(14),z);
wd15 : eainv6buf port map("000110",e(15),z);

wd16 : eainv6buf port map("101000",e(16),z);
wd17 : eainv6buf port map("001000",e(17),z);
wd18 : eainv6buf port map("011000",e(18),z);
wd19 : eainv6buf port map("000011",e(19),z);
wd20 : eainv6buf port map("101000",e(20),z);
wd21 : eainv6buf port map("000111",e(21),z);
wd22 : eainv6buf port map("011000",e(22),z);
wd23 : eainv6buf port map("000001",e(23),z);

wd24 : eainv6buf port map("011000",e(24),z);
wd25 : eainv6buf port map("000110",e(25),z);
wd26 : eainv6buf port map("011000",e(26),z);
wd27 : eainv6buf port map("000010",e(27),z);
wd28 : eainv6buf port map("011000",e(28),z);
wd29 : eainv6buf port map("000111",e(29),z);
wd30 : eainv6buf port map("011000",e(30),z);
wd31 : eainv6buf port map("000011",e(31),z);

wd32 : eainv6buf port map("011000",e(32),z);
wd33 : eainv6buf port map("001000",e(33),z);
wd34 : eainv6buf port map("000000",e(34),z);
wd35 : eainv6buf port map("000000",e(35),z);
wd36 : eainv6buf port map("010000",e(36),z);
wd37 : eainv6buf port map("000111",e(37),z);
wd38 : eainv6buf port map("101000",e(38),z);
wd39 : eainv6buf port map("001101",e(39),z);

wd40 : eainv6buf port map("101000",e(40),z);
wd41 : eainv6buf port map("001001",e(41),z);
wd42 : eainv6buf port map("000000",e(42),z);
wd43 : eainv6buf port map("000000",e(43),z);
wd44 : eainv6buf port map("101000",e(44),z);
wd45 : eainv6buf port map("000111",e(45),z);
wd46 : eainv6buf port map("000000",e(46),z);
wd47 : eainv6buf port map("000000",e(47),z);

wd48 : eainv6buf port map("011000",e(48),z);
wd49 : eainv6buf port map("000111",e(49),z);
wd50 : eainv6buf port map("000000",e(50),z);
wd51 : eainv6buf port map("000000",e(51),z);
wd52 : eainv6buf port map("000000",e(52),z);
wd53 : eainv6buf port map("000000",e(53),z);
wd54 : eainv6buf port map("000000",e(54),z);
wd55 : eainv6buf port map("000000",e(55),z);

wd56 : eainv6buf port map("000000",e(56),z);
wd57 : eainv6buf port map("000000",e(57),z);
wd58 : eainv6buf port map("000000",e(58),z);
wd59 : eainv6buf port map("000000",e(59),z);
wd60 : eainv6buf port map("000000",e(60),z);
wd61 : eainv6buf port map("000000",e(61),z);
wd62 : eainv6buf port map("000000",e(62),z);
wd63 : eainv6buf port map("000000",e(63),z);

end struct;

