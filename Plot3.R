png("plot3.png",width = 480, height = 480, units = "px")
Time<-household_filtered$Time
plot(Time,household_filtered$Sub_metering_1,ylab="Energy sub metering",xaxt="n")
lines(Time,household_filtered$Sub_metering_2, col="red")
lines(Time,household_filtered$Sub_metering_3,col="blue")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
dev.off()