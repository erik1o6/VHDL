----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:14:21 10/01/2012 
-- Design Name: 
-- Module Name:    ea4and - Behavioral 
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

entity ea7AND is
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  e : in  STD_LOGIC;
           f : in  STD_LOGIC;
			  g : in  STD_LOGIC;
           z : out  STD_LOGIC);
end ea7AND;

architecture Behavioral of ea7AND is

begin

		z <=(a and b and c and d and e and f and g)after 242 ps;

end Behavioral;

