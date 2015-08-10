test<-read.table("household_power_consumption.txt",sep=";",nrows=100,na.strings="?",header=TRUE)
classes<-sapply(test,class)
classes[1:2]<-"character"
df<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE,colClasses=classes)
Datetime<-paste(df$Date,df$Time,sep=" ")
Datetime<-as.POSIXct(strptime(Datetime,"%d/%m/%Y %H:%M:%S"))
d1<-as.POSIXct("2007-02-01")
d2<-as.POSIXct("2007-02-03")
indices<-!is.na(Datetime) & Datetime>=d1 & Datetime<d2
n<-ncol(df)
df2<-cbind(Datetime[indices],df[indices,3:n])
colnames(df2)[1]<-"Datetime"


png(filename="plot1.png")
hist(df2$Global_active_power, main="Global Active Power", col="Red",xlab="Global Active Power (kilowatts)")
dev.off()