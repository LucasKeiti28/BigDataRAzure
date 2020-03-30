
# vetor: possui 1 dimensao, com apenas 1 tipo de dado
vetor1 = c(1:20)
vetor1
mode(vetor1)
length(vetor1)
typeof(vetor1)
class(vetor1)
vetor1[0]
vetor1[1]

# matriz: possui 2 dimensoes, com apentas 1 tipo de dado
matriz1 <- matrix(1:30, nrow=3)
matriz1
mode(matriz1)
length(matriz1)
typeof(matriz1)
class(matriz1)

# array: possui 2 ou mais dimensoes, com apenas 1 tipo de dado
array1 <- array(1:5, dim = c(3,3,3))
array1
mode(array1)
length(array1)
typeof(array1)
class(array1)

# Trabalhando com diferentes tipos de dados
# Dataframes: matriz com diferentes tipos de dados
View(iris)
mode(iris)
length(iris)
typeof(iris)
class(iris)

# Listas: colecao de diferentes objetos
# Diferentes tipos de dados sao possiveis e bem comum
lista1 <- list(a = matriz1, b = vetor1)
lista1
mode(lista1)
length(lista1)
typeof(lista1)
class(lista1)

# funcoes sao consideradas objetos em R
func1 <- function(x) {
  var1 <- x*x
  return (var1)
}

func1(5)
class(func1)

# Removendo objetos
objects()
rm(array1, func1)
objects()
