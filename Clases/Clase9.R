#Clase semana 9
#Revisar datos de madera
#BD madeeras

Madera <- read.csv("Clases Apuntes/Madera.csv", header=T)

Madera$Sp <- as.factor(Madera$Sp)

boxplot(Madera$Peso_gr ~ Madera$Sp)

library(dplyr)

bar <- Madera %>%
filter(Sp=="Bar")


#Comparacion de una media teoretica Mu=8.0 para Sp =Barreta

mean(bar$Peso_gr)

t.test(bar$Peso_gr, mu=7.4)

t.test(bar$Peso_gr, mu=8.5)
 


Chp <- Madera %>%
filter(Sp=="Chp")  

mean(Chp$Peso_gr)
t.test(Chp$Peso_gr, mu=8.5)


D.Ebano <- Madera %>%
filter(Sp=="D.Ebano")

mean(D.Ebano$Peso_gr)
t.test(D.Ebano$Peso_gr, mu=12)

D.Ebano <- Madera %>%
filter(Sp=="D.Eb")  

mean(D.Ebano$Peso_gr)
t.test(Ebano$Peso_gr, mu=11.3)






