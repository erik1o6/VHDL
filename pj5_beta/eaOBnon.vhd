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
    Port ( a : in  STD_LOGIC_VECTOR(5 downto 0);
           e : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR(5 downto 0));
end eaOBnon;

architecture struct of eaOBnon is
component eabuf
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end component;
component eaINVERT
    Port ( a : in std_logic;
           z : out std_logic);
end component;
SIGNAL TEST : STD_LOGIC_VECTOR(5 downto 0);
begin
gate1 : eabuf PORT MAP(a=>a(5),e=>e,z=>z(5));
gate2 : eabuf PORT MAP(a=>a(4),e=>e,z=>z(4));
gate3 : eabuf PORT MAP(a=>a(3),e=>e,z=>z(3));
gate4 : eabuf PORT MAP(a=>a(2),e=>e,z=>z(2));
gate5 : eabuf PORT MAP(a=>a(1),e=>e,z=>z(1));
gate6 : eabuf PORT MAP(a=>a(0),e=>e,z=>z(0));

end struct;