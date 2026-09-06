library ieee;
use ieee.std_logic_1164.all;

entity bitreverse is
port(a : in std_logic_vector(7 downto 0);
      output : out std_logic_vector(7 downto 0)
);
end bitreverse;

architecture struct of bitreverse is
begin

genrev : for i in 0 to 7 generate

output(i) <= a(7-i);

end generate;

end struct;