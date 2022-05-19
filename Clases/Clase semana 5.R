#MAGT
#Semana 5
#12/02/20200
#Kenny Rincon


url <- paste0("https://raw.githubusercontent.com/mgtagle/",
"PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(url)

summary(inventario)

inventario$Especie <- as.factor(inventario$Especie)
inventario$Posicion <- as.factor(inventario$Posicion)
summary(inventario)

#Obtener una tabla de frecuencia para las variables Especies
# Y posicion. usar la funcion table

table(inventario$Especie)
table(inventario$Posicion)

freq.sp <- table(inventario$Especie)

freq.sp/sum(freq.sp)* 100
table(inventario$Posicion)

freq.ps <- table(inventario$Posicion)
porciento <- freq.sp/sum(freq.sp)*100

sum(porciento)


#Porcentaje de una posicion

por.pos <- freq.ps/sum(freq.ps)*100

barplot(freq.sp, col = "pink", las =1, border = NA)
barplot(porciento, col = "blue", las =1)
barplot(freq.ps, las =1, col = "lightblue", border= NA)

pie(freq.ps, col = topo.colors(4))
tabls = paste(levels(inventario$Posicion), por.pos)

pie(freq.sp, col = topo.colors(4))
pie(por.pos, col = topo.colors(4), labels = paste(levels(inventario$Posicion), por.pos, "%"))

pie(por.pos, col = topo.colors(3), labels = paste(levels(inventario$Especie), freq.sp, "ind"))

