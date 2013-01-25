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
                   iadr  : out std_logic_vector(7 downto 0);
                   idat  : out std_logic_vector(7 downto 0);
                   madr  : out std_logic_vector(7 downto 0);
                   mdat  : out std_logic_vector(7 downto 0);
                   RIR   : out std_logic;
                   WIR   : out std_logic;
                   RPC   : out std_logic;
                   CPC   : out std_logic;
                   SDM   : out std_logic;
                   WDR   : out std_logic;
                   DOE   : out std_logic);
end smicro;

architecture struct of smicro is

component eaCPU
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
end component;
component ea64x6Ram
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           RW : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
end component;
component ea64Rom
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           csb : in  STD_LOGIC;
           oeb : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (5 downto 0));
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
SIGNAL IVO : STD_LOGIC;
SIGNAL NANDO : STD_LOGIC;
SIGNAL ASBO : STD_LOGIC;
SIGNAL RWO : STD_LOGIC;
SIGNAL ROMO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL RAMIO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL iadrO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL madrO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL Fcs : STD_LOGIC;
begin

Fcs<='0';
gate0 	:	eaCPU PORT MAP(reset=>resetb,clock=>clock,idat=>ROMO,asb=>ASBO,rw=>RWO,iadr=>iadrO,madr=>madrO,mdat=>RAMIO,RPC=>RPC,CPC=>CPC,SDM=>SDM,WDR=>WDR,DOE=>DOE,RIR=>RIR,WIR=>WIR);
gate1		:	ea64Rom PORT MAP(a=>iadrO,csb=>Fcs,oeb=>Fcs,D=>ROMO);--HELP WHAT IS OE CSB
gate2		:	ea64x6Ram PORT MAP(A=>madrO,RW=>RWO,CS=>ASBO,OE=>NANDO,D=>RAMIO);
gate3		:	eaINVERT PORT MAP(a=>ASBO,z=>IVO);
gate4		:	ea2NAND PORT MAP	(a=>RWO, b=>IVO, z=>NANDO);
			
			 asb<=ASBO;
                   rw<=rRWO;   
                   iadr<=iadrO;  
                   idat<=ROMO; 
                   madr<=madrO;
                   mdat<=RAMIO;
end struct;

