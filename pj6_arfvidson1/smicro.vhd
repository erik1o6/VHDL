----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    00:02:07 10/16/2012 
-- Design Name: Smicro
-- Module Name:    smicro - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of Smicro
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

entity smicro is
                port ( 
						resetb : in   std_logic;
                   clock : in  std_logic;
                   asb   : out std_logic;
                   rw    : out std_logic;
                   iadr  : out std_logic_vector(5 downto 0);
                   idat  : out std_logic_vector(5 downto 0);
                   madr  : out std_logic_vector(5 downto 0);
                   mdat  : out std_logic_vector(5 downto 0);
                   RIR   : out std_logic;
                   WIR   : out std_logic;
                   RPC   : out std_logic;
                   CPC   : out std_logic;
                   SDM   : out std_logic;
                   WDR   : out std_logic;
						 TEST	 : out std_logic_vector(5 downto 0);
                   DOE   : out std_logic;
						 SPC   : out std_logic;
						 CF	 : out std_logic;
						 WC  	 : out std_logic;
						 SUB	 : out std_logic;
						 SDM1	 : out std_logic;
						input  : in  std_logic_vector(5 downto 0); 
						output : out std_logic_vector(5 downto 0);
						DMUXO : out std_logic_vector(5 downto 0);
						SUBOUT : out std_logic_VECTOR(5 downto 0);
						SUBOUTC : out std_logic);
end smicro;

architecture struct of smicro is

component eaCPU
port(
	reset : in std_logic;
	clock : in std_logic;
	idat  : in std_logic_vector(5 downto 0);
	asb   : out std_logic;
	rw    : out std_logic;
	iadr  : out std_logic_vector(5 downto 0);
	madr  : out std_logic_vector(5 downto 0);
	mdat  : inout std_logic_vector(5 downto 0);
	RPC	: out std_logic;
	CPC	: out std_logic;
	SDM	: out std_logic;
	WDR	: out std_logic;
	DOE	: out std_logic;
	RIR	: out std_logic;
	TEST	: out std_logic_vector(5 downto 0);
	WIR 	: out std_logic;
	SPC	: out std_logic;
	CF		: out std_logic;
	WC  	: out std_logic;
	SUB	: out std_logic;
   SDM1	: out std_logic;
	DMUXOS	: out std_logic_vector(5 downto 0);
	SUBOUT : out std_logic_VECTOR(5 downto 0);
	SUBOUTC : out std_logic
	);
end component;

component ea64x6Ram
    Port ( A  : in  STD_LOGIC_VECTOR(5 downto 0);
           RW : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           D  : inout  STD_LOGIC_VECTOR(5 downto 0));
end component;

component ea64Rom
    Port ( a   : in  STD_LOGIC_VECTOR (5 downto 0);
           csb : in  STD_LOGIC;
           oeb : in  STD_LOGIC;
           D   : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;

COMPONENT  ea2NAND
	  PORT( a :    IN		STD_LOGIC;
           b :    IN		STD_LOGIC;
           z :    OUT	STD_LOGIC);
END COMPONENT;

component ea3AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component ea3NAND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;

component ea6Ram
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  R : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           D : out STD_LOGIC_VECTOR(5 downto 0));
end component;
component eaIOlatch
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
SIGNAL IVO   : STD_LOGIC;
SIGNAL ICE   : STD_LOGIC;
SIGNAL CSBU   : STD_LOGIC;
SIGNAL OEBU   : STD_LOGIC;
SIGNAL NANDO : STD_LOGIC;
SIGNAL ASBO  : STD_LOGIC;
SIGNAL ASBON  : STD_LOGIC;
SIGNAL RWO   : STD_LOGIC;
SIGNAL ROMO  : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL RAMIO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL iadrO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL madrO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL Fcs   : STD_LOGIC;

SIGNAL A3O   : STD_LOGIC;
SIGNAL A3ON  : STD_LOGIC;
SIGNAL A31   : STD_LOGIC;
SIGNAL A31N  : STD_LOGIC;
SIGNAL RWON  : STD_LOGIC;
begin

Fcs<='0';
gate0 	:	eaCPU PORT MAP(reset=>resetb,clock=>clock,idat=>ROMO,asb=>ASBO,rw=>RWO,iadr=>iadrO,madr=>madrO,mdat=>RAMIO,RPC=>RPC,CPC=>CPC,SDM=>SDM,WDR=>WDR,DOE=>DOE,RIR=>RIR,TEST=>TEST,WIR=>WIR,   SPC=>SPC,CF=>CF,WC=>WC,SUB=>SUB,SDM1=>SDM1, DMUXOS=>DMUXO, SUBOUT=>SUBOUT, SUBOUTC=>SUBOUTC);
gate1		:	ea64Rom PORT MAP(a=>iadrO,csb=>Fcs,oeb=>Fcs,D=>ROMO);--HELP WHAT IS OE CSB

gate2		:	ea64x6Ram PORT MAP(A=>madrO,RW=>RWO,CS=>CSBU,OE=>OEBU,D=>RAMIO);
gate3		:	eaINVERT PORT MAP(a=>ASBO,z=>IVO);
gate4		:	ea2NAND PORT MAP(a=>RWO, b=> IVO, z=>NANDO);

--PJ6
gate5		:    eaIOlatch PORT MAP(I=>input,W=>A3O,E=>A3O,D=>RAMIO); -- USE A3ON TO RESOLVE INPUT LATCH
--gate5		:	ea6Ram PORT MAP(I=>input,W=>A3ON,R=>A3O,S=>A3O,D=>RAMIO);-- MIGHT NEED TO CHANGE S
gate6		:	eaINVERT PORT MAP(a=>A3O,z=>A3ON);
--gate7		:	ea6Ram PORT MAP(I=>RAMIO,W=>A31,R=>A31N,S=>'1',D=>output);
gate7		:    eaIOlatch PORT MAP(I=>RAMIO,W=>A31,E=>'1',D=>output); --
gate8		:	eaINVERT PORT MAP(a=>RWO,z=>RWON);
gate9		:	eaINVERT PORT MAP(a=>A31,z=>A31N);

gate10 	: ea3AND PORT MAP(a=>RWO,b=>ASBON,c=>madrO(5),z=>A3O);--change to ASBON
gate11	: ea3AND PORT MAP(a=>RWON,b=>ASBON,c=>madrO(5),z=>A31);--change to ASBON

gate12	: ea3NAND PORT MAP(a=>ASBON,b=>ICE,c=>RWO,z=>OEBU);	
gate13	: ea2NAND PORT MAP(a=>ASBON, b=>ICE, z=>CSBU);	
gate14		:	eaINVERT PORT MAP(a=>madrO(5),z=>ICE);
gate15		:	eaINVERT PORT MAP(a=>ASBO,z=>ASBON);

asb<=ASBO;
rw<=RWO;   
iadr<=iadrO;  
idat<=ROMO; 
madr<=madrO;
mdat<=RAMIO;
end struct;

