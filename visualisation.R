#add the data set
data<-read.csv("./Assests/2017.csv")
print(data)
hist(data$Happiness.Score,
     main = "Histogram of Happiness Score with Normal Curve Overlay",  
     xlab = "Happiness Score",
     ylab = "Density",
     col = "lightblue",
     border = "black",
     freq = FALSE)  # Set freq = FALSE for density plot

# Add the normal distribution curve
x_vals <- seq(min(data$Happiness.Score)-1, max(data$Happiness.Score)+1, length = 100)
y_vals <- dnorm(x_vals, mean = mean(data$Happiness.Score, na.rm = TRUE), 
                sd = sd(data$Happiness.Score, na.rm = TRUE))
lines(x_vals, y_vals, col = "red", lwd = 2)

