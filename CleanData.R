
cleanData <- function() {
  
  x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
  
  y <- subset(x, subset = (Date %in% c("1/2/2007", "2/2/2007")))
  
  y$Date <- as.POSIXct(paste(y$Date, y$Time),  format = "%d/%m/%Y %H:%M:%S")
  
  y$Global_active_power <- as.numeric(y$Global_active_power )
  y$Global_reactive_power <- as.numeric(y$Global_reactive_power )
  y$Voltage <- as.numeric(y$Voltage )
  y$Global_intensity <- as.numeric(y$Global_intensity )
  y$Sub_metering_1 <- as.numeric(y$Sub_metering_1)
  y$Sub_metering_2 <- as.numeric(y$Sub_metering_2)
  y$Sub_metering_3 <- as.numeric(y$Sub_metering_3)
  
  y
}