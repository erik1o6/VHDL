----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:01 10/01/2012 
-- Design Name: 
-- Module Name:    eaTFlipFlop - Behavioral 
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

entity eaTFlipFlop is
    Port ( ce : in  STD_LOGIC;
           ck : in  STD_LOGIC;
           res : in  STD_LOGIC;
           q : out  STD_LOGIC);
end eaTFlipFlop;

architecture struct of eaTFlipFlop is
COMPONENT DFFeaCERES
    Port ( ce : in  STD_LOGIC;
           d : in  STD_LOGIC;
           ck : in  STD_LOGIC;
           res : in  STD_LOGIC;
           q : out  STD_LOGIC);
end COMPONENT;
COMPONENT eaSINVERTER
	PORT (a :in STD_LOGIC;
			z :out STD_LOGIC);
end COMPONENT;
SIGNAL Qout : STD_LOGIC;
SIGNAL QN : STD_LOGIC;
begin
gate1 : DFFeaCERES PORT MAP(ce=>ce,d=>QN,ck=>ck,res=>res,q=>Qout);
gate2 : eaSINVERTER PORT MAP(a=>Qout,z=>QN);
q<=Qout;


end struct;

