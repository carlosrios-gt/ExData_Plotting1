## Plot 2 ##
## Carlos Alberto Rios Calderon ##
## Reading and setting the data / Leyendo y definiendo los datos ##
GAP_data <- read.table("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## Defining variable for analysis / Definiendo la variable para su analisis ##
subSetData <- GAP_data[GAP_data$Date %in% c("1/2/2007","2/2/2007") ,]
## Calculating and making the draws / Realizando calculos para el dibujo ##
setwd("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1")
png("plot2.png", width=480, height=480)
## Drawing the Graph / Trazando el grafico ##
plot(datetime, subSetData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
