data(mtcars)

# Convert cylinders into a categorical variable
mtcars$cyl <- as.factor(mtcars$cyl)

# Boxplot
boxplot(mpg ~ cyl, data = mtcars,
        main = "MPG vs Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = c("lightblue", "lightgreen", "lightpink"))
