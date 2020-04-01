getwd()

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 

# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

lista1 <- list(a=(1:20), b=(35:67))
lista1

# Calculando cada elemento da lista com sapply
?sapply
# sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
sapply(lista1, sum)
sapply(lista1, mean)


x <- matrix(c(20, 13, 65, 32, 45, 12, 76, 49, 82), nr = 3, byrow = T)
x

# apply()
?apply
# apply(X, MARGIN, FUN, ...)
# MARGIN: for a matrix 1 indicates rows, 2 indicates columns
apply(x,1, mean)
apply(x, 2, mean)
apply(x,1, plot)

resultapply <- apply(x, 1, mean)
class(resultapply)


# Aplicando apply a um DataFrame
escola <- data.frame(Aluno = c('Bob', 'Tereza', 'Marta', 'Felipe', 'Zacarias', 'Elton'),
                     Fisica = c(91, 82, 75, 97, 62, 74),
                     Matematica = c(99, 100, 86, 92, 91, 87),
                     Quimica = c(56, 72, 49, 68, 59, 77))

escola

escola$media = NA
escola

escola$media <- apply(escola[,c(2,3,4)], 1, mean)
escola

escola$media <- round(escola$media)
escola

# tapply()
?gl
#gl(n, k, length = n*k, labels = seq_len(n), ordered = FALSE)
?sample
#sample(x, size, replace = FALSE, prob = NULL)
?floor
?runif
#runif(n, min = 0, max = 1)
tabela_basquete <-
  data.frame(equipe = gl(5, 5, labels = paste("Equipe", LETTERS[1:5])),
             jogador = sample(letters, 25),
             num_cestas = floor(runif(25, min=0, max=50)))

View(tabela_basquete)
summary(tabela_basquete)

# Calculando total de cestas por equipe
# Usando SQL
install.packages('sqldf')
library(sqldf)

sqldf("select equipe, sum(num_cestas) from tabela_basquete group by equipe")

?tapply()
# tapply(X, INDEX, FUN = NULL, ..., default = NA, simplify = TRUE)
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, sum)
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, mean)

#by
?by
#by(data, INDICES, FUN, ..., simplify = TRUE)
?rnorm
#rnorm(n, mean = 0, sd = 1)

dat <- data.frame(species=c(rep(c(1,2,3), each=5)), 
                  petal.length=c(rnorm(5, 4.5, 1)),
                  petal.width=c(rnorm(5, 2.5, 1), 
                                rnorm(5, 2.5, 1), 
                                rnorm(5, 4, 1)))

dat
View(dat)

by(dat, dat$species, function(x){
  # calcular o comprimento médio da pétala para cada espécie
  mean.pl <- mean(x$petal.length)
})
