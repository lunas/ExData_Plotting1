load_and_clean_data <- function(directory = ".", filename = "household_power_consumption.txt") {
   
  setwd(directory)
  path = paste(directory, filename, sep="/")
  df <- read.table(path, header=TRUE, sep=";", na.strings="?", 
                   skip=66636, nrows=2880,
                   colClasses=c("character", "character", rep("numeric", 7)) )
  names(df) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

  # convert date and time to a datetime column
  df$datetime <- apply(df, 1, function(row){ 
   d <- as.POSIXct( paste(row[1], row[2], sep=" "), format="%d/%m/%Y %H:%M:%S" ) 
   strftime(d, format="%Y-%m-%d %H:%M:%S")
  })
  df
}
                   
  
  
  
