----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    23:58:01 10/15/2012 
-- Design Name: 8bit D FlipFlop
-- Module Name:    ea8bitDflipflop - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description 8bit D FlipFlop
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

entity ea8bitDflipflop is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(7 downto 0));
end ea8bitDflipflop;

architecture struct of ea8bitDflipflop is
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
begin
gate0		:	eaFlipFlop	PORT MAP(D=>A(7),CLK=>CLK ,Q=>Q(7));
gate1		:	eaFlipFlop	PORT MAP(D=>A(6),CLK=>CLK ,Q=>Q(6));
gate2		:	eaFlipFlop	PORT MAP(D=>A(5),CLK=>CLK ,Q=>Q(5));
gate3		:	eaFlipFlop	PORT MAP(D=>A(4),CLK=>CLK ,Q=>Q(4));
gate4		:	eaFlipFlop	PORT MAP(D=>A(3),CLK=>CLK ,Q=>Q(3));
gate5 	:	eaFlipFlop	PORT MAP(D=>A(2),CLK=>CLK ,Q=>Q(2));
gate6		:	eaFlipFlop	PORT MAP(D=>A(1),CLK=>CLK ,Q=>Q(1));
gate7 	:	eaFlipFlop	PORT MAP(D=>A(0),CLK=>CLK ,Q=>Q(0));

end struct;

