----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:44 09/03/2012 
-- Design Name: 
-- Module Name:    ea1bitadder - Behavioral 
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

entity ea1bitadder is
    Port ( a 	: 	in  	STD_LOGIC;
           b 	: 	in  	STD_LOGIC;
           ci 	: 	in  	STD_LOGIC;
           s 	: 	out  	STD_LOGIC;
           co 	: 	out  	STD_LOGIC);
end ea1bitadder;

architecture Behavioral of ea1bitadder is

	COMPONENT  ea2NAND
	  PORT( a :    IN		STD_LOGIC;
           b :    IN		STD_LOGIC;
           z :    OUT	STD_LOGIC);
END COMPONENT;

	COMPONENT  ea3NAND
	  PORT( a :    IN		STD_LOGIC;
           b :    IN		STD_LOGIC;
           c :    IN		STD_LOGIC;
           z :    OUT	STD_LOGIC);
END COMPONENT;

	COMPONENT  ea4NAND
	  PORT( a :    IN		STD_LOGIC;
           b :    IN		STD_LOGIC;
           c :    IN		STD_LOGIC;
           d :    IN		STD_LOGIC;
           z :    OUT	STD_LOGIC);
END COMPONENT;

	COMPONENT  eaINVERT
	  PORT( a :    IN		STD_LOGIC;
			  z :    OUT	STD_LOGIC);
END COMPONENT;


SIGNAL ci_n	:	STD_LOGIC;
SIGNAL a_n  :  STD_LOGIC;
SIGNAL b_n	:	STD_LOGIC;

SIGNAL X0	:	STD_LOGIC;
SIGNAL X1	:	STD_LOGIC;
SIGNAL X2	:	STD_LOGIC;
SIGNAL X6	:	STD_LOGIC;
SIGNAL X7	:	STD_LOGIC;
SIGNAL X8	:	STD_LOGIC;
SIGNAL X9	:	STD_LOGIC;

begin

gate1 	: 	eaINVERT PORT MAP (a=>ci, z=>ci_n);
gate2 	: 	eaINVERT PORT MAP (a=>a, z=>a_n);
gate3 	: 	eaINVERT PORT MAP (a=>b, z=>b_n);
gate4 	: 	ea2NAND PORT MAP (a=>ci, b=>b, z=>X0);
gate5 	: 	ea2NAND PORT MAP (a=>a, b=>b, z=>X2);
gate6 	: 	ea2NAND PORT MAP (a=>ci, b=>a, z=>X1);
gate7 	: 	ea3NAND PORT MAP (a=>X1, b=>X0, c=>X2, z=>co);
gate8 	: 	ea3NAND PORT MAP (a=>ci, b=>a, c=>b, z=>X8);
gate9 	: 	ea3NAND PORT MAP (a=>ci_n, b=>a_n, c=>b, z=>X6);
gate10 	:	ea3NAND PORT MAP (a=>ci_n, b=>a, c=>b_n, z=>X7);
gate11 	:	ea3NAND PORT MAP (a=>ci, b=>a_n, c=>b_n, z=>X9);
gate12 	: 	ea4NAND PORT MAP (a=>X8, b=>X6, c=>X7, d=>X9, z=>s);


end Behavioral;

