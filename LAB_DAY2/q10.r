diabetes <- read.csv("diabetes.csv")

# Scatterplot: Blood Pressure vs Age
plot(diabetes$Age, diabetes$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19,
     col = "blue")

# Bar chart: Average blood pressure by age group
diabetes$AgeGroup <- cut(
  diabetes$Age,
  breaks = c(0, 20, 30, 40, 50, 60, Inf),
  labels = c("0-20", "21-30", "31-40",
             "41-50", "51-60", "Above 60")
)

avg_bp <- aggregate(BloodPressure ~ AgeGroup,
                    data = diabetes,
                    FUN = mean,
                    na.rm = TRUE)

barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightgreen")
