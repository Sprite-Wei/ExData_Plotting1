power <- read.table("household_power_consumption.txt", 
                    header = TRUE, sep = ";",
                    colClasses = "character")
pow <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
datetime = strptime(paste(pow[,1],pow[,2]), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(datetime, as.numeric(pow[,3]), type = "l", 
     xlab= "", ylab = "Global Active Power (kilowatts)")
dev.off()