library(ggplot2)


#  Tests
print("hello world")
y <- c(1, 2, 3)




# Check the data available in R
data()
# ?BOD <-- Run this command in R terminal



ggplot(data = BOD, # Dataset.
        mapping = aes(x = Time, # Mapping the x and y axis. 
                      y = demand))+
                      geom_point(size = 5)+ # Displaying geometric points and specifying the size.
                      geom_line(colour = "red") # Displaying a line and specifying the colour.