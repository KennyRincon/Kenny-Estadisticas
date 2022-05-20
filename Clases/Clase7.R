#Semana 7
#02/03/2022

#¿Habra difrencias en la germinacion?
#¿Habra diferencia en las alturas?

#6 semanas de monitoreo

Semillas <-read.csv("Clases/BaseDeDatos_estadistica.csv", header = T) 

#importar datos de semillas
boxplot(Semilla$Peso_gr, header=T)

# Identificar
which(Semilla$Peso_gr > 40)
Semilla[524, ]

# identificar semillas con valores manores al rango
quantile(Semilla$Peso_gr, 0.0)
graf.sem$out

which(Semilla$Peso_gr <=2.67)

# Identificar los cuantiles
quantile(Semilla$Peso_gr, 0.25)
quantile(Semilla$Peso_gr, 0.5)
quantile(Semilla$Peso_gr, 0.75)
quantile(Semilla$Peso_gr, 1)



