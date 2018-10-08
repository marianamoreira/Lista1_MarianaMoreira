library(readxl)
dados <- read_excel("dados/exercicio2.xls")
View(dados)

#Tabela de frequências absolutas
freq <- table(dados$'Casas')
freq
hist(dados$Casas)

#Medidas de posição
media <- mean(dados$Casas)
media
mediana <- median(dados$'Casas')
mediana
  #moda
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda <- getmode(dados$Casas)
moda


#Medidas de disperção
desvio <- sd(dados$'Casas')
desvio
variancia <- var(dados$'Casas')
variancia
quartis <- quantile(dados$'Casas')
quartis

plot(dados$Casas, xlab="Quantidade total", ylab="Número de casas por quarteirão", main="Exercicio 2 - Media, mediana, moda, desvio e variancia", las=1)
abline(media, 0, col="red")
abline(mediana, 0, col="blue")
abline(moda, 0, col="purple")
abline(desvio, 0, col="yellow")
abline(variancia, 0, col="green")
dev.copy(device = jpeg, file = "graficos/exercicio2_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()

boxplot(quartis , pch=15, main="Exercicio 2 - Quartis" , col = "lightblue", pars = list(boxwex = 1))
dev.copy(device = jpeg, file = "graficos/exercicio2_figura2.jpeg", width = 600, height = 500, res = 100)
dev.off()
