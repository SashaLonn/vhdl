-------------------------------------------------------------------------------
-- Title       : EnDat to incremental and SSI 600 Package File
-------------------------------------------------------------------------------
-- File        : endat_to_inc_ssi_600_pkg.vhd
-- Author      : Robin Johansson (r.joahnsson@leinelinde.se)
-- Created     : 2019-11-11
-------------------------------------------------------------------------------
-- Description : Package file EnDat to incremental and SSI 600
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

package ssi_pkg is

 -----------------------------------------------------------------------------
  -- System Constants
  -----------------------------------------------------------------------------
  constant CLOCK_FREQ_HZ                :integer := 50000000;   -- Hz
  constant CLOCK_FREQ_MHZ               :integer := 50; -- MHz
  constant NR_CLOCKS_PER_01_USEC        :integer := 10;
  constant NR_CLOCKS_PER_1_USEC         :integer := 10 * NR_CLOCKS_PER_01_USEC;
  constant NR_CLOCKS_PER_10_USEC        :integer := 10 * NR_CLOCKS_PER_1_USEC;
  constant NR_CLOCKS_PER_100_USEC       :integer := 10 * NR_CLOCKS_PER_10_USEC;
  constant NR_CLOCKS_PER_1_MS           :integer := 10 * NR_CLOCKS_PER_100_USEC;
  constant NR_CLOCKS_PER_10_MS          :integer := 10 * NR_CLOCKS_PER_1_MS;
  constant NR_CLOCKS_PER_100_MS         :integer := 10 * NR_CLOCKS_PER_10_MS;
  constant NR_CLOCKS_PER_1_S            :integer := 10 * NR_CLOCKS_PER_100_MS;
  
  -- timer signals slave
  constant tm_timer_count               :integer := 12 * NR_CLOCKS_PER_1_USEC - 1;
  signal tm_timer_counter               :integer range 0 to tm_timer_count;
  
  -- timer signals master
  constant timer_count               :integer := 12 * NR_CLOCKS_PER_1_USEC - 1;
  signal timer_counter               :integer range 0 to tm_timer_count;
  
  
end ssi_pkg;
  