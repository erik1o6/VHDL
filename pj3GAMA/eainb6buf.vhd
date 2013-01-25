----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:48:40 10/01/2012 
-- Design Name: 
-- Module Name:    eainv6buf - Behavioral 
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

entity eainv6buf is
    Port ( a : in  std_logic_vector(5 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(5 downto 0));
end eainv6buf;

architecture struct of eainb6buf is
component eainvbuf
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end component;
begin
gate1 : eainvbuf PORT MAP(a=>a(5),e=>e,z=>z(5));
gate2 : eainvbuf PORT MAP(a=>a(4),e=>e,z=>z(4));
gate3 : eainvbuf PORT MAP(a=>a(3),e=>e,z=>z(3));
gate4 : eainvbuf PORT MAP(a=>a(2),e=>e,z=>z(2));
gate5 : eainvbuf PORT MAP(a=>a(1),e=>e,z=>z(1));
gate6 : eainvbuf PORT MAP(a=>a(0),e=>e,z=>z(0));

end struct;

