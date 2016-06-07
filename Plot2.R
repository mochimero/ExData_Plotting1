png("plot2.png",width = 480, height = 480, units = "px")
Time<-household_filtered$Time
plot(Time,household_filtered$Global_active_power,ylab="Global Active Power (kilowatts)",xaxt="n")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
dev.off()
