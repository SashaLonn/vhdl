onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /ssi_top_vhd_tst/MAX10_CLK1_50
add wave -noupdate -label reset /ssi_top_vhd_tst/SW(9)
add wave -noupdate -label ssi_mode /ssi_top_vhd_tst/SW(8)
add wave -noupdate -label ssi_data /ssi_top_vhd_tst/i1/ssi_inst_slave/ssi_data
add wave -noupdate -label ssi_clk /ssi_top_vhd_tst/i1/ssi_inst_slave/ssi_clk
add wave -noupdate -label pos_set /ssi_top_vhd_tst/SW(7)
add wave -noupdate -divider {Master SSI}
add wave -noupdate -label ssi_clk /ssi_top_vhd_tst/i1/ssi_inst_master/ssi_clk
add wave -noupdate -label ssi_data /ssi_top_vhd_tst/i1/ssi_inst_master/ssi_data
add wave -noupdate -label ssi_posiont /ssi_top_vhd_tst/i1/ssi_inst_master/ssi_position
add wave -noupdate -divider {MASTER SSI2}
add wave -noupdate -label ssi2_clk /ssi_top_vhd_tst/i1/ssi_inst_master/ssi2_clk_i
add wave -noupdate -label ss2_charge_pulse /ssi_top_vhd_tst/i1/ssi_inst_master/ssi2_charge_signal
add wave -noupdate -label ss2_position /ssi_top_vhd_tst/i1/ssi_inst_master/ssi2_position
add wave -noupdate -label {bit counter} /ssi_top_vhd_tst/i1/ssi_inst_master/ssi2_bit_counter
add wave -noupdate -divider SSI2
add wave -noupdate -label ssi2_data /ssi_top_vhd_tst/i1/ssi_inst_slave/ssi2_data_i
add wave -noupdate -label ssi2_charge_pulse /ssi_top_vhd_tst/i1/ssi_inst_slave/ssi_charge_pulse
add wave -noupdate -label transmit_reg_ssi2 /ssi_top_vhd_tst/i1/ssi_inst_slave/transmit_register_ssi2
add wave -noupdate -divider SSI_Slave
add wave -noupdate -label start_trasmission /ssi_top_vhd_tst/i1/ssi_inst_slave/start_transmission
add wave -noupdate -label ssi_data /ssi_top_vhd_tst/i1/ssi_inst_slave/ssi_data_i
add wave -noupdate -label ssi_transmit_reg /ssi_top_vhd_tst/i1/ssi_inst_slave/transmit_register
add wave -noupdate -label transfer_bit /ssi_top_vhd_tst/i1/ssi_inst_slave/transfer_bit_nr
add wave -noupdate -label tm_timer /ssi_top_vhd_tst/i1/ssi_inst_slave/run_tm_timer
add wave -noupdate -label tramsmission_run /ssi_top_vhd_tst/i1/ssi_inst_slave/transmission_running
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16963270 ps} 0} {{Cursor 2} {54390049197 ps} 0} {{Cursor 7} {1727070 ps} 0} {{Cursor 8} {26283840 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 334
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {6091968 ps}
