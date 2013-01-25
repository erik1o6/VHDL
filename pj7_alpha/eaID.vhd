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
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
			  rsm : in  STD_LOGIC;
           csm : in  STD_LOGIC;
           cf : in  STD_LOGIC;
           t : in  STD_LOGIC;
           pres : out  STD_LOGIC;
           pck : out  STD_LOGIC;
           bx : out  STD_LOGIC;
           dx : out  STD_LOGIC_VECTOR (1 downto 0);
           mdw : out  STD_LOGIC;
           sub : out  STD_LOGIC;
           wc : out  STD_LOGIC;
           wot : out  STD_LOGIC);
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

component ea2OR
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal ckb: std_logic;
begin
dx0: ea2OR port map(a=>op(2),b=>op(4),z=>dx(0));
dx1: ea2OR port map(a=>op(3),b=>op(4),z=>dx(1));
sub<=op(1);
ckb0:eaINVERT port map(a=>csm,z=>ckb);
pck<=csm;
pres<=rsm;
bx0:ea2AND port map(a=>cf,b=>op(5),z=>bx);
wc0:ea2AND port map(a=>op(2),b=>ckb,z=>wc);
wot0: ea3AND port map(a=>op(1),b=>op(4),c=>ckb,z=>wot);

mdw<=ckb;

end struct;

