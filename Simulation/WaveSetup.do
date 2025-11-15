view wave
if {[catch {delete wave *}]} {
    puts "No existing wave to delete ? continuing."
}
add wave -divider "DUT Signals"
add wave sim:/AdderTB/TB_A
add wave sim:/AdderTB/TB_B
add wave sim:/AdderTB/TB_Cin
add wave sim:/AdderTB/TB_S
add wave sim:/AdderTB/TB_Cout
add wave sim:/AdderTB/TB_Ovfl

wave zoom range 0ns 20000ns
