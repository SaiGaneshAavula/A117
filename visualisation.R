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

