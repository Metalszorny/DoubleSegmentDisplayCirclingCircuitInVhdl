--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.2
--  \   \         Application : sch2hdl
--  /   /         Filename : dirII_hazi.vhf
-- /___/   /\     Timestamp : 11/17/2013 16:08:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/VHDLprojects/tobbmodulos/kisZH1_2013_osz/dirII_hazi.vhf -w C:/VHDLprojects/tobbmodulos/kisZH1_2013_osz/dirII_hazi.sch
--Design Name: dirII_hazi
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity dirII_hazi is
   port ( clk50 : in    std_logic; 
          rst   : in    std_logic; 
          digit : out   std_logic_vector (3 downto 0); 
          seg   : out   std_logic_vector (6 downto 0));
end dirII_hazi;

architecture BEHAVIORAL of dirII_hazi is
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic_vector (1 downto 0);
   signal XLXN_22 : std_logic_vector (2 downto 0);
   signal XLXN_23 : std_logic_vector (2 downto 0);
   component dekad_kij
      port ( bal_fej_allapot  : in    std_logic; 
             jobb_fej_allapot : in    std_logic; 
             cd               : in    std_logic_vector (1 downto 0); 
             bal_allapot      : in    std_logic_vector (2 downto 0); 
             jobb_allapot     : in    std_logic_vector (2 downto 0); 
             digit            : out   std_logic_vector (3 downto 0); 
             seg              : out   std_logic_vector (6 downto 0));
   end component;
   
   component main
      port ( rst              : in    std_logic; 
             clk50            : in    std_logic; 
             jobb_fej_allapot : out   std_logic; 
             bal_fej_allapot  : out   std_logic; 
             jobb_allapot     : out   std_logic_vector (2 downto 0); 
             bal_allapot      : out   std_logic_vector (2 downto 0); 
             cd               : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   XLXI_1 : dekad_kij
      port map (bal_allapot(2 downto 0)=>XLXN_23(2 downto 0),
                bal_fej_allapot=>XLXN_20,
                cd(1 downto 0)=>XLXN_21(1 downto 0),
                jobb_allapot(2 downto 0)=>XLXN_22(2 downto 0),
                jobb_fej_allapot=>XLXN_19,
                digit(3 downto 0)=>digit(3 downto 0),
                seg(6 downto 0)=>seg(6 downto 0));
   
   XLXI_2 : main
      port map (clk50=>clk50,
                rst=>rst,
                bal_allapot(2 downto 0)=>XLXN_23(2 downto 0),
                bal_fej_allapot=>XLXN_20,
                cd(1 downto 0)=>XLXN_21(1 downto 0),
                jobb_allapot(2 downto 0)=>XLXN_22(2 downto 0),
                jobb_fej_allapot=>XLXN_19);
   
end BEHAVIORAL;


