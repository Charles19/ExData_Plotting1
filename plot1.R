## histogram
# read local files
DF <- read.table("./household_power_consumption.txt",sep = ";", header = TRUE)
# subset to the February dates
DFsub<-DF[as.Date(DF$Date,"%d/%m/%Y")>=as.Date("2007/02/01") & as.Date(DF$Date,"%d/%m/%Y")<=as.Date("2007/02/02"),]
# printing histogram 1 of global active power (col 3)
png(file = "plot1.png",width = 480, height = 480)
hist(as.numeric(as.character(DFsub$Global_active_power)), col="red", main="Global Active Power",breaks = seq(0,8, by=.5), xlab = "Global Active Power (kilowatts)")
dev.off()
