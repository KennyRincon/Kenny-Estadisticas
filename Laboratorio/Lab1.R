#LABORATORIO 1
#Kenny Rincon
# Parte I Primer contacto con la consola de R -------------------------------------


# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833

total.gastos <- celular + transporte + comestibles + gimnasio + alquiler + otros

# gastos en un semestre (5 meses)

total.gastos * 5

# gastos en un año (10 meses)

total.gastos * 10


# Nombre de los objetos ---------------------------------------------------

yo_uso_guion_bajo <- 5
otras.personas.usan.punto <- 10
OtrosUsanMayusculas <- 1

# no puede iniciar con un número
# no puede iniciar con guión bajo
# no puede contener coma
# no puede contener espacios 


# Funciones ---------------------------------------------------------------

# valor absoluto (absolute valve)
abs(10)
abs(-4)

# Raíz cuadrada (square root)
sqrt(9)

# logaritmo natural (natural logarithm)
log(2)

# Comentarios en R --------------------------------------------------------

# este es un comentario 
# este es otro comentario
2 * 9
4 + 5 # también se puede colocar un comentario

# R distingue mayúsculs y minúsculas --------------------------------------

# Detectar mayúsculas y minúsculas

celular <- 300
Celular <- -300
CELULAR <- 8000

celular + Celular

CELULAR - celular

# Obtener ayuda -----------------------------------------------------------

# Docuemtación acerca de la función abs
help(abs)
?abs

# Documentación acerca de la función mean
help(mean)
?mean

# buscar absolute
help.search("absolute")

# Alternativamente
??absolute

# Autoevaluación ----------------------------------------------------------

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot(gastos)

help(sort)
sort(gastos, decreasing = TRUE )

barplot(sort(gastos, decreasing = TRUE))

# Parte II Variables ------------------------------------------------------

# Problema 1

# Tipo de variables (cualitativas o cuantitativas)

# + Nombre de estudiante (cualitativa)
# + Fecha de nacimiento  (cuantitativa)
# + Edad  (cuantitativa)
# + Dirección de casa  (cualitativa) 
# + Número de teléfono  (cualitativa)
# + Área de estudio  (cualitativa)
# + Grado de año universitario  (cuantitativa)
# + Puntaje en la prueba de mitad de periodo (100 puntos posibles) (cuantitativa)
# + Calificación general: A, B, C, D, F.  (cualitativa)
# + Tiempo (en min.) para completar la prueba final de MFC 202.  (cuantitativa)
# + Número de hermanos  (cuantitativa)

# Problema 2

#Perros (animal)
#Variables:
# + peso
# + altura
# + color
# + raza/especie

# Problema 3

# sería una variable cuantitativa, ya que se expresa numericamente.

# Problema 4

# pregunta 1
#(1) sujeto de investigación <- estudiantes de universidad
#(2) variables <- horas de trabajo por semana
#(3) tipo de variable <- cuantitativo

#pregunta 2
#(1) sujeto de investigación <- estudiantes universitarios de México
#(2) variables <- proporción de estudiantes inscritos en universidad públicas
#(3) tipo de variable <- cualitativa

#pregunta 3
#(1) sujeto de investigación <- estudaintes femeninas y estudiantes varones
#(2) variables <- promedio de CENEVAL
#(3) tipo de variable <- cuantitativa

#pregunta 4
#(1) sujeto de investigación <- atletas universitarios y atletas no universitarios
#(2) variables <- asesoramiento académico
#(3) tipo de variable <- cualitativa

#pregunta 5 histogramas
# la pregunta 1 y 3, ya que los datos de variables se necesitan agrupar para la realización del histograma.