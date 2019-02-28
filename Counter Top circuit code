library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity counter_top is
port(clk: in std_logic;
sw: in std_logic_vector(3 downto 0);
btn: in std_logic_vector (3 downto 0);
led: out std_logic_vector (3 downto 0));
          
end counter_top;

architecture counter_top_ckt of counter_top is
signal counter_en, counter_clk_en, counter_rst, counter_dir, counter_updn, counter_ld: std_logic;


component clock_div
port(clk  : in std_logic;        
div : out std_logic);
end component;

component debounce
port(clk : in std_logic;
btn : in std_logic;
dbnc : out std_logic);
end component;

component fancy_counter
port(clk : in std_logic;
en : in std_logic;
clk_en : in std_logic;
rst : in std_logic;
cnt : out std_logic_vector(3 downto 0);
dir : in std_logic;
updn : in std_logic;
ld : in std_logic;
val : in std_logic_vector (3 downto 0));
end component;

begin
clock_div_ckt: clock_div
port map(
clk => clk,
div => counter_clk_en);

dbnc0: debounce
port map(clk => clk,
btn => btn(0),
dbnc => counter_rst);

dbnc1: debounce
port map(clk => clk,
btn => btn(1),
dbnc => counter_en);

dbnc2: debounce
port map(clk => clk,
btn => btn(2),
dbnc => counter_updn);

dbnc3: debounce
port map(clk => clk,
btn => btn(3),
dbnc => counter_ld);

fancy_counter_ckt: fancy_counter
port map(clk => clk,
en => counter_en,
clk_en => counter_clk_en,
rst => counter_rst,
dir => sw(0),
updn => counter_updn,
ld => counter_ld,
val => sw,
cnt => led);

end counter_top_ckt;
