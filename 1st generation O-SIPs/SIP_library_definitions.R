#This file contains
#a list of points (for O-SIPs only) that are not included due to convergence issues
#names of the data files that contain the SIP library

list_of_SIP_libraries <- c("O_SIP_L2", "O_SIP_L3", "O_SIP_Tetra", "O_SIP_Octa")

O_SIP_L2_dataset_name <- "O_SIP_L2.txt"
O_SIP_L2_exclude_values <- c(0.099, 0.098, 0.097)
O_SIP_L2_degrees_of_freedom <- 717


O_SIP_L3_dataset_name <- "O_SIP_L3.txt"
O_SIP_L3_exclude_values <- c(10.58, 10.64, 10.68, 10.70, 10.76, 11.56, 11.58, 11.64, 11.70, 11.90, seq(11.02, 11.52, 0.02))
O_SIP_L3_degrees_of_freedom <- 404


O_SIP_Tetra_dataset_name <- "O_SIP_Tetra_combined.txt"
O_SIP_Tetra_exclude_values <- c(3.06, 3.42, 3.50, 3.54, 3.58, 3.98)
O_SIP_Tetra_degrees_of_freedom <- 338


O_SIP_Octa_dataset_name <- "O_SIP_Octa_combined.txt"
O_SIP_Octa_exclude_values <- c(seq(3.30, 3.50, 0.05), seq(4.50, 4.70, 0.05))
O_SIP_Octa_degrees_of_freedom <- 559

