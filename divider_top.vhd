
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity divider_top is
port(clk: in std_logic;
     led0: out std_logic);
end divider_top;

architecture divider_ckt of divider_top is

component clock_div
port(clk: in std_logic;
div: out std_logic);
end component;

signal led: std_logic := '0';
signal div_top: std_logic := '0';

begin

clock_div_ckt: clock_div 
port map(clk => clk,
div => div_top);
                       
process(clk)
begin
if(clk'event and clk = '1') then
   if(div_top = '1') then
      led <= not led;
   end if;
end if;
led0 <= led;
end process;

end divider_ckt;
