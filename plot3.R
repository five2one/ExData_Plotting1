#Exploratory Data Analysis - Course Project 1 - plot3.R
#
source("subpdata.R")   #load data and plot
plot(subsetpower$Datetime,subsetpower$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(subsetpower$Datetime,subsetpower$Sub_metering_2,col="red")
lines(subsetpower$Datetime,subsetpower$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "), 
       lty=1, lwd = 1, cex = 0.5)
#save to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
#