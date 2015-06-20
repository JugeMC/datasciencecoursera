comp <- function(directory, id=1:332){
        
        files_list <- as.data.frame(list.files(directory, full.names=TRUE))
        file_names_df <- data.frame()
        n<-1
        for(i in id){
                file_names_df[n,1]<-files_list[i,1]
                print(i)
                print(file_names_df)
                n<-n+1
        }
        
}            
  #      ids <- as.data.frame(matrix(0,ncol=1,nrow=length(id)))
   #     nobs <- as.data.frame(matrix(0,ncol=1, nrow=length(id)))
    #    colnames(ids)<- "id"
     #   colnames(nobs)<-"nobs"
      #  my_df<-data.frame()
       # n<-1
        #for(i in id) {
                
#                com <- complete.cases(read.csv(files_list[id]))
 #               ids[n,1]<-id
  #              nobs[n,1]<-sum(com)
   #             my_df<-na.omit(cbind(ids,nobs))
    #            as_df<-my_df[which(rowSums(my_df)>0),]
     #           print(id[i])
      #          print(my_df)
       #         n<-n+1
                
  #      }
        
        #rownames(as_df)<-NULL
        
        #as_df
  
