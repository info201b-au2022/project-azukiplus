# P2-Exploratory Analysis
# INFO-201 B
# Instructor: David G Hendry
# TA: Raina Scherer
# Group Member: Ryan William Breuer, Vincent Li, Ashley Mochizuki
# Aggregate Table Script

# load packages
library("haven")
library("tidyverse")

# get data file
data <- read_sav("C:/Users/vl206/Documents/info201/projects/project-01/project-azukiplus/data/2018_2019_ANP_online.sav")
View(data)

features <- ncol(data)
participants <- nrow(data)
