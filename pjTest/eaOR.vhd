library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity eaOR is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end eaOR;  

---------------------------------------
architecture OR_beh of eaOR is 
begin 

    F <= (x or y) after 152 ps; 

end OR_beh;

---------------------------------------