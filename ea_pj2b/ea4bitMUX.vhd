----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    ea4bitMUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Coeaents: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncoeaent the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ea4bitMUX is
    Port ( D0	: in  STD_LOGIC_VECTOR(3 downto 0);
           D1	: in  STD_LOGIC_VECTOR(3 downto 0);
           S	: in  STD_LOGIC_VECTOR(3 downto 0);
           Z	: out	STD_LOGIC_VECTOR(3 downto 0));
end ea4bitMUX;

architecture struct of ea4bitMUX is

COMPONENT ea2to1MUX
    Port ( D0 	: in  	STD_LOGIC;
           D1 	: in  	STD_LOGIC;
           S 	: in  	STD_LOGIC;
           Z 	: out  	STD_LOGIC);
end COMPONENT;

SIGNAL M2	:	STD_LOGIC;
SIGNAL M3	:	STD_LOGIC;
SIGNAL M4	:	STD_LOGIC;

begin

gate1		:	ea2to1MUX	PORT MAP(D0=>D0(3),D1=>D1(3),S=>S(3),Z=>Z(3));
gate2		:	ea2to1MUX	PORT MAP(D0=>D0(2),D1=>D1(2),S=>S(2),Z=>Z(2));
gate3		:	ea2to1MUX	PORT MAP(D0=>D0(1),D1=>D1(1),S=>S(1),Z=>Z(1));
gate4		:	ea2to1MUX	PORT MAP(D0=>D0(0),D1=>D1(0),S=>S(0),Z=>Z(0));

end struct;

