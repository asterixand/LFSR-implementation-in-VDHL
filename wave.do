onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /test_lfsr/clk
add wave -noupdate -radix unsigned /test_lfsr/rst
add wave -noupdate -radix unsigned /test_lfsr/DUT/D123456
add wave -noupdate -radix unsigned /test_lfsr/prn
add wave -noupdate -radix unsigned /test_lfsr/full_period
add wave -noupdate -radix unsigned -childformat {{/test_lfsr/DUT/prn(2) -radix unsigned} {/test_lfsr/DUT/prn(1) -radix unsigned} {/test_lfsr/DUT/prn(0) -radix unsigned}} -subitemconfig {/test_lfsr/DUT/prn(2) {-radix unsigned} /test_lfsr/DUT/prn(1) {-radix unsigned} /test_lfsr/DUT/prn(0) {-radix unsigned}} /test_lfsr/DUT/prn
add wave -noupdate -radix unsigned /test_lfsr/DUT/clk
add wave -noupdate -radix unsigned /test_lfsr/DUT/rst
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5766563 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 40
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1300 ns} {1780642 ps}
