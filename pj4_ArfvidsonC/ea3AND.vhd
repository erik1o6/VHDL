----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    12:30:56 10/01/2012 
-- Design Name: 3 input and gate
-- Module Name:    ea3AND - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: behavioral Description of a 3 input And gate
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

entity ea3AND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out STD_LOGIC);
end ea3AND;

architecture Behavioral of ea3AND is

begin
z<=(a and b and c)after 162ps;

end Behavioral;

