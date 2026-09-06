library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DUT is
   port(
        input_vector  : in std_logic_vector(1 downto 0); -- input_vector(1) = clk, input_vector(0) = reset [cite: 48]
        output_vector : out std_logic_vector(2 downto 0) -- output_vector = (Qc, Qb, Qa) [cite: 48]
   );
end entity;

architecture DutWrap of DUT is

    -- Declaring the main circuit component with correct port name (Q_out)
    component d_flip_flop is
        port(
            clk   : in  std_logic;
            reset : in  std_logic;
            Q_out : out std_logic_vector(2 downto 0)
        );
    end component;

begin

   -- Mapping vector bits directly to your counter ports
   add_instance: d_flip_flop 
       port map (
           clk   => input_vector(1),
           reset => input_vector(0),
           Q_out => output_vector
       );

end DutWrap;