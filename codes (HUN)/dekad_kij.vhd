library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dekad_kij is

	-- Port declaration.
    Port ( 
		   digit : out  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           cd : in  STD_LOGIC_VECTOR (1 downto 0);
           bal_fej_allapot : in  STD_LOGIC;
           jobb_fej_allapot : in  STD_LOGIC;
           bal_allapot : in  STD_LOGIC_VECTOR (2 downto 0);
           jobb_allapot : in  STD_LOGIC_VECTOR (2 downto 0)
		  );
		   
end dekad_kij;

architecture Behavioral of dekad_kij is
begin

-- The four 7 digit display state change.
digit <= "1110" when cd = "00" else
         "1101" when cd = "01" else
         "1011" when cd = "10" else
         "0111" when cd = "11";

-- The states of the 7 segment displays.
seg <= "1101110" when (bal_allapot = "000" and cd = "11" and bal_fej_allapot = '1') or (jobb_allapot = "011" and cd = "01" and jobb_fej_allapot = '1') else
       "1010111" when (bal_allapot = "001" and cd = "11" and bal_fej_allapot = '1') or (jobb_allapot = "010" and cd = "01" and jobb_fej_allapot = '1') else
       "1110101" when (bal_allapot = "100" and cd = "10" and bal_fej_allapot = '1') or (jobb_allapot = "111" and cd = "00" and jobb_fej_allapot = '1') else
       "1111010" when (bal_allapot = "101" and cd = "10" and bal_fej_allapot = '1') or (jobb_allapot = "110" and cd = "00" and jobb_fej_allapot = '1') else
       "1111110" when (bal_allapot = "000" and cd = "11" and bal_fej_allapot = '0') or (bal_allapot = "110" and cd = "11" and bal_fej_allapot = '1') or
                      (bal_allapot = "111" and cd = "10") or (jobb_allapot = "100" and cd = "00" and jobb_fej_allapot = '1')  or
                      (jobb_allapot = "101" and cd = "01") or (jobb_allapot = "110" and cd = "00" and jobb_fej_allapot = '0') else
       "1110111" when (bal_allapot = "010" and cd = "10" and bal_fej_allapot = '1') or (bal_allapot = "011" and cd = "11") or
                      (bal_allapot = "100" and cd = "10" and bal_fej_allapot = '0') or (jobb_allapot = "000" and cd = "01" and jobb_fej_allapot = '1') or
                      (jobb_allapot = "001" and cd = "00") or (jobb_allapot = "010" and cd = "01" and jobb_fej_allapot = '0') else
       "1011111" when (bal_allapot = "001" and cd = "11" and bal_fej_allapot = '0') or (bal_allapot = "111" and cd = "11" and bal_fej_allapot = '1') or
                      (jobb_allapot = "100" and cd = "01") else
       "1111101" when (bal_allapot = "110" and cd = "10") or (jobb_allapot = "101" and cd = "00" and jobb_fej_allapot = '1') or
                      (jobb_allapot = "111" and cd = "00" and jobb_fej_allapot = '0') else
       "1101111" when (bal_allapot = "010" and cd = "11") or (jobb_allapot = "001" and cd = "01" and jobb_fej_allapot = '1') or
                      (jobb_allapot = "011" and cd = "01" and jobb_fej_allapot = '0') else
       "1111011" when (bal_allapot = "011" and cd = "10" and bal_fej_allapot = '1') or (bal_allapot = "101" and cd = "10" and bal_fej_allapot = '0') or
                      (jobb_allapot = "000" and cd = "00") else
       "1111111";
	   
end Behavioral;

