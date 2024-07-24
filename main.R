#main file
#!/usr/bin/env Rscript

source("function_definitions.R")
source("SIP_library_definitions.R")

#take arguments from command line
args <- commandArgs(trailingOnly = TRUE)
#user supplied variables
user_supplied_data_name <- "example_user_data"

source("return_SIP_parameters.R")
