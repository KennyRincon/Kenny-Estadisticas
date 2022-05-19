#Actividad

suelo <- read.csv("Clases Apuntes/suelo.csv", header = T)

#Ejercicio 1

Speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
Abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

cor.test(Speed, Abundance)
plot(speed, Abundance)

#¿Es estadísticamente significativa la correlación? =
#Ejercicio 2

suelo <- read.csv("Clases Apuntes/suelo.csv", header = T)

cor.test(suelo$pH, suelo$N)
#R= 0.636654 
#P= 1.149e-06
cor.test(suelo$pH, suelo$Dens)
#R= -0.5890264 
#P=  1.062e-05
cor.test(suelo$pH, suelo$P)
#R= 0.5910303 
#P= 9.74e-06
cor.test(suelo$pH, suelo$Ca)
#R= 0.8086293 
#P= 3.614e-12
cor.test(suelo$pH, suelo$Mg)
#R= -0.3957821
#P= 0.005361
cor.test(suelo$pH, suelo$K)
#R= 0.5795727 
#P= 1.585e-05
cor.test(suelo$pH, suelo$Na)
#R= -0.6932614 
#P=  4.724e-08
cor.test(suelo$pH, suelo$Conduc)
#R= -0.7648104 
#P= 2.484e-10