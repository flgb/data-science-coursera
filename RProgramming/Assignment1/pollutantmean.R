pollutantmean <- function(directory, pollutant, id = 1:332) {

	## 'directory' is a character vector of length 1 indicating the location of the CSV files
	## 'pollutant' is character vector of length 1 indicating the name of the pollutant for which we will calculate the mean; either "sulfate" or "nitrate".	
  ## 'id' is an integer vector indicating the monitor ID numbers to be used

	## Returns the mean of the pollutant across all monitorins in the 'id' vector (ignoring NA values)

  ## Make sure a valid pollutant has been selected
  if (pollutant != "sulfate" && pollutant != "nitrate") {
    stop("Invalid polutant")
  } 
  
  ## Get file paths
  pollutant_files <- list.files(directory, full.names=TRUE)
  
  ## Initialise a list to hold the data
  pollutant_data <- vector(mode = "list", length = length(pollutant_files))
  
  ## Load all the data from the files into a list where file names match requested IDs
  for (i in seq_along(pollutant_files)) {
    if (i %in% id) {
      pollutant_data[[i]] <- read.csv(pollutant_files[[i]])
    }
  }
  
  ## Convert list to a single data frame
  pollutant_data <- do.call(rbind, pollutant_data)
  
  ## Convert data frame to a vector of the requested pollutant values, omiting NA values
  pollutant_data <- na.omit(pollutant_data[[pollutant]])
  
  ## Return the mean of the values in the vector
  mean(pollutant_data)

}
