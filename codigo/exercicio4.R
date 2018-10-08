library(readxl)
dados <- read_excel("dados/exercicio4.xls")
View(dados)

#Tabela de frequências absolutas
freq <- table(dados$'Salários')
freq
hist(dados$'Salários', xlab="Quantidade de salários mínimos", ylab="Número de indivíduos com o respectivo salário", main="Exercicio 4 - Histograma", col = cm.colors(length(dados$Salários)))
dev.copy(device = jpeg, file = "graficos/exercicio4_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()

