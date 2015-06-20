corr <- function(directory, threshold = 0){
        
        files_list <-list.files(directory, full.names=TRUE) 
        
        y<-c()
        
        for (i in 1:length(files_list)) {
                x<- na.omit(read.csv(files_list[i]))   
                sulf <- x[,2]
                nitr <- x[,3]
                
                if(nrow(x)>threshold) {
                y[i]<- cor(sulf,nitr)     
                        
                }
                
                }
        
    na.omit(y)
}