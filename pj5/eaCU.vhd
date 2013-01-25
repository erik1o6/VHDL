----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    00:49:14 10/16/2012 
-- Design Name: Control unit
-- Module Name:    eaCU - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description
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

entity eaCU is
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
end eaCU;

architecture struct of eaCU is
component eaIR
                port ( 
                   I0  : in std_logic_vector(7 downto 0);
                   RIR   : in std_logic;
                   WIR   : in std_logic;
			 Iout  : out std_logic_vector(7 downto 0));
end component;
component eaSM
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           T : out  STD_LOGIC);
end component;
component eaID
    Port ( T : in  STD_LOGIC;
           CSM : in  STD_LOGIC;
           RSM : in  STD_LOGIC;
           IR : in  std_logic_vector(7 downto 0);
           asb : out  STD_LOGIC;
	     rw : out  STD_LOGIC;
	     RIR : out  STD_LOGIC;
           WIR : out  STD_LOGIC;
           RPC : out  STD_LOGIC;
           CPC : out  STD_LOGIC;
           SDM : out  STD_LOGIC;
           WDR : out  STD_LOGIC;
           DOE : out  STD_LOGIC);
end component;
SIGNAL A1 : STD_LOGIC;
SIGNAL IRo : std_logic_vector(7 downto 0);
SIGNAL RI : std_logic;
SIGNAL WI : std_logic;
begin
gate0	: eaSM port map(reset=>reset,clock=>clock,T=>A1);
gate1 : eaID port map (T=>A1,CSM=>clock,RSM=>reset,IR=>IRo,asb=>asb,rw=>rw,RIR=>RI,WIR=>WI,RPC=>RPC,CPC=>CPC,SDM=>SDM,WDR=>WDR,DOE=>DOE);
gate2 : eaIR port map (I0=>iadat,RIR=>RI,WIR=>WI,Iout=>IRo);
RIR<=RI;
WIR<=WI;
end struct;

