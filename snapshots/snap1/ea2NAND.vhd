----------------------------------------------------------------------------------
-- Company: Mikulski Unltd.
-- Engineer: Michael Mikulski
-- 
-- Create Date:    14:56:34 08/30/2012 
-- Design Name: 
-- Module Name:    ea2NAND - Behavioral 
-- Project Name: Project 1
-- Target Devices: 
-- Tool versions: 
-- Description: 2 Input NAND Gate
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

entity ea2NAND is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end ea2NAND;

architecture Behavioral of ea2NAND is

begin

		z <=(not(a and b))after 110ps;

end Behavioral;

