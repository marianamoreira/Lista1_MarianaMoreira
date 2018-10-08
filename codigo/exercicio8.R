library(readxl)
dados <- read_excel("dados/exercicio8.xls")
View(dados)
frequencia <- table(dados$`Altura dos pacientes`)
frequencia
hist(dados$`Altura dos pacientes`, xlab = "Altura", ylab = "Frequência", main="Exercicio 8 - Altura dos pacientes",  col = topo.colors(length(dados$`Altura dos pacientes`)))
dev.copy(device = jpeg, file = "graficos/exercicio8_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()

