-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in unsigned(2 downto 0);
       	output_vector: out unsigned(7 downto 0) );
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component demux is
port(A: in unsigned(2 downto 0) ; Y : out unsigned(7 downto 0));
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: demux port map ( A => input_vector(2 downto 0),
											Y => output_vector(7 downto 0) );

end DutWrap;

