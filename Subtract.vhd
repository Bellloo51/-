


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Subtract is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           D : out STD_LOGIC_vector(3 downto 0));
end Subtract;
  
architecture Behavioral of Subtract is
    component R4CA 
      Port (A     : in STD_LOGIC_VECTOR(3 downto 0);
            B     : in STD_LOGIC_VECTOR(3 downto 0);
            C_in  : in STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(3 downto 0);
            Carry : out STD_LOGIC);
    end component;
    component compliment_g
        port( B_in : in std_logic_vector;
              B_out : out std_logic_vector);
    end component;
    signal B_comp: std_logic_vector(3 downto 0);

begin
U_comp: compliment_g
    port map(
        B_in => B,
        B_out => B_comp
        );
U_sub: R4CA
    port map(
        A => A,
        B => B_comp,
        C_in => '1',
        Sum => D,
        Carry => open
        );
    
end Behavioral;
