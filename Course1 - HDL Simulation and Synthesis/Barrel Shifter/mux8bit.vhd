library ieee;
use ieee.std_logic_1164.all;

entity mux8bit is
port(
    a, b : in std_logic_vector(7 downto 0);
    s : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end mux8bit;

architecture struct of mux8bit is

component mux2 is
port(
    a, b, s : in std_logic;
    output : out std_logic
);
end component;

begin

g1 : mux2 port map(a(0), b(0), s, output(0));

g2 : mux2 port map(a(1), b(1), s, output(1));

g3 : mux2 port map(a(2), b(2), s, output(2));

g4 : mux2 port map(a(3), b(3), s, output(3));

g5 : mux2 port map(a(4), b(4), s, output(4));

g6 : mux2 port map(a(5), b(5), s, output(5));

g7 : mux2 port map(a(6), b(6), s, output(6));

g8 : mux2 port map(a(7), b(7), s, output(7));

end struct;