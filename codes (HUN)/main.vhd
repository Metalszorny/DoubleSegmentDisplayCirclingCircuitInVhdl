library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main is

	-- Port declaration
    Port ( 
		   rst : in STD_LOGIC;
		   clk50 : in STD_LOGIC;
           jobb_allapot : out  STD_LOGIC_VECTOR (2 downto 0);
           bal_allapot : out  STD_LOGIC_VECTOR (2 downto 0);
           cd : out  STD_LOGIC_VECTOR (1 downto 0);
           jobb_fej_allapot : out  STD_LOGIC;
           bal_fej_allapot : out  STD_LOGIC
		  );
		   
end main;

architecture Behavioral of main is

	 -- Signal declaration for refresh
     signal frissit_szlo : std_logic_vector(31 downto 0); -- Signal for the refresh of the display
	 signal frissit_rst : std_logic_vector(31 downto 0); -- Signal for the refresh of the display in the reset state
     signal bal_frissit : std_logic_vector(31 downto 0); -- Signal for the refresh of the left segment pair state
     signal jobb_frissit : std_logic_vector(31 downto 0); -- Signal for the refresh of the right segment pair state
     signal bal_fej_frissit : std_logic_vector(31 downto 0); -- Signal for the refresh of the left head segment state
     signal jobb_fej_frissit : std_logic_vector(31 downto 0); -- Signal for the refresh of the right head segment state
	 
	 -- Constant declaration for refresh times
     constant fo_ido : std_logic_vector (31 downto 0) := conv_std_logic_vector (50000, 32); -- The refresh time of the drawing
     constant bal_ido : integer := 5e7; -- 1sec = 1Hz, the refresh time of the left segment pair
     constant jobb_ido : integer := 2*5e7; -- 2sec = 0,5Hz, the refresh time of the right segment pair
     constant bal_fej_ido : integer := 125*5e4; -- 4Hz = 0.25sec, the refresh time of the left head segment
     constant jobb_fej_ido : integer := 25*5e5; -- 2Hz = 0.5sec, the refresh time of the right head segment
	 
	 -- Signal declaration for segments and display
	  signal jobb_fej : std_logic := '1'; -- The right head segment blink control
	  signal bal_fej : std_logic := '1'; -- The left head segment blink control
	  signal bal : std_logic_vector (2 downto 0); -- The right segment pair states
	  signal jobb : std_logic_vector (2 downto 0); -- The left segment pair states
	  signal c_d : std_logic_vector (1 downto 0); -- The four 7 segment display control
	  
begin
	 process (clk50, c_d, frissit_szlo, rst, bal, jobb, bal_frissit, jobb_frissit, bal_fej, jobb_fej, bal_fej_frissit, jobb_fej_frissit, frissit_rst)
          begin 
		  
			   -- Reset state
               if rst = '1' then
			   
					-- Set the values to default
                    jobb <= (others => '0');
                    bal <= (others => '0');
                    bal_fej <= '1';
                    jobb_fej <= '1';
                    frissit_szlo <= (others => '0');
                    bal_frissit <= (others => '0');
                    jobb_frissit <= (others => '0');
                    bal_fej_frissit <= (others => '0');
                    jobb_fej_frissit <= (others => '0');
					
						  -- Inner clock signal
						  if clk50'event and clk50 = '1' then
						       frissit_rst <= frissit_rst + 1;
							   
							   -- Display change
						       if (frissit_rst = fo_ido - 1) then
									c_d <= c_d + 1;
									frissit_rst <= (others => '0');
								end if;
								
						  end if;
						  
			   -- Clock signal
               elsif clk50'event and clk50 = '1' then
			   
					-- The clocks are ticking
					frissit_rst <= (others => '0');
                    frissit_szlo <= frissit_szlo + 1;
                    bal_frissit <= bal_frissit + 1;
                    jobb_frissit <= jobb_frissit + 1;
                    bal_fej_frissit <= bal_fej_frissit + 1;
                    jobb_fej_frissit <= jobb_fej_frissit + 1;
					
					-- The display is changing
                    if (frissit_szlo = fo_ido - 1) then
                         c_d <= c_d + 1;
                         frissit_szlo <= (others => '0');
                    end if;
					
					-- The state change of the left segment pair
					if (bal_frissit = bal_ido - 1) then
						bal <= bal + 1;
						bal_frissit <= (others => '0');
					end if;
								
					-- The state change of the right segment pair
					if (jobb_frissit = jobb_ido - 1) then
						jobb <= jobb + 1;
						jobb_frissit <= (others => '0');
					end if;
					
					-- The blinking of the left head segment
                    if (bal_fej_frissit = bal_fej_ido - 1) then
                         bal_fej <= not bal_fej;
                         bal_fej_frissit <= (others => '0');
                    end if;
					
					-- The blinking of the right head segment
                    if (jobb_fej_frissit = jobb_fej_ido - 1) then
                         jobb_fej <= not jobb_fej;
                         jobb_fej_frissit <= (others => '0');
                    end if;
					
			   end if;
			   
     end process;
	 
	  -- Set the values of the ports
	  jobb_fej_allapot <= jobb_fej;
	  bal_fej_allapot <= bal_fej;
	  jobb_allapot <= jobb;
	  bal_allapot <= bal;
	  cd <= c_d;
	  
end Behavioral;

