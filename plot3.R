source("load_data.R")
df <- load_and_clean_data()

png(filename="plot3.png")

plot(as.POSIXct(df$datetime), df$Sub_metering_1, t="l", main="Energy sub metering", ylab="Energy sub metering", xlab="")
lines(as.POSIXct(df$datetime), df$Sub_metering_2, col="red")
lines(as.POSIXct(df$datetime), df$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
