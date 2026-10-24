points <- c(12, 15, 18, 20, 22, 24, 25, 27, 30, 75)

# Create boxplot
boxplot(points,
        main = "Tennis Players' Scores",
        ylab = "Points Scored",
        col = "lightblue")

# Display outliers
boxplot.stats(points)$out
