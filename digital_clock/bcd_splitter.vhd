------------------
-- Company: AGSTU AB
-- Engineer: Oleksandra Soloviova 
-- 
-- Create Date 
-- 2025- 10-30
--
-- Design Name: bcd_splitter
--
-- Target Devices: 10M50DAF484C7G
-- Tool versions: Quartus 22.1 and ModelSim
-- 
-- Testbench file: timer_top_level
-- Do file: timer_top_level_run_msim_rtl_vhdl.do
-- 
-- Description:
-- Description:
-- The BCD splitter component receives the current seconds, minutes, and hours 
-- (in unsigned binary format) and divides each into tens and ones digits.
-- These digits are then sent to the 7-segment display decoder for visualization.

-- In_signals:
--  reset_n   -reset switch
--  seconds           
--  minets          
--  hours            
-- 
-- Out_signals:
--  seconds_tens    - secons tens
--  seconds_ones    - seconds ones
--  minets_tens     - minets tens
--  minets_ones     - minets ones
--  hours_tens      - hours tens
--  hours_ones      - hours ones 
--
-- Validated with "ModelSim - Altera" and verified 10M50DAF484C7G  board
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity bcd_splitter is 
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
end entity;

architecture tls of bcd_splitter is
  
  begin 
   --Seconds
     seconds_tens <= std_logic_vector(to_unsigned(to_integer (seconds) / 10, 4));
     seconds_ones <= std_logic_vector(to_unsigned(to_integer (seconds) mod 10, 4));

     --Minets
     minets_tens <= std_logic_vector(to_unsigned( to_integer (minets) /10,4));
     minets_ones <= std_logic_vector(to_unsigned(to_integer (minets) mod 10,4));
     --Hours
     hours_tens <= std_logic_vector(to_unsigned(to_integer (hours) /10,4));
     hours_ones <= std_logic_vector(to_unsigned(to_integer (hours) mod 10,4));
 
end architecture;