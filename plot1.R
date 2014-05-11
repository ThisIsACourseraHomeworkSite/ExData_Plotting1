# open data and label
classes = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
power = read.table(file = "E:/Coursera/RCompData/household_power_consumption.csv", sep = ';', colClasses = classes, header= TRUE, na.strings="?")

# use only data for dates 2007-02-01 and 2007-02-02
pow = power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]
pow$datetime =  strptime(paste(pow$Date, pow$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

#Plot 1
png(filename="plot1.png", width=480, height=480, units="px")
par(mfrow = c(1,1))
hist(pow$Global_active_power, col = "red", xlab="Global Active Power (kilowatts)", main = 'Global Active Power')
dev.off()
