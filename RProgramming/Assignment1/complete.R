complete <- function(directory, id = 1:332) {

  ## 'directory' is a character vector of length 1 indicating the location of the CSV files
  ## 'id' is an integer vector indicating the monitor ID numbers to be used

  ## Returns a dataframe of the form -- id, nobs -- where nobs is the number of sets of  
  ## observation sthat are complete for each station ID
  
  # Load the observations for each station ID
  observations <- loadobservations(directory, id)
  
  # Initialise a new data frame where the first column is the ID of each station
  complete_observations <- as.data.frame(id)
  
  # Count the number of complete sets of observations for each station by applying
  # a function to each stations observations that sums the complete cases for that station
  complete_observations["nobs"] <- sapply(observations, function(each_station) { sum(complete.cases(each_station)) })

  # Return the required data frame
  return(complete_observations)
}
  
  
  