-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component mux4 is
port(a1,a2,a3,a4,b1,b2: in std_logic; output : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux4 port map (a4 => input_vector(5), a3 => input_vector(4), a2 => input_vector(3), a1 => input_vector(2),
											b2 => input_vector(1) , b1 => input_vector(0), output => output_vector(0) );
											

end DutWrap;

