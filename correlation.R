#add the data set
data<-read.csv("./Assests/2017.csv")
print(data)
boxplot(Happiness.Score ~ Country, data = data, 
        main = "Comparison of Happiness Score by Country",
        xlab = "Country", 
        ylab = "Happiness Score",
        las = 2,
        varwidth=TRUE,# Rotate x-axis labels for readability
        bg = "red")