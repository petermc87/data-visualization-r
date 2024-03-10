library(ggplot2)
# library(tidyverse)


#  Tests
print("hello world")
y <- c(1, 2, 3)


# Check the data available in R
data()
# ?BOD <-- Run this command in R terminal


# # --- ggplot example 1 (from example datasets) ---
# ggplot(data = BOD, # Dataset.
#         mapping = aes(x = Time, # Mapping the x and y axis. 
#                       y = demand))+
#                       geom_point(size = 5)+ # Displaying geometric points and specifying the size.
#                       geom_line(colour = "red") # Displaying a line and specifying the colour.

# --- ggplot example 2 (from example datasets) ---
ggplot(BOD, aes(Time, demand))+ # ggplot assumes the BOD ref is for the dataframe. It will also assume
# the first aes parameter is x and the second is y.
    geom_point(size = 3)+
    geom_line(color = "red")


View(CO2)


# --- ggplot example 3 -> using tidyverse ---

CO2 %>%
    ggplot(aes(conc, uptake,
                color = Treatment))+
                geom_point(size = 3, alpha = 0.5)+
                geom_smooth()
