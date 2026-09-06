library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity demux is
    port(
        a0,a1,e : in std_logic;  -- c = Cin
         y0,y1,y2,y3 : out std_logic
    );
end demux;

architecture struct of demux is
     signal s0,s1, s2,s3,s4,s5 : std_logic;
begin

	 g1 : INVERTER port map(a0,s0);
	 g2 : INVERTER port map(a1,s1);
	 g3 : AND_2 port map(s0,s1,s2);
	 g4 : AND_2 port map(s2,e,y0);
	 
	 g5 : AND_2 port map(a1,s0,s3);
	 g6 : AND_2 port map(s1,a0,s4);
	 g7 : AND_2 port map(a0,a1,s5);
	 
	 g8 : AND_2 port map(s3,e,y1);
	 g9 : AND_2 port map(s4,e,y2);
	g10 : AND_2 port map(s5,e,y3);
	 

end struct;