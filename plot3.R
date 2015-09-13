##******************************************************
## 
##
## Exploratory Data Analysis Course
## Course Project Assignment
## 
##
## Course Code: exdata-032
## Author: Nicolas Iguchi
##
##
## This script creates the plot number 3 of the Course Assignment.
## (plot3.png file) 
##
##
## 1. Reads and merges all sets, activity names and subject 
##    files into a single data Set
## 2. Merges both train and test data sets in a single one
## 3. Gets the activity name for all sets by joining the
##    ActivityLabel DataSet
## 4. Select only the needed variables, naming them
##    based on the features.txt file
## 5. Copy the plot into the corresponding png device
##
##******************************************************


source("C:/Users/tebo/GitHubRepos/ExData_Plotting1/CleanData.R")
x <- cleanData()

#--------------------------------------------------------
# Read the parameter files
#--------------------------------------------------------
with(x, plot(Date, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" ))
with(x, lines(Date, Sub_metering_2, type = "l", col = "red" ))
with(x, lines(Date, Sub_metering_3, type = "l", col = "blue" ))

legend("topright", col = c("black", "blue", "red"), legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))



dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()
