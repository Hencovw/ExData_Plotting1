#Project 1, graphs


file <- read.table("~/Coursra/exploratory-data-analysis course 1/household_power_consumption.txt", sep = ";", header=TRUE)

file$Date1 <- as.Date(file$Date,format="%d/%m/%Y")

file2<-subset(file, (Date1<="2007-02-02") & (Date1>="2007-02-01"))

file2<-subset(file2, (Global_active_power!="?"))

file2$Global_active_power <-as.numeric(as.character(file2$Global_active_power))

png("plot1.png", width=480 , height=480)

hist(file2$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (Kilowats)")

dev.off()
