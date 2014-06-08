
source("load_data.R")
df <- load_and_clean_data()

hist(df$Global_active_power, main="Plot1", xlab="Global Active Power (kilowatts)", col="red")