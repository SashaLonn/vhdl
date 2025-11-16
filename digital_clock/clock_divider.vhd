------------------
-- Company: AGSTU AB
-- Engineer:  
-- 
-- Create Date 
-- 2025 10 29
--
-- Design Name: clock_divider
--
-- Target Devices: 10M50DAF484C7G
-- Tool versions: Quartus 18.1 and ModelSim
-- 
-- Testbench file: timer_top_level
-- Do file: timer_top_level_run_msim_rtl_vhdl.do

-- Description:
-- A simle computer with a CPU, a ROM, a bus and LED and 7-segment displays to show the state of the CPU 
-- 
-- In_signals:
-- Clock_50   -- 50 MHz system clock
-- Man_clk_n  -- switch to manual clock pulse
-- Key_n      -- The button input when using a manual clock pulse
-- Reset_n    -- reset switch
-- 
-- Out_signals:
-- Hex0   -- 7 segment display for address
-- Hex1   -- 7 segment display for Program counter
-- Hex2   -- 7 segment display for Instruction register
-- Hex3   -- 7 segment display for CPU state
--
-- Validated with "ModelSim - Altera" and verified 10M50DAF484C7G  board
 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 
 entity clock_divider is
   port(
          clock_50     : in std_logic;
          reset_n      : in std_logic;
          clock_1sec   : out std_logic
   
   );
 end entity;
 architecture tls of clock_divider is
 

   signal counter_50     : unsigned (25 downto 0);
   signal clock_1hz      : std_logic := '0';
   constant MAX_COUNT    : integer := 50000000;  -- change vid testing to 10
   
 begin
    clock_1sec <= clock_1hz;
    
     process(clock_50,reset_n)
      begin
        if reset_n = '0'then
           counter_50 <=(others => '0');
           clock_1hz <= '0';
           
        elsif rising_edge (clock_50) then     
            if(counter_50 = MAX_COUNT-1) then
               clock_1hz <= '1';
               counter_50 <=(others => '0'); 
             else 
                clock_1hz <= '0';
                counter_50 <= counter_50 +1;
                    
            end if;      
         end if;
      end process;  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 end architecture;