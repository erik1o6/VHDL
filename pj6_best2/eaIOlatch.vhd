----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:05 11/11/2012 
-- Design Name: 
-- Module Name:    eaIOlatch - struct 
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

entity eaIOlatch  is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  E : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end eaIOlatch;

architecture struc of eaIOlatch is
component ea6Dlatch
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           Wr : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR(5 downto 0));
end component;
component eainv6buf
    Port ( a : in  std_logic_vector(5 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(5 downto 0));
end component;
component ea2AND
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           z : out STD_LOGIC);
end component;
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL D0 : STD_LOGIC_VECTOR(5 downto 0);
begin
gate1 : ea6Dlatch PORT MAP(I=>I,Wr=>W,O=>D0); 
gate2 : eainv6buf PORT MAP(a=>D0,e=>E,z=>D);
end struc;

