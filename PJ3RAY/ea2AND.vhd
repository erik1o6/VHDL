----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:41 10/01/2012 
-- Design Name: 
-- Module Name:    ea2AND - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity ea2AND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end ea2AND;

architecture Behavioral of ea2AND is

begin
z<=(a and b)after 142ps;

end Behavioral;

