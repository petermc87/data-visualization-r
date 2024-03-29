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

# Install packages to run the a html page and pivot table functions
install.packages("htmlwidgets")
install.packages("knitr")
install.packages("rpivotTable")
install.packages("rmarkdown")

# Call the R pivottable library
library(rpivotTable)

# Call the function to pass in the dataframe.
rpivotTable(empdemo)

# Preset rows and cols
rpivotTable(empdemo, rows = "JobLevel", cols = "Sex")

# Preset chart type
rpivotTable(empdemo, rows = "JobLevel", cols = "Sex", rendererName = "Heatmap")
