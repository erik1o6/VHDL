----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:46 09/13/2012 
-- Design Name: 
-- Module Name:    eaPC - Behavioral 
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

entity eaPC is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           B : in  std_logic_vector(3 downto 0);
           A : out  std_logic_vector(3 downto 0);
           C : out  std_logic_vector(3 downto 0);
           SUM : out  std_logic_vector(3 downto 0);
           Cout : out  STD_LOGIC);
end eaPC;


architecture Behavioral of eaPC is

component ea4bitMUX
    Port ( D0	: in  STD_LOGIC_VECTOR(3 downto 0);
           D1	: in  STD_LOGIC_VECTOR(3 downto 0);
           S	: in  STD_LOGIC_VECTOR(3 downto 0);
           Z	: out	STD_LOGIC_VECTOR(3 downto 0));
end component;

component ea4Dlatch
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end component;

component eaadd4bit
    Port (	ci	:	in		std_logic;
				a	:	in		std_logic_vector(3 downto 0);
				b	:	in		std_logic_vector(3 downto 0);
				s	:	out	std_logic_vector(3 downto 0);
				co	:	out	std_logic);
		end component;

SIGNAL SUM3	:	STD_LOGIC;
SIGNAL SUM2	:	STD_LOGIC;
SIGNAL SUM1	:	STD_LOGIC;
SIGNAL SUM0	:	STD_LOGIC;
SIGNAL C3	:	STD_LOGIC;
SIGNAL C2	:	STD_LOGIC;
SIGNAL C1	:	STD_LOGIC;
SIGNAL C0	:	STD_LOGIC;
SIGNAL A3	:	STD_LOGIC;
SIGNAL A2	:	STD_LOGIC;
SIGNAL A1	:	STD_LOGIC;
SIGNAL A0	:	STD_LOGIC;

begin



gate1		:	ea4bitMUX	PORT	MAP(D0(3)=>'0',D0(2)=>'0',D0(1)=>'0',D0(0)=>'0',D1(3)=>SUM3,D1(2)=>SUM2,D1(1)=>SUM1,D1(0)=>SUM0,S(3)=>RESET,S(2)=>RESET,S(1)=>RESET,S(0)=>RESET,Z(3)=>C(3),Z(2)=>C(2),Z(1)=>C(1),Z(0)=>C(0));
gate2		:	ea4Dlatch	PORT	MAP(A(3)=>C3,A(2)=>C2,A(1)=>C1,A(0)=>C0,CLK=>CLK,Q(3)=>A(3),Q(2)=>A(2),Q(1)=>A(1),Q(0)=>A(0));
gate3		:	eaadd4bit	PORT	MAP(ci=>'0',a(3)=>A3,a(2)=>A2,a(1)=>A1,a(0)=>A0,b(3)=>B(3),b(2)=>B(2),b(1)=>B(1),b(0)=>B(0),s(3)=>SUM3,s(2)=>SUM2,s(1)=>SUM1,s(0)=>SUM0,co=>Cout);
SUM(3)<=SUM3;
SUM(2)<=SUM2;
SUM(1)<=SUM1;
SUM(0)<=SUM0;
C(3)<=A3;
--c(2)<=A2;
--c(1)<=A1;
--c(0)<=A0;
--a(3)<=C3;
--a(2)<=C2;
--a(1)<=C1;
--a(0)<=C0;

end Behavioral;

