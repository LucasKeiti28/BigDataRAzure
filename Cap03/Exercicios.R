# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
list.files()

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
?data.frame
df1 <- data.frame(caract=c("a", "b", "c"),logic= c(TRUE, FALSE, TRUE), number=c(1,2,3))
df1

# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34, 10)
vec1

for(val in vec1){
  if(val > 10) {
    print(val)
  }
}

for (i in 1:length(vec1)) {
  if(vec1[i] > 10) {
    print(vec1[i])
    print('Este elememto e maior que 10.')
  } else if(vec1[i] < 10)  {
    print(vec1[i])
    print ('Este elemento e menor que 10.')
  } else {
    print(vec1[i])
    print ('Este elemento e igual a 10.')
  }
}


# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

for (i in lst2) {
  print(i)
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
? '*'
mat1*mat2

# Multiplicação de matrizes
? '%*%'
mat1%*%mat2

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vec2 <- c(1,2,3)
names(vec2) <- c('obs1', 'obs2', 'obs3')
vec2

mat3 <- matrix(c(1:50), ncol=3, nrow=3)
dimnames(mat3) <- (list(c('obs1', 'obs2', 'obs3'), c('var1', 'var2', 'var3')))
mat3

list2 <- list(1,2,3)
names(list2) <- c('dim1', 'dim2', 'dim3')
list2

df2 <- data.frame(teste=c(1,2,3), result=(c(TRUE, FALSE, TRUE)), list=list2)
colnames(df2) <- c('Caracteres', 'Float', 'Logico')
rownames(df2) <- c('obs1', 'obs2', 'obs3')
df2
View(df2)

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2
?sample()
#sample(mat2,50, replace=TRUE) 
x <- sample(1:50,10)
x

mat2[sample(1:50,10)] = NA
mat2

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T) 
mat1
?sapply()

rowSums(mat1)
colSums(mat1)

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a
?sort()
sort(a, decreasing = FALSE)

#Utilizando funcao order
order(a)
a[order(a)]

# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

for (val in mat1) {
  if (val > 15) {
    print(val)
  }
}
