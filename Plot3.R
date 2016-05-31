#Project 1, graphs


file <- read.table("~/Coursra/exploratory-data-analysis course 1/household_power_consumption.txt", sep = ";", header=TRUE)

file$Time <- strptime(paste(file$Date, file$Time), "%d/%m/%Y %H:%M:%S")
file$Date1 <- as.Date(file$Date,format="%d/%m/%Y")

file2<-subset(file, (Date1<="2007-02-02") & (Date1>="2007-02-01"))

#file2<-subset(file2, (Global_active_power!="?"))

file2$Global_active_power <-as.numeric(as.character(file2$Global_active_power))

png("plot3.png", width=480 , height=480)

plot(file2$Time, file2$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
lines(file2$Time, file2$Sub_metering_2,xlab="",ylab="",col="red")
lines(file2$Time, file2$Sub_metering_3,xlab="",ylab="",col="blue")

legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

dev.off()
