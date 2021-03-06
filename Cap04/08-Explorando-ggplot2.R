getwd()

install.packages('ggplot2')
require(ggplot2)


# Carregando o dataset
data(tips, package='reshape2')
View(tips)

# Criando um grafico scatter plot
?qplot
qplot(total_bill, tip, data = tips, geom = "point")

# Criando um grafico com o conceito de Geometria dos Graficos
#geom_point usado para fazer graficos scatterplot
camada1 <- geom_point(
  mapping = aes(x=total_bill, y=tip, color = sex),
  data = tips,
  size=3
)
ggplot() + camada1

?aes
?geom_point

# Construindo um modelo de regressao
modelo_base <- lm(tip~total_bill, data=tips)
modelo_fit <- data.frame(total_bill = tips$total_bill, predict(modelo_base, interval = "confidence"))
head(modelo_fit)

# Criando a camada 2 do grafico
camada2 <- geom_line(mapping = aes(x=total_bill, y=fit), data=modelo_fit, color="darkred")
ggplot() + camada1 + camada2

# Camada3: Intervalo de confianca
camada3 <- geom_ribbon(mapping = aes(x=total_bill, ymin=lwr,ymax=upr), data=modelo_fit, alpha=0.3)
ggplot() + camada1 + camada2 + camada3

# Versão final otimizada
ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_point(aes(color = sex)) +
  geom_smooth(method = 'lm')

?geom_smooth

# Gravando o gráfico em um objeto
myplot <- ggplot(tips, aes(x = total_bill, y = tip)) +
  geom_point(aes(color = sex)) +
  geom_smooth(method = 'lm')

class(myplot)
print(myplot)

# ScatterPlot com linha de regressão

# Dados
data = data.frame(cond = rep(c("Obs 1", "Obs 2"), 
                             each = 10), var1 = 1:100 + 
                    rnorm(100,sd = 9), var2 = 1:100 + 
                    rnorm(100,sd = 16))
# Plot
ggplot(data, aes(x = var1, y = var2)) +    
  geom_point(shape = 1) +  
  geom_smooth(method = lm , color = "red", se = FALSE)  

?lm


# Bar Plot
data = data.frame(grupo=c('A', 'B', 'C', 'D', 'E'),
                  valor = c(32,62,56,67,80),
                  num_obs= c(100,500,459,342,310))
# Gerando a massa de dados
data$right = cumsum(data$num_obs) + 30 * c(0:(nrow(data)-1))
data$left = data$right - data$num_obs 

ggplot(data, aes(ymin=0)) 
  + geom_rect(aes(xmin = left, xmax=right, ymax = valor, colour = grupo, fill = grupo)) 
  + xlab("Número de Observações") 
  + ylab("Valor")

# usando mtcards
head(mtcars)
View(mtcars)

# Variavel nao continua
ggplot(data=mtcars, aes(x=disp, y=mpg, colour = as.factor(am))) + geom_point()
?aes

# Variavel continua
ggplot(data=mtcars, aes(x=disp, y=wt, colour = cyl)) + geom_point()


# Também podemos mapear o tamanho dos pontos à uma variável de interesse:
# A legenda é inserida no gráfico automaticamente
ggplot(mtcars, aes(x = disp, y = mpg, colour = cyl, size = wt)) + geom_point()

# BoxPlog
ggplot(data=mtcars, aes(x=disp, y=mpg, colour = as.factor(am))) + geom_boxplot()

# Histogramas
ggplot(mtcars, aes(x = mpg), binwidth = 30) + geom_histogram()


# Gráfico de Barras
ggplot(mtcars, aes(x = as.factor(cyl))) + geom_bar()


# Facets
ggplot(mtcars, aes(x=mpg, y=disp, colour=as.factor(cyl))) + geom_point() + facet_grid(am~.)
ggplot(mtcars, aes(x = mpg, y = disp, colour = as.factor(cyl))) +
  geom_point() + 
  facet_grid(.~am)

# Plots diferentes juntos (diferente de Facet)
install.packages("gridExtra")
library(gridExtra)
library(ggplot2)

data(diamonds)
View(diamonds)

ggplot(diamonds, aes(x=depth, y=price, colour=cut)) + geom_point()

# Histograma como plot1
plot1 <- qplot(price, data = diamonds, binwidth = 1000)

# ScatterPlot como plot2
plot2 <- qplot(carat, price, data = diamonds, colour = cut)

# Combina os 2 plots na mesma área
grid.arrange(plot1, plot2, ncol = 1)

# Facets com reshape
install.packages("reshape2")
install.packages("plotly")
library(reshape2)
library(plotly)

sp <- ggplot(tips, aes(x = total_bill, y = tip/total_bill)) + geom_point(shape = 1)
sp + facet_grid(sex ~ .)
ggplotly()
sp + facet_grid(. ~ sex)
ggplotly()
sp + facet_wrap( ~ day, ncol = 2)
ggplotly()


View(mpg)
ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~manufacturer)
ggplotly()



