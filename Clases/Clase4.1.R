#Semana 4
# 09/Febrero/2022
#Apuntes

# Importar datos ----------------------------------------------------------

vivero <- read.csv("Clases/BD_Vivero.csv", header = TRUE)

View(Vivero)

#Estadistica descriptiva -------------------------------------------------

#Medidas de tendecia central

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE)
fivenum(vivero$IE)

boxplot(vivero$IE, horizontal = T, col = "red")
hist(vivero$IE, ylim = c(0,12))

frec <- table(vivero$IE)

 