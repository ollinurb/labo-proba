### guia 0

#Ej 1
x <- c(1,2,3)
y <- c(6,5,4)

x * 2
x * y
x[1] * y[2]

#Ej 2
tratamiento_de_coordenadas <- c(20,18,2)
                                
j <- seq(5,100,5)
j[1]+j[8]


#Ej 3
q <- c(3,0,1,6)
r <- c(1,0,2,4)

qr <- q%*%r # producto escalar entre q y r 


a <- rbind(q,r) # para armar una matriz compuesta de vectores usamos rbind y cbind
b <- cbind(q,r)

ab <- a%*%b # producto de matrices

abinv <- solve(ab) # matriz inversa de ab

a[,1]<- 1
a

#Ej 4

n <- c(1:100)
n2 <- n*n
sum(n2)

#Ej 5

# ¿Que autos tienen 4 velocidades?
rownames(mtcars)[mtcars$gear == 4]

#¿Que autos hay en el subconjunto mtcars[mtcars$disp > 150 & mtcars$mpg > 20, ]?
rownames(mtcars)[mtcars$disp > 150 & mtcars$mpg > 20]

#¿Que autos tienen transmicion manual y 4 velocidades?
rownames(mtcars)[mtcars$gear == 4 & mtcars$am == 0]

# Hallar la cantidad media de millas por galon de los autos con dos carburadores
mean(mtcars$mpg[mtcars$carb == 2])

#Ej 6
arboles <- read.csv(file = 'arbolado-en-espacios-verdes.csv')

#Cantidad de filas
nrow(arboles)

#Cantidad de columnas
ncol(arboles)

#Nombres de las columnas
colnames(arboles)

#Promedio de altura
mean(arboles$altura_tot)

#Arboles en la plaza arenales
sum(arboles$espacio_ve == "ARENALES")

#Ej 7
elegir_alumnos = function(n,m) {
  sample(n,m)
}

elegir_alumnos(80,3) #elegir 3 alumnos de 80

set.seed(1)
alumnos_elegidos <- replicate(10, elegir_alumnos(80,3)) #matriz con 10 simulaciones de elegir alumnos

#Ej 8
library(PASWR2)
help("TITANIC3")

survival_rate_class1 <- mean(TITANIC3$survived[TITANIC3$pclass == "1st"])
survival_rate_class2 <- mean(TITANIC3$survived[TITANIC3$pclass == "2nd"])
survival_rate_class3 <- mean(TITANIC3$survived[TITANIC3$pclass == "3rd"])

survival_rate_class1_fem <- mean(TITANIC3$survived[TITANIC3$pclass == "1st" & TITANIC3$sex =="female"])
survival_rate_class1_male <- mean(TITANIC3$survived[TITANIC3$pclass == "1st" & TITANIC3$sex =="male"])

survival_rate_class2_fem <- mean(TITANIC3$survived[TITANIC3$pclass == "2nd" & TITANIC3$sex =="female"])
survival_rate_class2_male <- mean(TITANIC3$survived[TITANIC3$pclass == "2nd" & TITANIC3$sex =="male"])

survival_rate_class3_fem <- mean(TITANIC3$survived[TITANIC3$pclass == "3rd" & TITANIC3$sex =="female"])
survival_rate_class3_male <- mean(TITANIC3$survived[TITANIC3$pclass == "3rd" & TITANIC3$sex =="male"])

survival_rate_class1_fem
survival_rate_class1_male
survival_rate_class2_fem
survival_rate_class2_male
survival_rate_class3_fem
survival_rate_class3_male

histogram(TITANIC3$age, breaks=20)
