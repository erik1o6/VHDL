----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:03 09/13/2012 
-- Design Name: 
-- Module Name:    ea4FlipFlop
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

entity ea6Flip is
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(5 downto 0));
end ea6Flip;

architecture struct of ea6Flip is
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin
gate1		:	eaFlipFlop	PORT MAP(D=>A(5),CLK=>CLK ,Q=>Q(5));
gate2		:	eaFlipFlop	PORT MAP(D=>A(4),CLK=>CLK ,Q=>Q(4));
gate3		:	eaFlipFlop	PORT MAP(D=>A(3),CLK=>CLK ,Q=>Q(3));
gate4 	:	eaFlipFlop	PORT MAP(D=>A(2),CLK=>CLK ,Q=>Q(2));
gate5		:	eaFlipFlop	PORT MAP(D=>A(1),CLK=>CLK ,Q=>Q(1));
gate6 	:	eaFlipFlop	PORT MAP(D=>A(0),CLK=>CLK ,Q=>Q(0));

end struct;

