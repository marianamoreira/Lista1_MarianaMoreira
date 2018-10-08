library(readxl)
dados <- read_excel("dados/exercicio5.xls")
View(dados)

barplot(dados$`Nº pessoas`, names.arg = dados$Marcas, main="Exercicio 5 - Marca preferida de antitérmico", xlab="Marcas", ylab="Número de pessoas", col = rainbow(5))
dev.copy(device = jpeg, file = "graficos/exercicio5_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()

