library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity mux4 is
    port(
        a1,a2,a3,a4,b1,b2,b3,b4,c1,c2,c3,c4,d1,d2,d3,d4,x1,x0 : in std_logic;  -- c = Cin
         y3,y2,y1,y0 : out std_logic
    );
end mux4;

architecture struct of mux4 is
    -- signal s1, s2,s3,s4 : std_logic;
begin

	 g1 : MUX4x1 port map(d3,c3,b3,a3,x1,x0,y2);
	 g2 : MUX4x1 port map(d4,c4,b4,a4,x1,x0,y3);
	 g3 : MUX4x1 port map(d2, c2,b2,a2,x1,x0, y1);
	 g4 : MUX4x1 port map(d1, c1,b1,a1,x1,x0, y0);
	 

end struct;