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
#DAY 3
#BANDA 1 BLU
#BANDA 2 VERDE
#BANDA 3 ROSSO
#BANDA 4 INFRAROSSO VICINO
#BANDA 5 INFRAROSSO MEDIO
#BANDA 6 INFRAROSSO TERMICO
#BANDA 7 INFRAROSSO MEDIO
dev.off()
plot(p224r63_2011$B1_sre)
cls <- colorRampPalette(c("red","pink","orange","purple")) (300)
plot(p224r63_2011$B1_sre, col=cls)
dev.off()
plot(p224r63_2011$B1_sre)
par(mfrow=c(2,1))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)
#plottare le prime 4 bande
par(mfrow=c(4,1))
plot(p224r63_2011$B1_sre)
plot(p224r63_2011$B2_sre)
plot(p224r63_2011$B3_sre)
plot(p224r63_2011$B4_sre)
# rgb plitting
plotRGB(p224r63_2011, r=3, g=2, b=1, stretch=”Lin”)
#multitemporal set
p224r63_1988<- brick("p224r63_1988_masked.grd")
p224r63_1988
plot(p224r63_1988)
plotRGB(p224r63_1988,r=3,g=2,b=1, stretch="Lin")
plotRGB(p224r63_1988,r=4,g=3,b=2, stretch="Lin")
# hist
pdf("multitemp.pdf")
par(mfrow=c(2,2))
plotRGB(p224r63_1988,r=4,g=3,b=2, stretch="Lin")
plotRGB(p224r63_2011,r=4,g=3,b=2, stretch="Lin")   
plotRGB(p224r63_1988,r=4,g=3,b=2, stretch="hist")
plotRGB(p224r63_2011,r=4,g=3,b=2, stretch="hist")
    
------------------------------------------------------------------------------------















