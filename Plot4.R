png("plot4.png",width = 480, height = 480, units = "px")

par(mfrow=c(2,2))
Time<-household_filtered$Time

plot(Time,household_filtered$Global_active_power,ylab="Global Active Power (kilowatts)",xaxt="n")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

plot(Time,household_filtered$Voltage,ylab="Voltage",xaxt="n")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))


plot(Time,household_filtered$Sub_metering_1,ylab="Energy sub metering",xaxt="n")
lines(Time,household_filtered$Sub_metering_2, col="red")
lines(Time,household_filtered$Sub_metering_3,col="blue")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

plot(Time,household_filtered$Global_reactive_power,ylab="Global reactive power",xaxt="n")
axis(side=1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))