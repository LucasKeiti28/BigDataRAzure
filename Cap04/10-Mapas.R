# Ja esta com o ggplot2 instalado
install.packages(c('maps', 'mapdata'))
require(maps)
require(mapdata)
require(ggplot2)

# Buscando as coordenadas dos paises
?map_data
mapa <- map_data("world")
View(mapa)
summary(mapa)

# Gerando o mapa
ggplot() + geom_polygon(data=mapa, aes(x=long, y=lat, group=group)) + coord_fixed(1.3)

gg1 <- ggplot() + 
  geom_polygon(data = mapa, aes(x=long, y = lat, group = group), fill = "seagreen1", color = "blue") + 
  coord_fixed(1.3)
gg1

# Marcando alguns pontos no mapa
# Podemos usar um shapefile
labs <- data.frame(
  long = c(69.24140, -2.8456051),
  lat = c(-78.38995, 22.44512),
  names = c("Ponto1", "Ponto2"),
  stringsAsFactors = FALSE
)  

# Pontos no mapa
gg1 + 
  geom_point(data = labs, aes(x = long, y = lat), color = "black", size = 2) +
  geom_point(data = labs, aes(x = long, y = lat), color = "yellow", size = 2)
