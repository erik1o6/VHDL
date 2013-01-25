----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    12:31:21 10/01/2012 
-- Design Name:  3 input or gate
-- Module Name:    ea3OR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: behavioral description of a 3 input or gate
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

entity ea3OR is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out STD_LOGIC);
end ea3OR;

architecture Behavioral of ea3OR is

begin

z<=(a or b or c)after 172 ps;
end Behavioral;

