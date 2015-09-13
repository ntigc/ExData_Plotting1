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
## This script creates the plot number 1 of the Course Assignment.
## (plot1.png file) 
##
##
## 1. Downloads, extracts and reads the data set to explore
##
## 2. Merges both train and test data sets in a single one
## 3. Gets the activity name for all sets by joining the
##    ActivityLabel DataSet
## 4. Select only the needed variables, naming them
##    based on the features.txt file
##
## 5. Copy the plot into the corresponding png device
##
##******************************************************



#--------------------------------------------------------
# Load the used libraries
#--------------------------------------------------------
library("dplyr")
library("tidyr")

source("C:/Users/tebo/GitHubRepos/ExData_Plotting1/CleanData.R")

x <- cleanData()


#--------------------------------------------------------
# Create the histogram and adds the title
#--------------------------------------------------------
hist(x$Global_active_power, 
        col = "red", 
        xlab = "Global Active Power (kilowatts)",
        main = "Global Active Power")


#--------------------------------------------------------
# Copy the plot to a PNG file
#--------------------------------------------------------
dev.copy(png, file = "C:/Users/tebo/GitHubRepos/ExData_Plotting1/plot1.png", height = 480, width = 480)
dev.off()
