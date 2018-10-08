#https://cienciapratica.wordpress.com/2015/03/17/graficos-no-r-exemplos/
#http://2engenheiros.com/2017/05/27/como-calcular-estatisticas-basicas-no-r/
#https://cran.r-project.org/doc/contrib/Itano-descriptive-stats.pdf
#https://edisciplinas.usp.br/pluginfile.php/2996937/mod_resource/content/1/Tutorial.pdf
#https://rstudio-pubs-static.s3.amazonaws.com/106363_3cdd7d2bedb74c32a5ae86b4bdefb435.html

library(readxl)
exercicio1 <- read_excel("dados/exercicio1.xls")
View(exercicio1)
media <- mean(exercicio1$'Taxas de juros')
mediana <- median(exercicio1$'Taxas de juros')
desvio <- sd(exercicio1$'Taxas de juros')
variancia <- var(exercicio1$'Taxas de juros')
maximo <- max(exercicio1$'Taxas de juros')
minimo <- min(exercicio1$'Taxas de juros')
quartis <- quantile(exercicio1$'Taxas de juros')

media
mediana
desvio
variancia
maximo
minimo
quartis

plot(exercicio1$'Taxas de juros', xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Medidas de Posição", las=1, type = "b")
abline(media, 0, col="red")
abline(mediana, 0, col="blue")
abline(maximo, 0, col="purple")
abline(minimo, 0, col="green")
dev.copy(device = jpeg, file = "graficos/exercicio1_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()


plot(exercicio1$'Taxas de juros', xaxt = "n", yaxt="n", xlim= c(0,10), ylim=c(0,3), xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Variancia, desvio e quartis", las=1, type = "b")
axis(side=1, xaxp = c(0, 10, 10))
axis(side=2, yaxp = c(0, 3, 15))

abline(desvio, 0, col="yellow")
abline(variancia, 0, col="purple")
abline(quartis[[1]], 0, col="red")
abline(quartis[[3]], 0, col="blue")
dev.copy(device = jpeg, file = "graficos/exercicio1_figura2.jpeg", width = 600, height = 500, res = 100)
dev.off()

boxplot(quartis, pch=15, main="Exercicio 1 - Quartis" , col = "lightblue", pars = list(boxwex = 1))
dev.copy(device = jpeg, file = "graficos/exercicio1_figura3.jpeg", width = 600, height = 500, res = 100)
dev.off()
