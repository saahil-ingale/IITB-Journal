library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux2 is
port(a, b, s: in std_logic; output: out std_logic );
end mux2;
Architecture struct of mux2 is
Signal s1, s2, s3, s4, s5: std_logic;
Begin 
g1: AND_2 port map (a, s, s1 );

g2: INVERTER port map (s, s2 );

g3: AND_2 port map (b, s2, s3);

g4: OR_2 port map (s1, s3, output );

end struct;