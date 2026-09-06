library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity D_FF is
port(
	A : in std_logic ;
	B : in std_logic;
	S : OUT std_logic;
	C : out std_logic
);
end D_FF;

architecture main of D_FF is
 begin
	S <= (A xor B);
	C <= (A and B);

 end main;		