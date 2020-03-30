# Primeiros passos na lingaguem R

# Mostra qual o diretorio atual
getwd()

contributors()
license()

print('Teste')
plot(1:25)

# Instalar Pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages('dplyr')
install.packages('devtools')

# Carregar o pacote
library(ggplot2)
library(randomForest)

# Tira o pacote carregado da memoria (Descarregar o pacote)
detach(package:ggplot2)
detach(package:randomForest)

# Formas de Ajuda
help(mean)
?mean

install.packages('sos')
library(sos)
findFn('fread')

help.search('randomForest')
example('matplot')

# Sair
q()
