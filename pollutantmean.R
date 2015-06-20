pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        #creates a list of files in the specified directory
        files_list <-list.files(directory, full.names=TRUE) 
        
        #creates an empty data frame
        dat <- data.frame()  
        
        #loop to add each data file in the list to the dat dataframe through vector id
        for(i in id) {
                dat<-rbind(dat,(read.csv(files_list[i])))
        }
        #calculate mean for argument pollutant type; remove NAs
        mean(dat[,pollutant], na.rm=TRUE)
}

