----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    14:33:42 09/03/2012 
-- Design Name:  4 input NAND Gate
-- Module Name:    ea4NAND - Behavioral 
-- Project Name: Project 1
-- Target Devices: 
-- Tool versions: 
-- Description: behavioral description of a 4 Input NAND Gate
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

entity ea4NAND is
    Port ( a : in  	STD_LOGIC;
           b : in  	STD_LOGIC;
           c : in 	STD_LOGIC;
           d : in  	STD_LOGIC;
           z : out 	STD_LOGIC);
end ea4NAND;

architecture Behavioral of ea4NAND is

begin

	z <=(not(a and b and c and d))after 152ps;

end Behavioral;

