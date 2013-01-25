----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    15:09:26 09/03/2012 
-- Design Name:  6 bit adder
-- Module Name:    eaadd4bit - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a 6 bit adder
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

---- Uncoeaent the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eaadd6bit is
    Port (	ci	:	in		std_logic;
				a	:	in		std_logic_vector(5 downto 0);
				b	:	in		std_logic_vector(5 downto 0);
				s	:	out	std_logic_vector(5 downto 0);
				co	:	out	std_logic);
		end eaadd6bit;

architecture struct of eaadd6bit is

	COMPONENT ea1bitadder
	  Port( 	a	:	in		std_logic;
				b	:	in		std_logic;
				ci	:	in		std_logic;
				s	:	out	std_logic;
				co	:	out	std_logic);
		end COMPONENT;

SIGNAL X2	:	STD_LOGIC;
SIGNAL X3	:	STD_LOGIC;		
SIGNAL X4	:	STD_LOGIC;
SIGNAL X5	:	STD_LOGIC;
SIGNAL X6	:	STD_LOGIC;

begin

gate1		:	ea1bitadder	PORT	MAP(a=>a(5),b=>b(5),ci=>X2,s=>s(5),co=>co);
gate2		:	ea1bitadder	PORT	MAP(a=>a(4),b=>b(4),ci=>X3,s=>s(4),co=>X2);
gate3		:	ea1bitadder	PORT	MAP(a=>a(3),b=>b(3),ci=>X4,s=>s(3),co=>X3);
gate4		:	ea1bitadder	PORT	MAP(a=>a(2),b=>b(2),ci=>X5,s=>s(2),co=>X4);
gate5		:	ea1bitadder	PORT	MAP(a=>a(1),b=>b(1),ci=>X6,s=>s(1),co=>X5);
gate6		:	ea1bitadder	PORT	MAP(a=>a(0),b=>b(0),ci=>ci,s=>s(0),co=>X6);
end struct;

