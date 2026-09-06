library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
        input_vector  : in std_logic_vector(6 downto 0);  -- [6:2]=Input, [1]=Reset, [0]=Clock
        output_vector : out std_logic_vector(0 downto 0) 
   );
end entity;

architecture DutWrap of DUT is

    component students is
        port(
            inp          : in std_logic_vector(4 downto 0);
            reset, clock : in std_logic;
            outp         : out std_logic
        );
    end component;

begin

   -- Connect your vector streams exactly to the ports of the FSM system
   add_instance: students 
       port map (
           inp   => input_vector(6 downto 2), -- 5-bit character stream
           reset => input_vector(1),          -- Reset control signal
           clock => input_vector(0),          -- System clock signal
           outp  => output_vector(0)          -- Main logic output
       );

end DutWrap;