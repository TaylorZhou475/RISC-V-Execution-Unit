view wave
if {[catch {delete wave *}]} {
    puts "No existing wave to delete, continuing."
}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -radix hexadecimal /addertb/TB_A
add wave -noupdate -radix hexadecimal /addertb/TB_B
add wave -noupdate /addertb/TB_Cin
add wave -noupdate -divider {DUT Outputs}
add wave -noupdate -radix hexadecimal -childformat {{/addertb/TB_S(63) -radix hexadecimal} {/addertb/TB_S(62) -radix hexadecimal} {/addertb/TB_S(61) -radix hexadecimal} {/addertb/TB_S(60) -radix hexadecimal} {/addertb/TB_S(59) -radix hexadecimal} {/addertb/TB_S(58) -radix hexadecimal} {/addertb/TB_S(57) -radix hexadecimal} {/addertb/TB_S(56) -radix hexadecimal} {/addertb/TB_S(55) -radix hexadecimal} {/addertb/TB_S(54) -radix hexadecimal} {/addertb/TB_S(53) -radix hexadecimal} {/addertb/TB_S(52) -radix hexadecimal} {/addertb/TB_S(51) -radix hexadecimal} {/addertb/TB_S(50) -radix hexadecimal} {/addertb/TB_S(49) -radix hexadecimal} {/addertb/TB_S(48) -radix hexadecimal} {/addertb/TB_S(47) -radix hexadecimal} {/addertb/TB_S(46) -radix hexadecimal} {/addertb/TB_S(45) -radix hexadecimal} {/addertb/TB_S(44) -radix hexadecimal} {/addertb/TB_S(43) -radix hexadecimal} {/addertb/TB_S(42) -radix hexadecimal} {/addertb/TB_S(41) -radix hexadecimal} {/addertb/TB_S(40) -radix hexadecimal} {/addertb/TB_S(39) -radix hexadecimal} {/addertb/TB_S(38) -radix hexadecimal} {/addertb/TB_S(37) -radix hexadecimal} {/addertb/TB_S(36) -radix hexadecimal} {/addertb/TB_S(35) -radix hexadecimal} {/addertb/TB_S(34) -radix hexadecimal} {/addertb/TB_S(33) -radix hexadecimal} {/addertb/TB_S(32) -radix hexadecimal} {/addertb/TB_S(31) -radix hexadecimal} {/addertb/TB_S(30) -radix hexadecimal} {/addertb/TB_S(29) -radix hexadecimal} {/addertb/TB_S(28) -radix hexadecimal} {/addertb/TB_S(27) -radix hexadecimal} {/addertb/TB_S(26) -radix hexadecimal} {/addertb/TB_S(25) -radix hexadecimal} {/addertb/TB_S(24) -radix hexadecimal} {/addertb/TB_S(23) -radix hexadecimal} {/addertb/TB_S(22) -radix hexadecimal} {/addertb/TB_S(21) -radix hexadecimal} {/addertb/TB_S(20) -radix hexadecimal} {/addertb/TB_S(19) -radix hexadecimal} {/addertb/TB_S(18) -radix hexadecimal} {/addertb/TB_S(17) -radix hexadecimal} {/addertb/TB_S(16) -radix hexadecimal} {/addertb/TB_S(15) -radix hexadecimal} {/addertb/TB_S(14) -radix hexadecimal} {/addertb/TB_S(13) -radix hexadecimal} {/addertb/TB_S(12) -radix hexadecimal} {/addertb/TB_S(11) -radix hexadecimal} {/addertb/TB_S(10) -radix hexadecimal} {/addertb/TB_S(9) -radix hexadecimal} {/addertb/TB_S(8) -radix hexadecimal} {/addertb/TB_S(7) -radix hexadecimal} {/addertb/TB_S(6) -radix hexadecimal} {/addertb/TB_S(5) -radix hexadecimal} {/addertb/TB_S(4) -radix hexadecimal} {/addertb/TB_S(3) -radix hexadecimal} {/addertb/TB_S(2) -radix hexadecimal} {/addertb/TB_S(1) -radix hexadecimal} {/addertb/TB_S(0) -radix hexadecimal}} -subitemconfig {/addertb/TB_S(63) {-radix hexadecimal} /addertb/TB_S(62) {-radix hexadecimal} /addertb/TB_S(61) {-radix hexadecimal} /addertb/TB_S(60) {-radix hexadecimal} /addertb/TB_S(59) {-radix hexadecimal} /addertb/TB_S(58) {-radix hexadecimal} /addertb/TB_S(57) {-radix hexadecimal} /addertb/TB_S(56) {-radix hexadecimal} /addertb/TB_S(55) {-radix hexadecimal} /addertb/TB_S(54) {-radix hexadecimal} /addertb/TB_S(53) {-radix hexadecimal} /addertb/TB_S(52) {-radix hexadecimal} /addertb/TB_S(51) {-radix hexadecimal} /addertb/TB_S(50) {-radix hexadecimal} /addertb/TB_S(49) {-radix hexadecimal} /addertb/TB_S(48) {-radix hexadecimal} /addertb/TB_S(47) {-radix hexadecimal} /addertb/TB_S(46) {-radix hexadecimal} /addertb/TB_S(45) {-radix hexadecimal} /addertb/TB_S(44) {-radix hexadecimal} /addertb/TB_S(43) {-radix hexadecimal} /addertb/TB_S(42) {-radix hexadecimal} /addertb/TB_S(41) {-radix hexadecimal} /addertb/TB_S(40) {-radix hexadecimal} /addertb/TB_S(39) {-radix hexadecimal} /addertb/TB_S(38) {-radix hexadecimal} /addertb/TB_S(37) {-radix hexadecimal} /addertb/TB_S(36) {-radix hexadecimal} /addertb/TB_S(35) {-radix hexadecimal} /addertb/TB_S(34) {-radix hexadecimal} /addertb/TB_S(33) {-radix hexadecimal} /addertb/TB_S(32) {-radix hexadecimal} /addertb/TB_S(31) {-radix hexadecimal} /addertb/TB_S(30) {-radix hexadecimal} /addertb/TB_S(29) {-radix hexadecimal} /addertb/TB_S(28) {-radix hexadecimal} /addertb/TB_S(27) {-radix hexadecimal} /addertb/TB_S(26) {-radix hexadecimal} /addertb/TB_S(25) {-radix hexadecimal} /addertb/TB_S(24) {-radix hexadecimal} /addertb/TB_S(23) {-radix hexadecimal} /addertb/TB_S(22) {-radix hexadecimal} /addertb/TB_S(21) {-radix hexadecimal} /addertb/TB_S(20) {-radix hexadecimal} /addertb/TB_S(19) {-radix hexadecimal} /addertb/TB_S(18) {-radix hexadecimal} /addertb/TB_S(17) {-radix hexadecimal} /addertb/TB_S(16) {-radix hexadecimal} /addertb/TB_S(15) {-radix hexadecimal} /addertb/TB_S(14) {-radix hexadecimal} /addertb/TB_S(13) {-radix hexadecimal} /addertb/TB_S(12) {-radix hexadecimal} /addertb/TB_S(11) {-radix hexadecimal} /addertb/TB_S(10) {-radix hexadecimal} /addertb/TB_S(9) {-radix hexadecimal} /addertb/TB_S(8) {-radix hexadecimal} /addertb/TB_S(7) {-radix hexadecimal} /addertb/TB_S(6) {-radix hexadecimal} /addertb/TB_S(5) {-radix hexadecimal} /addertb/TB_S(4) {-radix hexadecimal} /addertb/TB_S(3) {-radix hexadecimal} /addertb/TB_S(2) {-radix hexadecimal} /addertb/TB_S(1) {-radix hexadecimal} /addertb/TB_S(0) {-radix hexadecimal}} /addertb/TB_S
add wave -noupdate /addertb/TB_Cout
add wave -noupdate /addertb/TB_Ovfl
add wave -noupdate -divider {Expected Outputs}
add wave -noupdate -radix hexadecimal {/addertb/S_Expected}
add wave -noupdate /addertb/Cout_Expected
add wave -noupdate /addertb/Ovfl_Expected
add wave -noupdate -divider {Test Case Number}
add wave -noupdate /addertb/MeasurementIndex_disp
TreeUpdate [SetDefaultTree]
quietly wave cursor active 1
configure wave -namecolwidth 150
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


