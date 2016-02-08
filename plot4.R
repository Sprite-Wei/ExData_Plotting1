power <- read.table("household_power_consumption.txt", 
                    header = TRUE, sep = ";",
                    colClasses = "character")
pow <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
datetime <- strptime(paste(pow[,1],pow[,2]), "%d/%m/%Y %H:%M:%S")
png("plot4.png")
par(mfcol = c(2,2))
plot(datetime, as.numeric(pow[,3]), type = "l", 
     xlab= "", ylab = "Global Active Power (kilowatts)")
plot(datetime, as.numeric(pow[,7]), type = "l", 
     xlab= "", ylab = "Energy sub metering")
points(datetime, as.numeric(pow[,8]), type = "l", col = "red")
points(datetime, as.numeric(pow[,9]), type = "l", col = "blue")
legend("topright",  col= c("black", "red", "blue"), lty=1, 
       legend = c("Sub_metering_1", "Sub_metering_2", 
                  "Sub_metering_3"), box.col = "transparent",
       bg = "transparent")
plot(datetime, as.numeric(pow[,5]), type = "l", ylab = "Voltage")
plot(datetime, as.numeric(pow[,4]), type = "l", 
     ylab = "Global_reactive_power")
dev.off()