#Semana 10 
#kenny margarita rincon lopez

Ho <- No hay diferencias entre el peso de la madera
H1 <- El peso de ambas especies son diferentes 

Valor alfa
extraer datos d.ebano y ebano

library(dplyr)
shapiro.test(D.Ebano$Peso_gr)
Ebano <- Madera %>%

  filter("Sp=="Ebano"")  

shapiro.test(Ebano$Peso_gr)


#Sacae media de cada una de las especies
t.test(Ebano$Peso_gr, D.Ebano$Peso_gr, var.equal = T)
mean(D.Ebano$Peso_gr)
filter(Sp=="D.Ebano")





Madera <- read.csv("Clases Apuntes/Madera.csv", header=T)

library(dplyr)
shapiro.test(bar$Peso_gr)
Madera$Sp <- as.factor(Madera$Sp)

bar <- Madera%>%
  filter(bar$Peso_gr)
hist(bar$Peso_gr)

Chp <- Madera %>%
  filter(Sp=="Chp")  
hist(Chp$Peso_gr)

D.Eb <- Madera %>%
  filter(Sp=="D. Ebano")
hist(D.Eb$Peso_gr)

Ebano <- Madera %>%
  filter(Sp=="Ebano")  
hist(Ebano$Peso_gr)


boxplot(Madera$Peso_gr ~ Madera$Sp, col = "blue")


