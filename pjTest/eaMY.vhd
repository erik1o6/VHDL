----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:18:47 09/17/2012 
-- Design Name: 
-- Module Name:    eaMY - Behavioral 
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

entity eaMY is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           z : out  STD_LOGIC);
end eaMY;


  
architecture Structural of eaMY is
component eaAND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out  STD_LOGIC);
end component;

component eaOR 
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic);
end component;

signal An,Bn: std_logic;
begin
gate1 : eaAND port map (a=>a,b=>b,z=>An);
gate2 : eaAND port map (a=>c,b=>d,z=>Bn);
gate3 : eaOR port map (x=>An,y=>Bn,F=>z);

end Structural;

