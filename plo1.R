data <- read.csv(file="household_power_consumption.txt", sep=";",na.strings = "?")
data <- data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]
data[,1] <- as.Date(data[,1])
hist(data$Global_active_power,col="red",main="Global active power",xlab="Global active power (kilowatts)")
dev.copy(png, file = "plot1.png",width=480,height=480)
dev.off()
