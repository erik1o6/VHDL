----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:28:22 10/01/2012 
-- Design Name: 
-- Module Name:    DFFeaCERES - struct 
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

entity DFFeaCERES is
    Port ( ce : in  STD_LOGIC;
           d : in  STD_LOGIC;
           ck : in  STD_LOGIC;
           res : in  STD_LOGIC;
           q : out  STD_LOGIC);
end DFFeaCERES;

architecture struct of DFFeaCERES is
component eaFlipFlop
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;
component eaINVERT
    Port ( a : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea3AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
component ea2OR
	  Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;
SIGNAL CN : STD_LOGIC;
SIGNAL RESN : STD_LOGIC;
SIGNAL OR1S : STD_LOGIC;
SIGNAL OR2S : STD_LOGIC;
SIGNAL OROUT : STD_LOGIC;
SIGNAL QOUT : STD_LOGIC;
begin
gate1: eaINVERT PORT MAP(a=>ce, z=>CN);
gate2: eaINVERT PORT MAP(a=>res, z=>RESN);
gate3: ea3AND PORT MAP(a=>RESN,b=>d,c=>ce,z=>OR1S);
gate4: ea3AND PORT MAP(a=>RESN,b=>CN,c=>QOUT,z=>OR2S);
gate5: ea2OR PORT MAP (a=>OR1S,b=>OR2S,z=>OROUT);
gate6: eaFlipFlop PORT MAP (D=>OROUT,CLK=>ck,Q=>QOUT);
q<=QOUT;

end struct;
