library(ggplot2)
library(tidyr)


#  Tests
print("hello world")
y <- c(1, 2, 3)


# Check the data available in R
data()
# ?BOD <-- Run this command in R terminal


# --- ggplot example 1 (from example datasets) ---
ggplot(data = BOD, # Dataset.
       mapping = aes(x = Time, # Mapping the x and y axis.
                     y = demand)) +
  geom_point(size = 5) + # Displaying geometric points
  # and specifying the size.
  geom_line(colour = "red") # Displaying a line and specifying the colour.

# --- ggplot example 2 (from example datasets) ---
ggplot(BOD, aes(Time, demand)) + # ggplot assumes the BOD ref is for the
  # dataframe. It will also assume the first aes parameter is x and
  # the second is y.
  geom_point(size = 3) +
  geom_line(color = "red")
View(CO2)


# --- ggplot example 3 -> using tidyverse scatter plot ---
CO2 %>%
  ggplot(aes(conc, uptake,
             color = Treatment)) +
  geom_point(size = 3, alpha = 0.5) +
  geom_smooth(method = lm, se = TRUE) + # Smoothung method and confidence off.
  facet_wrap(~Type) +
  labs(title = "Concentration of CO2") +
  theme_bw()

# --- ggplot example 4 -> creating a boxplot ---#
CO2 %>%
  ggplot(aes(Treatment, uptake)) +
  geom_boxplot() +
  geom_point(alpha = 0.5, aes(size = conc, color = Plant)) + # this is mapping
  # the size of each data point based on the concentration.
  # also, each plant will have a color.
  facet_wrap(~Type) +
  coord_flip() + # Flips the plot on its side
  theme_bw() + # Theme of the plot frame.
  labs(title = "Chilled vs Non Chilled")


View(mpg)
# --- ggplot example 5 -> scatter plot for mpg data ---#
mpg %>% # Pipe operator for mpg data.
  filter(cty < 25) %>% # Using pipe again to filter outliers.
  ggplot(aes(displ, cty)) +
  geom_point(aes(colour = drv, size = trans),
             alpha = 0.5) +
  geom_smooth(method = lm) +
  facet_wrap(~year, nrow = 1)
# The colour gets
# mapped to the drive and the size is dependent on the transmission.
