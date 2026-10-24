data <- data.frame(
  A = c(18, 2, 20),
  B = c(22, 28, 10),
  C = c(20, 40, 40)
)

# 1. Sample covariance between B and C
cov(data$B, data$C)

# 2. Sample covariance matrix
cov(data)

# 3. Sample correlation between B and C
cor(data$B, data$C)

# 4. Sample correlation matrix
cor(data)
