----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    13:21:46 09/13/2012 
-- Design Name: 6 bit PC counter
-- Module Name:    eaPC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a 6bit PC counter
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

entity ea6PCf is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           B : in  std_logic_vector(5 downto 0);
			  SUM : out  std_logic_vector(5 downto 0);
			  C : out  std_logic_vector(5 downto 0);
           A : out  std_logic_vector(5 downto 0));
end ea6PCf;


architecture struct of ea6PCf is

component ea6bitMUX
    Port ( D0	: in  STD_LOGIC_VECTOR(5 downto 0);
           D1	: in  STD_LOGIC_VECTOR(5 downto 0);
           S	: in  STD_LOGIC_VECTOR(5 downto 0);
           Z	: out	STD_LOGIC_VECTOR(5 downto 0));
end component;

component ea6Flip
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(5 downto 0));
end component;

component eaadd6bit
    Port (	ci	:	in		std_logic;
				a	:	in		std_logic_vector(5 downto 0);
				b	:	in		std_logic_vector(5 downto 0);
				s	:	out	std_logic_vector(5 downto 0);
				co	:	out	std_logic);
		end component;

SIGNAL SUM5	:	STD_LOGIC;
SIGNAL SUM4	:	STD_LOGIC;
SIGNAL SUM3	:	STD_LOGIC;
SIGNAL SUM2	:	STD_LOGIC;
SIGNAL SUM1	:	STD_LOGIC;
SIGNAL SUM0	:	STD_LOGIC;
SIGNAL C5	:	STD_LOGIC;
SIGNAL C4	:	STD_LOGIC;
SIGNAL C3	:	STD_LOGIC;
SIGNAL C2	:	STD_LOGIC;
SIGNAL C1	:	STD_LOGIC;
SIGNAL C0	:	STD_LOGIC;
SIGNAL A5	:	STD_LOGIC;
SIGNAL A4	:	STD_LOGIC;
SIGNAL A3	:	STD_LOGIC;
SIGNAL A2	:	STD_LOGIC;
SIGNAL A1	:	STD_LOGIC;
SIGNAL A0	:	STD_LOGIC;
SIGNAL FA : STD_LOGIC;
begin



gate1		:	ea6bitMUX	PORT	MAP(D0(5)=>'0',D0(4)=>'0',D0(3)=>'0',D0(2)=>'0',D0(1)=>'0',D0(0)=>'0',D1(5)=>SUM5,D1(4)=>SUM4,D1(3)=>SUM3,D1(2)=>SUM2,D1(1)=>SUM1,D1(0)=>SUM0,S(5)=>RESET,S(4)=>RESET,S(3)=>RESET,S(2)=>RESET,S(1)=>RESET,S(0)=>RESET,Z(5)=>C5,Z(4)=>C4,Z(3)=>C3,Z(2)=>C2,Z(1)=>C1,Z(0)=>C0);
gate2		:	ea6Flip	PORT	MAP(A(5)=>C5,A(4)=>C4,A(3)=>C3,A(2)=>C2,A(1)=>C1,A(0)=>C0,CLK=>CLK,Q(5)=>A5,Q(4)=>A4,Q(3)=>A3,Q(2)=>A2,Q(1)=>A1,Q(0)=>A0);
gate3		:	eaadd6bit	PORT	MAP(ci=>'0',a(5)=>A5,a(4)=>A4,a(3)=>A3,a(2)=>A2,a(1)=>A1,a(0)=>A0,b(5)=>B(5),b(4)=>B(4),b(3)=>B(3),b(2)=>B(2),b(1)=>B(1),b(0)=>B(0),s(5)=>SUM5,s(4)=>SUM4,s(3)=>SUM3,s(2)=>SUM2,s(1)=>SUM1,s(0)=>SUM0,co=>FA);
A(5)<=A5;
A(4)<=A4;
A(3)<=A3;
A(2)<=A2;
A(1)<=A1;
A(0)<=A0;
SUM(5)<=SUM5;
SUM(4)<=SUM4;
SUM(3)<=SUM3;
SUM(2)<=SUM2;
SUM(1)<=SUM1;
SUM(0)<=SUM0;
C(5)<=C5;
C(4)<=C4;
C(3)<=C3;
C(2)<=C2;
C(1)<=C1;
C(0)<=C0;
end struct;

