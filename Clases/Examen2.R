#Examen 11/05/2022
#Kenny Rincon Lopez

erupciones <- read.csv("erupciones.csv", header = T)

#DIAGRAMA DE DISPERSION 
#EJERCICIO 1
plot(erupciones$eruptions, erupciones$waiting, pch=19,
     col= "gray",
     xlab= "tiempo de espera entre erupciones(min)",
     ylab= "Duracion de la erupcion(min)",
     main="geyser old faithfull")

mean(erupciones$eruptions)
#[1] 3.487783

sd(erupciones$eruptions)
#[1] 1.141371

var(erupciones$eruptions)
#[1] 1.302728

mean(erupciones$waiting)
#[1] 70.89706

sd(erupciones$waiting)
#[1] 13.59497

var(erupciones$waiting)
#[1] 184.8233

cor.test(erupciones$eruptions, erupciones$waiting)

#Pearson's product-moment correlation

#data:  erupciones$eruptions and erupciones$waiting
#t = 34.089, df = 270, p-value < 2.2e-16
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
# 0.8756964 0.9210652
#sample estimates:
#      cor 
#0.9008112 

geyser.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary(geyser.lm)

#Call:
# lm(formula = erupciones$eruptions ~ erupciones$waiting)

#Residuals:
#  Min       1Q   Median       3Q      Max 
#-1.29917 -0.37689  0.03508  0.34909  1.19329 

#Coefficients:
#Estimate Std. Error t value Pr(>|t|)    
#(Intercept)        -1.874016   0.160143  -11.70   <2e-16 ***
# erupciones$waiting  0.075628   0.002219   34.09   <2e-16 ***
---
  #Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  
  #Residual standard error: 0.4965 on 270 degrees of freedom
  #Multiple R-squared:  0.8115,	Adjusted R-squared:  0.8108 
  #F-statistic:  1162 on 1 and 270 DF,  p-value: < 2.2e-16
  
  valores <- c(80,40, 45, 53, 61)
-1.874016 + 0.075628*80
#[1] 4.176224

-1.874016 + 0.075628*40
#[1] 1.151104

-1.874016 + 0.075628*45
#[1] 1.529244

-1.874016 + 0.075628*53
#[1] 2.134268

-1.874016 + 0.075628*61
#[1] 2.739292


