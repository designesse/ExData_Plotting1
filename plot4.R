source("get_data.R")

# Reformat time
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, "%Y-%m-%d %H:%M:%S")

# Plot line graph of sub metering 1, 2 and 3 through time
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

# Top left graph : Global active power through time
plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")

# Top right graph : Voltage through time
plot(data$DateTime, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")

# Bottom left graph : Sub metering 1, 2 and 3 through time
plot(data$DateTime, data$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red", type = "l")
lines(data$DateTime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1, bty = "n")

# Bottom right : Global active power through time
plot(data$DateTime, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

dev.off()
