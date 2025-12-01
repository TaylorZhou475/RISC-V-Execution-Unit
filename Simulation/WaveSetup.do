onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /execunittb/MeasurementIndex_disp
add wave -noupdate -radix hexadecimal /execunittb/TB_A
add wave -noupdate -radix hexadecimal /execunittb/TB_B
add wave -noupdate -radix hexadecimal /execunittb/TB_Y
add wave -noupdate -radix hexadecimal /execunittb/Y_Expected
add wave -noupdate /execunittb/TB_FuncClass
add wave -noupdate /execunittb/TB_LogicFN
add wave -noupdate /execunittb/TB_ShiftFN
add wave -noupdate /execunittb/TB_AddnSub
add wave -noupdate /execunittb/TB_ExtWord
add wave -noupdate /execunittb/TB_Zero
add wave -noupdate /execunittb/Zero_Expected
add wave -noupdate /execunittb/TB_AltB
add wave -noupdate /execunittb/AltB_Expected
add wave -noupdate /execunittb/TB_AltBu
add wave -noupdate /execunittb/AltBu_Expected
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 220
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
WaveRestoreZoom {0 ps} {500 ns}