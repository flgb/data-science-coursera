pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    ## 'directory' is a character vector of length 1 indicating the location of the CSV files
    ## 'pollutant' is character vector of length 1 indicating the name of the pollutant for which we will calculate the mean; either "sulfate" or "nitrate".	
    ## 'id' is an integer vector indicating the monitor ID numbers to be used
    
    ## Returns the mean of the pollutant across all monitorins in the 'id' vector (ignoring NA values)
    
    ## Make sure a valid pollutant has been selected
    if (pollutant != "sulfate" && pollutant != "nitrate") {
        stop("Invalid polutant")
    } 
    
    ## Load the list of file data and bind it into a single dataframe
    pollutant_data <- do.call(rbind, loadobservations(directory, id))
    
    ## Convert data frame to a vector of the requested pollutant values, omiting NA values
    pollutant_data <- na.omit(pollutant_data[[pollutant]])
    
    ## Return the mean of the values in the vector
    mean(pollutant_data)
    
}
