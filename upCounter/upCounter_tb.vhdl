library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
	end tb_counter;

architecture tb_counter of tb_counter is
	component up_counter is 
		Port ( CLK, RST : in STD_LOGIC;
		       Q : out STD_LOGIC_VECTOR(2 downto 0));
	end component up_counter;

	signal CLK, RST: STD_LOGIC:= '0';
	signal Q : STD_LOGIC_VECTOR(2 downto 0);

BEGIN
	counter1: up_counter port map(CLK=>CLK, RST=>RST, Q=>Q);
	process
	begin
		CLK<= '0';
		wait for 5 ns;
		CLK<= '1';
		wait for 5 ns;
	end process;

	process
	begin
		RST<='1';
		wait for 10 ns;
		RST<= '0';
		wait for 80 ns;
	end process;
    
end tb_counter;

