----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    02:48:40 10/01/2012 
-- Design Name: 6 bit inverter buffer
-- Module Name:    eainv6buf - Struct
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of a 6 bit inverter buffer
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

entity eainv18buf is
    Port ( a : in  std_logic_vector(17 downto 0);
           e : in  std_logic;
           z : out std_logic_vector(17 downto 0));
end eainv18buf;

architecture struct of eainv18buf is
component eainvbuf
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end component;
begin
gate1 : eainvbuf PORT MAP(a=>a(17),e=>e,z=>z(17));
gate2 : eainvbuf PORT MAP(a=>a(16),e=>e,z=>z(16));
gate3 : eainvbuf PORT MAP(a=>a(15),e=>e,z=>z(15));
gate4 : eainvbuf PORT MAP(a=>a(14),e=>e,z=>z(14));
gate5 : eainvbuf PORT MAP(a=>a(13),e=>e,z=>z(13));
gate6 : eainvbuf PORT MAP(a=>a(12),e=>e,z=>z(12));

gate7 : eainvbuf PORT MAP(a=>a(11),e=>e,z=>z(11));
gate8 : eainvbuf PORT MAP(a=>a(10),e=>e,z=>z(10));
gate9 : eainvbuf PORT MAP(a=>a(9),e=>e,z=>z(9));
gate10 : eainvbuf PORT MAP(a=>a(8),e=>e,z=>z(8));
gate11 : eainvbuf PORT MAP(a=>a(7),e=>e,z=>z(7));
gate12 : eainvbuf PORT MAP(a=>a(6),e=>e,z=>z(6));

gate13 : eainvbuf PORT MAP(a=>a(5),e=>e,z=>z(5));
gate14 : eainvbuf PORT MAP(a=>a(4),e=>e,z=>z(4));
gate15 : eainvbuf PORT MAP(a=>a(3),e=>e,z=>z(3));
gate16 : eainvbuf PORT MAP(a=>a(2),e=>e,z=>z(2));
gate17 : eainvbuf PORT MAP(a=>a(1),e=>e,z=>z(1));
gate18 : eainvbuf PORT MAP(a=>a(0),e=>e,z=>z(0));

end struct;

