##******************************************************
## 
##
## Exploratory Data Analysis Course
## Course Project Assignment
## 
##
## Course Code: exdata-032
## Author     : Nicolas Iguchi
## Script     : Plot2.R
##
## This script creates the plot number 2 of the Course Assignment.
## (plot2.png file ,  Global Active Power (kW) per Hour) 
##
##
## 01. Downloads, unzips and reads the data set to explore (CleanData.R script)
## 02. Filter the data to take only the needed dates (CleanData.R script)
## 03. Create the line graph in the screen and set all 
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
# Create the line graph and adds the title
#--------------------------------------------------------
plot(x$Date, x$Global_active_power, type = "l", 
        xlab = "datetime",
        ylab = "Global Active Power (kilowatts)")


#--------------------------------------------------------
# Copy the plot to a PNG file
#--------------------------------------------------------
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()
