----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:08:54 11/11/2012 
-- Design Name: 
-- Module Name:    r2s8mt - struct 
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

       entity r2s8mt is
           port ( resetb : in   std_logic;
              clock  : in  std_logic;
              asb    : out std_logic;
              rw     : out std_logic;
              iadr   : out std_logic_vector(5 downto 0);
              madr   : out std_logic_vector(5 downto 0);
              mdat   : out std_logic_vector(5 downto 0);
              input  : in  std_logic_vector(5 downto 0); 
              output : out std_logic_vector(5 downto 0);
              RIR    : out std_logic;
              WIR    : out std_logic;
              RPC    : out std_logic;
              CPC    : out std_logic;
              SDM0   : out std_logic;
              SDM1   : out std_logic;
              WDR    : out std_logic;
              DOE    : out std_logic;
              SPC    : out std_logic;
              WC     : out std_logic;
              CF     : out std_logic);
        end r2s8mt;

architecture struct of r2s8mt is

component smicro
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
end component;
SIGNAL  TEST1: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL IDAT1 : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL SUB1 : STD_LOGIC;
SIGNAL DMUXO1 :STD_LOGIC_VECTOR(5 downto 0);
SIGNAL SUBOUT1 : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL SUBOUTC1 : STD_LOGIC;

--SIGNAL madr : STD_LOGIC;
begin

gate4 : smicro PORT MAP(resetb=>resetb,clock=>clock,asb=>asb,rw=>rw,iadr=>iadr,idat=>IDAT1,madr=>madr,mdat=>mdat,RIR=>RIR,WIR=>WIR,RPC=>RPC,CPC=>CPC,SDM=>SDM0,WDR=>WDR,TEST=>TEST1,DOE=>DOE,SPC=>SPC,CF=>CF,WC=>WC,SUB=>SUB1,SDM1=>SDM1,input=>input,output=>output,DMUXO=>DMUXO1,SUBOUT=>SUBOUT1,SUBOUTC=>SUBOUTC1);
end struct;

