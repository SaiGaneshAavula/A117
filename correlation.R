#add the data set
data<-read.csv("./Assests/2017.csv")

# Check for missing values in the relevant columns
sum(is.na(data$Happiness.Score))  # Missing values in Happiness.Score
sum(is.na(data$Economy..GDP.per.Capita.))  # Missing values in Economy..GDP.per.Capita.

plot(data$Economy..GDP.per.Capita., data$Happiness.Score,
     main = "Correlation between GDP per Capita and Happiness Score",
     xlab = "GDP per Capita (Units: Scaled)", 
     ylab = "Happiness Score (0-10)",
     pch = 19,
     col = "blue")
# Add a trend line (linear regression line)
abline(lm(Happiness.Score ~ Economy..GDP.per.Capita., data = data), col = "red")
legend("topleft", legend = c("Data Points", "Regression Line"), 
       col = c("blue", "red"), pch = c(16, NA), lty = c(NA, 1), lwd = 2)
# Pearson correlation
correlation_result <- cor.test(data$Happiness.Score, data$Economy..GDP.per.Capita., method = "pearson")
print(correlation_result)

