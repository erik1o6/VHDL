----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    23:49:07 10/01/2012 
-- Design Name: ultra fast multiplier
-- Module Name:    ufm6bit - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a Ultra fast Multiplier
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

 entity ufm6bit is
	     port ( ckm : in   std_logic;
	     rb  : in   std_logic;
	     b   : in   std_logic_vector(5 downto 0);
        s   : in   std_logic_vector(1 downto 0);
        d   : out  std_logic_vector(5 downto 0));
	   end ufm6bit;
architecture struct of ufm6bit is
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
			  RESET: IN STD_LOGIC;
           d : out  STD_LOGIC_VECTOR(3 downto 0));
end component;
component ea4to1MUX 
    Port ( I : in STD_LOGIC_VECTOR(3 downto 0);
			  s   : in   STD_LOGIC_VECTOR(1 downto 0);
           Z : out  STD_LOGIC);
end component;			  

SIGNAL FCin : STD_LOGIC;
SIGNAL Fcs : STD_LOGIC;
SIGNAL DO :STD_LOGIC_VECTOR(3 downto 0);
SIGNAL AO : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL CKO : STD_LOGIC;
begin
FCin<='1';
Fcs<='0';
gate1 : ea6PCf PORT MAP(CLK=>CKO,RESET=>rb,Cin=>FCin,B=>B,A=>AO);
gate2 : ea64Rom PORT MAP(a=>AO,csb=>Fcs,oeb=>Fcs,D=>d);
gate3 : ea4to1MUX PORT MAP(I=>DO,s=>s,Z=>CKO);
gate4 : ea4bitFrequencyCounter PORT MAP(ck=>ckm,RESET=>rb,d=>DO);

end struct;