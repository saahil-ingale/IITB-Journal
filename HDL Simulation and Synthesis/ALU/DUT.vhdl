-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	signal y_unsigned : unsigned(7 downto 0);
	
component demux is
port(A,B: in unsigned(3 downto 0);S: in unsigned(1 downto 0); Y : out unsigned(7 downto 0));
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: demux
	port map(
    S => unsigned(input_vector(9 downto 8)),
    A => unsigned(input_vector(7 downto 4)),
    B => unsigned(input_vector(3 downto 0)),
    Y => y_unsigned
);

output_vector <= std_logic_vector(y_unsigned);

end DutWrap;

