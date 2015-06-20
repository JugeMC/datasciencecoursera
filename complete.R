complete <- function(directory, id=1:332){
        
        files_list <-list.files(directory, full.names=TRUE) 
        
        dat<-data.frame()
        for (i in id){
                
                mat<-matrix(0,ncol=2,nrow=1)
                mat[1,1]<-i
                mat[1,2]<-sum(complete.cases(read.csv(files_list[i])))
                dat<-rbind(dat,as.data.frame(mat))
        }
        colnames(dat)<-c("id","nobs")
        dat
}  
