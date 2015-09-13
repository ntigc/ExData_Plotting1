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
## 1. Downloads, unzips and reads the data set to explore
## 2. Filter the data to take only the needed dates
## 3. Create the histogram in the screen and set all 
##    the parameters( Title, X/Y Labels, Colours, etc )
## 4. Copy the plot into the corresponding png device
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
