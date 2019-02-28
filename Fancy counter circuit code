library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity fancy_counter is
port(clk : in std_logic;
en : in std_logic;
clk_en : in std_logic;
rst : in std_logic;
cnt : out std_logic_vector(3 downto 0);
dir : in std_logic;
updn : in std_logic;
ld : in std_logic;
val : in std_logic_vector (3 downto 0));
end fancy_counter;

architecture fancy_counter_ckt of fancy_counter is

signal fc_dir : std_logic;
signal fc_val : std_logic_vector(3 downto 0);
signal intial_fc_dir_val :std_logic :='0';
signal fc_counter : std_logic_vector(3 downto 0);
signal intial_fc_counter_val :std_logic_vector(3 downto 0):="0000";
begin

cnt <= fc_counter;

process(clk)
begin

if en ='1' then
   if (rising_edge(clk)) then
      if (rst = '1') then
       fc_counter <= (others => '0');
          elsif clk_en ='1' then 
             if ld ='1' then 
             fc_val <=val; 
       end if;    
   if updn ='1' then 
      fc_dir <= dir;
   end if;
   if fc_dir =  intial_fc_dir_val then 
       if (fc_counter = fc_val) then 
       fc_counter<= (others => '0'); 
       else 
        fc_counter <= std_logic_vector((unsigned(fc_counter)+1)); 
       end if;
   end if;
   if fc_dir ='1' then 
      if (fc_counter > intial_fc_counter_val) then 
        fc_counter<= std_logic_vector((unsigned(fc_counter)-1));
      else 
      fc_counter<= fc_val; 
      end if;
   end if;
  end if;
end if;
end if;
 
end process;

end fancy_counter_ckt;
