power <- read.table("household_power_consumption.txt", 
                    header = TRUE, sep = ";",
                    colClasses = "character")
pow <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png")
hist(as.numeric(pow[,3]), main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
