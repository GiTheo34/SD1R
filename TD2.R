setwd("L:/BUT/SD/Promo 2023/tcessac/R/TD2/dataset")
getwd()
bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")
dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)
summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)
plot(x = drivers$Weight,
     y = drivers$Acceleration, 
     main = "Drivers : Weight / Acceleration")
cor(x = drivers$Weight,
    y = drivers$Acceleration,
    method = "spearman")
coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)
matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)
install.packages("corrplot")
library(corrplot)
corrplot(matriceCor, method = "circle")
matriceTires = cor(tires[ , -1])
matriceTires = round(matriceTires , 2)
View(matriceTires)
corrplot(matriceTires, method = "circle")
matriceGliders = cor(gliders[ , -1])
matriceGliders = round(matriceGliders , 2)
corrplot(matriceGliders, method = "circle")
matriceKarts = cor(bodies_karts[ , -1])
matriceKarts = round(matriceKarts , 2)
corrplot(matriceKarts, method = "square")
resultat <- c(drivers$Driver, drivers$Weight)
resultat <- drivers[1:10, c("Driver","Acceleration")]
resultat <- drivers[ , -c(5,7,9)]
View(resultat)
resultat = drivers[ , -c("Weight", "Acceleration")]
