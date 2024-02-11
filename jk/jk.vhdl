library ieee;
use ieee.std_logic_1164.all;

entity jk is
port(
    J,K,CLK,RST: in std_logic;
    Q,Qb:out    std_logic
    );
end jk;

architecture jk_arch of jk is
begin
    process(J,K,CLK,RST) is
    variable output: std_logic := '0';
    begin
        if (RST = '1') then
            output := '0';
        elsif (rising_edge(CLK)) then
            if(J /= K) then
                output := J;
            elsif (J = '1' and K = '1') then
                output := not output;
            end if;
        end if;
        Q <= output;
        Qb <= not output;
    end process;
end jk_arch;

