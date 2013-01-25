----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    00:38:14 10/09/2012 
-- Design Name: 6 to 1 RAM
-- Module Name:    ea6Ram - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of 6 to 1 Ram
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

entity ea6Ram is
    Port ( I : in  STD_LOGIC_VECTOR(5 downto 0);
           W : in  STD_LOGIC;
			  R : in  STD_LOGIC;
			  S : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end ea6Ram;

architecture struc of ea6Ram is
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
gate1 : ea6Dlatch PORT MAP(I=>I,Wr=>A0,O=>D0); 
gate2 : eainv6buf PORT MAP(a=>D0,e=>A1,z=>D);
gate3 : ea2AND PORT MAP(a=>W, b=>S, z=>A0);
gate4 : ea2AND PORT MAP(a=>R, b=>S, z=>A1);


end struc;

