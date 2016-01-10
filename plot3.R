source("get_data.R")

# Reformat time
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%Y-%m-%d %H:%M:%S")

# Plot line graph of sub metering 1, 2 and 3 through time
png("plot3.png", width = 480, height = 480)
plot(data$DateTime, data$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "")
lines(data$DateTime, data$Sub_metering_2, col = "red", type = "l")
lines(data$DateTime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd=1)
dev.off()
