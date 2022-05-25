#Examen

Madera2x2x5 <- read.csv("Clases/Madera2x2x5.csv", header = T)

library(dplyr)


Pino <- Madera2x2x5 %>%
  filter(Sp=="Pino")
         
Encino <- Madera2x2x5 %>%
  filter(Sp=="Encino")


mean(Madera2x2x5$Peso_gr)
mean(Pino$Peso_gr)
mean(Encino$Peso_gr)
sum(Pino$Peso_gr^2)
sum(Encino$Peso_gr)

#Diferencias
en <- mean(Encino$Peso_gr)
pn <- mean(Pino$Peso_gr)
en - pn

boxplot(Madera2x2x5$Peso_gr ~ Madera2x2x5$Sp,
        xlab="Cuadros de Madera",
        ylab= "Peso(gr)")


