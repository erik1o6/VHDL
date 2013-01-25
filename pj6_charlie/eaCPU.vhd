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
	TEST	: out std_logic_vector(5 downto 0);
	WIR 	: out std_logic;
	
	SPC	: out std_logic;
	CF	: out std_logic;
	WC	: out std_logic;
	SUB	: out std_logic;
	SDM1	: out std_logic
	
	
);
end eaCPU;

architecture struct of eaCPU is

component eaCU
port(
	reset : in std_logic;
	clock : in std_logic;
	iadat : in std_logic_vector(5 downto 0);
	RPC	: out std_logic;
	CPC	: out std_logic;
	SDM	: out std_logic;
	WDR	: out std_logic;
	DOE	: out std_logic;
	asb	: out std_logic;
	rw 	: out std_logic;
	RIR	: out std_logic;
	WIR 	: out std_logic;
	
	SPC	: out std_logic;
	CF		: in std_logic;
	WC		: out std_logic;
	SUB	: out std_logic;
	SDM1	: out std_logic
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
component eaOBnon
    Port ( a : in  std_logic_vector(5 downto 0);
			  e : in  std_logic;
           z : out std_logic_vector(5 downto 0));
end component;
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component ea6SUB 
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  sub : in std_logic;
			  Cout : out std_logic;
           z : out  std_logic_vector(5 downto 0));
end component;
component eaBGMUX 
    Port ( a : in std_logic_vector(5 downto 0);
           b : in std_logic_vector(5 downto 0);
			  c : in std_logic_vector(5 downto 0);
			  SDM0  : in STD_LOGIC;
			  SDM1 : in STD_LOGIC;
           z : out  std_logic_vector(5 downto 0));
end component;
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL D0 : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DMUXO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL PMUXO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL DRO : STD_LOGIC_VECTOR(5 downto 0);

SIGNAL RP : STD_LOGIC;
SIGNAL CP : STD_LOGIC;
SIGNAL SDF : STD_LOGIC;
SIGNAL SD : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL WD : STD_LOGIC;
SIGNAL OE : STD_LOGIC;
SIGNAL FCin : STD_LOGIC;
SIGNAL TESTS : STD_LOGIC_VECTOR(5 downto 0);
--pj6
SIGNAL CFO : STD_LOGIC;
SIGNAL WCO : STD_LOGIC;
SIGNAL SPCO : STD_LOGIC;
SIGNAL SUBO : STD_LOGIC;
SIGNAL ADSUCO : STD_LOGIC;
SIGNAL ADSUO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL SDM1O : STD_LOGIC;
SIGNAL SDC : STD_LOGIC_VECTOR(5 downto 0);
begin  
FCin<='1';
gate0 : ea6PCf PORT MAP(CLK=>CP,RESET=>RP,Cin=>FCin,B=>PMUXO,A=>iadr);---probably 6
--gate1 : ea6bitMUX PORT MAP(D0=>idat,D1=>mdat,S=>SD,Z=>DMUXO);
gate1 : eaBGMUX PORT MAP(a=>idat,b=>mdat,c=>ADSUO,SDM0=>SDF,SDM1=>SDM1O,Z=>DMUXO);
gate2	: ea6Flip PORT MAP(A=>DMUXO,CLK=>WD,Q=>DRO);
--gate3 : eaOBnon PORT MAP(a=>DRO,e=>OE,z=>mdat);
gate3 : eaOBnon PORT MAP( a=>DRO,e=>OE,z =>mdat);
gate4 : eaCU PORT MAP(reset=>reset, clock=>clock, iadat=>idat, RPC=>RP, CPC=>CP, SDM=>SDF, WDR=>WD, DOE=>OE, asb=>asb, rw=>rw,RIR=>RIR,WIR=>WIR,   SPC=>SPCO,CF=>CFO,WC=>WCO,SUB=>SUBO,SDM1=>SDM1O);
RPC<=RP;
TEST<=DRO;
--mdat<=TESTS;
CPC<=CP;
SDM<=SDF;
WDR<=WD;
DOE<=OE;
madr<=idat;
SD(5)<=SDF;
SD(4)<=SDF;
SD(3)<=SDF;
SD(2)<=SDF;
SD(1)<=SDF;

SD(0)<=SDF;

SDC(5)<=SPCO;
SDC(4)<=SPCO;
SDC(3)<=SPCO;
SDC(2)<=SPCO;
SDC(1)<=SPCO;
SDC(0)<=SPCO;
--pj6 changes
gate5 : ea6bitMUX PORT MAP(D0=>"000001",D1=>idat,S=>SDC,Z=>PMUXO);
gate6 : eaFlipFlop PORT MAP(D=>ADSUCO,CLK=>WCO ,Q=>CFO);
gate7 : ea6SUB PORT MAP(a=>mdat,b=>DRO,sub=>SUBO,Cout=>ADSUCO,z=>ADSUO);-- add var test to check adsuo and suco
CF<=CFO;
SPC<=SPCO;
WC<=WCO;
SUB<=SUBO;
SDM1<=SDM1O;

end struct;

