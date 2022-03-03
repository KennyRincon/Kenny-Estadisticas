#Semana 7
#02/03/2022

#¿Habra difrencias en la germinacion?
#¿Habra diferencia en las alturas?

#6 semanas de monitoreo


#importar datos de semillas

semillas <- read.csv("Clases Apuntes/Semillas.csv", header = T)
graft.sem <- boxplot(semillas$Peso_gr)

#Identificar
wich(semillas$Peso_gr >40)
semillas[524, ]
#Identificar semillas con valores menores al rango

graf.sem$out
wich(semillas$Peso_gr <=2.671)
#Identificar los cuantiles
quantile(semillas$Peso_gr, 0.25)
quantile(semillas$Peso_gr, 0.5)
quantile(semillas$Peso_gr, 0.75)
quantile(semillas$Peso_gr, 1)

#tabla de frecuencia para semillas
numero <- table(semillas$cond)
numero 6



