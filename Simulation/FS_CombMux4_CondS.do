#End any existing simulation
quit -sim

transcript file "../Documentation/OutputFiles/FS_CombMux4_CondS.log"
transcript off

#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile Packages and Components
vcom -work work -2008 -quiet -stats=none "../SourceCode/LogPackage.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Logic Implementation/LogicUnit.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Shifter Implementations/ShfCombMux4.vhd"

#Compile Adder Dependencies
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/FullAdder.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/RippleCarry.vhd"
vcom -work work -2008 -quiet -stats=none "../SourceCode/Adder Implementations/ConditionalSum.vhd"

#Compile ExecUnit and Testbench
vcom -work work -2008 -quiet -stats=none "../SourceCode/ExecUnit.vhd"
vcom -work work -2008 -quiet -stats=none "../Simulation/ExecUnitTB.vhd"

#Compile configuration
vcom -work work -2008 -quiet -stats=none "../SourceCode/Config_CombMux4_CondS.vhd"

#Starts the simulation
vsim -quiet -GTIMING_MEASUREMENT=false work.Config_CombMux4_CondS

#Setup the wave window
do ../Simulation/WaveSetup.do

restart -force
transcript on
run -all
transcript off
wave zoom full
transcript file ""
puts "Functional simulation complete."
	