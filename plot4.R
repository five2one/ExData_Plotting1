#Exploratory Data Analysis - Course Project 1 - plot4.R
#
source("subpdata.R")   #load data and plot
#set parameters
par(mfrow=c(2,2), mar=c(4,4,2,2), oma=c(0,0,2,0))
#Plot at top-left
plot(subsetpower$Datetime, subsetpower$Global_active_power, type="l",
     ylab="Global Active Power", xlab="")
#Plot at top-right
plot(subsetpower$Datetime,subsetpower$Voltage, type="l", xlab="datetime", ylab="Voltage")
#Plot at bottom-left
plot(subsetpower$Datetime,subsetpower$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(subsetpower$Datetime,subsetpower$Sub_metering_2,col="red")
lines(subsetpower$Datetime,subsetpower$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "),
       bty = "n",  y.intersp = 0.3, lty = 1, lwd = 0.5, cex = 0.5)
#Plot at bottom-right
plot(subsetpower$Datetime,subsetpower$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
#save to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
#