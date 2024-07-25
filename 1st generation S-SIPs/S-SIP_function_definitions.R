


############################################################ return_SIP_dataset_name
return_SIP_dataset_name <- function(SIP_NAME){
  name <- paste0(SIP_NAME,".txt")
  return(name)
}
############
############################################################ return_SIP_exclude_values
return_SIP_exclude_values <- function(SIP_NAME){
  name <- paste0(SIP_NAME,"_exclude_values")
  return(name)
}
############
############################################################ return_SIP_degrees_of_freedom
return_SIP_degrees_of_freedom <- function(SIP_NAME){
  name <- paste0(SIP_NAME,"_degrees_of_freedom")
  return(name)
}
############


############################################################ read_SIP_library
read_SIP_library <- function(dataset){
  #read ecp data 
  readfile <- read.table(file = paste0(dataset), header = TRUE, fill = TRUE, na.strings = "") 

  
  #force correct exponents and coefficients to be numeric data
  readfile$Exponent <- as.numeric(as.character(readfile$Exponent))
  readfile$Coefficient <- as.numeric(as.character(readfile$Coefficient))
  
  return(readfile)
}
############


############################################################ exclude_list_of_distances
#Distances excluded blah blah
exclude_list_of_distances <- function(dataset, distance_exclude_list){
  #remove points that did not converge
  ecpData <- dataset[!dataset$Distance %in% distance_exclude_list,]

return(ecpData)

}
############


############################################################ calculate_SIE
calculate_SIE <- function(dataset){
  SIE_values <- dataset$DFA_Energy - dataset$HF_Energy
  return(SIE_values)
}
############


############################################################ exponent_fit_to_spline
exponent_fit_to_spline <- function(dataset, degrees_of_freedom){
  x=dataset$Energy
  y=dataset$Exponent
  spline_fit <- lm(y~splines::bs(x, degree=1, intercept = FALSE, df = degrees_of_freedom))
  return(spline_fit)
}
############


############################################################ coefficient_fit_to_spline
coefficient_fit_to_spline <- function(dataset, degrees_of_freedom){
  x=dataset$Energy
  y=dataset$Coefficient
  spline_fit <- lm(y~splines::bs(x, degree=1, intercept = FALSE, df = degrees_of_freedom))
  return(spline_fit)
}
############


############################################################ read_SIE_estimates
read_SIE_estimates <- function(dataset){
  readfile <- read.table(file = paste0(dataset,".txt"), header = TRUE, fill = TRUE, na.strings = "") 
  return(readfile)
}
############


############################################################ predict_parameters
predict_parameters <- function(dataset){
  dataset$contraction_coefficient <- predict(fitted_coefficients, newdata=list(x=-dataset$SIE_estimate))
  dataset$gaussian_exponent <- predict(fitted_exponents, newdata=list(x=-dataset$SIE_estimate))
  return(dataset)
}
############
