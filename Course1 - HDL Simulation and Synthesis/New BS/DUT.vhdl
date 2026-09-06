library ieee;
use ieee.std_logic_1164.all;

entity DUT is
port(
    input_vector  : in std_logic_vector(11 downto 0);
    output_vector : out std_logic_vector(7 downto 0)
);
end DUT;

architecture DutWrap of DUT is

component universal_shifter is
port(
    A : in std_logic_vector(7 downto 0);
    B : in std_logic_vector(2 downto 0);
    L : in std_logic;
    S : out std_logic_vector(7 downto 0)
);
end component;

begin

    U1 : universal_shifter
    port map(
        L => input_vector(11),
        B => input_vector(10 downto 8),
        A => input_vector(7 downto 0),
        S => output_vector
    );

end DutWrap;