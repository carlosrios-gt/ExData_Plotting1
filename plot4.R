## Plot 4 ##
## Carlos Alberto Rios Calderon ##
## Reading and setting the data / Leyendo y definiendo los datos ##
PowerKW <- read.table("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
PowerKW$dt <- strptime(paste(PowerKW$Date, PowerKW$Time), "%d/%m/%Y %H:%M:%S")
## Defining variable for analysis / Definiendo la variable para su analisis ##
SS_Data <- PowerKW[PowerKW$Date %in% c("1/2/2007","2/2/2007") ,]
## Calculating and making the draws / Realizando calculos para el dibujo ##
setwd("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1")
datetime <- strptime(paste(SS_Data$Date, SS_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(SS_Data$Global_active_power)
globalReactivePower <- as.numeric(SS_Data$Global_reactive_power)
voltage <- as.numeric(SS_Data$Voltage)
subMetering1 <- as.numeric(SS_Data$Sub_metering_1)
subMetering2 <- as.numeric(SS_Data$Sub_metering_2)
subMetering3 <- as.numeric(SS_Data$Sub_metering_3)
## Drawing the Graph / Trazando el grafico ##
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
par(mar=c(4,4,4,4))
plot(datetime, SS_Data$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, SS_Data$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, SS_Data$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SS_Data$Sub_metering_2, type="l", col="red")
lines(datetime, SS_Data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, SS_Data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off() 
