#Semana 7
#02/03/2022

#¿Habra difrencias en la germinacion?
#¿Habra diferencia en las alturas?

#6 semanas de monitoreo

#importar datos de semillas
boxplot(semilla$Peso_gr, header=T)

# Identificar
which(semilla$Peso_gr >40)
semilla[524, ]

# identificar semillas con valores manores al rango
quantile(semilla$Peso_gr, 0.0)
graf.sem$out

which(semilla$Peso_gr <=2.67)

# Identificar los cuantiles
quantile(semilla$Peso_gr, 0.25)
quantile(semilla$Peso_gr, 0.5)
quantile(semilla$Peso_gr, 0.75)
quantile(semilla$Peso_gr, 1)



