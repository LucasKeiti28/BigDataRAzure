# Numero de Linhas
matrix(c(1,2,3,4,5,6), nr = 2)
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)
matrix(c(1,2,3,4,5,6), nr = 5)

# Numero de Colunas
matrix(c(1,2,3,4,5,6), nc = 2)

#help
?matrix

# Matrizes precisam ter um numero de elementos multiplo do numero de linhas

# Criando matriz a patir de um vetor e preenchendo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow=T)
matrix(data = meus_dados, nrow = 5, ncol=2)

# Fatiando Matriz
m1 = matrix(c(1,2,3,4), nr = 2)
m1
m1[1,1]
m1[1,2]
m1[2,2]
m1[,2]

# Crioando Matriz
m2 = matrix(c(1:10), nr=5)
m2

# Matriz Diagonal
matriz = 1:3
diag(matriz)

# Extraindo o vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

# Transposta da Matriz
w <- matrix(c(1:4), nr =2, ncol=2)
w
t(w)
u <- t(w)
u

# obtendo a matriz inversa
solve(w)
a <- solve(w)
a 

w * a

# Multiplicando matriz com vetor
x = c(1:4)
x
y<-matrix(c(5:8), nr=2)
y
x*y

# Nomeando linhas e colunas de uma matriz
mat3 <- matrix(c('Terra', 'Marte', 'Saturno', 'Jupiter'), nr=2)
mat3
dimnames(mat3) = (list(c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3

# Combinando matrizes
mat4 <- matrix(c(1:4), nr =2)
mat4
mat5 <- matrix(c(1:4), nr =2)
mat5

cbind(mat4, mat5)
rbind(mat4, mat5)


# Desconstruindo uma matriz, transforma matriz em um vetor
c(mat4)
