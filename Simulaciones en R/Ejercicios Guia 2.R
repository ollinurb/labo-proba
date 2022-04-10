library(ggplot2)

x <-c(1,2,3)
sample(x,10,replace = TRUE)



die1 <- sample(x = 1:6, size = 1000000, replace = TRUE)
die2 <- sample(x = 1:6, size = 1000000, replace = TRUE)
sumDice <- die1 + die2

eventE <- sumDice == 6
head(eventE)
eventF <- die1 == 2 | die2 == 2
head(eventF)

mean(eventE) # P(E)
mean(eventF) # P(F)

mean(eventE & eventF)
mean((sumDice == 6) | (die1 == 2 | die2 == 2))



dado <- c(1,2,3,4,5,6)

sample(dado, 3, replace=TRUE)

dado1 <- sample(dado, 1000000, replace=TRUE)
dado2 <- sample(dado, 1000000, replace=TRUE)


evento2 <- dado1+dado2 == 2
evento3 <- dado1+dado2 == 3
evento4 <- dado1+dado2 == 4
evento5 <- dado1+dado2 == 5
evento6 <- dado1+dado2 == 6
evento7 <- dado1+dado2 == 7
evento8 <- dado1+dado2 == 8
evento9 <- dado1+dado2 == 9
evento10 <- dado1+dado2 == 10
evento11 <- dado1+dado2 == 11
evento12 <- dado1+dado2 == 12

mean(evento6 | evento2 | evento3)

mean(evento5 | evento9 | evento4)

articulos <- c(1:15)
elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
elijo3articulos

sum(1:4 %in% elijo3articulos)
sum(1:4 %in% elijo3articulos) == 0
sum(1:4 %in% elijo3articulos) == 1
sum(1:4 %in% elijo3articulos) == 2
sum(1:4 %in% elijo3articulos) == 3

probs <- c(sum(1:4 %in% elijo3articulos) == 0,
           sum(1:4 %in% elijo3articulos) == 1,
           sum(1:4 %in% elijo3articulos) == 2,
           sum(1:4 %in% elijo3articulos) == 3)

repeticiones <- 1000000

mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 0
}))
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 1
}))
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 2
}))
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 3
}))

probPuntual <- c(mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 0
})),
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 1
})),
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 2
})),
mean(replicate(repeticiones, {
  elijo3articulos <- sample(x = articulos, 3, replace = TRUE)
  sum(1:4 %in% elijo3articulos) == 3
})))

graficoProbPuntual <- plot(x = 0:3, y=probPuntual, type = 'h', pch=1:25, cex=5)

data <- data.frame(x = 0:3, y=probPuntual)

ggplot(data, aes(x=x, y=y)) + #probabilidad puntual ejercicio 1
  geom_point() + 
  geom_segment( aes(x=x, xend=x, y=0, yend=y))

valoresFuncAcum <-c(0,0.39,0.82,0.97,1) #Funcion Prob Acumulada ejercicio 1
plot(stepfun(0:3, valoresFuncAcum), verticals=FALSE, ylab="F(x)",main = "Función de Distr. Acum",)
