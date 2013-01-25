----------------------------------------------------------------------------------
-- Company: Penn State University
-- Engineer:  Erik Arfvidson
-- 
-- Create Date:    20:16:51 09/04/2012 
-- Design Name: 
-- Module Name:    eaAND2 - Behavioral 
-- Project Name: hw1_erik
-- Target Devices: 
-- Tool versions: 
-- Description: 2 input AND gate for demo
--
-- Dependencies: none
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Demo and homework
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

entity eaAND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end eaAND;


architecture Behavioral of eaAND is

begin

z <= (a and b) after 142 ps;

end Behavioral;

