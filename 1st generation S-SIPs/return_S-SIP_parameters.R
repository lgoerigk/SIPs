#create a set of SIP parameters for a given set of SIE_estimate values
for (SIP_library in list_of_SIP_libraries) {
  #current library
  desired_SIP_library <- SIP_library

  #extract relevant hard coded values for that correspond to each SIP library
  dataset_name <- return_SIP_dataset_name(desired_SIP_library)
  exclude_value_name <- return_SIP_exclude_values(desired_SIP_library)
  degrees_of_freedom_name <- return_SIP_degrees_of_freedom(desired_SIP_library)
  
  #parse the names as the actual values themselves
  degrees_of_freedom<- eval(parse(text = degrees_of_freedom_name))
  
  #read dataset for desired SIP library
  raw.data <- read_SIP_library(dataset_name)
  
  #fit the data to splines
  fitted_exponents <- exponent_fit_to_spline(raw.data, degrees_of_freedom)
  fitted_coefficients <- coefficient_fit_to_spline(raw.data, degrees_of_freedom)
  
  #read the user-supplied file that contains the column written verbatim as: SIE_estimate
  user_file_supplied.data <- read_SIE_estimates(user_supplied_data_name)
  
  #predict the contraction coefficient and the gaussian exponent
  parameterised_user_file.data <- predict_parameters(user_file_supplied.data)
  
  write.csv(parameterised_user_file.data,paste0("output_",desired_SIP_library,"_",user_supplied_data_name, ".csv"))

}
