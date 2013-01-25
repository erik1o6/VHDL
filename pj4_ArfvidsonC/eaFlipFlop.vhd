----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    12:33:48 09/18/2012 
-- Design Name:  Flip Flop
-- Module Name:    eaFlipFlop - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a Flip FLop
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

entity eaFlipFlop is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end eaFlipFlop;

architecture struct of eaFlipFlop is
component eaDlatch
    Port ( Din : in  STD_LOGIC;
           W : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

component eaINVERT
 Port ( a : in  STD_LOGIC;
        z : out  STD_LOGIC);
end component;
SIGNAL NC : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;			  
begin

gate1		:	eaDlatch	PORT MAP(Din=>D,W=>NC ,Q=>Q1);
gate2		:	eaINVERT	PORT MAP(a=>CLK, z=>NC);
gate3		:	eaDlatch	PORT MAP(Din=>Q1,W=>CLK,Q=>Q);

end struct;

