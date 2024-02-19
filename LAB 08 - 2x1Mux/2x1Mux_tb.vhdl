library ieee;
use ieee.std_logic_1164.all;

entity testbench  is
end testbench;

architecture test of testbench is
signal A0,A1,S0,Y:std_logic;

component mux
    port(
        A0,A1,S0: in std_logic;
        Y: out std_logic
        );
end component mux;

begin
    UUT: mux
    port map(A0 => A0, A1 => A1, S0 => S0, Y => Y);


    stimulus_process: process
    begin

        --test case 1
        S0 <= '0';
        A0 <= '0';
        A1 <= '0';
        wait for 10 ns;

        --test case 2
        S0 <= '0';
        A0 <= '0';
        A1 <= '1';
        wait for 10 ns;

        --test case 3
        S0 <= '0';
        A0 <= '1';
        A1 <= '0';
        wait for 10 ns;
        --test case 4
        S0 <= '0';
        A0 <= '1';
        A1 <= '1';
        wait for 10 ns;

        --test case 5
        S0 <= '1';
        A0 <= '0';
        A1 <= '0';
        wait for 10 ns;

        --test case 6
        S0 <= '1';
        A0 <= '0';
        A1 <= '1';
        wait for 10 ns;
        wait;
    end process stimulus_process;
end test;
 
        
