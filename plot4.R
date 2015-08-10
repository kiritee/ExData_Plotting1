#plot 4
png(filename = "plot4.png")
par(mfrow=c(2,2))

plot(df2$Datetime,df2$Global_active_power,type="l",ylab="Global Active Power", xlab="")

plot(df2$Datetime,df2$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(df2$Datetime,df2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(df2$Datetime,df2$Sub_metering_1,col="black")
lines(df2$Datetime,df2$Sub_metering_2,col="red")
lines(df2$Datetime,df2$Sub_metering_3,col="blue")
legend("topright", lty="solid", col = c("black","blue", "red"), legend = c("Sub-Metering 1", "Sub-Metering 2", "Sub-Metering 3"))


plot(df2$Datetime,df2$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

dev.off()