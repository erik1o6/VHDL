----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    ea2to1MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity ea2to1MUX is
    Port ( D0 	: in  	STD_LOGIC;
           D1 	: in  	STD_LOGIC;
           S 	: in  	STD_LOGIC;
           Z 	: out  	STD_LOGIC);
end ea2to1MUX;

architecture Behavioral of ea2to1MUX is

	COMPONENT  eaINVERT
	  PORT( a :    IN		STD_LOGIC;
			  z :    OUT	STD_LOGIC);
END COMPONENT;

	COMPONENT  ea2NAND
	  PORT( a :    IN		STD_LOGIC;
           b :    IN		STD_LOGIC;
           z :    OUT	STD_LOGIC);
END COMPONENT;

SIGNAL s_n	:	STD_LOGIC;
SIGNAL M0	:	STD_LOGIC;
SIGNAL M1	:	STD_LOGIC;

begin

gate1	:	ea2NAND PORT MAP  (a=>s_n, b=>D0, z=>M0);
gate2	:	ea2NAND PORT MAP	(a=>S, b=>D1, z=>M1);
gate3	:	ea2NAND PORT MAP	(a=>M0, b=>M1, z=>Z);

end Behavioral;

