#Semana 4 
# 10/02/2022
#Descargar datos de internet

url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfo.csv"

# fileEcoding = "Latin"
profepa <- read.csv(url)

summary(profepa)

profepa$Inspeccion >= mean(profepa$Inspeccion)

# Subset
ins.alta <- subset(profepa,profepa$Inspeccion >= mean(profepa$Inspeccion))
ins.baja <- subset(profepa, profepa$Inspeccion <= mean(profepa$Inspeccion))

Est.C <-subset(profepa, profepa$Entidad == c("Chiapas"))

Est.C <- profepa[5:7,]
Est.N <- profepa[17:18,]

#Obtener los estados con inspeccion > a 15 pero < a 35
ins.media <- subset(profepa, profepa$Inspeccion >= 15 & profepa$Inspeccion<= 35)
ins.media <-subset(profepa, profepa$Inspeccion >= 15 & profepa$Operativo >= 10)

rec.media <-subset(profepa, profepa$Recorrido <= mean(profepa$Recorrido) & profepa$Operativo)

mean(profepa$Recorrido)
mean(profepa$Operativo)
