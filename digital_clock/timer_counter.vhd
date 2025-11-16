------------------
-- Company: AGSTU AB
-- Engineer: Oleksandra Soloviova 
-- 
-- Create Date 
-- 2025-10-29
--
-- Design Name: timer_counter
--
-- Target Devices: 10M50DAF484C7G
-- Tool versions: Quartus 22.1 and ModelSim
-- 
-- Testbench file: timer_top_level
-- Do file: timer_top_level_run_msim_rtl_vhdl.do

-- Description:
-- The timer counter receives an input signal from the clock divider (1 Hz,1 second).
-- It counts real-time seconds, minutes, and hours, and provides these values for display.
-- 
-- In_signals:
-- clock_1sec   -- 1 Hz clock
-- Reset_n    -- reset switch
-- 
-- Out_signals:
--      seconds        
--      minets         
--      hours          

-- Validated with "ModelSim - Altera" and verified 10M50DAF484C7G  board
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity timer_counter is
port(
      clock_50       : in std_logic;
      en_1sec        : in std_logic;
      reset_n        : in  std_logic;
      seconds        : out unsigned (7 downto 0);
      minets         : out unsigned (7 downto 0);
      hours          : out unsigned (7 downto 0)

);
end entity;

architecture rtl of timer_counter is
  signal seconds_intern       :unsigned(7 downto 0);
  signal minets_intern        :unsigned(7 downto 0);
  signal hours_intern         :unsigned(7 downto 0);
  
  begin 
  seconds <= seconds_intern;
  minets <= minets_intern;
  hours <= hours_intern;
  
  process(clock_50, reset_n)
    begin
    if  reset_n = '0' then
        seconds_intern <= (others =>'0');
        minets_intern <= (others => '0');
        hours_intern <=(others => '0');
        
    elsif rising_edge (clock_50) then
          if en_1sec = '1'  then  
             if(seconds_intern = to_unsigned(59, 8)) then            
                 seconds_intern <= (others =>'0');
                 if(minets_intern = to_unsigned(59, 8)) then 
                     minets_intern <= (others => '0');
                     if (hours_intern = to_unsigned(23, 8)) then 
                         hours_intern <= (others => '0');
                     else 
                         hours_intern <= hours_intern +1;
                      end if;
                  else
                     minets_intern <= minets_intern +1;
                  end if;
             else
                  seconds_intern <= seconds_intern +1;
            end if;
         end if;
      end if;
  end process;     

end architecture;












