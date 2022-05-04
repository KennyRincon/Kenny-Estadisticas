#TEMA NUEVO
Semilla <- read.csv("Clases Apuntes/BaseDeDatos_estadistica.csv", header = T)
Semilla
#Plot de Diametro Vs Peso en gramos

plot(semillas$Diametro_mm, semillas$Peso_gr,
pch=20,
col= "blue",
xlab= "Diametro de semilla (mm)",
ylab= "Peso de semilla (gr)")

#lm (modelo lineal) funcion que ayuda a determinar alfa y beta de la regresion 

sem.lm <- lm(semillas$Peso_gr ~ semillas$Diametro_mm)
summary(sem.lm)

semillas$yprima <- -4.93+0.53*semillas$Diametro_mm

# Agregar la linea de tendencia central usando abline

plot(semillas$Diametro_mm, semillas$Peso_gr,
     pch=20,
     col= "blue",
     xlab= "Diametro de semilla (mm)",
     ylab= "Peso de semilla (gr)")

abline(sem.lm)

text(19, 2, "Y=-4.93+0.53*X")
text(19,1.5, "Regresión lineal")
text(19, 1.3, "r^2=0.69* ")

semillas$Ajustados <- round(sem.lm$fitted.values,2)

sem.lm$coefficients
sum(sem.lm$residuals)

#Encontrar los siguientes valores aplicanco la formula reg

# 18, 11, 14, 16, 15
valores <- c(11, 14, 15, 16, 18)
-4.93388+0.53178* valores
