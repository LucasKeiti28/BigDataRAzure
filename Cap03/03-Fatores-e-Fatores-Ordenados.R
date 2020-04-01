getwd()

vec1 <- c("Macho","Femea","Femea","Macho","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
fac_animais <- factor(animais)
fac_animais
class(fac_animais)

grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order=TRUE, levels=c("Bacharelado", "Mestrado", "Doutorado"))
fac_grad
summary(fac_grad)
summary(grad)

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data, labels=c("I", "II", "III"))
rdata

set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

o.set1 <- factor(set1, 
                 ordered = TRUE,
                 levels = c("CA", "BA", "AA", "CC", "B")
                 )

df <- read.csv2("etnias.csv", sep=",")
df
View(df)
str(df)
levels(df$Etnia)
summary(df$Etnia)

plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')

# Convertendo uma coluna em variável categórica. Isso criará um fator não-ordenado
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)
