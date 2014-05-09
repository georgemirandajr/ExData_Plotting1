h <- read.table("C:/Users/e525902/Documents/ExData_Plotting1/household_power_consumption.txt", na.strings = "?", header = T, sep = ";")

subhouse1 <- h[h$Date == "1/2/2007", ]

subhouse2 <- h[h$Date == "2/2/2007", ]

house <- data.frame(rbind(subhouse1, subhouse2))

hist(house$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png")

dev.off()