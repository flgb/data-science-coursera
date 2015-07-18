library(stringi)

loadobservations <- function(directory = "specdata", id = 1:332) {
    
    ## Load observation data from the directory for each station identified by ID
    
    # Function to read a station file given the ID of the station
    getfiledata <- function(id) {
        filepath <- paste0(directory, "/", stri_pad_left(id, 3, pad = "0"), ".csv")
        read.csv(filepath)
    }
    
    # Return a list of file data for each staion ID
    return(lapply(id, getfiledata))
    
}

