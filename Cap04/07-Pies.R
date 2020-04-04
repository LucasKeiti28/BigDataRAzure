fatia = c(20,30,50)
fatia

paises = c("BR", "JP", "EUA")
paises

dado = paste(fatia,paises)
paises = paste(paises, fatia, '%')
dado

paises

colors()

?pie()
pie(fatia, labels = paises, col=c("steelblue", "springgreen", "sandybrown"), main="Sales Distribution")
