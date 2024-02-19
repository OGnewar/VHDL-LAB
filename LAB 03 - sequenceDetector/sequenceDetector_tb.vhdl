LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE testArch OF testbench IS 
   
    COMPONENT sequence
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         X : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

    signal CLK,RST,X : std_logic := '0';
    signal Z : std_logic;

 constant CLK_period : time := 10 ns;
 
BEGIN
   uut: sequence PORT MAP (
          CLK => CLK,
          RST => RST,
          X => X,
          Z => Z
        );

    -- CLK process 
    CLK_process :process
    begin
    
    CLK <= '0';
    wait for CLK_period/2;
    CLK <= '1';
    wait for CLK_period/2;
    
    end process;
 

   -- Stimulus process
    stimulus_proc: process
    begin  
    
    X <= '0';
    RST <= '1';
    wait for 30 ns;

    RST <= '0';
    wait for 40 ns;
    
    X <= '1';
    wait for 10 ns;
    X <= '0';
    wait for 10 ns;
    X <= '1'; 
    wait for 10 ns;
    X <= '1'; 
    wait for 10 ns;
    X <= '0'; 
    wait for 10 ns;
    X <= '0'; 
    -- insert stimulus here 
    
    wait;
   end process stimulus_proc;

end testArch;
