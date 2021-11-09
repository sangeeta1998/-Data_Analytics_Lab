install.packages("igraph")
install.packages('expm')
library(expm)
library(igraph)
g <-sample_gnm(4,m= 7, directed = TRUE,loops = 1)
g
plot(g)

df <- data.frame(pr = page_rank(g, damping = 0.9,personalized=c(0,1,0,1))$vector)
df
df1 <- data.frame(pr = page_rank(g, damping = 0.9)$vector)
df1

