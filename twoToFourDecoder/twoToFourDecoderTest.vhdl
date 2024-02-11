LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee. numeric_std.all;


ENTITY bench IS
END bench;

ARCHITECTURE bench OF bench IS
    SIGNAL A0, A1, E, Y3, Y2, Y1, Y0 : STD_LOGIC;

    COMPONENT test
        PORT(A0, A1, E: IN STD_LOGIC;
             Y3, Y2, Y1, Y0: OUT STD_LOGIC);
    END COMPONENT;

BEGIN
    UUT: test
    PORT MAP(A0 => A0, A1 => A1, E => E, Y3 => Y3, Y2 => Y2, Y1 => Y1, Y0 => Y0);

    -- Stimulus process
    stimulus_process: PROCESS
    BEGIN
        -- Test case 1
        A0<='0';
        A1<='0';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 2
        A0<='1';
        A1<='0';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 3
        A0<='0';
        A1<='1';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 4
        A0<='1';
        A1<='1';
        E<='1';
        WAIT FOR 10 ns;

        -- End simulation
        WAIT;
    END PROCESS stimulus_process;

END bench;

