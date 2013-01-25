----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:21 10/01/2012 
-- Design Name: 
-- Module Name:    eaUltraMultiplier - Behavioral 
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

entity eaUltraMultiplier is
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           Reset : in  STD_LOGIC;
           --CK : in  STD_LOGIC;
			  CKm: in  STD_LOGIC;
			  S1: in  STD_LOGIC;
			  S0: in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end eaUltraMultiplier;

architecture struct of eaUltraMultiplier is
component ea6PCf
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           B : in  std_logic_vector(5 downto 0);
           A : out  std_logic_vector(5 downto 0));
           
end component;
component ea64Rom
    Port ( a : in  STD_LOGIC_VECTOR (5 downto 0);
           csb : in  STD_LOGIC;
           oeb : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (5 downto 0));
			  end component;
component ea4bitFrequencyCounter
    Port ( ck : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR(3 downto 0));
end component;
component ea4to1MUX 
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;			  

SIGNAL FCin : STD_LOGIC;
SIGNAL FCout : STD_LOGIC;
SIGNAL Fcs : STD_LOGIC;
SIGNAL AO : STD_LOGIC_VECTOR(5 downto 0);
begin
FCin<='1';
Fcs<='0';
gate1 : ea6PCf PORT MAP(CLK=>CK,RESET=>Reset,Cin=>FCin,B=>B,A=>AO);
gate2 : ea64Rom PORT MAP(a=>AO,csb=>Fcs,oeb=>Fcs,D=>D);
--gate3 : ea4to1MUX PORT MAP();
--gate4 : ea4bitFrequencyCounter PORT MAP();
end struct;

