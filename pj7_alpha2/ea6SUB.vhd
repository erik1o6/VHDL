----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:43:08 11/11/2012 
-- Design Name: 
-- Module Name:    ea6SUB - struct 
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

entity ea6SUB is
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  subs : in std_logic;
			  Cout : out std_logic;
           z : out  std_logic_vector(5 downto 0));
end ea6SUB;

architecture struct of ea6SUB is
	COMPONENT  ea6XOR
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
           z : out  std_logic_vector(5 downto 0));
END COMPONENT;
	COMPONENT  eaXOR
    Port ( a : in std_logic;
           b : in std_logic;
           z : out  std_logic);
END COMPONENT;
COMPONENT eaadd6bit 
    Port (	ci	:	in		std_logic;
				a	:	in		std_logic_vector(5 downto 0);
				b	:	in		std_logic_vector(5 downto 0);
				s	:	out	std_logic_vector(5 downto 0);
				co	:	out	std_logic);
		end COMPONENT;
SIGNAL cii : STD_LOGIC;
SIGNAL coo : STD_LOGIC;
SIGNAL SU : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL AO : STD_LOGIC_VECTOR(5 downto 0);
begin
gate1		:	ea6XOR 		PORT MAP	(a=>b, b=>SU, z=>AO);
gate2		:	eaXOR 		PORT MAP	(a=>'0', b=> subs, z=>cii);
gate3		:	eaXOR 		PORT MAP	(a=>coo, b=> subs, z=>Cout);
gate4		:	eaadd6bit	PORT MAP (ci=>cii, a=>a,b=> AO,s=>z, co=>coo);
SU(5)<=subs;
SU(4)<=subs;
SU(3)<=subs;
SU(2)<=subs;
SU(1)<=subs;
SU(0)<=subs;
end struct;