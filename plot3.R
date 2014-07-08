data <- read.csv(file="household_power_consumption.txt", sep=";",na.strings = "?")
data <- data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]
data$timestamp <- strptime(paste(data[,1],data[,2],sep=" "), "%d/%m/%Y %H:%M:%S")
with(data,plot(timestamp,Sub_metering_1,type="n", main="", xlab="", ylab="Energy sub metering",mar = c(4, 4, 2, 1)))
with(data,lines(timestamp,Sub_metering_1, type="l",col="black"))
with(data,lines(timestamp,Sub_metering_2, type="l",col="red"))
with(data,lines(timestamp,Sub_metering_3, type="l",col="blue"))
legend("topright", pch = 1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.copy(png, file = "plot3.png",width=480,height=480)
dev.off()

