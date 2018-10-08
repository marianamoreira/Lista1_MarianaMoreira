library(readxl)
dados <- read_excel("dados/exercicio9.xls")
View(dados)

maximo <- max(dados$Salários)
maximo
minimo <- min(dados$Salários)
minimo
#minimo = 4, maximo = 24, amplitude = 2
brk<-seq(4,24,2)
brk

classes<-c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20","20-22", "22-24")

frequencia <- table(cut(dados$Salários, breaks=brk, labels=classes, right=F))
frequencia

hist(dados$Salários,breaks=brk,right=F,main="Exercicio 9 - Histograma de amplitude 2", xlab = "Salários", ylab = "Frequência", xaxt = "n", yaxt="n", xlim= c(4,24), ylim=c(0,8),  col = heat.colors(length(dados$Salários)))
axis(side=1, xaxp = c(4,24,10))
axis(side=2, yaxp = c(0, 8, 8))

dev.copy(device = jpeg, file = "graficos/exercicio9_figura1.jpeg", width = 600, height = 500, res = 100)
dev.off()
