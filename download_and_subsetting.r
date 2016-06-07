##This scrpt MUST be run first, before the plotting scripts
##It downloads the zip file, uncompress it and then loads it
##into R. Then it creates a subset of it (original file is more than 100mb...)

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","household.zip")
unzip("household.zip")
dummy<-read.csv("household_power_consumption.txt",sep=";",na.strings = "?",header=TRUE)



household<-dummy[66637:69516,]
rm("dummy")
date_vector<-household$Date
time_vector<-household$Time
time_vector_string<-paste0(date_vector,"-",time_vector)
full_time_vector<-strptime(time_vector_string,"%d/%m/%Y-%H:%M:%S")
household_filtered<-cbind(full_time_vector,household[,2:9])
rm("date_vector","full_time_vector","time_vector","time_vector_string","household")
print("You should have now a data frame called household_filtered with 2880 observations and 9 variables")




