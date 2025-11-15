To run the timing simulation

1. Go to your simulation settings and then more settings, then turn everything to off
2. Compile your adder to create your vho and sdo files, everytime you change your adder implementation you need to recompile
3. I would suggest renaming them into something identifiable, because it automatically uses your project name instead of top level entity name
4. Modfify the config files to include both your rtl architecture (your functional simulation and your structural architecture (The generated vho for the timing simulation)
5. Set up your your .do file for functional and timing simulations, make sure things are compiled in the correct order!!!
6. Run the simulation and see if it works
