----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:21:20 10/16/2012 
-- Design Name: 
-- Module Name:    eaCPU - struct 
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

entity eaCPU is
port(
	reset : in std_logic;
	clock : in std_logic;
	idat : in std_logic_vector(5 downto 0);
	asb : out std_logic;
	rw : out std_logic;
	iadr : out std_logic_vector(5 downto 0);
	madr : out std_logic_vector(5 downto 0);
	mdat : inout std_logic_vector(5 downto 0);
	RPC	: out std_logic;
	CPC	: out std_logic;
	SDM	: out std_logic;
	WDR	: out std_logic;
	DOE	: out std_logic;
	RIR	: out std_logic;
	WIR 	: out std_logic
	
);
end eaCPU;

architecture struct of eaCPU is

component eaCU
port(
	reset : in std_logic;
	clock : in std_logic;
	iadat : in std_logic_vector(7 downto 0);
	RPC	: out std_logic;
	CPC	: out std_logic;
	SDM	: out std_logic;
	WDR	: out std_logic;
	DOE	: out std_logic;
	asb	: out std_logic;
	rw	: out std_logic;
	RIR	: out std_logic;
	WIR 	: out std_logic
	
);
end component;
-- PC COMPONENT 8BIT?
component ea6PCf
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           B : in  std_logic_vector(5 downto 0);
           A : out  std_logic_vector(5 downto 0));
           
end component;
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
component eainv6buf
    Port ( a : in  std_logic_vector(5 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(5 downto 0));
end component;
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL D0 : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DMUXO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DRO : STD_LOGIC(5 downto 0);

SIGNAL RP : STD_LOGIC;
SIGNAL CP : STD_LOGIC;
SIGNAL SD : STD_LOGIC;
SIGNAL WD : STD_LOGIC;
SIGNAL OE : STD_LOGIC;
SIGNAL FCin : STD_LOGIC;

begin
FCin<='1';
gate0 : ea6PCf PORT MAP(CLK=>CP,RESET=>RP,Cin=>FCin,B=>iadr,A=>D0);
gate1 : ea6bitMUX PORT MAP(D0=>idat,D1=>mdat,S=>SD,Z=>DMUXO);
gate2	: ea6Flip PORT MAP(A=>DMUXO,CLK=>WD,Q=>DRO);
gate3 : eainv6buf PORT MAP(a=>DRO,e=>OE,z=>mdat);
gate4 : eaCU PORT MAP(reset=>reset, clock=>clock, iadat=>idat, RPC=>RP, CPC=>CP, SDM=>SD, WDR=>WD, DOE=>OE, asb=>asb, rw=>rw,RIR=>RIR,WIR=>WIR);
RPC<=RP;
CPC<=CP;
SDM<=SD;
WDR<=WD;
DOE<=OE;

end struct;

