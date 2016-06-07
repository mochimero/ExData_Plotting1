
png("plot1.png",width = 480, height = 480, units = "px")
hist(household_filtered$Global_active_power,breaks=12,main="Global Active Power", xlab="Global Active Power (kilowatts",ylab="Frequency",col="red")
dev.off()
