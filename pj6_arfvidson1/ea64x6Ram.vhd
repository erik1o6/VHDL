----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    02:14:12 10/09/2012 
-- Design Name: 64 x 6 Ram
-- Module Name:    ea64x6Ram - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of 64 x 6 Ram
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

entity ea64x6Ram is
    Port ( A : in  STD_LOGIC_VECTOR(5 downto 0);
           RW : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
end ea64x6Ram;

architecture struct of ea64x6Ram is

component ea2OR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea32x6Ram
    Port ( OE : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           RW : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR(4 downto 0);
           D : inout  STD_LOGIC_VECTOR(5 downto 0));
end component;
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL AN : STD_LOGIC;
begin
gate0 : ea32x6Ram PORT MAP(OE=>A3,CS=>A1,RW=>RW,A=>A(4 downto 0),D=>D);
gate1 : ea32x6Ram PORT MAP(OE=>A2,CS=>A0,RW=>RW,A=>A(4 downto 0),D=>D);
gate2 : eaINVERT PORT MAP(a=>A(5),z=>AN);
gate3 : ea2OR PORT MAP(a=>A(5),b=>CS,z=>A0);
gate4 : ea2OR PORT MAP(a=>AN,b=>CS,z=>A1);
gate5 : ea2OR PORT MAP(a=>A(5),b=>OE,z=>A2);
gate6 : ea2OR PORT MAP(a=>AN,b=>OE,z=>A3);

end struct;

