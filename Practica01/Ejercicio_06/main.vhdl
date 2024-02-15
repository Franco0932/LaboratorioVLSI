library ieee;
use ieee.std_logic_1164.all;

entity main is
  port (
    clk   : in std_logic;
    ssg0  : out std_logic_vector(6 downto 0);
    ssg1  : out std_logic_vector(6 downto 0);
    ssg2  : out std_logic_vector(6 downto 0);
    ssg3  : out std_logic_vector(6 downto 0);
    reset : in std_logic;
    carry : out std_logic
  );
end entity;

architecture arqmain of main is
  signal clkl                           : std_logic := '0';
  signal count1, count2, count3, count4 : integer   := 0;
  signal flag1, flag2, flag3, flag4     : std_logic := '0';
  signal rst                            : std_logic := '0';
begin
  u1 : entity work.divfreq(rtl) port map (clk, clkl);
  c1 : entity work.cont(arqcont)
    generic map(max_count => 9)
    port map(clkl, count1, rst, flag1);
  c2 : entity work.cont(arqcont)
    generic map(max_count => 5)
    port map(flag1, count2, rst, flag2);
  c3 : entity work.cont(arqcont)
    generic map(max_count => 9)
    port map(flag2, count3, rst, flag3);
  c4 : entity work.cont(arqcont)
    generic map(max_count => 2)
    port map(flag3, count4, rst, flag4);
  d1 : entity work.ss7(arqss7) port map(count1, ssg0);
  d2 : entity work.ss7(arqss7) port map(count2, ssg1);
  d3 : entity work.ss7(arqss7) port map(count3, ssg2);
  d4 : entity work.ss7(arqss7) port map(count4, ssg3);

end architecture;