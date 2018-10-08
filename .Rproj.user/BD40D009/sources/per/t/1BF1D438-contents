#install.packages("qcc")
library(readxl)
library(qcc)
dados <- read_excel("dados/exercicio6.xls")
View(dados)

tipo <- dados$`Nº pessoas`
names(tipo) <- dados$Qualidade
tipo
pareto.chart(tipo, xlab = "", ylab = "Número de pessoas", ylab2 ="Porcentagem cumulativa", main="Exercicio 6 - Avaliação de atendimento",  col = heat.colors(length(tipo)), plot = TRUE, las =2)

dev.copy(device = jpeg, file = "graficos/exercicio6_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()
