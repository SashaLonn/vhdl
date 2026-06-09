-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/28/2026 11:32:23"
                                                            
-- Vhdl Test Bench template for design  :  ssi_slave
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ssi_slave_vhd_tst IS
END ssi_slave_vhd_tst;
ARCHITECTURE ssi_slave_arch OF ssi_slave_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL disable_Linedriver : STD_LOGIC;
--SIGNAL position : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL ssi2_mode : STD_LOGIC;
SIGNAL ssi_charge_dir : STD_LOGIC;
SIGNAL ssi_charge_pulse : STD_LOGIC;
SIGNAL ssi_clk : STD_LOGIC := '0';
SIGNAL ssi_clk_dir : STD_LOGIC;
SIGNAL ssi_data : STD_LOGIC;
COMPONENT ssi_slave
  PORT (
  clk : IN STD_LOGIC;
  disable_Linedriver : OUT STD_LOGIC;
--  position : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
  reset_n : IN STD_LOGIC;
  ssi2_mode : IN STD_LOGIC;
  ssi_charge_dir : OUT STD_LOGIC;
  ssi_charge_pulse : IN STD_LOGIC;
  ssi_clk : IN STD_LOGIC;
  ssi_clk_dir : OUT STD_LOGIC;
  ssi_data : OUT STD_LOGIC
  );
END COMPONENT;
BEGIN
  i1 : ssi_slave
  PORT MAP (
-- list connections between master ports and signals
  clk => clk,
  disable_Linedriver => disable_Linedriver,
  --position => position,
  reset_n => reset_n,
  ssi2_mode => ssi2_mode,
  ssi_charge_dir => ssi_charge_dir,
  ssi_charge_pulse => ssi_charge_pulse,
  ssi_clk => ssi_clk,
  ssi_clk_dir => ssi_clk_dir,
  ssi_data => ssi_data
  );
  
   
  ssi_inst: entity work.ssi_slave
  port map (
    clk                   => clk,
    -- external communication
    ssi_clk               => ssi_clk,        
    ssi_charge_pulse      =>ssi2_charge_signal,      
    ssi_data              => ssi_data,
    reset_n               => reset_n
   );


 clk <=  not clk  after 5 ns;
 reset_n <= '0', '1' after 100 ns;
 ssi2_mode <= '1';
 ssi_clk <=  not ssi_clk  after 500 ns;
 
 charge_proc:process
 begin
 loop
 ssi_charge_pulse <= '1';
 wait for 5 us;
 ssi_charge_pulse <='0';
 wait for 20 us;
 end loop;
 end process;  
 

  
    
END ssi_slave_arch;
