source("load_data.R")
df <- load_and_clean_data()

png(filename="plot4.png")

par(mfrow = c(2, 2))
    
plot(as.POSIXct(df$datetime), df$Global_active_power, t="l", ylab="Global Active Power", xlab="")    
plot(as.POSIXct(df$datetime), df$Voltage, t="l", ylab="Voltage", xlab="date+time") 

plot(as.POSIXct(df$datetime), df$Sub_metering_1, t="l", ylab="Energy sub metering", xlab="")
lines(as.POSIXct(df$datetime), df$Sub_metering_2, col="red")
lines(as.POSIXct(df$datetime), df$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(as.POSIXct(df$datetime), df$Global_reactive_power, t="l", ylab="Global reactive power", xlab="date+time") 

dev.off()