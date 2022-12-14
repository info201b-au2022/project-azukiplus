# P2-Exploratory Analysis
# INFO-201 B
# Instructor: David G Hendry
# TA: Raina Scherer
# Group Member: Ryan William Breuer, Vincent Li, Ashley Mochizuki
# Aggregate Table Script

# load packages
library("dplyr")
library("RCurl")
library("tidyverse")

# get data file and store as a data frame
raw = getURL("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/data/data.csv")
data <- read.csv(text = raw)

# store the total number of participants
participants <- nrow(data)

# separate columns in to b and F since there are two different sets of survey.
baseline_surveys <- data %>%
  select(starts_with("b"))

follow_up_surveys <- data %>%
  select(starts_with("F"))


# information of participants that finish the follow up surveys
follow_completion <- follow_up_surveys %>%
  filter(!is.na(F_followUpcomplete)) %>%
  summarise(total = participants, 
            completed = length(F_followUpcomplete), 
            missing = participants - completed, 
            completion_rate = round(completed / participants, digit = 4))


# store the information of participants' ages as data frame
ages_data <- data %>%
  group_by(b_age) %>%
  count(b_age) %>%
  mutate(percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("Age ranges" = "b_age",
         "number" = "n")


# store the information of participants' sex as data frame
sex_data <- data %>%
  group_by(b_sex) %>%
  count(b_sex) %>%
  mutate(percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("Sex" = "b_sex",
         "number" = "n")


# store the data of participants' gambling frequency as data frame
gambling_frequency <- baseline_surveys %>%
  group_by(b_screen1) %>%
  count(b_screen1) %>% 
  rename("Gamble status" = "b_screen1",
         "number" = "n")

# store the data of the participants' marital status as data frame
first_marital_status <- baseline_surveys %>%
  group_by(b_d3) %>%
  count(b_d3) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("Marital status" = "b_d3",
         "number_base" = "n")

second_marital_status <- follow_up_surveys %>%
  filter(!is.na(F_d3)) %>%
  group_by(F_d3) %>%
  count(F_d3) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("Marital status" = "F_d3",
         "number_follow" = "n")

overall_marital_status <- left_join(first_marital_status, second_marital_status, by = "Marital status")


# store the data of smoking frequency as data frame
first_smoking_frequency <- baseline_surveys %>%
  group_by(b_c1a) %>%
  count(b_c1a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("Smoking status" = "b_c1a",
         "number_base" = "n")

second_smoking_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c1a)) %>%
  group_by(F_c1a) %>%
  count(F_c1a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("Smoking status" = "F_c1a",
         "number_follow" = "n")

overall_smoking_status <- left_join(first_smoking_frequency, second_smoking_frequency, by = "Smoking status")


# store the data of alcohol frequency as data frame
first_alcohol_frequency <- baseline_surveys %>%
  group_by(b_c2a) %>%
  count(b_c2a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("alcohol status" = "b_c2a",
         "number_base" = "n")

second_alcohol_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c2a)) %>%
  group_by(F_c2a) %>%
  count(F_c2a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("alcohol status" = "F_c2a",
         "number_follow" = "n")

overall_alcohol_status <- left_join(first_alcohol_frequency, second_alcohol_frequency, by = "alcohol status")


# store the data of marijuana frequency as data frame
first_marijuana_frequency <- baseline_surveys %>%
  group_by(b_c4a) %>%
  count(b_c4a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("marijuana status" = "b_c4a",
         "number_base" = "n")

second_marijuana_frequency <- follow_up_surveys %>%
  filter(!is.na(F_c4a)) %>%
  group_by(F_c4a) %>%
  count(F_c4a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("marijuana status" = "F_c4a",
         "number_follow" = "n")

overall_marijuana_status <- left_join(first_marijuana_frequency, second_marijuana_frequency, by = "marijuana status")


# store the data of drug usage as data frame
first_drug_usage <- baseline_surveys %>%
  group_by(b_c5a) %>%
  count(b_c5a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("Drug status" = "b_c5a",
         "number_base" = "n")

second_drug_usage <- follow_up_surveys %>%
  filter(!is.na(F_c5a)) %>%
  group_by(F_c5a) %>%
  count(F_c5a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("Drug status" = "F_c5a",
         "number_follow" = "n")

overall_drug_status <- left_join(first_drug_usage, second_drug_usage, by = "Drug status")

# store the behavioral addiction as data frame
first_behavioral_addictoin <- baseline_surveys %>%
  group_by(b_c7a) %>%
  count(b_c7a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("behavirol addiction status" = "b_c7a",
         "number_base" = "n")

second_behavirol_addiction <- follow_up_surveys %>%
  filter(!is.na(F_c7a)) %>%
  group_by(F_c7a) %>%
  count(F_c7a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("behavirol addiction status" = "F_c7a",
         "number_follow" = "n")

overall_behavirol_addiction <- left_join(first_behavioral_addictoin, second_behavirol_addiction, by = "behavirol addiction status")

# store the information of stress levels as data frame
first_stress_level <- baseline_surveys %>%
  group_by(b_c8) %>%
  count(b_c8) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("stress levels" = "b_c8",
         "number_base" = "n")

second_stress_level <- follow_up_surveys %>%
  filter(!is.na(F_c8)) %>%
  group_by(F_c8) %>%
  count(F_c8) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("stress levels" = "F_c8",
         "number_follow" = "n")

overall_stress_level <- left_join(first_stress_level, second_stress_level, by = "stress levels")

# store the data of abuse experiences as data frame
abuse_experience <- data %>%
  group_by(b_c9) %>%
  count(b_c9) %>%
  mutate(percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("abuse history" = "b_c9",
         "number" = "n")


# store the data of gambling participation as data frame
first_lottery_frequency <- baseline_surveys %>%
  group_by(b_g1a) %>%
  count(b_g1a) %>%
  mutate(percentage_base = round(n / participants * 100, digit = 2)) %>% 
  rename("lottery status" = "b_g1a",
         "number_base" = "n")

second_lottery_frequency <- follow_up_surveys %>%
  filter(!is.na(F_g1a)) %>%
  group_by(F_g1a) %>%
  count(F_g1a) %>%
  mutate(percentage_follow = round(n / follow_completion$completed * 100, digit = 2), 
         whole_percentage = round(n / participants * 100, digit = 2)) %>% 
  rename("lottery status" = "F_g1a",
         "number_follow" = "n")

overall_lottery_frequency <- left_join(first_lottery_frequency, second_lottery_frequency, by = "lottery status")
