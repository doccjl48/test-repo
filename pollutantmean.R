pollutantmean<-function(directory, pollutant, id = 1:332){
       
        filesList<-list.files(directory,full.names=TRUE)
        dat<-data.frame()
        
        for(i in id){
                dat<-rbind(dat,read.csv(filesList[i]))
                
        }

        
        mean(dat[ ,pollutant], na.rm=TRUE)
        
}
