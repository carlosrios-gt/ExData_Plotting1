## Plot 3 ##
## Carlos Alberto Rios Calderon ##
## Reading and setting the data / Leyendo y definiendo los datos ##
PowerKW <- read.table("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
PowerKW$dt <- strptime(paste(PowerKW$Date, PowerKW$Time), "%d/%m/%Y %H:%M:%S")
## Defining variable for analysis / Definiendo la variable para su analisis ##
SS_Data <- PowerKW[PowerKW$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(SS_Data$Date, SS_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## Calculating and making the draws / Realizando calculos para el dibujo ##
setwd("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1")
png("plot3.png", width=480, height=480)
## Drawing the Graph / Trazando el grafico ##
plot(datetime, SS_Data$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SS_Data$Sub_metering_2, type="l", col="red")
lines(datetime, SS_Data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 
