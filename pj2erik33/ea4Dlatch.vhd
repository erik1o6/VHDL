----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:03 09/13/2012 
-- Design Name: 
-- Module Name:    ea4Dlatch - Behavioral 
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

entity ea4Dlatch is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end ea4Dlatch;

architecture Behavioral of ea4Dlatch is
component eaDlatch
    Port ( Din : in  STD_LOGIC;
           W : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin
gate1		:	eaDlatch	PORT MAP(Din=>A(3),W=>CLK ,Q=>Q(3));
gate2		:	eaDlatch	PORT MAP(Din=>A(2),W=>CLK ,Q=>Q(2));
gate3		:	eaDlatch	PORT MAP(Din=>A(1),W=>CLK ,Q=>Q(1));
gate4 	:	eaDlatch	PORT MAP(Din=>A(0),W=>CLK ,Q=>Q(0));

end Behavioral;

