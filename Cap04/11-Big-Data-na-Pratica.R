install.packages('googleVis')
require(googleVis)

df = data.frame(País = c("BR", "CH", "AR"), 
                Exportações = c(10,13,14), 
                Importações = c(23,12,32))

line <- gvisLineChart(df)
plot(line)

plot(gvisColumnChart(df))

?CityPopularity
plot(gvisPieChart(CityPopularity))
?iris

plot(gvisLineChart(iris))
head(iris)

Scatter <- gvisScatterChart(women, 
                            options=list(
                              legend="none",
                              lineWidth=2, pointSize=0,
                              title="Women", vAxis="{title:'weight (lbs)'}",
                              hAxis="{title:'height (in)'}", 
                              width=300, height=300))
plot(Scatter)


Intensity <- gvisIntensityMap(df)
plot(Intensity)

# Geo Chart
Geo=gvisGeoChart(Exports, locationvar="Country", 
                 colorvar="Profit",
                 options=list(projection="kavrayskiy-vii"))
plot(Geo)

# Google Maps
AndrewMap <- gvisMap(Andrew, "LatLong" , "Tip", 
                     options=list(showTip=TRUE, 
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain', 
                                  useMapTypeControl=TRUE))
plot(AndrewMap)

# Dados em Gráfico. Nível de analfabetismo nos EUA
require(datasets)
View(state)
states <- data.frame(state.name, state.x77)
View(states)
GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=1200, height=800))
plot(GeoStates)
