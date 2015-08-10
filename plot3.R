# plot 3
png(filename = "plot3.png")
plot(df2$Datetime,df2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(df2$Datetime,df2$Sub_metering_1,col="black")
lines(df2$Datetime,df2$Sub_metering_2,col="red")
lines(df2$Datetime,df2$Sub_metering_3,col="blue")
legend("topright", lty="solid", col = c("black","blue", "red"), legend = c("Sub-Metering 1", "Sub-Metering 2", "Sub-Metering 3"))
dev.off()
