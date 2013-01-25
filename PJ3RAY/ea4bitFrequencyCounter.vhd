----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:46 10/01/2012 
-- Design Name: 
-- Module Name:    ea4bitFrequencyCounter - struct 
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

entity ea4bitFrequencyCounter is
    Port ( ck : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR(3 downto 0));
end ea4bitFrequencyCounter;

architecture struct of ea4bitFrequencyCounter is
component eaTFlipFlop
    Port ( ce : in  STD_LOGIC;
           ck : in  STD_LOGIC;
           res : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;
component ea3AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
component ea2AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
SIGNAL DO : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL AND2OUT : STD_LOGIC;
SIGNAL AND3OUT : STD_LOGIC;
begin

gate1 : eaTFlipFlop PORT MAP(ce=>'1',ck=>ck,res=>'0', q=>DO(0));
gate2 : eaTFlipFlop PORT MAP(ce=>DO(0),ck=>ck,res=>'0', q=>DO(1));
gate3 : eaTFlipFlop PORT MAP(ce=>AND2OUT,ck=>ck,res=>'0', q=>DO(2));
gate4 : eaTFlipFlop PORT MAP(ce=>AND3OUT,ck=>ck,res=>'0', q=>DO(3));

gate5 : ea2AND PORT MAP(a=>DO(0),b=>DO(1), z=>AND2OUT);
gate6 : ea3AND PORT MAP(a=>DO(0),b=>DO(1),c=>DO(2),z=>AND3OUT);
d<=DO;

end struct;

