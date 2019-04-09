library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_div_tb is
end clock_div_tb;

architecture clock_tb of clock_div_tb is
signal clk_tb : std_logic := '0';
signal div_clk_tb : std_logic := '0';

component clock_div is
port(clk  : in std_logic;            
div_clk : out std_logic);
end component;
    
begin   
clkmapping: clock_div 
port map(clk  => clk_tb,
div_clk => div_clk_tb);

process
begin 
clk_tb  <= '1';
wait for 4ns;

clk_tb <='0';
wait for 4ns;

end process;
end clock_tb;        

    
