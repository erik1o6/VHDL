----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:35:45 10/09/2012 
-- Design Name: 
-- Module Name:    ramtest - struct 
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

entity ramtest is
    port ( a  : in std_logic_vector(5 downto 0);
           rw : in std_logic;
           csb: in std_logic;
           oeb: in std_logic;
           j  : in std_logic_vector(5 downto 0);
           joe: in std_logic;
           d  : inout std_logic_vector(5 downto 0));
end ramtest;

architecture struct of ramtest is
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea64x6Ram
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           RW : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
end component;
component eaOutputBuf
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
SIGNAL JN : STD_LOGIC_VECTOR(5 downto 0);
SIGNAL B0 : STD_LOGIC_VECTOR(5 downto 0);
begin
gate0 : eaINVERT PORT MAP(a=>j(5),z=>JN(5));
gate1 : eaINVERT PORT MAP(a=>j(4),z=>JN(4));
gate2 : eaINVERT PORT MAP(a=>j(3),z=>JN(3));
gate3 : eaINVERT PORT MAP(a=>j(2),z=>JN(2));
gate4 : eaINVERT PORT MAP(a=>j(1),z=>JN(1));
gate5 : eaINVERT PORT MAP(a=>j(0),z=>JN(0));
gate6 : eaOutputBuf PORT MAP(B=>JN,oe=>joe,D=>B0);
gate7 : ea64x6Ram PORT MAP(A=>a,RW=>rw,CS=>csb,OE=>oeb,D=>B0);
d<=B0;

end struct;

