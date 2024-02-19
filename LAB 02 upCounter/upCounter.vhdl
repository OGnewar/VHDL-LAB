library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFF is
    Port ( T, CLK, RST : in STD_LOGIC;
           Q : out STD_LOGIC);
end TFF;

architecture TFF of TFF is
    signal Q_temp : STD_LOGIC;
begin
    process (CLK, RST)
    begin
        if RST = '1' then
            Q_temp <= '0';   
        elsif rising_edge(CLK) then
            if T = '1' then
                Q_temp <= not Q_temp; 
            else
                Q_temp <= Q_temp;  
            end if;
        end if;
    end process;

    Q <= Q_temp; 
end TFF;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_G is
    Port ( A, B : in STD_LOGIC;
           Z : out STD_LOGIC);
end AND_G;

architecture AND_G of AND_G is
BEGIN
	Z <= A and B;

end AND_G;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity up_counter is
    Port ( CLK, RST : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(2 downto 0));
end up_counter;

architecture up_counter of up_counter is
	component AND_G is 
		port(A, B : in STD_LOGIC;
		    Z : out STD_LOGIC);
	end component AND_G;

	component TFF is
		Port ( T, CLK, RST : in STD_LOGIC;
		       Q : out STD_LOGIC);
	end component TFF;
signal QA, QB, QC, TC: STD_LOGIC;

BEGIN
	T1: TFF port map(T=>'1', CLK=> CLK, RST=>RST, Q=>QA);
	T2: TFF port map(T=>QA, CLK=>CLK, RST=>RST, Q=>QB);
	A1: AND_G port map(A=> QA, B=>QB, Z=>TC);
	T3: TFF port map(T=>TC, CLK=> CLK, RST=>RST, Q=>Q(2));
	Q(0)<= '1' when QA = '1' else '0';
	Q(1)<= '1' when QB = '1' else '0';


    
end up_counter;
