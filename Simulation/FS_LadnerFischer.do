transcript file "../Documentation/OutputFiles/FS_LadnerFischer.log"
transcript off

#End any existing simulation
quit -sim


#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work


#Compile the BKA
vcom -work work -2008 -quiet -stats=none ../SourceCode/LadnerFischer.vhd

#Compile testbench
vcom -work work -2008 -quiet -stats=none ../Simulation/AdderTB.vhd

#Compile configuration (binds rtl)
vcom -work work -2008 -quiet -stats=none ../SourceCode/ConfigAdder.vhd

#Starts the simulation with the right configuration
vsim -quiet -GTIMING_MEASUREMENT=false work.ConfigLFA_rtl

#Setup the wave window
do ../Simulation/WaveSetup.do


restart -force

transcript on
run -all
transcript off
wave zoom full

transcript file ""
puts "Functional simulation complete."