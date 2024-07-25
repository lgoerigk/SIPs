#main file
#!/usr/bin/env Rscript

source("S-SIP_function_definitions.R")
source("S-SIP_library_definitions.R")

#take arguments from command line
args <- commandArgs(trailingOnly = TRUE)
#user supplied variables
user_supplied_data_name <- args[1]

source("return_S-SIP_parameters.R")
