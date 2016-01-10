# Download data at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# Unzip file and move the resulting file "household_power_consumption.txt"
# into your working directory
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
# Only get data for 2007-02-01 and 2007-02-02
data <- data[which(as.character(data$Date) == "1/2/2007" | as.character(data$Date) == "2/2/2007"),]