-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- Generated on "06/30/2026 09:49:09"
                                                            
-- Vhdl Test Bench template for design  :  ssi_top
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ssi_top_vhd_tst IS
END ssi_top_vhd_tst;
ARCHITECTURE ssi_top_arch OF ssi_top_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MAX10_CLK1_50 : STD_LOGIC := '0';
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 7);
COMPONENT ssi_top
  PORT (
  HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
  MAX10_CLK1_50 : IN STD_LOGIC;
  SW : IN STD_LOGIC_VECTOR(9 DOWNTO 7)
  );
END COMPONENT;
BEGIN
  i1 : ssi_top
  PORT MAP (
-- list connections between master ports and signals
  HEX0 => HEX0,
  HEX1 => HEX1,
  HEX2 => HEX2,
  HEX3 => HEX3,
  HEX4 => HEX4,
  HEX5 => HEX5,
  LEDR => LEDR,
  MAX10_CLK1_50 => MAX10_CLK1_50,
  SW => SW
  );
  
 MAX10_CLK1_50 <=  not MAX10_CLK1_50  after 10 ns;
 SW(9) <= '0', '1' after 205 ns;
 SW(8) <= '0';
 SW(7) <= '1';

                                         
END ssi_top_arch;
