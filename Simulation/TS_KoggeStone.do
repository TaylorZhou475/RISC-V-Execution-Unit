

# Start transcript
transcript file "../Documentation/OutputFiles/TS_KoggeStone.log"
transcript off

#End any existing simulation
quit -sim

#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile vho file
vcom -work work -2008 -quiet -stats=none ../Simulation/ModelSim/KoggeStone.vho

#Compile testbench
vcom -work work -2008 -quiet -stats=none ../Simulation/AdderTB.vhd

#Compile configuration (binds structure)
vcom -work work -2008 -quiet -stats=none ../SourceCode/ConfigAdder.vhd


#Starts the simulation with the right configuration
vsim -quiet -t 100ps -gui -GTIMING_MEASUREMENT=true -sdftyp /AdderTB/DUT=../Simulation/ModelSim/KoggeStone.sdo work.ConfigKSA_structure


#Setup the wave window
do ../Simulation/WaveSetup.do


restart -force
transcript on
run -all
transcript off
wave zoom full
transcript file ""
