data(mtcars)

# Plot mpg and qsec
matplot(mtcars[, c("mpg", "qsec")],
        type = "l",
        lty = 1,
        col = c("blue", "red"),
        xlab = "Observation",
        ylab = "Values",
        main = "MPG and QSEC")

legend("topright",
       legend = c("mpg", "qsec"),
       col = c("blue", "red"),
       lty = 1)
