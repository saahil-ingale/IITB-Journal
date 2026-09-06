library ieee;
use ieee.std_logic_1164.all;

entity shift2 is
port(
    a : in std_logic_vector(7 downto 0);
    b1 : in std_logic;
    output : out std_logic_vector(7 downto 0)
);
end shift2;

architecture struct of shift2 is

component mux2 is
port(a,b,s : in std_logic;
    output : out std_logic
);
end component;

begin

gen2 : for i in 0 to 7 generate

lsb : if i < 6 generate
g1 : mux2 port map(a => a(i+2), b => a(i), s => b1,
                    output => output(i)
);
end generate;

msb : if i > 5 generate
g2 : mux2 port map(a => '0', b => a(i), s => b1,
                   output => output(i)
);
end generate;

end generate;

end struct;