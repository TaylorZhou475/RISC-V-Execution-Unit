transcript file FS_BKA_Cyclone.txt
transcript off

#End any existing simulation
quit -sim


#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile the brent kung generator
vcom -work work -2008 -quiet -stats=none ../SourceCode/BrentKungGenerator.vhd

#Compile the BKA
vcom -work work -2008 -quiet -stats=none ../SourceCode/BKA_Cyclone.vhd

#Compile testbench
vcom -work work -2008 -quiet -stats=none ../Simulation/AdderTB.vhd

#Compile configuration (binds rtl)
vcom -work work -2008 -quiet -stats=none ../SourceCode/ConfigAdder.vhd

#Starts the simulation with the right configuration
vsim -gui work.ConfigBKA_rtl

#Setup the wave window
do ../Simulation/WaveSetup.do

# Turn off transcript temporarily to avoid clutter
transcript on
restart -force
run -all

transcript file ""