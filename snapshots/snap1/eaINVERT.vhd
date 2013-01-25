----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Erik Arfvidson
-- 
-- Create Date:    20:12:39 08/30/2012 
-- Design Name: 
-- Module Name:    eaINVERT - Behavioral 
-- Project Name: Project 1
-- Target Devices: 
-- Tool versions: 
-- Description: Invertor Gate
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

entity eaINVERT is
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end eaINVERT;

architecture Behavioral of eaINVERT is

begin

		z <=(not a)after 100ps;

end Behavioral;

