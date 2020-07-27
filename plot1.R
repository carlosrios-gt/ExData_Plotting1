## Plot 1 ##
## Carlos Alberto Rios Calderon ##
## Reading and setting the data / Leyendo y definiendo los datos ##
PowerKW <- read.table("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
PowerKW$dt <- strptime(paste(PowerKW$Date, PowerKW$Time), "%d/%m/%Y %H:%M:%S")
## Defining variable for analysis / Definiendo la variable para su analisis ##
PowerKW$Date <- as.Date(PowerKW$Date, "%d/%m/%Y")
## Calculating and making the draws / Realizando calculos para el dibujo ##
setwd("C:/Users/Carlos Rios/Documents/Johns Hopkings University/04 Exploratory Data Analysis/Course Project 1")
PowerKW_sub <- subset(PowerKW, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png("plot1.png", width=480, height=480)
## Drawing the Graph / Trazando el grafico ##
hist(PowerKW_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off() 
