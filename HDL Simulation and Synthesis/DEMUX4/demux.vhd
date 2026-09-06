library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
        a0,a1,a2,e : in std_logic;  -- c = Cin
         y0,y1,y2,y3,y4,y5,y6,y7 : out std_logic
    );
end demux;

architecture struct of demux is
     signal s0,s1, s2,s3,s4,s5 : std_logic;
begin

	 g1 : INVERTER port map(a2,s0);
	 g2 : AND_2 port map(a2,e,s1);
	 g4 : AND_2 port map(s0,e,s2);
	 
	 g5 : DEMUX_2 port map(a1,a0,s2,y3,y2,y1,y0);
	 g6 : DEMUX_2 port map(a1,a0,s1,y7,y6,y5,y4);
	 

end struct;