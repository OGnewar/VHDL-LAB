library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequence is
port (
 CLK: in std_logic;
 RST: in std_logic;
 X: in std_logic;
 Z: out std_logic
);
end sequence;

architecture sequenceArch of sequence is
type state is (Q0, Q1, Q2, Q3, Q4);
signal currentState, nextState: state;

begin

seq_proc: process(CLK,RST) is
begin

if(RST='1') then
    currentState <= Q0;
elsif(rising_edge(CLK)) then
    currentState <= nextState;
end if;

end process seq_proc;


comb_proc: process(currentState,X) is
begin

case(currentState) is

    when Q0 =>
    if(X='1') then
   -- "1"
        nextState <= Q1;
    else
        nextState <= Q0;
    end if;
    
    when Q1 =>
    if(X='0') then
    -- "10"
        nextState <= Q2;
    else
        nextState <= Q1;
    end if;  
    
    when Q2 => 
    if(X='1') then
   -- "101"
        nextState <= Q3;
    else
        nextState <= Q0;
    end if;  
    
    when Q3 =>
    if(X='1') then
    -- "1011"
        nextState <= Q4;
    else
        nextState <= Q0;
    end if; 
 
    when Q4 =>
    if(X='0') then
        nextState <= Q0;
    else
        nextState <= Q1;
    end if;

end case;
end process comb_proc;

-- Output logic of the Sequence Detector
out_proc: process(currentState) is
begin 
    case currentState is
    when Q0 =>
    Z <= '0';
    
    when Q1 =>
    Z <= '0'; 
 
    when Q2 => 
    Z <= '0'; 
 
    when Q3 =>
    Z <= '0'; 
 
    when Q4 =>
    Z <= '1';
    
    end case;
end process out_proc;
end sequenceArch;
