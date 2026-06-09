library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ssi_top is

  port (
    clk                       :in  std_logic;
    reset_n                   :in  std_logic;  --  used for simulation
    rxd                       :in  std_logic ;
    txd                       :out std_logic;
    ssi_clk                   :out std_logic;
    ssi_data                  :in  std_logic;
    ssi_data_dir              :out std_logic;
    ssi_clk_dir               :out std_logic;
    ssi2_charge_signal        :out std_logic; -- extra signal for SSI 2 
    ssi2_charge_signal_dir    :out std_logic; -- extra signal for SSI 2 
    led_1                     :out std_logic;
    led_2                     :out std_logic

  );
end entity ssi_top;

architecture rtl of ssi_top is

--    
----  -- reset signals
--  signal reset_n                      :std_logic:= '0' ;    --comment during simulation
--  signal reset_n1                     :std_logic:= '0' ;
--  signal reset_n2                     :std_logic:= '0' ;
begin



  ssi_clk_dir             <= '1';
  ssi_data_dir            <= '0'; 
  ssi2_charge_signal_dir  <= '1';
 
ssi_inst: entity work.ssi_master
  generic map (
    CLOCK_FREQUENCY       =>100000000
   )
  port map( 
    reset_n               => reset_n,
    clk                   => clk,
    rxd                   => rxd,
    txd                   => txd,
    ssi_clk               => ssi_clk,
    ssi_data              => ssi_data,
    ssi2_charge_signal    => ssi2_charge_signal,
    --leds, for dev
    led_1                 => led_1,
    led_2                 => led_2,    
    rs485_port_is_ssi     => open
    );
   
--sync_reset : process (clk)
---- Generate internal reset, the three reset signals are powered up low through synthesis constrainst
--begin
--  if clk'event and clk = '1' then
--    reset_n2 <= '1';
--    reset_n1 <= reset_n2;
--    reset_n  <= reset_n1;
--
--  end if;
--end process;
end architecture;