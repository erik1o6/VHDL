----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    23:44:37 10/15/2012 
-- Design Name: State Machine
-- Module Name:    eaSM - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a State Machine
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

entity eaSM is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           T : out  STD_LOGIC);
end eaSM;

architecture struct of eaSM is
COMPONENT ea2to1MUX
    Port ( D0 	: in  	STD_LOGIC;
           D1 	: in  	STD_LOGIC;
           S 	: in  	STD_LOGIC;
           Z 	: out  	STD_LOGIC);
end COMPONENT;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
SIGNAL ground : STD_LOGIC;
SIGNAL Tout	  : STD_LOGIC;
SIGNAL Zout : STD_LOGIC;
SIGNAL ZI : STD_LOGIC;
begin
ground<='0';
T<=Tout;
gate0 	:	eaFlipFlop	PORT MAP(D=>Zout,CLK=>clock ,Q=>Tout;
gate1		:	eaINVERT port map(a=>Tout,z=>ZI);
gate2		:	ea2to1MUX port map(D0=>ground,D1=>ZI,S=>reset,Z=>Zout);
end struct;

