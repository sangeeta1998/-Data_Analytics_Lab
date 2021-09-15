#Q1(a): Create bar plots to show the comparison between cumulative totals across "petal length"

barplot(Iris_Dataset$PetalLengthCm)

#Q1(b): 

install.packages("RColorBrewer")
library(RColorBrewer)
barplot(Iris_Dataset$SepalLengthCm,col  = brewer.pal(3,"Set1"))
barplot(table(Iris_Dataset$Species,Iris_Dataset$PetalLengthCm),col  = brewer.pal(3,"Set1"))

#Q1(c): 

data(Iris_Dataset)
par(mfrow=c(2,2))
boxplot(Iris_Dataset$SepalLengthCm,col="red")
boxplot(Iris_Dataset$SepalLengthCm~iris$Species,col="red")
boxplot(Iris_Dataset$SepalLengthCm~iris$Species,col=heat.colors(3))
boxplot(Iris_Dataset$SepalLengthCm~iris$Species,col=topo.colors(3))

#Q1(d): 

plot(x=Iris_Dataset$PetalLengthCm,y=Iris_Dataset$Species)
PAICOL$DATE=as.Date(PAICOL$DATE,origin=PAICOL$DATE[1])

summary(PAICOL)
View(PAICOL)
