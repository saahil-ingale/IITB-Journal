library ieee;
use ieee.std_logic_1164.all;

entity shift1 is
port(a : in std_logic_vector(7 downto 0); b0 : in std_logic;
     output : out std_logic_vector(7 downto 0)
);
end shift1;

architecture struct of shift1 is

component mux2 is
port(a,b,s : in std_logic;
     output : out std_logic
);
end component;

begin

gen1 : for i in 0 to 7 generate

lsb : if i < 7 generate
g1 : mux2 port map(a => a(i+1), b => a(i), s => b0,
                    output => output(i)
);
end generate;

msb : if i = 7 generate
g2 : mux2 port map(a => '0', b => a(i), s => b0,
                    output => output(i)
);
end generate;

end generate;

end struct;