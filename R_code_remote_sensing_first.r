# Primo codice di R
 install.packages("raster")
library(raster)
setwd("C:/lab/")
p224r63_2011 <- brick("p224r63_2011_masked.grd")
p224r63_2011
plot(p224r63_2011)
# Cambio colore
Colori <- colorRampPalette(c("black","grey","light grey")) (100)
plot(p224r63_2011, col=Colori)
