library(readxl)
dados <- read_excel("dados/exercicio3.xlsx")
View(dados)

mediana <- median(dados$'Número de filhos')
mediana
#moda
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda <- getmode(dados$'Número de filhos')
moda

plot(dados$`Número de filhos`, xlab="Quantidade total", ylab="Número de filhos", main="Exercicio 3 - Mediana", las=1)
abline(mediana, 0, col="red")
dev.copy(device = jpeg, file = "graficos/exercicio3_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()
plot(dados$`Número de filhos`, xlab="Quantidade total", ylab="Número de filhos", main="Exercicio 3 - Moda", las=1)
abline(moda, 0, col="purple")
dev.copy(device = jpeg, file = "graficos/exercicio3_figura2.jpeg", width = 600, height = 500, res = 100)
dev.off()

