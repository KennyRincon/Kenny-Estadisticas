#Semana 7
#02/03/2022

#¿Habra difrencias en la germinacion?
#¿Habra diferencia en las alturas?

#6 semanas de monitoreo


#importar datos de semillas

graf.sem <- boxplot(semillas$Peso_gr)

# Identificar
which(semillas$Peso_gr >40)
semillas[524, ]

# identificar semillas con valores manores al rango
quantile(semillas$Peso_gr, 0.0)
graf.sem$out

which(semillas$Peso_gr <=2.67)

# Identificar los cuantiles
quantile(semillas$Peso_gr, 0.25)
quantile(semillas$Peso_gr, 0.5)
quantile(semillas$Peso_gr, 0.75)
quantile(semillas$Peso_gr, 1)



