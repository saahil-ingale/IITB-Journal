library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
        input_vector  : in std_logic_vector(1 downto 0);  -- [6:2]=Input, [1]=Reset, [0]=Clock
        output_vector : out std_logic_vector(1 downto 0) 
   );
end entity;

architecture DutWrap of DUT is

    component D_FF is
        port(
            A,B: in std_logic;
            S,C: out std_logic
        );
    end component;

begin

   -- Connect your vector streams exactly to the ports of the FSM system
   add_instance: D_FF
       port map(
           A  => input_vector(1), -- 5-bit character stream
           B => input_vector(0),          -- Reset control signal
           S => output_vector(1),          -- System clock signal
           C  => output_vector(0)          -- Main logic output
       );

end DutWrap;