------------------
-- Company: AGSTU AB
-- Engineer: Oleksandra Soloviova
-- 
-- Create Date 
-- 2025-10-27
--
-- Design Name:timer_top_level
--
-- Target Devices: 10M50DAF484C7G
-- Tool versions: Quartus 22.1 and ModelSim
-- 
-- Testbench file: timer_top_level
-- Do file: timer_top_level_run_msim_rtl_vhdl.do
-- 
-- Description:
-- A simple digital clock timer that counts seconds, minutes, and hours.
-- The time is displayed on six 7-segment displays (HH:MM:SS).
-- 
-- In_signals:
-- Clock_50   -- 50 MHz system clock
-- Reset_n    -- reset switch 0
-- 
-- Out_signals:
-- Hex0   -- 7 segment display for seconds ones
-- Hex1   -- 7 segment display for seconds tens
-- Hex2   -- 7 segment display for minets ones
-- Hex3   -- 7 segment display for minets tens
-- Hex4   -- 7 segment display for hours ones
-- Hex5   -- 7 segment display for hours ones
--
-- Validated with "ModelSim - Altera" and verified 10M50DAF484C7G  board

 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 
 entity timer_top_level is
   port(
          clock_50   :in std_logic;
          reset_n    :in std_logic;
          HEX0      : out std_logic_vector(6 DOWNTO 0);
          HEX1      : out std_logic_vector(6 DOWNTO 0);
          HEX2      : out std_logic_vector(6 DOWNTO 0);
          HEX3      : out std_logic_vector(6 DOWNTO 0);
          HEX4      : out std_logic_vector(6 DOWNTO 0);
          HEX5      : out std_logic_vector(6 DOWNTO 0)

   );
 end entity;
 
 architecture tls of timer_top_level is
 
   signal reset_t1_n            :  std_logic;
   signal reset_t2_n            :  std_logic;
   signal counter_1sec          :  unsigned (25 downto 0);
   signal HEX0_internal         :  std_logic_vector(6 downto 0);
   signal HEX1_internal         :  std_logic_vector(6 downto 0);
   signal HEX2_internal         :  std_logic_vector(6 downto 0);
   signal HEX3_internal         :  std_logic_vector(6 downto 0);
   signal HEX4_internal         :  std_logic_vector(6 downto 0);
   signal HEX5_internal         :  std_logic_vector(6 downto 0);
   signal seconds_internal      :  unsigned (7 downto 0);
   signal minets_internal       :  unsigned (7 downto 0);
   signal hours_internal        :  unsigned (7 downto 0);
   signal en_1sec_internal   :  std_logic;
   
   signal seconds_tens_bcd      : std_logic_vector(3 downto 0);
   signal seconds_ones_bcd      : std_logic_vector(3 downto 0);
   signal min_tens_bcd          : std_logic_vector(3 downto 0);
   signal min_ones_bcd          : std_logic_vector(3 downto 0);
   signal hour_tens_bcd         : std_logic_vector(3 downto 0);
   signal hour_ones_bcd         : std_logic_vector(3 downto 0);



component clock_divider
     port(
          clock_50     : in std_logic;
          reset_n      : in std_logic;
          clock_1sec   : out std_logic
   
   );
end component;

component timer_counter
     port(
      clock_50       : in std_logic;
      en_1sec        : in std_logic;
      reset_n        : in  std_logic;
      seconds        : out unsigned (7 downto 0);
      minets         : out unsigned (7 downto 0);
      hours          : out unsigned (7 downto 0)

    );
end component;

component bcd_splitter
     port(
      
      reset_n           : in  std_logic;
      seconds           : in unsigned (7 downto 0);
      minets            : in unsigned (7 downto 0);
      hours             : in unsigned (7 downto 0);
      seconds_tens      : out std_logic_vector (3 downto 0);
      seconds_ones      : out std_logic_vector (3 downto 0);
      minets_tens       : out std_logic_vector (3 downto 0);
      minets_ones       : out std_logic_vector (3 downto 0);
      hours_tens        : out std_logic_vector (3 downto 0);
      hours_ones        : out std_logic_vector (3 downto 0) 
     );
end component;

component status_display_system
    port(
    
      seconds_tens      : in std_logic_vector (3 downto 0);
      seconds_ones      : in std_logic_vector (3 downto 0);
      minets_tens       : in std_logic_vector (3 downto 0);
      minets_ones       : in std_logic_vector (3 downto 0);
      hours_tens        : in std_logic_vector (3 downto 0);
      hours_ones        : in std_logic_vector (3 downto 0);
   
   
      seg_seconds_tens      : out std_logic_vector (6 downto 0);
      seg_seconds_ones      : out std_logic_vector (6 downto 0);
      seg_minets_tens       : out std_logic_vector (6 downto 0);
      seg_minets_ones       : out std_logic_vector (6 downto 0);
      seg_hours_tens        : out std_logic_vector (6 downto 0);
      seg_hours_ones        : out std_logic_vector (6 downto 0) 
    
    );
end component;
   
 begin
 
    HEX0 <= HEX0_internal;
    HEX1 <= HEX1_internal;
    HEX2 <= HEX2_internal;
    HEX3 <= HEX3_internal;
    HEX4 <= HEX4_internal;
    HEX5 <= HEX5_internal;    
    
    
    reset_p: process(clock_50,reset_n)
      begin
        if reset_n = '0'then
          reset_t1_n <= '0';
          reset_t2_n <=  '0';
        elsif rising_edge (clock_50) then
          reset_t1_n <= '1';
          reset_t2_n <= reset_t1_n;      
         end if;
      end process;
   
    clock_divider_instans: clock_divider
    port map(
      clock_50   => clock_50,
      reset_n    => reset_t2_n,
      clock_1sec => en_1sec_internal
     );

   timer_counter_instans : timer_counter
   port map (
      clock_50       => clock_50,
      en_1sec        => en_1sec_internal,
      reset_n        => reset_t2_n,
      seconds        => seconds_internal,
      minets         => minets_internal,
      hours          => hours_internal

   );
   bcd_splitter_instans : bcd_splitter
   port map(
              
      reset_n         => reset_t2_n,
      seconds         => seconds_internal,
      minets          => minets_internal,
      hours           => hours_internal,
      seconds_tens    => seconds_tens_bcd,
      seconds_ones    => seconds_ones_bcd,
      minets_tens     => min_tens_bcd,
      minets_ones     => min_ones_bcd,
      hours_tens      => hour_tens_bcd,
      hours_ones      => hour_ones_bcd 
     
   
   );
   
   status_display_system_instans : status_display_system
   port map(
   
      seconds_tens     => seconds_tens_bcd,
      seconds_ones     => seconds_ones_bcd,
      minets_tens      => min_tens_bcd,
      minets_ones      => min_ones_bcd,
      hours_tens       => hour_tens_bcd,
      hours_ones       => hour_ones_bcd, 
   
      seg_seconds_ones       =>HEX0_internal,
      seg_seconds_tens       =>HEX1_internal,
      seg_minets_ones        =>HEX2_internal,
      seg_minets_tens        =>HEX3_internal,
      seg_hours_ones         =>HEX4_internal,
      seg_hours_tens         =>HEX5_internal   
   );


 
 end architecture;