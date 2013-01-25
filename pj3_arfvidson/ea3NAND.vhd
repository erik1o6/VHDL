----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    11:22:46 10/01/2012 
-- Design Name: 3 input NAND Gate
-- Module Name:    ea3NAND - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Behavioral 3 Input NAND Gate
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

---- Uncoeaent the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ea3NAND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out  STD_LOGIC);
end ea3NAND;

architecture Behavioral of ea3NAND is

begin

z<=(not(a and b and c))after 132ps;

end Behavioral;

