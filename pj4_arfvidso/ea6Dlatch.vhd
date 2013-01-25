----------------------------------------------------------------------------------
-- Company: Erik Arfvidson
-- Engineer: Penn State University 
-- 
-- Create Date:    00:29:07 10/09/2012 
-- Design Name: 6 Dlatch
-- Module Name:    ea6Dlatch - Struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural description of a 6 Dlatch with 2 input and one output
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

entity ea6Dlatch is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           Wr : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR(5 downto 0));
end ea6Dlatch;

architecture struct of ea6Dlatch is
component eaDlatch
    Port ( Din : in  STD_LOGIC;
           W : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
begin
gate1 : eaDlatch PORT MAP(Din=>I(5),W=>Wr,Q=>O(5));
gate2 : eaDlatch PORT MAP(Din=>I(4),W=>Wr,Q=>O(4));
gate3 : eaDlatch PORT MAP(Din=>I(3),W=>Wr,Q=>O(3));
gate4 : eaDlatch PORT MAP(Din=>I(2),W=>Wr,Q=>O(2));
gate5 : eaDlatch PORT MAP(Din=>I(1),W=>Wr,Q=>O(1));
gate6 : eaDlatch PORT MAP(Din=>I(0),W=>Wr,Q=>O(0));

end struct;

