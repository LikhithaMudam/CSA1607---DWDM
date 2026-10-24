
# Data
x <- c(1, 1, 5, 5, 8, 8, 10, 10, 10, 10,
       12, 14, 14, 14, 15, 15, 15, 15, 15,
       18, 18, 18, 18, 18, 20, 20, 20, 20,
       20, 20, 20, 21, 21, 21, 21, 25, 25,
       25, 25, 25, 28, 28, 30)

# (i) Equal-frequency partitioning (bin size = 3)
bins <- split(x, ceiling(seq_along(x) / 3))
print(bins)

# (ii) Smoothing by bin means
bin_means <- lapply(bins, function(b) rep(mean(b), length(b)))
print(bin_means)

# Smoothing by bin boundaries
bin_boundaries <- lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  sapply(b, function(v) {
    if (abs(v - low) <= abs(v - high)) low else high
  })
})
print(bin_boundaries)

# (iii) Histogram
hist(x, main = "Histogram of All Electronics Prices",
     xlab = "Price", ylab = "Frequency",
     col = "lightblue", border = "black")
