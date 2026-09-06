library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(
        input_vector  : in std_logic_vector(9 downto 0);  -- 10-bit input number (I9 downto I0)
        output_vector : out std_logic_vector(0 downto 0) -- 1-bit output y wrapped in a vector
   );
end entity;

architecture DutWrap of DUT is

    -- Component name updated to demux as requested
    component demux is
        port(
            X : in  std_logic_vector(9 downto 0);
            y : out std_logic
        );
    end component;

begin

   -- Connect your vector streams directly to your demux entity
   add_instance: demux 
       port map (
           X => input_vector,
           y => output_vector(0)
       );

end DutWrap;