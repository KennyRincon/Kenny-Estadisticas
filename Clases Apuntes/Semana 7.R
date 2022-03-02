#Semana 7
#02/03/2022

#¿Habra difrencias en la germinacion?
#¿Habra diferencia en las alturas?

#6 semanas de monitoreo


#importar datos de semillas

semilla <- read.csv("Clases Apuntes/Semilla.csv", header = T)
graf.sem <- boxplot(Semilla$Peso_gr)

#Identificar
wich(semilla$Peso_gr >40)
semilla¨[524, ]
#Identificar semillas con valores menores al rango

graf.sem$out
wich(semilla$Peso_gr <=2.671)
#Identificar los cuantiles
quantile(semilla$Peso_gr, 0.25)
quantile(semilla$Peso_gr, 0.5)
quantile(semilla$Peso_gr, 0.75)
quantile(semilla$Peso_gr, 1)





