#End any existing simulation
quit -sim

transcript file "../Documentation/OutputFiles/TS_CombMux2_KS_Arria.log"
transcript off

#Deletes the old work library and recreates a work library
vdel -lib work -all
vlib work
vmap work work

#Compile timing architecture
vcom -work work -2008 -quiet -stats=none ../Simulation/ModelSim/CombMux2_KS_Arria.vho

#Compile Testbench
vcom -work work -2008 -quiet -stats=none "../Simulation/ExecUnitTB.vhd"

#Compile configuration
vcom -work work -2008 -quiet -stats=none "../SourceCode/Config_CombMux2_KS.vhd"

#Starts the simulation
vsim -quiet -t 100ps -gui -GTIMING_MEASUREMENT=true -sdftyp /ExecUnitTB/DUT=../Simulation/ModelSim/CombMux2_KS_Arria.sdo work.Config_CombMux2_KS


#Setup the wave window
do ../Simulation/WaveSetup.do

restart -force
transcript on
run -all
transcript off
wave zoom full
transcript file ""
puts "Functional simulation complete."