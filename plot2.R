source("get_data.R")

# Reformat time
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%Y-%m-%d %H:%M:%S")

# Plot line graph of global active power through time
png("plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)
dev.off()
