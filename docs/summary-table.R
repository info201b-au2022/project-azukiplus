# P2-Exploratory Analysis
# INFO-201 B
# Instructor: David G Hendry
# TA: Raina Scherer
# Group Member: Ryan William Breuer, Vincent Li, Ashley Mochizuku
# Aggregate Table Script

# load packages
library(foreign)
library("dplyr")
library("tidyverse")

# get data file
data <- read.spss("https://github.com/info201b-au2022/project-azukiplus/blob/main/data/2018_2019_ANP_online.sav?raw=true", to.data.frame = TRUE)
View(data)

# store the total number of columns and rows
features <- ncol(data)
participants <- nrow(data)

# separate columns in to b and f
baseline_surveys <- data %>%
  select(starts_with("b"))

follow_up_surveys <- data %>%
  select(starts_with("F"))

  
# participants that finish the follow up surveys
follow_completion <- follow_up_surveys %>%
  filter(!is.na(F_followUpcomplete)) %>%
  summarise(total = participants, 
            completed = length(F_followUpcomplete), 
            missing = participants - completed, 
            completion_rate = round(completed / participants, digit = 4))


# separate rows by Ages use groupby()
ages_data <- data %>%
  group_by(b_age) %>%
  count(b_age) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))
  

# separate rows by sex use group_by()
sex_baseline_survey <- data %>%
  group_by(b_sex) %>%
  count(b_sex) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))
         

# find gambling frequency
gambling_frequency <- baseline_surveys %>%
 group_by(b_screen1) %>%
 count(b_screen1) 

# find marital status
first_marital_status <- baseline_surveys %>%
  group_by(b_d3) %>%
  count(b_d3) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_marital_status <- follow_up_surveys %>%
  filter(!is.na(F_c1a)) %>%
  group_by(F_d3) %>%
  count(F_d3) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))


# find smoking frequency
first_smoking_frequency <- baseline_surveys %>%
  group_by(b_c1a) %>%
  count(b_c1a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_smoking_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c1a)) %>%
  group_by(F_c1a) %>%
  count(F_c1a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))


# make a table by alcohol frequency
first_alcohol_frequency <- baseline_surveys %>%
  group_by(b_c2a) %>%
  count(b_c2a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_alcohol_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c2a)) %>%
  group_by(F_c2a) %>%
  count(F_c2a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))


  # make a table by marijuana frequency
first_marijuana_frequency <- baseline_surveys %>%
  group_by(b_c4a) %>%
  count(b_c4a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_marijuana_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c4a)) %>%
  group_by(F_c4a) %>%
  count(F_c4a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))

# make a table by drug 
first_drug_usage <- baseline_surveys %>%
  group_by(b_c5a) %>%
  count(b_c5a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_drug_usage <- follow_up_surveys %>%
  filter(!is.na(F_c5a)) %>%
  group_by(F_c5a) %>%
  count(F_c5a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))

# make a table by behavioral addiction
first_behavioral_addictoin <- baseline_surveys %>%
  group_by(b_c7a) %>%
  count(b_c7a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_behavirol_addiction <- follow_up_surveys %>%
  filter(!is.na(F_c7a)) %>%
  group_by(F_c7a) %>%
  count(F_c7a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))


# make a table by stressful
first_stressfulness <- baseline_surveys %>%
  group_by(b_c8) %>%
  count(b_c8) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_stressfulness <- follow_up_surveys %>%
  filter(!is.na(F_c8)) %>%
  group_by(F_c8) %>%
  count(F_c8) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))


# make a table by experienced abuses as child
abuse_experience <- data %>%
  group_by(b_c9) %>%
  count(b_c9) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))


# make a table by gambling
first_lottery_frequency <- baseline_surveys %>%
  group_by(b_g1a) %>%
  count(b_g1a) %>%
  mutate(percentage = round(n / participants * 100, digit = 2))

second_lottery_frequency <- follow_up_surveys %>%
  filter(!is.na(F_g1a)) %>%
  group_by(F_g1a) %>%
  count(F_g1a) %>%
  mutate(percentage = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2))
