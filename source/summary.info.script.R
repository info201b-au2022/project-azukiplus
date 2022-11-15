# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
library(RCurl)
library(dplyr)

raw = getURL("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/data/data.csv")
data <- read.csv(text = raw)

summary_info <- list()

# gets the number of observations
summary_info$num_observations <- nrow(data)

# gets the number of observations that has used drugs while gambling
summary_info$drug_usage <- data %>%
  filter(!is.na(b_gc5)) %>%
  filter(b_gc5 != 0) %>%
  nrow()

# gets the number of observations that has used alcohol while gambling
summary_info$alcohol_usage <- data %>%
  filter(!is.na(b_gc2)) %>%
  filter(b_gc2 != 0) %>%
  nrow()

# gets the number of observations that have an immediate family member with a gambling problem
# excludes "unsure" answers
summary_info$immediate_family <- data %>%
  filter(!is.na(b_gfh1a)) %>%
  filter(b_gfh1a == 1) %>%
  nrow()

# gets the number of observations that have developed a serious physical illness, serious mental illness,
# or drug or alcohol addiction 
summary_info$health_problems <- data %>%
  filter(!is.na(b_c10_48) | !is.na(b_c10_49) | !is.na(b_c10_50)) %>%
  filter(b_c10_48 == 1| b_c10_49 == 1| b_c10_50 == 1) %>%
  nrow()
