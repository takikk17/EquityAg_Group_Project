# EQUITYAG_GROUP_PROJECT
 
# created by: takikk17
# created on: 21 August 2024
# edited by: takikk17
# edited on: 21 August 2024

# input data from calenviroscreen40resultsdatadictionary_F_2021

# packages used
library(arrow)
library(tidyverse)

# Install Packages
install.packages ("arrow")
install.packages("tidyverse")
install.packages("ggplot2")

#Read data from a CSV file
data <- read.csv("Data/calenviroscreen40resultsdatadictionary_F_2021.xlsx - CES4.0FINAL_results.csv")

# Linear Regression  
# first tested with Poverty as an X (confounding variable)
# added unemployment and education
model <- lm(Cardiovascular.Disease ~ Pesticides + Poverty + Unemployment + Education, data = data)

summary(model) 

# create boxplot
library("ggplot2")

model_plot <- ggplot(data = data, 
                     mapping = aes(x = Pesticides, 
                                   y = Cardiovascular.Disease)) + 
  geom_boxplot()
print(model_plot)