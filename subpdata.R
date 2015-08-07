#Exploratory Data Analysis - Course Project 1 - get n load data
#
#Estimating RAM requirement for data: 2,075,259 rows x 9 cols
# = 2,075,259 × 9 × 8 bytes/numeric = 149,418,648 bytes
# = 149,418,648 / 2^20 bytes/MB
# = 142.49 MB (no problem for my computer)
#
if (!"household_power_consumption.txt" %in% list.files()) {
    #download file from source, unzip and read file into memory
    fileUrl1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl1, dest="hpowerc.zip", mode="wb") 
    file <- unzip ("hpowerc.zip")
}
#check if subset data is already available in memory, if not create it, 
#else reuse to save time while running subsequent plotting scripts
if (!"subsetpower" %in% ls()) {
    filetxt <- "./household_power_consumption.txt"
    powerc <- read.table(filetxt, header=T, sep=";", colClasses = c("character", "character", rep("numeric",7)), na = "?")
    #
    #convert Date format and filter required dates
    powerc$Date <- as.Date(powerc$Date, format="%d/%m/%Y")
    subsetpower <- subset(powerc, Date == "2007-02-01" | Date == "2007-02-02")
    #
    #merge date and time variable
    datetime <- paste(as.Date(subsetpower$Date), subsetpower$Time)
    subsetpower$Datetime <- as.POSIXct(datetime)
    print("subsetpower loaded")
}

