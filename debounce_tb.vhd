library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity debounce_tb is
end debounce_tb;

architecture dbnc_tb of debounce_tb is
signal clk_tb, btn_tb, dbnc_tb: std_logic;

component debounce
port (clk: in std_logic;
btn: in std_logic;
dbnc: out std_logic );
end component;

begin
dbncmapping: debounce port map(clk => clk_tb,
btn => btn_tb,
dbnc => dbnc_tb);

clk: process
begin
clk_tb <= '1';
wait for 4 ns;
clk_tb <= '0';
wait for 4 ns;
end process;

btn: process
begin

 wait for 10 ms; 
 btn_tb <= '1';
 wait for 10 ns; 
 btn_tb <= '1';
 wait for 10 ms; 
 btn_tb <= '0';
 wait for 10 ms; 
 btn_tb <= '1';
 wait for 30 ns; 
 btn_tb <= '0';
 wait for 10 ns; 
 btn_tb <= '1';
 wait for 40 ns; 
 btn_tb <= '0';
 wait for 20 ms; 
 btn_tb <= '1';
 wait for 30 ns;  
 btn_tb <= '0';
 wait for 10 ns; 
 btn_tb <= '1';
 wait for 30 ms;  
 btn_tb <= '0';
 wait for 10 ns; 
 btn_tb <= '1';
 wait for 10 ns; 
 btn_tb <= '0';
 wait for 10 ns; 
 btn_tb <= '1';
 wait for 40 ns; 
 btn_tb <= '0';
end process;
