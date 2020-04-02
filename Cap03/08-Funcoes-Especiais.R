getwd()

# unlist()
# Produz um vetor com os elementos de uma lista
list1 <- list(6, "b", 5)
list1
class(list1)

unlist(list1)
vec1 <- unlist(list1)
vec1
class(vec1)

lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2

vec2 <- unlist(lst2)
vec2
mean(vec2)
round(mean(vec2))

# do.call()
# Executa uma função em um objeto
# *** ATENÇÃO ***
# As funções da família apply aplicam uma função a cada elemento de um objeto (substitui um loop)
# A função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente
?do.call
data <- list()
data
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

class(data)

head(data)

# Transforma em um dataframe.
do.call(rbind, data)
class(do.call(rbind, data))

# Diferenca entre lapply e do.call
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum)
do.call(sum, y)

install.packages('plyr')
library(plyr)

ldply(y, sum)

# strsplit()
# Divide uma string ou vetor de caracteres

texto <- "Data Science Academy"
strsplit(texto, " ")

texto <- "Data Science Academy"
strsplit(texto, "")

dates <- c("1998-05-23", "2008-12-30", "2009-11-29")
temp  <- strsplit(dates, "-")
temp
class(temp)

# Transformando uma lista em uma matriz
matrix(unlist(temp), nc=3, byrow = TRUE)

frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
# Adicionando o indice no final de uma lista, pegamos cada elemento separadamente.
palavras <- strsplit(frase, " ")[[1]]
class(palavras)
palavras
unique(tolower(palavras))

# strsplit com dataframes
?strsplit
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes

strsplit(as.character(antes$tipo), '_e_' )

library(stringr)
?str_split_fixed
str_split_fixed(antes$tipo, '_e_', 1)

# Usando do.call()
antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
depois <- strsplit(as.character(antes$tipo),'_e_')
depois
do.call(rbind, depois)

# Usando dplyr e tidyr
install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)

antes %>%
  separate(tipo, c("pao", "agua"), "_e_")
