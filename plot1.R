##******************************************************
## 
##
## Exploratory Data Analysis Course
## Course Project Assignment
## 
##
## Course Code: exdata-032
## Author     : Nicolas Iguchi
## Script     : Plot1.R
##
##
## This script creates the plot number 1 of the Course Assignment.
## (plot1.png file , Frequency of Global Active Power (kW) ) 
##
##
## 01. Downloads, unzips and reads the data set to explore (CleanData.R script)
## 02. Filter the data to take only the needed dates (CleanData.R script)
## 03. Create the histogram in the screen and set all 
##    the parameters( Title, X/Y Labels, Colours, etc )
## 04. Copy the plot into the corresponding png device
##
##******************************************************



#--------------------------------------------------------
# Load the script that loads and cleans the 
# input data Set to create the graphs and 
# executes it
#--------------------------------------------------------
source("cleanData.R")
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
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
