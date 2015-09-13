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
## Steps Performed
##
## 01. Downloads, unzips and reads the data set to explore (CleanData.R script)
## 02. Filter the data to take only the needed dates (CleanData.R script)
## 03. Splits the screen device in four quadrants
## 04. Create the line graph in the screen for Global Active Power Variable (Plot 1-1)
## 05. Create the line graph in the screen for Voltage Variable (Plot 1-2)
## 06. Create the line graph in the screen for sub_metering_1 variable (Plot 2-1)
## 07. Set all parameters( Title, X/Y Labels, Colours, etc ) (Plot 2-1
## 08. Adds to the graph the line corresponding to sub_metering_2 variable (Plot 2-1)
## 09. Adds to the graph the line corresponding to sub_metering_3 variable (Plot 2-1)
## 10. Add the legend of the graph (Plot 2-1)
## 11. Create the line graph in the screen for Global Reactive Power variable (Plot 2-2)
## 12. Copy the plot into the corresponding png device
##
##******************************************************



#--------------------------------------------------------
# Load the script that loads and cleans the 
# input data Set to create the graphs and 
# executes it
#--------------------------------------------------------
source("CleanData.R")
x <- cleanData()


#--------------------------------------------------------
# Divide the screen in four quadrants
#--------------------------------------------------------
par(mfrow = c(2, 2))


#--------------------------------------------------------
# Create the Plot 1
# (Global Active Power per hour)
#--------------------------------------------------------
with(x, plot(Date, Global_active_power, type = "l", 
     xlab = "",
     ylab = "Global Active Power (kW)")
)

#--------------------------------------------------------
# Create the Plot 2
# (Voltage per hour)
#--------------------------------------------------------
with(x, plot(Date, Voltage, type = "l", 
     xlab = "",
     ylab = "Voltage (V)")
)



#--------------------------------------------------------
# Create the Plot 2
# (Voltage per hour)
#--------------------------------------------------------
with(x, plot(Date, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" ))
with(x, lines(Date, Sub_metering_2, type = "l", col = "red" ))
with(x, lines(Date, Sub_metering_3, type = "l", col = "blue" ))

legend("topright", lty = 1, lwd = 1, bty = "n", cex = 0.7,
        col = c("black", "red", "blue"), 
       legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))



#--------------------------------------------------------
# Create the Plot 4
# Global Reactive Power per Hour
#--------------------------------------------------------
with(x, plot(Date, Global_reactive_power, type = "l", 
             xlab = "datetime",
             ylab = "Global Reactive Power")
)



#--------------------------------------------------------
# Copy the plot to a PNG file
#--------------------------------------------------------
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()
