----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:26 09/03/2012 
-- Design Name: 
-- Module Name:    eaadd4bit - Behavioral 
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

entity eaadd4bit is
    Port (	ci	:	in		std_logic;
				a	:	in		std_logic_vector(3 downto 0);
				b	:	in		std_logic_vector(3 downto 0);
				s	:	out	std_logic_vector(3 downto 0);
				co	:	out	std_logic);
		end eaadd4bit;

architecture Behavioral of eaadd4bit is

	COMPONENT ea1bitadder
	  Port( 	a	:	in		std_logic;
				b	:	in		std_logic;
				ci	:	in		std_logic;
				s	:	out	std_logic;
				co	:	out	std_logic);
		end COMPONENT;
		
SIGNAL X4	:	STD_LOGIC;
SIGNAL X5	:	STD_LOGIC;
SIGNAL X6	:	STD_LOGIC;

begin

gate1		:	ea1bitadder	PORT	MAP(a=>a(3),b=>b(3),ci=>X4,s=>s(3),co=>co);
gate2		:	ea1bitadder	PORT	MAP(a=>a(2),b=>b(2),ci=>X5,s=>s(2),co=>X4);
gate3		:	ea1bitadder	PORT	MAP(a=>a(1),b=>b(1),ci=>X6,s=>s(1),co=>X5);
gate4		:	ea1bitadder	PORT	MAP(a=>a(0),b=>b(0),ci=>ci,s=>s(0),co=>X6);

end Behavioral;

