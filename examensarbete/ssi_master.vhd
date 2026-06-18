library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ssi_pkg.all;

entity ssi_master is 
port (
    clk                       :in  std_logic;
    reset_n                   :in  std_logic;  --  used for simulation
    rxd                       :in  std_logic ;
    txd                       :out std_logic;
    ssi_clk                   :out std_logic;
    ssi_data                  :in  std_logic;
    ssi2_charge_signal        :out std_logic; -- extra signal for SSI 2 
    ssi2_mode                 :in  std_logic
);
end ssi_master;

architecture rtl of ssi_master is

  signal ssi_clk_i                   :std_logic;
  --ssi signals
  signal ssi_clk_hp_counter         :integer range 0 to 49999;  
  signal ssi_clk_hp_count           :integer range 0 to 49999;
  signal ssi_bit_counter            :integer range 0 to 13;
  signal ssi_bit_count              :integer range 0 to 13; 
  signal run_ssi_clk_counter        :std_logic;
  signal run_pt_counter             :std_logic;
  signal ssi_position              :std_logic_vector(14 - 1 downto 0);
   
  --ssi2 signals 
  signal ssi2_clk_i                  :std_logic;
  signal ssi2_clk_i_old              :std_logic;
  signal charge_signal_i             :std_logic;
  signal ssi2_charge_pulse_counter_l :integer range 0 to 20;
  signal ssi2_charge_pulse_counter_h :integer range 0 to 5;
  signal ssi2_clk_hp_counter         :integer range 0 to 49999;  
  signal ssi2_clk_hp_count           :integer range 0 to 49999;
  signal ssi2_bit_counter            :integer range 0 to 13;
  signal ssi2_bit_count              :integer range 0 to 13;
  signal ssi2_position               :std_logic_vector(16 - 1 downto 0);
  --signal ssi2_position               :std_logic_vector(POS_BYTE_WIDTH * 8 - 1 downto 0);

  signal ssi2_position_g_to_b        :std_logic_vector(16 - 1 downto 0);
  signal charge_pulse_en             :std_logic;
  signal new_position_ssi2           :std_logic;
  
  
  --signal position_ssi2                :std_logic_vector(POS_BYTE_WIDTH * 8 - 1 downto 0);
  signal position_ssi2                :std_logic_vector(16 - 1 downto 0);
  signal position_ssi2_read           :std_logic_vector(14 - 1 downto 0);
  signal position_ssi2_parity_r       :std_logic_vector(14- 1 downto 0);
  signal nr_pos_bytes_ssi2            :integer range 0 to 13;
  signal ssi2_first_reading           :std_logic;
  signal ssi2_pos_ready               :std_logic;
  signal parity                       :std_logic := '0';
  signal parity_check                 :std_logic := '0';
  signal parity_check_r               :std_logic := '0';
  signal eval_parity                  :std_logic := '0';
  signal parity_error                 :std_logic := '0';
  signal start_receiving              :std_logic;
  signal low_ready                    :std_logic;
  
  type ssi2_state_type                 is (IDLE,RECEIVING,STORE_DATA);
  signal ssi2_state                    :ssi2_state_type;
begin

  ssi_clk <= ssi2_clk_i when ssi2_mode = '1' else ssi_clk_i;
  
  
ssi_proc: process(reset_n, clk) 
begin
  if reset_n = '0' then 
    ssi_clk_i           <= '1';
    ssi_clk_hp_counter  <= 0;
    run_ssi_clk_counter <= '1';
    run_pt_counter      <= '0';
    ssi_bit_counter     <= 0;
    
  elsif clk 'event and clk = '1' then
  
    if run_ssi_clk_counter = '1' then  
      if ssi_clk_hp_counter = ssi_clk_hp_count then
        ssi_clk_hp_count <= 0;
        ssi_clk_i <= not ssi_clk_i;
        if ssi_clk_i = '0' then
          if ssi_bit_counter < ssi_bit_count  then
            ssi_position(0)              <= ssi_data;
            ssi_position(14 - 1 downto 1)  <= ssi_position(14- 2 downto 0);
            ssi_bit_counter                <= ssi_bit_counter + 1;            
            if ssi_bit_counter = ssi_bit_count  then
              ssi_bit_counter  <= 0;
              run_ssi_clk_counter <= '0';
              run_pt_counter      <= '1';
            end if;
          end if;
        end if;
      end if;  
    else
      ssi_clk_hp_counter <= ssi_clk_hp_count + 1;
    end if;
      
    
    if run_pt_counter = '1' then
      if pt_counter >= pt_count then
        run_pt_counter  <= '0';
        pt_counter      <= 0;
      else
        pt_counter      <= pt_counter + 1;
      end if;
    end if;
    
  
  end if;
end process;
  
  
  ssi2_proc:process (reset_n, clk)
  begin
  if reset_n = '0' then   
    ssi2_clk_hp_counter    <=  0;
    ssi2_clk_i_old         <= '0';
    ssi2_clk_i             <= '0';
  elsif clk'event and clk  = '1' then
      if ssi2_clk_hp_counter = ssi2_clk_hp_count then
        ssi2_clk_hp_counter  <= 0;
        ssi2_clk_i           <= not ssi2_clk_i; 
      else 
        ssi2_clk_hp_counter  <= ssi2_clk_hp_counter + 1;
        ssi2_clk_i_old       <= ssi2_clk_i;      
      end if;  
  end if;
end process;

ssi2_charge_signal_proc:process (reset_n,clk)
begin
  if reset_n = '0' then
    charge_signal_i              <= '1';
    start_receiving              <= '0';
    low_ready                    <= '0';
    ssi2_charge_pulse_counter_h  <= 0;
    ssi2_charge_pulse_counter_l  <= 0;
  elsif clk' event and clk = '1' then 
    start_receiving <= '0';   
    if ssi2_clk_i_old = '1'and ssi2_clk_i = '0' and charge_pulse_en = '1' then    
      if ssi2_charge_pulse_counter_l < 19 then
        charge_signal_i     <= '0';
        ssi2_charge_pulse_counter_l   <= ssi2_charge_pulse_counter_l + 1;
      else
        low_ready          <= '1';
      end if;
      
      if low_ready = '1' then  
        if ssi2_charge_pulse_counter_h < 4 then 
          charge_signal_i    <= '1';
          ssi2_charge_pulse_counter_h <= ssi2_charge_pulse_counter_h + 1;      
        else
          ssi2_charge_pulse_counter_h <=  0;
          ssi2_charge_pulse_counter_l <=  0;
          start_receiving             <= '1';  
          low_ready                   <= '0';  
        end if;
      end if;      
    end if;
  end if;
end process;

ss2_clock_in_data:process (reset_n,clk)
begin
  if reset_n = '0' then
    ssi2_bit_counter        <=  0;
    ssi2_position           <= (others => '0');
    ssi2_position_g_to_b    <= (others => '0');
    position_ssi2           <= (others => '0');
    position_ssi2_read      <= (others => '0');
    new_position_ssi2       <= '0';
    nr_pos_bytes_ssi2       <=  0;
    ssi2_pos_ready          <= '0';
    ssi2_state              <= IDLE;
    eval_parity             <= '0';  
    parity                  <= '0';  
    parity_check            <= '0';  
    parity_check_r          <= '0';  
    parity_error            <= '0';  
  elsif clk' event and clk   = '1' then
    new_position_ssi2 <= '0';    
    if eval_parity  = '1' then  
      parity       <= parity xor ssi_data;
      parity_check <= not parity;
      eval_parity  <= '0';
    end if;
    
    case ssi2_state is 
      when IDLE => 
        if start_receiving = '1' then
          ssi2_state      <= RECEIVING;
          parity          <= '0';
          parity_check    <= '0';  
        else
          ssi2_state <= IDLE;
        end if;
      when RECEIVING =>
        if  ssi2_clk_i_old = '1'and ssi2_clk_i = '0' then
          if ssi2_bit_counter < ssi2_bit_count  then
            ssi2_position(15)              <= ssi_data;
            ssi2_position(16 - 2 downto 0) <= ssi2_position(16- 1 downto 1);
            ssi2_bit_counter               <= ssi2_bit_counter + 1;
            eval_parity                    <= '1';
          end if;
            
          if ssi2_bit_counter = ssi2_bit_count  then
            ssi2_bit_counter  <= 0;
            position_ssi2     <= ssi2_position;
            nr_pos_bytes_ssi2 <= 2;
            ssi2_pos_ready    <='1';
            ssi2_state        <= STORE_DATA;
          end if;
        end if; 
      when STORE_DATA =>
        if ssi2_pos_ready = '1' then
          if position_ssi2 (15) /= parity_check then
            parity_error                    <= '1';
            position_ssi2_read(13 downto 0) <= (others => '1');
            ssi2_state                      <= IDLE;
          else        
            position_ssi2_read(13 downto 0)     <= position_ssi2(14 downto 1);
            new_position_ssi2                   <= '1';
            parity_check_r                      <= parity_check;  
            ssi2_pos_ready                      <= '0';
            position_ssi2_parity_r(15 downto 0) <=  position_ssi2(15 downto 0); 
            ssi2_state                          <= IDLE;
          end if;             
        end if;
      when others =>
        ssi2_state <= IDLE;  
    end case;  
  end if;
end process;




end architecture;


