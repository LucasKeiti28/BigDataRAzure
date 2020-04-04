?barplot

# Criando a matriz
matriz = matrix(c(1123,3123,3232,3231,3122,5345,6343,5454,1244), nc=3, byrow = TRUE)
matriz

# Criando o grafico
barras = barplot(matriz, beside=TRUE, col=c("red", "green", "blue"), main="BarPlot", xlab="Var. Independente", ylab="Var. Dependente")

# Adicionando a legenda no grafico
?legend
#legend("posicao", pch, col, lengend)
legend("topright", pch=1, col=c("red", "green", "blue"), legend = c("Var1", "Var2", "Var3"))
barras
