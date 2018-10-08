library(readxl)
dados <- read_excel("dados/exercicio7.xls")
View(dados)

barplot(dados$Atendimento, names.arg = dados$Áreas, main="Exercicio 7 - Atendimento por área do hospital",  ylab="Número de pessoas", las = 2,  col = terrain.colors(length(dados$Áreas)))
dev.copy(device = jpeg, file = "graficos/exercicio7_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()
