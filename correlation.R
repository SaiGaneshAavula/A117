#add the data set
data<-read.csv("./Assests/2017.csv")
print(data)

# Check for missing values in the relevant columns
sum(is.na(data$Happiness.Score))  # Missing values in Happiness.Score
sum(is.na(data$Economy..GDP.per.Capita.))  # Missing values in Economy..GDP.per.Capita.

plot(data$Economy..GDP.per.Capita., data$Happiness.Score,
     main = "Correlation between GDP per Capita and Happiness Score",
     xlab = "Economy (GDP per Capita)",
     ylab = "Happiness Score",
     pch = 19,
     col = "blue")
# Add a trend line (linear regression line)
abline(lm(Happiness.Score ~ Economy..GDP.per.Capita., data = data), col = "red")
