----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    00:29:27 10/16/2012 
-- Design Name:  8 bit 2to1 MUX
-- Module Name:    ea8bit2to1MUX - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a 8 bit 2to1 MUX
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

entity ea8bit2to1MUX is
    Port ( D0	: in  STD_LOGIC_VECTOR(7 downto 0);
           D1	: in  STD_LOGIC_VECTOR(7 downto 0);
           S	: in  STD_LOGIC_VECTOR(7 downto 0);
           Z	: out	STD_LOGIC_VECTOR(7 downto 0));
end ea8bit2to1MUX;

architecture struct of ea8bit2to1MUX is

begin
gate0		:	ea2to1MUX	PORT MAP(D0=>D0(7),D1=>D1(7),S=>S(7),Z=>Z(7));
gate1		:	ea2to1MUX	PORT MAP(D0=>D0(6),D1=>D1(6),S=>S(6),Z=>Z(6));
gate2		:	ea2to1MUX	PORT MAP(D0=>D0(5),D1=>D1(5),S=>S(5),Z=>Z(5));
gate3		:	ea2to1MUX	PORT MAP(D0=>D0(4),D1=>D1(4),S=>S(4),Z=>Z(4));
gate4		:	ea2to1MUX	PORT MAP(D0=>D0(3),D1=>D1(3),S=>S(3),Z=>Z(3));
gate5		:	ea2to1MUX	PORT MAP(D0=>D0(2),D1=>D1(2),S=>S(2),Z=>Z(2));
gate6		:	ea2to1MUX	PORT MAP(D0=>D0(1),D1=>D1(1),S=>S(1),Z=>Z(1));
gate7		:	ea2to1MUX	PORT MAP(D0=>D0(0),D1=>D1(0),S=>S(0),Z=>Z(0));

end struct;

