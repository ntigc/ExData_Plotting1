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
## This script creates the plot number 4 of the Course Assignment.
## (plot4.png file) 
##
##
## 1. Reads and merges all sets, activity names and subject 
##    files into a single data Set
##
## 2. Merges both train and test data sets in a single one
## 3. Gets the activity name for all sets by joining the
##    ActivityLabel DataSet
## 4. Select only the needed variables, naming them
##    based on the features.txt file
## 5. Copy the plot into the corresponding png device
##
##******************************************************


#--------------------------------------------------------
# Load the used libraries
#--------------------------------------------------------
library("dplyr")
library("tidyr")

#--------------------------------------------------------
# Read the parameter files
#--------------------------------------------------------
activities <- read.table( file = "activity_labels.txt", 
                          header = FALSE, 
                          col.names = c( "activity_id", "activity_name" )
                          )



par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))

title(main = "Global Active Power")


dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()
