x <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (0 to 1)
min_max <- (x - min(x)) / (max(x) - min(x))
print("Min-Max Normalization:")
print(min_max)

# (b) Z-Score Normalization
z_score <- (x - mean(x)) / sd(x)
print("Z-Score Normalization:")
print(z_score)
