
add wave -noupdate -divider Input
add wave -noupdate  -label seconds sim:/timer_top_level_vhd_tst/i1/timer_counter_instans/seconds_intern
add wave -label minets          sim:/timer_top_level_vhd_tst/i1/timer_counter_instans/minets_intern
add wave -noupdate -label hours sim:/timer_top_level_vhd_tst/i1/timer_counter_instans/hours_intern




update
view structure
view signals
run -all