#Kenny Rincon Lopez
#17/05/2022
#LABORATORIO 6 

#BASE DE LOS VECTORES---------------------------------------------------
wins = c(52, 51, 47, 47, 42)
losses = c(20, 21, 25, 25, 30)
win_loss_perc = wins/(wins + losses)
win_loss_perc
## [1] 0.7222222 0.7083333 0.6527778 0.6527778 0.5833333

#Variable cuantitativa
teams = c("UtJ", "PhS", "DnN", "LAC", "DIM")

#VECTOR DE CARACTERES (variable cualitativa)
#MANIPULACION DE VECTORES------------------------------------------------
----
#SUBCONJUNTOS
 #1er ELEMENTO DE "wins"
  wins[1]
## [1] 52
# TERCER ELEMENTO DE "losses"
losses[3]
## [1] 25
# ÚLTIMO NOMBRE EN "teams"
teams[5]
## [1] "DIM"
length(teams)
## [1] 5
teams[length(teams)]
## [1] "DIM"
sort(wins, decreasing = T) 
## [1] 52 51 47 47 42
rev(wins) 
## [1] 42 47 47 51 52
#SUBCONJUNTOS CON INDICES LOGICOS ---------------------------------------
-
  # VICTORIA DE Utah Jazz
  wins[teams == "UtJ"]
## [1] 52
#EQUIPOS CON VICTORIAS > 40
teams[wins > 40]
## [1] "UtJ" "PhS" "DnN" "LAC" "DIM"
#NOMBRE DE LOS EQUIPOS CON DERROTAS ENTRE 10 Y 29
teams[losses >= 10 & losses <= 29]
## [1] "UtJ" "PhS" "DnN" "LAC"
#FACTORES Y VARIABLES CUALITATIVAS --------------------------------------
----
  #VECTOR NUMÉRICO
  num_vector <- c(1, 2, 3, 1, 2, 3, 2)
#FACTOR APARTIR DE num_vector
first_factor <- factor(num_vector)
first_factor
## [1] 1 2 3 1 2 3 2
## Levels: 1 2 3
#TOMAR EL VECTOR PARA CONVERTIRLO EN FACTOR
teams = factor(teams)
teams
## [1] UtJ PhS DnN LAC DIM
## Levels: DIM DnN LAC PhS UtJ
#SECUENCIAS -------------------------------------------------------------
-
#OPERADOR DOS PUNTOS :
  1:5
## [1] 1 2 3 4 5
1:10
## [1] 1 2 3 4 5 6 7 8 9 10
-3:7
## [1] -3 -2 -1 0 1 2 3 4 5 6 7
10:1
## [1] 10 9 8 7 6 5 4 3 2 1
#FUNCIÓN SECUENCIA
seq(from = 1, to = 10)
## [1] 1 2 3 4 5 6 7 8 9 10
seq(from = 1, to = 10, by = 1)
## [1] 1 2 3 4 5 6 7 8 9 10
seq(from = 1, to = 10, by = 2)
## [1] 1 3 5 7 9
seq(from = -5, to = 5, by = 1)
## [1] -5 -4 -3 -2 -1 0 1 2 3 4 5
#VECTORES REPETIDOS -----------------------------------------------------
-
  rep(1, times = 5)
## [1] 1 1 1 1 1
rep(c(1, 2), times = 3) 
## [1] 1 2 1 2 1 2
rep(c(1, 2), each = 2)
## [1] 1 1 2 2
rep(c(1, 2), length.out = 5)
## [1] 1 2 1 2 1
rep(c(3, 2, 1), times = 3, each =2)
## [1] 3 3 2 2 1 1 3 3 2 2 1 1 3 3 2 2 1 1
#DE VECTORES A ESTRUCTURA TABULAR----------------------------------------
-
  dat = data.frame(
    Teams = teams,
    Wins = wins,
    Losses = losses,
    WLperc = win_loss_perc
  )
dat
## Teams Wins Losses WLperc
## 1 UtJ 52 20 0.7222222
## 2 PhS 51 21 0.7083333
## 3 DnN 47 25 0.6527778
## 4 LAC 47 25 0.6527778
## 5 DIM 42 30 0.5833333
#VALORES EXTRAIDOS EN LA COLUMNA TEAMS USANDO $
dat$Teams
## [1] UtJ PhS DnN LAC DIM
## Levels: DIM DnN LAC PhS UtJ
#UTILIZAR CORCHETES EN LA COLUMNA CON CUALQUIER TIPO DE VECTOR
dat$Wins[1]
## [1] 52
dat$Wins[5]
## [1] 42
#SUBCONJUNTOS LOGICOS
#VICTORIAS DEL EQUIPO UTAH
dat$Wins[dat$Teams =='UtJ']
## [1] 52
#EQUIPOS CON VICTORIAS > 40
dat$Teams[dat$Wins > 40]
## [1] UtJ PhS DnN LAC DIM
## Levels: DIM DnN LAC PhS UtJ
#NOMBRE DE LOS EQUIPOS CON DERROTAS EBTRE 29 Y 10 
dat$Teams[dat$Losses >= 10 & dat$Losses <= 29]
## [1] UtJ PhS DnN LAC
## Levels: DIM DnN LAC PhS UtJ
#TUS TURNOS -------------------------------------------------------------
---
  Teams = teams = c("UtJ", "PhS", "DnN", "LAC", "DIM", "PTB", "LAL", "MeG", 
                    "GSW", "SAS", "NOP", "SaK", "MiT", "OCT", "HoR")
Teams = factor(Teams)
Wins = c(52, 51, 47, 47, 42, 42, 42, 38, 39, 33, 31, 31, 23, 22, 17)
Losses = c(20, 21, 25, 25, 30, 30, 30, 34, 33, 39, 41, 41, 49, 50, 55)
Win_Loss_perc = Wins / (Wins + Losses)
Games_Behind = Wins[1] - Wins
Points_Scored = c(116.4, 115.3, 115.1, 114.0, 112.4, 116.1, 109.5, 113.3, 
                  113.7, 111.1, 114.6, 113.7, 112.1, 105.0, 108.8)
Points_Against = c(107.2, 109.5, 110.1, 107.8, 110.2, 114.3, 106.8, 
                   112.3, 112.7, 112.8, 114.9, 117.4, 117.7, 115.6, 116.7)
Rating = c(8.97, 5.67, 4.82, 6.02, 2.26, 1.81, 2.77, 1.07, 1.10, -1.58, -
             0.20, -3.45, -5.25, -10.13, -7.50)
Basquet = data.frame(
  Teams = Teams,
  W = Wins,
  L = Losses,
  W_L = Win_Loss_perc,
  GB = Games_Behind,
  PS_G = Points_Scored,
  PA_G = Points_Against,
  SRS = Rating)
Basquet
## Teams W L W_L GB PS_G PA_G SRS
## 1 UtJ 52 20 0.7222222 0 116.4 107.2 8.97
## 2 PhS 51 21 0.7083333 1 115.3 109.5 5.67
## 3 DnN 47 25 0.6527778 5 115.1 110.1 4.82
## 4 LAC 47 25 0.6527778 5 114.0 107.8 6.02
## 5 DIM 42 30 0.5833333 10 112.4 110.2 2.26
## 6 PTB 42 30 0.5833333 10 116.1 114.3 1.81
## 7 LAL 42 30 0.5833333 10 109.5 106.8 2.77
## 8 MeG 38 34 0.5277778 14 113.3 112.3 1.07
## 9 GSW 39 33 0.5416667 13 113.7 112.7 1.10
## 10 SAS 33 39 0.4583333 19 111.1 112.8 -1.58
## 11 NOP 31 41 0.4305556 21 114.6 114.9 -0.20
## 12 SaK 31 41 0.4305556 21 113.7 117.4 -3.45
## 13 MiT 23 49 0.3194444 29 112.1 117.7 -5.25
## 14 OCT 22 50 0.3055556 30 105.0 115.6 -10.13
## 15 HoR 17 55 0.2361111 35 108.8 116.7 -7.50
sort(Basquet$PS_G)
## [1] 105.0 108.8 109.5 111.1 112.1 112.4 113.3 113.7 113.7 114.0 114.6 
115.1
## [13] 115.3 116.1 116.4
sort(Basquet$PS_G, decreasing = T)
## [1] 116.4 116.1 115.3 115.1 114.6 114.0 113.7 113.7 113.3 112.4 112.1 
111.1
## [13] 109.5 108.8 105.0
sort(Points_Scored)
## [1] 105.0 108.8 109.5 111.1 112.1 112.4 113.3 113.7 113.7 114.0 114.6 
115.1
## [13] 115.3 116.1 116.4
sort(Points_Scored, decreasing = T)
## [1] 116.4 116.1 115.3 115.1 114.6 114.0 113.7 113.7 113.3 112.4 112.1 
111.1
## [13] 109.5 108.8 105.0