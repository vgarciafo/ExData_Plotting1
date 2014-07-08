data <- read.csv(file="household_power_consumption.txt", sep=";",na.strings = "?")
data <- data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]
data$timestamp <- strptime(paste(data[,1],data[,2],sep=" "), "%d/%m/%Y %H:%M:%S")
plot(data$timestamp, data$Global_active_power, type="n", main="", xlab="", ylab="Global active power (kilowatts)")
lines(data$timestamp, data$Global_active_power, type="l") 
dev.copy(png, file = "plot2.png",width=480,height=480)
dev.off()
