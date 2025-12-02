#End any existing simulation
quit -sim

transcript file "../Documentation/OutputFiles/FS_SepMux4_KS.log"
transcript off

#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile Packages and Components
vcom -work work -2008 -quiet -stats=none "../SourceCode/LogPackage.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Logic Implementation/LogicUnit.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Shifter Implementations/ShfSepMux2.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Shifter Implementations/ShfSepMux4.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Shifter Implementations/SHfCombMux2.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Shifter Implementations/ShfCombMux4.vhd"


#Compile Adder Dependencies
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/FullAdder.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/RippleCarry.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/CarrySkip.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/KoggeStone.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/ConditionalSum.vhd"

#Compile ExecUnit and Testbench
vcom -work work -2008 -quiet -stats=none "../SourceCode/ExecUnit.vhd"
vcom -work work -2008 -quiet -stats=none "../Simulation/ExecUnitTB.vhd"

#Compile configuration
vcom -work work -2008 -quiet -stats=none "../SourceCode/Config_SepMux4_KS.vhd"

#Starts the simulation
vsim -quiet -GTIMING_MEASUREMENT=false work.Config_SepMux4_KS

#Setup the wave window
do ../Simulation/WaveSetup.do

restart -force
transcript on
run -all
transcript off
wave zoom full
transcript file ""
puts "Functional simulation complete."
	