#Exploratory Data Analysis - Course Project 1 - plot1.R
#
source("subpdata.R")   #load data and plot
hist(subsetpower$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="Red",ylim = c(0, 1200))
#save to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
#