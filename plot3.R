##******************************************************
## 
##
## Exploratory Data Analysis Course
## Course Project Assignment
## 
##
## Course Code: exdata-032
## Author     : Nicolas Iguchi
## Script     : Plot3.R
##
## This script creates the plot number 3 of the Course Assignment.
## (plot3.png file, Sub Metering per hour) 
##
##
## Steps Performed
##
## 01. Downloads, unzips and reads the data set to explore (CleanData.R script)
## 02. Filter the data to take only the needed dates (CleanData.R script)
## 03. Create the line graph in the screen for sub_metering_1 variable
## 04. Set all parameters( Title, X/Y Labels, Colours, etc )
## 05. Adds to the graph the line corresponding to sub_metering_2 variable
## 06. Adds to the graph the line corresponding to sub_metering_3 variable
## 07. Add the legend of the graph
## 08. Copy the plot into the corresponding png device
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
# Create the line graph for sub_metering_1 variable 
# and sets the axis labels
#--------------------------------------------------------
with(x, plot(Date, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" ))

#--------------------------------------------------------
# Add the lines for sub_metering_2 and sub_metering_3 variables
#--------------------------------------------------------
with(x, lines(Date, Sub_metering_2, type = "l", col = "red" ))
with(x, lines(Date, Sub_metering_3, type = "l", col = "blue" ))


#--------------------------------------------------------
# Add the legend to the graph
#--------------------------------------------------------
legend("topright", lty = 1, lwd = 1, 
          col = c("black", "red", "blue"), 
       legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))


#--------------------------------------------------------
# Copy the plot to a PNG file
#--------------------------------------------------------
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()
