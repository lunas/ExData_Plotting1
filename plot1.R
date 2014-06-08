
source("load_data.R")
df <- load_and_clean_data()

png(filename="plot1.png")
hist(df$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()