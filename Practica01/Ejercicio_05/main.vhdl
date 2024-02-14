library ieee;
use ieee.std_logic_1164.all;

entity main is
  port
  (
    clk   : in std_logic;
    ssg0  : out std_logic_vector(6 downto 0);
    ssg1  : out std_logic_vector(6 downto 0);
    carry : out std_logic
  );
end entity;

architecture arqmain of main is
  signal clkl             : std_logic                   := '0';
  signal contador         : integer range 0 to 25000000 := 0;
  signal conteo1, conteo2 : integer                     := 0;
  signal bandera1         : std_logic                   := '0';
  signal bandera2         : std_logic                   := '0';
begin
  u1 : entity work.divfreq(rtl) port map
    (clk, clkl);
  d1 : entity work.ss7(arqss7) port
    map(conteo1, ssg0);
  d2 : entity work.ss7(arqss7) port
    map(conteo2, ssg1);

  -- Proceso del contador 1
  process (clkl)
  begin
    if (rising_edge(clkl)) then
      if (conteo1 = 9) then
        conteo1  <= 0; -- salida 1
        bandera1 <= '1'; -- salida 2
          else
          conteo1  <= conteo1 + 1;
        bandera1 <= '0';
      end if;
    end if;
  end process;
  carry <= bandera1;

  -- Proceso del contador 2;
  process (bandera1)
  begin
    if (rising_edge(bandera1)) then
      if (conteo2 = 9) then
        conteo2  <= 0;
        bandera2 <= '1';
      else
        conteo2  <= conteo2 + 1;
        bandera2 <= '0';
      end if;
    end if;
  end process;
end architecture;