library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity R4CA is
      Port (A     : in STD_LOGIC_VECTOR(3 downto 0);
            B     : in STD_LOGIC_VECTOR(3 downto 0);
            C_in  : in STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(3 downto 0);
            Carry : out STD_LOGIC);
end R4CA;
architecture Behavioral of R4CA is
  component FA
        Port (
            A     : in STD_LOGIC;
            B     : in STD_LOGIC;
            C_in  : in STD_LOGIC;
            Sum   : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;
    signal C1, C2, C3 : STD_LOGIC;
begin
FA0 : FA
    port map (
        A     => A(0),
        B     => B(0),
        C_in  => C_in,
        Sum   => Sum(0),
        Carry => C1
    );
FA1 : FA
    port map (
        A     => A(1),
        B     => B(1),
        C_in  => C1,
        Sum   => Sum(1),
        Carry => C2
    );
FA2 : FA
    port map (
        A     => A(2),
        B     => B(2),
        C_in  => C2,
        Sum   => Sum(2),
        Carry => C3
    );
FA3 : FA
    port map (
        A     => A(3),
        B     => B(3),
        C_in  => C3,
        Sum   => Sum(3),
        Carry => Carry
    );
end Behavioral; 
