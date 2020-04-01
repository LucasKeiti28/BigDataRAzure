getwd()

# Vetor de strings
vetor_caracter = c("Data", 'Science', 'Academy')
vetor_caracter

# Vetor de floas
vetor_float = c(1.5, 2.5, 3.5)
vetor_float

# Vetor de valores logicos
vetor_logico = c(TRUE, FALSE, FALSE)
vetor_logico

# Utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

# Utilizando rep()
vetor2 = rep(1:5)
vetor2
is.vector(vetor2)

# Indexacao de Vetores
a <- c(1,2,3,4,5)
a
a[1]
a[6]

# Combinando Vetores
v1 = c(1,2,3)
v2 = c('a', 'b', 'c')
c(v1,v2)

# Operacoes com vetores
x = c(1,2,3,4)
y = c(10,20,30,40)

x + y
x * y
x * 4


# Operacoes com vetores de diferentes tamanhos
alfa = c(10, 20, 30)
beta = c(1,2,3,4,5,6,7,8,9,10)
alfa + beta

# Vetor nomeado
v = c("Nelson", "Mandela")
v
names(v) = c("Nome", "Sobrenome")
v
v("Nome")
v["Nome"]
