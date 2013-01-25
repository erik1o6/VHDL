----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:19:36 10/23/2012 
-- Design Name: 
-- Module Name:    eabuf - Behavioral 
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

entity eabuf is
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end eabuf;

architecture Behavioral of eabuf is

begin

   z <= a after 120 ps when e = '1' else
          'Z' after 120 ps;

end Behavioral;

