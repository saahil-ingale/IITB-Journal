library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity mux is
port(
    I : in std_logic_vector(1 downto 0);
    S : in std_logic;
    Y : out std_logic
);
end mux;

architecture struct of mux is
signal ns,t1,t2 : std_logic;
begin

    g1 : INVERTER port map(A => S, Y => ns);

    g2 : AND_2 port map(A => I(0), B => ns, Y => t1);

    g3 : AND_2 port map(A => I(1), B => S, Y => t2);

    g4 : OR_2 port map(A => t1, B => t2, Y => Y);

end struct;