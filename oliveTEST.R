library(dslabs)
data(olive)
head(olive)
#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. 
#What relationship do you see?


x = olive$palmitic
y = olive$palmitoleic

plot(x, y)

z = olive$eicosenoic
hist(z)

x
boxplot(x~region, data = olive)

