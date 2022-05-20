#Semana 10 
#kenny margarita rincon lopez

#Ho <- No hay diferencias entre el peso de la madera
#H1 <- El peso de ambas especies son diferentes 

#Valor alfa
#extraer datos d.ebano y ebano

Madera <- read.csv("Clases/Madera.csv", header=T)

library(dplyr)

ebano <-  Madera %>%
 filter(Sp=="Ebano")

d.ebano <- Madera %>%
  filter(Sp=="D.Ebano")

t.test(Ebano$Peso_gr, D.Ebano$Peso_gr, var.equal = T)
mean(Ebano$Peso_gr)
mean(D.Ebano$Peso_gr)

# valor de p-value  < 2.2e-16
# se acepto la hipotesis alternativa: hay diferencia en la media del peso de las observaciones de  Ebano y D.Ebano

chp <- Madera %>%
  filter(Sp=="Chp")

bar <- Madera %>%
  filter(Sp=="Bar")

t.test(chp$Peso_gr, bar$Peso_gr, var.equal = T)
mean(chp$Peso_gr)
mean(bar$Peso_gr)

# valor de p-value = 0.4913
# se acepto la hipotesis nula
# se rechazo la hipotesis alternativa

hist(ebano$Peso_gr, col = "pink")
hist(D.Ebano$Peso_gr, col = "red")
hist(chp$Peso_gr, col = "lightblue")
hist(bar$Peso_gr, col = "violet")

boxplot(Madera$Peso_gr ~ Madera$Sp, col="lightgreen")
boxplot(ebano$Peso_gr, d.ebano$Peso_gr, col = "lightyellow")
boxplot(bar$Peso_gr, chp$Peso_gr, col = "blue")



