#plot 2
png(filename="plot2.png")
plot(df2$Datetime,df2$Global_active_power,type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.off()