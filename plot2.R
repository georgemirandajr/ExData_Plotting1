h <- read.table("C:/Users/e525902/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings = "?", header = T, sep = ";")

subhouse1 <- h[h$Date == "1/2/2007", ]

subhouse2 <- h[h$Date == "2/2/2007", ]

house <- data.frame(rbind(subhouse1, subhouse2))

day <- paste(house$Date, house$Time)  ##creates a new day and time column 

z <- strptime(day, "%d/%m/%Y %H:%M:%S")

plot(z, house$Global_active_power, type = "l", lwd = 1, ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, file = "plot2.png")

dev.off()