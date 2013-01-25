-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    06:48:18 09/13/2012 
-- Design Name:  D latch
-- Module Name:    eaDlatch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a D latch
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

entity eaDlatch is
    Port ( Din : in  STD_LOGIC;
           W : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end eaDlatch;

architecture struc of eaDlatch is
component ea2to1MUX
    Port ( D0 	: in  	STD_LOGIC;
           D1 	: in  	STD_LOGIC;
           S 	: in  	STD_LOGIC;
           Z 	: out  	STD_LOGIC);
end component;
SIGNAL A0: STD_LOGIC;


begin
gate1 : ea2to1MUX port map(D0=>A0, D1=>Din, S=>W, Z=>A0);

Q<=A0;

end struc;
