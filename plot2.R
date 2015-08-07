#Exploratory Data Analysis - Course Project 1 - plot2.R
#
source("subpdata.R")   #load data and plot
plot(subsetpower$Datetime, subsetpower$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
#save to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
#