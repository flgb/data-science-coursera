corr <- function(directory, threshold = 0) {
  
  ## 'directory' is a character vector of length 1 indicating the location of the CSV files
  ## 'threshold' is a numeric vector of length 1 indicating the number of completely observed observations (on all variables) required to compute the correlation between nitrate and sulfate; the default is 0
  
  ## Returns a numeric vector of correlations
 
  ## Get all stations with the count of complete observations 
  stations <- complete(directory)
  
  ## Select those stations with enough complete observations
  stations <- subset(stations, stations$nobs > threshold)
  
  ## Load the pollutant observations for each of those stations
  observations <- loadobservations(directory, stations$id)

  ## Calculate correlations between the pollution observarions 
  correlations <- sapply(observations, function(each_station) cor(each_station$sulfate, each_station$nitrate, use = "complete.obs"))

  ## Return the correlations
  return(correlations)
  
}

