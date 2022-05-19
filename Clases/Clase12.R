#Kenny Margarita Rincon Lopez
# 07 de Abril del 2022

Azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4,8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0, 
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)

t.test(Azufre, mu=17.5, alternative = "greater")

mean(Azufre)

t.test(Azufre, mu= 20, alternative = "less")

t.test(Azufre, mu=20.6, alternative = "less")

la probabilidad se divide en 2 alfa -0.025 o 0.025
es menor ya que la media es igual a 18.7075 y P es igual a 0.021 
izq es - 0.025 y dere es 0.025