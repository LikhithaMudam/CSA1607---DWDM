data(water, package = "MASS")

# Scatterplot
plot(water$hardness, water$mortality,
     main = "Hardness vs Mortality",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

# Linear regression model
model <- lm(mortality ~ hardness, data = water)
abline(model, col = "red", lwd = 2)

# Display model summary
print(summary(model))

# Predict mortality when hardness = 88
new_data <- data.frame(hardness = 88)
predict(model, newdata = new_data)
