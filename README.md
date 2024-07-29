# SIPs
Self-Interaction Potentials (SIPs)

Note that the SIPs are currently written with the software package R.

Both R and the basic IDE Rstudio are free.

Ensure you have downloaded R from their website: 
https://cran.r-project.org/

If you do not have an IDE (integrate development environment) but wish to use one, consider Rstudio:
https://posit.co/download/rstudio-desktop/

If you do not have R already installed, there is a web browser version that may work. It has yet to be tested.
https://github.com/r-wasm/webr/





To use either the O-SIPs or the S-SIPs first download the zip archive

(1) Prepare your own .txt file
It must be a .txt file, [unless you change the function "read_SIE_estimates" on line 80 of the function_definiton.R file]
NOTE: please provide energies in Hartree

This file must contain a header, and one of the header names must be: SIE_estimate
NOTE: the header "SIE_estimate" is case sensitive
NOTE: please provide energies for the "SIE_estimate" in Hartree

It can be placed at any column, but the header name must be defined exactly as the variable name defined in the function "predict_parameters" of the function_definition.R file

There is an example input supplied in the zip archive titled: example_user_data.txt

To run the script on command line:
(2a) Extract and navigate to the directory using terminal
(3a) On command line, type:

(4a) Rscript main.R example_user_data.txt

Where "example_user_data.txt" is a text file found in the zip archive. 
It is a minimal example of the user supplied data


OR alternatively

To run the script using the IDE:
(2b) open main.R using your IDE of choice
(3b) in line 10, replace "args[1]" with "example_user_data.txt"
FROM        user_supplied_data_name <- args[1]
TO          user_supplied_data_name <- example_user_data.txt

(4b) run the script



(5) several .csv files with the appropriate contraction coefficient and gaussian exponent to correct for your "SIE_estimate" will be returned

Input those parameters into ECP calculation using your favourite quantum chemistry software code
