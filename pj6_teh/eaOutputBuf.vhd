----------------------------------------------------------------------------------
-- Company: Penn State University 
-- Engineer: Erik Arfvidson 
-- 
-- Create Date:    02:24:46 10/01/2012 
-- Design Name: Output Buffer
-- Module Name:    eaOutputBuf - struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Structural Description of Output Buffer
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

entity eaOutputBuf is
    Port ( B : in  STD_LOGIC_VECTOR(5 downto 0);
           oe : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(5 downto 0));
end eaOutputBuf;

architecture struct of eaOutputBuf is
component eainvbuf
   Port ( a : in  std_logic;
          e : in  std_logic;
          z : out std_logic);
end component;
begin
gate1 : eainvbuf PORT MAP(a=>B(5),e=>oe,z=>D(5));
gate2 : eainvbuf PORT MAP(a=>B(4),e=>oe,z=>D(4));
gate3 : eainvbuf PORT MAP(a=>B(3),e=>oe,z=>D(3));
gate4 : eainvbuf PORT MAP(a=>B(2),e=>oe,z=>D(2));
gate5 : eainvbuf PORT MAP(a=>B(1),e=>oe,z=>D(1));
gate6 : eainvbuf PORT MAP(a=>B(0),e=>oe,z=>D(0));

end struct;

