#Semana 4
# 09/Febrero/2022
#Apuntes

# Importar datos ----------------------------------------------------------

Vivero <- read.csv("Clases Apuntes/BD_Vivero.csv", header = TRUE)
View(Vivero)

# Estadistica descriptiva -------------------------------------------------

# Medidas de tendecia central

mean(Vivero$IE)
median(Vivero$IE)
range(Vivero$IE)
fivenum(Vivero$IE)

boxplot(Vivero$IE)
boxplot(Vivero$IE, horizontal = T)
boxplot(Vivero$IE, horizontal = T, col = "blue")
hist(Vivero$IE)
11*100/42

hist(Vivero$IE, ylim = c(0,12))

table(Vivero$IE)

ftable(Vivero$IE)
