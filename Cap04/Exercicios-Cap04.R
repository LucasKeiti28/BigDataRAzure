# Lista de Exercícios - Capítulo 4

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
getwd()

# Exercicio 1 - Crie uma função que receba os dois vetores abaixo como parâmetro, 
# converta-os em um dataframe e imprima no console
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")

myfunc <- function(vec1, vec2){
  dframe <- data.frame(vec1,vec2)
  print(dframe)
}

myfunc(vec1,vec2)

# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com 
# números inteiros e calcule a média de cada linha
?matrix
matriz <- matrix(data = c(1:16), nrow=4, ncol=4)
matriz

?colMeans
rowMeans(matriz)

# Exercicio 3 - Considere o dataframe abaixo. 
# Calcule a média por disciplina e depois calcule a média de apenas uma disciplina
escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

subjects <- matrix(data=c(escola$Matematica, escola$Geografia, escola$Quimica), nr=6, nc=3)
subjects
medias <- rowMeans(subjects)
round(medias,0)

grades <- colMeans(subjects)
grades

cbind(escola,round(medias,0))

media_sum <- round(grades,0)

rbind(escola,media_sum)

# Exercicio 4 - Cria uma lista com 3 elementos, todos numéricos 
# e calcule a soma de todos os elementos da lista

list1 = list(a=(1:3))
list1
?lapply
lapply(list1, sum)

# Exercicio 5 - Transforme a lista anterior um vetor
?unlist
unlist(list1, use.names = FALSE)

# Exercicio 6 - Considere a string abaixo. Substitua a palavra "textos" por "frases"
str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")

?gsub()
gsub("textos", "frases", str)

# Exercicio 7 - Usando o dataset mtcars, crie um gráfico com ggplot do tipo 
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
View(mtcars)
qplot(disp,mpg,data= mtcars)
?ggplot
?qplot

# Exercicio 8 - Considere a matriz abaixo.
# Crie um bar plot que represente os dados em barras individuais.
mat1 <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
mat1 

# Gerando massa de dados
data$rigth = cumsum(mat1)

ggplot(mat1) 

# Exercício 9 - Qual o erro do código abaixo?
data(diamonds)
View(diamonds)
ggplot(data = diamonds, aes(x = price, group = cut,)) + 
  geom_density(adjust = 1.5)

# Exercício 10 - Qual o erro do código abaixo?
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
 geom_bar() +
  labs(fill = "cyl")


