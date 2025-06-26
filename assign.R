#analysing mtcars and iris dataset

data("mtcars")
head(mtcars)
summary(mtcars)

#LINEAR REGRESSION OF MTCARS:

p1<-lm(mpg~wt,data = mtcars)
summary(p1)

plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight", xlab = "Weight", ylab = "MPG")
abline(p1, col="blue")

#MULTIPLE REGRESSION

p2<-lm(mpg~wt+hp+cyl,data = mtcars)
summary(p2)

par(mfrow = c(2, 2))
plot(p2)


#IRIS DATASET:
model3 <- lm(Sepal.Length ~ Petal.Length, data = iris)
summary(model3)

# Plotting
plot(iris$Petal.Length, iris$Sepal.Length, main="Sepal vs Petal Length", xlab="Petal Length", ylab="Sepal Length")
abline(model3, col="red")


