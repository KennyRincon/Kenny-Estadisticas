#Clase semana 11
#Prueba de T de muestras dependientes

datos <- read.csv("Clases Apuntes/mainproduccion.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo, col = "blue",
        xlab = "Tiempo",
        ylab = "Semilla (Kg)")
t.test(datos$Kgsem ~ datos$Tiempo, paired =TRUE)

boxplot(datos$BioRama ~ datos$Tiempo, col = "pink",
        xlab = "Tiempo",
        ylab = "BioRama (Ton)")
        
t.test(datos$BioRama ~ datos$Tiempo, paired =TRUE)

#Rechaza la nula y se acerca a la alternativa

boxplot(datos$Germ ~ datos$Tiempo, col = "pink",
        xlab = "Tiempo",
        ylab = "Germ (%")
t.test(datos$Germ ~ datos$Tiempo, paired =TRUE)
        