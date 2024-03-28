# Pivot tables in R
# https://www.youtube.com/watch?v=98UvbWW6fLo

# Set working directory.
setwd("R-Tutorial-Data-Files-master/")

# Read data.
install.packages("readr")
library(readr)

# New dataframe
empdemo <- read.csv("EmployeeDemographics.csv")

# Run this command to read the whole file out onto the commandline
empdemo
