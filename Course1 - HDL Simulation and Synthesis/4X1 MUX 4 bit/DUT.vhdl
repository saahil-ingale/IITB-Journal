-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component mux4 is
port(a1,a2,a3,a4,b1,b2,b3,b4,c1,c2,c3,c4,d1,d2,d3,d4,x1,x0: in std_logic; y3,y2,y1,y0: out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mux4 port map (d4 => input_vector(17), d3 => input_vector(16), d2 => input_vector(15), d1 => input_vector(14),
											c4 => input_vector(13), c3 => input_vector(12), c2 => input_vector(11), c1 => input_vector(10),
											b4 => input_vector(9), b3 => input_vector(8), b2 => input_vector(7), b1 => input_vector(6),
											a4 => input_vector(5), a3 => input_vector(4), a2 => input_vector(3), a1 => input_vector(2),
											 x1 => input_vector(1), x0 => input_vector(0),
											 y3 => output_vector(3) ,   y2 => output_vector(2),  y1 => output_vector(1),  y0 => output_vector(0) );
											 
											

end DutWrap;

