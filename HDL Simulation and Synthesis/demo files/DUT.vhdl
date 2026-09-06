-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component no_xor is
port(a1,a2,a3,a4,a5,b1,b2,b3,b4,b5,cin : in std_logic; c1,c2,c3,c4,cout : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: no_xor port map (a1 => input_vector(0), a2 => input_vector(1), a3 => input_vector(2),  a4 => input_vector(3),
											  b1 => input_vector(0),  b2 => input_vector(1),  b3 => input_vector(2),  b4 => input_vector(3)
											sum => output_vector(0), carry => output_vector(1) );

end DutWrap;

