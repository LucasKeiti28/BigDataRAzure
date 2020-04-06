# Scatterplots

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
getwd()

# Define os dados
set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

?set.seed


# Cria o Plot
plot(x, y, col = 123, pch = 10, main = "Multi Scatterplot",
     col.main = "red", cex.main = 1.5, xlab = "Variável Independente", 
     ylab = "Variável Dependente")

# Adiciona outros dados 
points(z, t, col = "blue", pch = 4)

# Adiciona outros dados 
points(y, t, col = 777, pch = 9)

# Adiciona outros dados
points(x,t, col = 666, pch=10)

# Cria legenda
legend(-6,5.9, legend = c("Nível 1", "Nível 2", "Nível 3", "Nivel 4"),
       col = c(123, "blue", 777, 666), pch = c(10,4,9, 10),
       cex = 0.65, bty = "n")

?legend



