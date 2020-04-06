install.packages("lattice")
require(lattice)

View(iris)
xyplot(data=iris, groups=Species, Sepal.Length~Petal.Length)

?Titanic
View(Titanic)

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2))

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2),
         scales = list(x = "free"))

histogram(~Sepal.Length | Species, xlab = "",
          data = iris, layout=c(3,1), type = "density",
          main = "Histograma Lattice", sub = "Iris Dataset, Sepal Length")

# Distribuição dos dados
qqmath(~ Sepal.Length | Species, data = iris, distribution = qunif)
