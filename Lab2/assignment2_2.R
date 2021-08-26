
### Question 2(a)
# loading iris dataset
df <- read.csv("C:\Users\sangeeta\Downloads\Iris.csv")
View(df)

### Question 2(b)
# finding the mean of all metrics in iris
colMeans(df[sapply(df, is.numeric)])


### Question 2(c)
# finding sum of all the metrices and group by metrices
colSums(iris[sapply(iris, is.numeric)])

### Question 2(d)
# counting metrices of all the species
Count <- sapply(df[,1:5], NROW)
Count
# count number of values in each columnn
countedValues <- aggregate(x= df, by= list(df$Species), function(x) length(x))
countedValues

### Question 2(e)
# maximum of all the species
Maximum <- sapply(df[,1:5], max)
Maximum
# maximum value in each column
maxValues <- aggregate(x= df[,1:5], by= list(df$Species), FUN= max)
maxValues
