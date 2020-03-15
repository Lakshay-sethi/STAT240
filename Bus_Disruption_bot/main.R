#***************************************************************************************************************************************
#                             Project: Bus Disruptions
#***************************************************************************************************************************************
#install.packages("lubridate","stringr")
library(lubridate)  # For function round_date                                         
library(stringr)    # For functions str_dectect,str_extract,str_replace

load("/cloud/project/midterm/translink.RData")                           # Loading the twitter data


translink<-function(year,month,date,hour){
  size=length(data)                                                      # Finding the length of the data file.
  answer<-list(start=NULL,stop=NULL)
  for(i in 1:size) 
  {
     data[[i]]$created<-round_date(data[[i]]$created,unit = "hour")      # Converting the time stamp into hour:00:00 format.               
     data[[i]]$text<-tolower(data[[i]]$text)                             # Converting all text into lower case.
  }
  Selected_date<-paste(as.character(year),"-",as.character(month),"-",as.character(date)," ",as.character(hour),":00:00 UTC",sep="")    # Using User given data to form a date
  for(i in 1:size)
    {
         if(Selected_date==data[[i]]$created && str_detect(data[[i]]$text,regex('clear|clears|over|overs|end|ended', ignore_case = T))&&!str_detect(data[[i]]$text,regex('SkyTrain|WCE', ignore_case = T)))
           answer$stop=paste(answer$stop,data[[i]]$text)                  # Concatenating all the tweets found at the selected time
         if(Selected_date==data[[i]]$created && !str_detect(data[[i]]$text,regex('SkyTrain|WCE|clear|clears|over|overs|end', ignore_case = T))&&str_detect(data[[i]]$text,regex('detour|detours|delay', ignore_case = T)))
           answer$start=paste(answer$start,data[[i]]$text)                # Concatenating all the tweets found at the selected time
         
         answer$stop=str_extract_all(answer$stop,"r?\\d+(?!(:|\\w| rd))",simplify = FALSE)    # Cleaning the text          
         answer$start=str_extract_all(answer$start,"r?\\d+(?!(:|\\w| rd))",simplify = FALSE)  # Cleaning the text 

  }
 
  return(answer)
}





