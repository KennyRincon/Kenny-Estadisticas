#CLASE SEMANA 3
#03/02/2022

# Muestra basica de R -----------------------------------------------------

#Kenny Rincon
# Operaciones basicas de R 
2 + 2
8 / 4

# Agregar un objeto 
 resultado = 9 + 5 + 8 + 4
 resultado + resultado 
 
 altura  <- c(1.67, 1.62, 1.62, 1.73, 1.58, 1.60, 1.70, 1.52, 1.74, 1.74)
 
# dividir cada altura entre 2
  altura / 2
  
# Graficas ---------------------------------------------------------------

# Primera base de datos ---------------------------------------------------

Ba <-  c(1:5)  
h <- c(12, 13.1, 14.5, 16.3, 15.3)
DAP <-c(20, 21.2, 22.1, 24.7, 22.7)
DC <-c(9, 8.5, 7.6, 9.3, 9.2)
t <-c(15, 16, 15, 18,17)
Sp <-c("Pino", "Pino","Pino", "Encino", "Encino")

 inventario <- data.frame(Ba, h, DAP, DC, t, Sp)
 
 mean(h)
 mean(inventario$DAP)
 
 # Agregar columna en inventario (dxh)
 inventario$dxh <- inventario$h * inventario$DAP
 
 