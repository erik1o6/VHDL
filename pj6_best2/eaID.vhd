----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:54:55 10/16/2012 
-- Design Name: 
-- Module Name:    eaID - struct 
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

entity eaID is
    Port ( T : in  STD_LOGIC;
           CSM : in  STD_LOGIC;
           RSM : in  STD_LOGIC;
           IR : in  std_logic_vector(5 downto 0);
           asb : out  STD_LOGIC;
	     rw : out  STD_LOGIC;
	     RIR : out  STD_LOGIC;
           WIR : out  STD_LOGIC;
           RPC : out  STD_LOGIC;
           CPC : out  STD_LOGIC;
           SDM : out  STD_LOGIC;
           WDR : out  STD_LOGIC;
           DOE : out  STD_LOGIC;
	
			  SPC	: out std_logic;
			  CF	: in std_logic;
			  WC	: out std_logic;
			  SUB	: out std_logic;
			  SDM1	: out std_logic
	);
end eaID;

architecture struct of eaID is
component ea2AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea2NAND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea3AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea3NAND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
	COMPONENT  eaINVERT
	  PORT( a :    IN		STD_LOGIC;
			  z :    OUT	STD_LOGIC);
END COMPONENT;
SIGNAL AO : STD_LOGIC;
SIGNAL AB : STD_LOGIC;
SIGNAL AC : STD_LOGIC;
SIGNAL AD : STD_LOGIC;
SIGNAL AE : STD_LOGIC;
begin

gate0 : ea2AND PORT MAP(a=>AO,b=>AC,z=>WIR);--WIR
gate1 : eaINVERT PORT MAP(a=>CSM,z=>AO);
gate2 : eaINVERT PORT MAP(a=>T,z=>AC);
gate3 : ea3AND PORT MAP(a=>AO,b=>T,c=>IR(4),z=>WDR);--WDR
gate4 : eaINVERT PORT MAP(a=>RSM,z=>RIR);--RIR
gate5 : ea2AND PORT MAP(a=>IR(5),b=>T,z=>DOE);--DOE
gate6 : ea2NAND PORT MAP(a=>T,b=>IR(3),z=>asb);
--gate7 : eaINVERT PORT MAP(a=>AD,z=>asb);--asb
gate8 : ea3NAND PORT MAP(a=>AO,b=>T,c=>IR(5),z=>rw);
--gate9 : eaINVERT PORT MAP(a=>AE,z=>rw);--rw

SDM<=IR(3);--SDM
RPC<=RSM;--RPC
CPC<=CSM;--CPC
--PJ6
gate9 : ea2AND PORT MAP(a=>IR(0),b=>CF,z=>SPC);--SPC
WC<=IR(1);--WC
SUB<=IR(1);--SUB
SDM1<=IR(1);--SDM


end struct;

