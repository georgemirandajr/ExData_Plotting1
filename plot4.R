h <- read.table("C:/Users/e525902/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings = "?", header = T, sep = ";")

subhouse1 <- h[h$Date == "1/2/2007", ]

subhouse2 <- h[h$Date == "2/2/2007", ]

house <- data.frame(rbind(subhouse1, subhouse2))

day <- paste(house$Date, house$Time)  ##creates a new day and time column 

z <- strptime(day, "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2))

plot(z, house$Global_active_power, type = "l", lwd = 1, ylab = "Global Active Power", xlab = "")

plot(z, house$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(z, house$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "", cex.lab = .70, cex.axis = .80)

lines(z, house$Sub_metering_1, type = "l")
lines(z, house$Sub_metering_2, type = "l", col = "red")
lines(z, house$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty = c(1, 1, 1), col = c("black", "red", "blue"), cex = .70)

plot(z, house$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.copy(png, file = "plot4.png")

dev.off()