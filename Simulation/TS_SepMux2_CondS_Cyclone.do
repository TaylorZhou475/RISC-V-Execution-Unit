#End any existing simulation
quit -sim

transcript file "../Documentation/OutputFiles/TS_SepMux2_CondS_Cyclone.log"
transcript off

#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile timing architecture
vcom -work work -2008 -quiet -stats=none ../Simulation/ModelSim/SepMux2_CondS_Cyclone.vho

#Compile Testbench
vcom -work work -2008 -quiet -stats=none "../Simulation/ExecUnitTB.vhd"

#Compile configuration
vcom -work work -2008 -quiet -stats=none "../SourceCode/Config_SepMux2_CondS.vhd"

#Starts the simulation
vsim -quiet -t 100ps -gui -GTIMING_MEASUREMENT=true -sdftyp /ExecUnitTB/DUT=../Simulation/ModelSim/SepMux2_CondS_Cyclone.sdo work.Config_SepMux2_CondS_Timing


#Setup the wave window
do ../Simulation/WaveSetup.do

restart -force
transcript on
run -all
transcript off
wave zoom full
transcript file ""
puts "Functional simulation complete."