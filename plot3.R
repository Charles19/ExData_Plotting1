
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