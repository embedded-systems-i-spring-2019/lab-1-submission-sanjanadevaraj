library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_div is
port (clk : in std_logic;
  div : out std_logic);
end clock_div;

architecture clk_ckt of clock_div is
signal counter : std_logic_vector (25 downto 0) := (others => '0');

begin
process(clk) 
begin
if rising_edge(clk) then
   if(unsigned(counter) < 62499999) then
      div <= '0';
      counter <= std_logic_vector( unsigned(counter) + 1 );
   else
      counter <= (others => '0');
      div <= '1';
  end if;
end if;
end process;

end clk_ckt;
