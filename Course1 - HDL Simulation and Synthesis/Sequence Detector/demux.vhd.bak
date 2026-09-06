-------------------------------------------------------------
-- 1. THE FLIP-FLOP COMPONENT (Entity & Architecture)
-------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity dff_set is
    port(
        D     : in std_logic;
        clock : in std_logic;
        set   : in std_logic;
        Q     : out std_logic
    );
end entity dff_set;

architecture behav of dff_set is
begin
    process(clock, set)
    begin
        -- On synchronous reset/set high, down counter initializes to "111" [cite: 33]
        if (set = '1') then
            Q <= '1';
        elsif rising_edge(clock) then 
            Q <= D;
        end if;
    end process;
end behav;


-------------------------------------------------------------
-- 2. YOUR MAIN CIRCUIT (Entity & Architecture)
-------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
    port(
        clk   : in std_logic;
        reset : in std_logic;
        Q_out : out std_logic_vector(2 downto 0)
    );
end entity d_flip_flop;

architecture struct of d_flip_flop is

    -- Component declaration fixed: changed Q back to standard single std_logic
    component dff_set is
        port(
            D     : in std_logic;
            clock : in std_logic;
            set   : in std_logic;
            Q     : out std_logic
        );
    end component;

    -- Internal wiring signals
    -- q0 is Qa (LSB), q1 is Qb, q2 is Qc (MSB) [cite: 48]
    signal d0, d1, d2 : std_logic;
    signal q0, q1, q2 : std_logic;

begin

    -- Instantiating your sub-modules mapping to single-bit wires
    bit0_flop: dff_set port map(D => d0, clock => clk, set => reset, Q => q0);
    bit1_flop: dff_set port map(D => d1, clock => clk, set => reset, Q => q1);
    bit2_flop: dff_set port map(D => d2, clock => clk, set => reset, Q => q2);

    -----------------------------------------------------------
    -- Combinational Logic Equations for a Down Counter 
    -- (Derived exactly from your schematic diagram hardware)
    -----------------------------------------------------------
    d0 <= not q0;                           -- Bit 0 toggles every clock cycle 
    d1 <= q1 xnor q0;                       -- Bit 1 toggles when Bit 0 is 0 
    d2 <= q2 xnor (q1 or q0);               -- Bit 2 toggles when both Bit 1 and Bit 0 are 0 
    
    -- Drive top level outputs
    Q_out <= (q2 & q1 & q0);

end struct;