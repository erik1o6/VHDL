----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:27:23 10/23/2012 
-- Design Name: 
-- Module Name:    eaOBnon - Struct 
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

entity eaOBnon is
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
          oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end eaOBnon;

architecture struct of eaOBnon is
component eainvbuf
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end component;
component eaSINVERTER
    Port ( a : in std_logic;
           z : out std_logic);
end component;
SIGNAL TEST : STD_LOGIC_VECTOR(5 downto 0);
begin
gate1 : eainvbuf PORT MAP(a=>B(5),e=>oe,z=>TEST(5));
gate2 : eainvbuf PORT MAP(a=>B(4),e=>oe,z=>TEST(4));
gate3 : eainvbuf PORT MAP(a=>B(3),e=>oe,z=>TEST(3));
gate4 : eainvbuf PORT MAP(a=>B(2),e=>oe,z=>TEST(2));
gate5 : eainvbuf PORT MAP(a=>B(1),e=>oe,z=>TEST(1));
gate6 : eainvbuf PORT MAP(a=>B(0),e=>oe,z=>TEST(0));

gate7 : eaSINVERTER PORT MAP(a=>TEST(5),z=>D(5)); 
gate8 : eaSINVERTER PORT MAP(a=>TEST(4),z=>D(4));
gate9 : eaSINVERTER PORT MAP(a=>TEST(3),z=>D(3));
gate10 : eaSINVERTER PORT MAP(a=>TEST(2),z=>D(2));
gate11 : eaSINVERTER PORT MAP(a=>TEST(1),z=>D(1));
gate12 : eaSINVERTER PORT MAP(a=>TEST(0),z=>D(0));

end struct;