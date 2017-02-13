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
