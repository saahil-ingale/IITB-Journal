library ieee;
use ieee.std_logic_1164.all;

entity barrelshift is
port(a : in std_logic_vector(7 downto 0); l,b2,b1,b0 : in std_logic;
    s : out std_logic_vector(7 downto 0)
);
end barrelshift;

architecture struct of barrelshift is

component mux8bit is
port(
    a,b : in std_logic_vector(7 downto 0);
    s : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end component;

component bitreverse is
port(
    a : in std_logic_vector(7 downto 0);
    output : out std_logic_vector(7 downto 0)
);
end component;

component shift1 is
port(
    a : in std_logic_vector(7 downto 0);
    b0 : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end component;

component shift2 is
port(
    a : in std_logic_vector(7 downto 0);
    b1 : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end component;

component shift4 is
port(
    a : in std_logic_vector(7 downto 0);
    b2 : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end component;

signal rev1, rev2 : std_logic_vector(7 downto 0);
signal x1, x2, x3, x4, x5 : std_logic_vector(7 downto 0);

begin

g1 : bitreverse port map(a, rev1);

g2 : mux8bit port map(rev1, a, l, x1);

g3 : shift4 port map(x1, b2, x2);

g4 : shift2 port map(x2, b1, x3);

g5 : shift1 port map(x3, b0, x4);

g6 : bitreverse port map(x4, rev2);

g7 : mux8bit port map(rev2, x4, l, s);

end struct;