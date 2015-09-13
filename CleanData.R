##******************************************************
## 
##
## Exploratory Data Analysis Course
## Course Project Assignment
## 
##
## Course Code: exdata-032
## Author     : Nicolas Iguchi
## Script     : CleanData.R
##
## This script contains a function that performs the
## download, read and filter of the input data Set
##
##
##
## Steps Performed
## ---------------
##
## 1. Downloads, unzips and reads the data set to explore
## 2. Filter the data to take only the needed dates
## 3. Convert 
##
##******************************************************

cleanData <- function() {
  
  if(!file.exists("household_power_consumption.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile = "household_power_consumption.zip"
                    )
    unzip("household_power_consumption.zip")
  }
  
  dataSet <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
  
  cleanDataSet <- subset(dataSet, subset = (Date %in% c("1/2/2007", "2/2/2007")))
  
  #---------------------------------------------------------------
  #  Format the Date Value to a POSIXct Data Type
  #---------------------------------------------------------------
  cleanDataSet$Date <- as.POSIXct(paste(cleanDataSet$Date, cleanDataSet$Time),  
                                      format = "%d/%m/%Y %H:%M:%S")
  
  #---------------------------------------------------------------
  #  Format the rest of the variables as numeric
  #---------------------------------------------------------------
  cleanDataSet$Global_active_power <- as.numeric(cleanDataSet$Global_active_power )
  cleanDataSet$Global_reactive_power <- as.numeric(cleanDataSet$Global_reactive_power )
  cleanDataSet$Voltage <- as.numeric(cleanDataSet$Voltage )
  cleanDataSet$Global_intensity <- as.numeric(cleanDataSet$Global_intensity )
  cleanDataSet$Sub_metering_1 <- as.numeric(cleanDataSet$Sub_metering_1)
  cleanDataSet$Sub_metering_2 <- as.numeric(cleanDataSet$Sub_metering_2)
  cleanDataSet$Sub_metering_3 <- as.numeric(cleanDataSet$Sub_metering_3)
  
  cleanDataSet
}