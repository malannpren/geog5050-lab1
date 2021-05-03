sumcr <- read.csv("sumcr.csv")
dir()
dir("sumcr.csv")
setwd("E:\\FA20\\Stats\\Exercise 2")
sumcr <- read.csv(file.choose())
ls(sumcr)
sumcr
head(sumcr)
tail(sumcr)
names(sumcr)
sumcr$WidthWS
attach(sumcr)
WidthWS
summary(sumcr)
ls()
attach(sumcr)
plot(Length)
#Length contains data on the length of the hydrologic unit in meters
stripchart(Length)
stripchart(Length, method="stack")
dotchart(WidthWS)
#dotcharts are used to examine a single variable and gain insight into its variations across observations
dotchart(WidthWS, labels=as.character(Location), cex=0.5)
#as.character() - converts the Location variable back into a string
#cex=0.5 makes the characters smaller for legibility
index <- order(WidthWS)
dotchart(WidthWS[index], labels=as.character(Location[index]), cex=0.5)
boxplot(Length)
#the 'whiskers' by default extend to 1.5x the IQR
boxplot(Length, range = 0)
#in this version, the 'whiskers' extend to the extremes of the data
detach(sumcr)
dir("PrVt2012.csv")
usvote <- read.csv(file.choose(), as.is=1)
#as.ix=1 prevents R from turning the state name (STATE) in column 1 into a "factor", leaving is as a text label
usvote
str(usvote)
attach(usvote)
hist(PctObm)
stripchart(PctObm)
hist(PctObm, breaks=20)
hist(PctObm, breaks=5)
#an alternative plot type is the kernel density smoother plot
#produced by first using the density() function to estimate the number of data pts in vicinity of diff values
#of the Obm vote % values, then plotting these
PctObm.density <- density(PctObm)
plot(PctObm.density)
PctObm.density <- density(PctObm)
hist(PctObm, breaks=20, probability = TRUE)
lines(PctObm.density)
rug(PctObm)

#part 3
install.packages("GISTools", depend = T)
library(GISTools)
data(georgia)
appling <- georgia.polys[[1]]
plot(appling, asp=1, type='n', xlab="Easting", ylab="Northing")
polygon(appling, density = 14, angle=135)

plot(c(-1.5,1.5),c(-1.5,1.5),asp=1, type='n')
rect(-1,-0.5,0.5,0.5,border=NA, col=rgb(0,0.5,0.5,0.7))
rect(-.5,0,1,1, col=rgb(1,0.5,0.5,0.7))
