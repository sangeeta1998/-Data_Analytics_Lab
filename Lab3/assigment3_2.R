#Q2(a): Create a line plot of the attribute LEVEL

install.packages("ggplot2")
library(ggplot2)
ggplot(data = PAICOL,aes(DATE,LEVEL))+geom_line()

#Q2(b): Create the scatter plot of "RAIN" against "LEVEL"

ggplot(data = PAICOL,aes(RAIN,LEVEL)) +geom_point()

#Q2(c):  Create a plot of the RAIN and LEVEL.

ggplot(PAICOL,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+geom_line(data=PAICOL,aes(DATE,RAIN,color="RAIN"))

#Q2(d): Find and plot circles on the LEVEL plot at the maximum and minimum value


#Q2(e):  Plot the LEVEL for the year "2001."

PAICOL$YEAR = as.numeric(format(PAICOL$DATE, "%Y"))
index_2001=PAICOL$YEAR==2001
ggplot(PAICOL[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))