source("load_data.R")
df <- load_and_clean_data()

png(filename="plot2.png")
plot(as.POSIXct(df$datetime), df$Global_active_power, t="l", main="Global Active Power", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
