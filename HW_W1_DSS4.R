rm(list = ls())

setwd("/Users/user/Documents/Machine Learning/data science specialization coursera/DSS4/W1")


## histogram
# read local files
DF <- read.table("./household_power_consumption.txt",sep = ";", header = TRUE)
# subset to the February dates
DFsub<-DF[as.Date(DF$Date,"%d/%m/%Y")>=as.Date("2007/02/01") & as.Date(DF$Date,"%d/%m/%Y")<=as.Date("2007/02/02"),]
# printing histogram 1 of global active power (col 3)
png(file = "plot1.png",width = 480, height = 480)
hist(as.numeric(as.character(DFsub$Global_active_power)), col="red", main="Global Active Power",breaks = seq(0,8, by=.5), xlab = "Global Active Power (kilowatts)")
dev.off()

## xyplot of global active power per time of the day
# read local files
DF <- read.table("./household_power_consumption.txt",sep = ";", header = TRUE)
# subset to the February dates
DFsub<-DF[as.Date(DF$Date,"%d/%m/%Y")>=as.Date("2007/02/01") & as.Date(DF$Date,"%d/%m/%Y")<=as.Date("2007/02/02"),]
# convert to date time format
DFsub$Date<-strptime(paste(DFsub$Date,DFsub$Time),"%d/%m/%Y%H:%M:%S")
# printing base plot  of global active power change though dates
png(file = "plot2.png",width = 480, height = 480)
plot(DFsub$Date,as.numeric(as.character(DFsub$Global_active_power)),"l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()

## submetering plot
# read local files
DF <- read.table("./household_power_consumption.txt",sep = ";", header = TRUE)
# subset to the February dates
DFsub<-DF[as.Date(DF$Date,"%d/%m/%Y")>=as.Date("2007/02/01") & as.Date(DF$Date,"%d/%m/%Y")<=as.Date("2007/02/02"),]
# convert to date time format
DFsub$Date<-strptime(paste(DFsub$Date,DFsub$Time),"%d/%m/%Y%H:%M:%S")
# printing base plot  of global active power change though dates
png(file = "plot3.png",width = 480, height = 480)
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_1)),"l",xlab = "",ylab = "Energy Sub Metering", col = "black",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
par(new = TRUE) #adding a new plot
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_2)),"l",axes = FALSE, col = "red",xlab = "",ylab = "",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
par(new = TRUE) #adding a new plot
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_3)),"l", col = "blue",xlab = "",ylab = "",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
legend('topright', c("Sub metering 1","Sub metering 2", "Sub metering 3"), lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)
dev.off()

## combined plots
# read local files
DF <- read.table("./household_power_consumption.txt",sep = ";", header = TRUE)
# subset to the February dates
DFsub<-DF[as.Date(DF$Date,"%d/%m/%Y")>=as.Date("2007/02/01") & as.Date(DF$Date,"%d/%m/%Y")<=as.Date("2007/02/02"),]
# convert to date time format
DFsub$Date<-strptime(paste(DFsub$Date,DFsub$Time),"%d/%m/%Y%H:%M:%S")
# printing combined plots
# 4 figures arranged in 2 rows and 2 columns
png(file = "plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
#plot1
plot(DFsub$Date,as.numeric(as.character(DFsub$Global_active_power)),"l",xlab = "",ylab = "Global Active Power (kilowatts)")
#plot2
plot(DFsub$Date,as.numeric(as.character(DFsub$Voltage)),"l",xlab = "datetime",ylab = "Voltage")
#plot3
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_1)),"l",xlab = "",ylab = "Energy Sub Metering", col = "black",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
par(new = TRUE) #adding a new plot
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_2)),"l",axes = FALSE, col = "red",xlab = "",ylab = "",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
par(new = TRUE) #adding a new plot
plot(DFsub$Date,as.numeric(as.character(DFsub$Sub_metering_3)),"l", col = "blue",xlab = "",ylab = "",ylim = range(as.numeric(as.character(DFsub$Sub_metering_1))))
legend('topright', c("Sub metering 1","Sub metering 2", "Sub metering 3"), lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)
#plot4
plot(DFsub$Date,as.numeric(as.character(DFsub$Global_reactive_power)),"l",xlab = "datetime",ylab = "Voltage")
dev.off()


plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")



, legend(DFsub$Date[2000],33,"sub metering 1")
DFsub$Date[2000]

# first plot
plot(x, y1)

# second plot
par(new = TRUE)


install.packages("lattice")
library(lattice)
xyplot
