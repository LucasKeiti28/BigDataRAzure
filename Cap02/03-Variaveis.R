getwd()

var1 = 100
var1
mode(var1)
help('mode')
sqrt(var1)
var1

var2 = var1
var2
mode(var2)
typeof(var2)
help('typeof')

var3 = c('primeiro', 'segundo', 'terceiro')
var3
mode(var3)
typeof(var3)

var4 = function(x) {x+3}
var4
mode(var4)

# Mudando o modo do dado
var5 = as.character(var1)
var5
mode(var5)

# Atribuindo valores a objetos
x <- c(1,2,3)
x
x1 = c(1,2,3)
x1

c(1,2,3) -> y
y

assign('x', c(6,4,3,2))
x

# Tudo em R sao objetos, lingaguem orientado a objeto (atributos e metodos)

x[1]


# Lista todas as variaveis
ls()
objects()

rm(x)
x
ls()
