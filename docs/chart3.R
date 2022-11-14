library(plotly)
library(RCurl)
library(dplyr)
library(tidyr)

# read in the data
raw = getURL("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/data/data.csv")
data <- read.csv(text = raw)

gambling_counts <- data %>%
  drop_na(b_gc2) %>%
  count(b_d9)

# find ratios of percentage of people who do alcohol and gamble and make them into columns
gambling_alcohol_ratio_1 <- data %>%
  filter(b_d9 == "1") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_1)[2] <- "ratio_1"
gambling_alcohol_ratio_1 <- gambling_alcohol_ratio_1$ratio_1 / gambling_counts[1,2]

gambling_alcohol_ratio_2 <- data %>%
  filter(b_d9 == "2") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_2)[2] <- "ratio_2"
gambling_alcohol_ratio_2 <- gambling_alcohol_ratio_2$ratio_2 / gambling_counts[2,2]

gambling_alcohol_ratio_3 <- data %>%
  filter(b_d9 == "3") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_3)[2] <- "ratio_3"
gambling_alcohol_ratio_3 <- gambling_alcohol_ratio_3$ratio_3 / gambling_counts[3,2]

gambling_alcohol_ratio_4 <- data %>%
  filter(b_d9 == "4") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_4)[2] <- "ratio_4"
gambling_alcohol_ratio_4 <- gambling_alcohol_ratio_4$ratio_4 / gambling_counts[4,2]

gambling_alcohol_ratio_5 <- data %>%
  filter(b_d9 == "5") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_5)[2] <- "ratio_5"
gambling_alcohol_ratio_5 <- gambling_alcohol_ratio_5$ratio_5 / gambling_counts[5,2]

gambling_alcohol_ratio_6 <- data %>%
  filter(b_d9 == "6") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_6)[2] <- "ratio_6"
gambling_alcohol_ratio_6 <- gambling_alcohol_ratio_6$ratio_6 / gambling_counts[6,2]

gambling_alcohol_ratio_7 <- data %>%
  filter(b_d9 == "7") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_7)[2] <- "ratio_7"
gambling_alcohol_ratio_7 <- gambling_alcohol_ratio_7$ratio_7 / gambling_counts[7,2]

gambling_alcohol_ratio_8 <- data %>%
  filter(b_d9 == "8") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_8)[2] <- "ratio_8"
gambling_alcohol_ratio_8 <- gambling_alcohol_ratio_8$ratio_8 / gambling_counts[8,2]

gambling_alcohol_ratio_9 <- data %>%
  filter(b_d9 == "9") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_9)[2] <- "ratio_9"
gambling_alcohol_ratio_9 <- gambling_alcohol_ratio_9$ratio_9 / gambling_counts[9,2]

gambling_alcohol_ratio_98 <- data %>%
  filter(b_d9 == "98") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_98)[2] <- "ratio_98"
gambling_alcohol_ratio_98 <- gambling_alcohol_ratio_98$ratio_98 / gambling_counts[10,2]

gambling_alcohol_ratio_99 <- data %>%
  filter(b_d9 == "99") %>%
  drop_na(b_gc2) %>%
  count(b_gc2)
colnames(gambling_alcohol_ratio_99)[2] <- "ratio_99"
gambling_alcohol_ratio_99 <- gambling_alcohol_ratio_99$ratio_99 / gambling_counts[11,2]

# combine all the ratios found
gambling_alcohol_comp <- data.frame(gambling_alcohol_ratio_1, gambling_alcohol_ratio_2, gambling_alcohol_ratio_3,
                                  gambling_alcohol_ratio_4, gambling_alcohol_ratio_5, gambling_alcohol_ratio_6, 
                                  gambling_alcohol_ratio_7, gambling_alcohol_ratio_8, gambling_alcohol_ratio_9, 
                                  gambling_alcohol_ratio_98, gambling_alcohol_ratio_99)
gambling_alcohol_comp <- gambling_alcohol_comp * 100
gambling_alcohol_comp <- t(gambling_alcohol_comp)
gambling_alcohol_comp <- as.data.frame(gambling_alcohol_comp)
gambling_alcohol_comp$b_d9 <- c("1: No debt", "2: Less than $39,000", "3: $40,000 – $79,000", "4: $80,000 - $119,000", 
                              "5: $120,000 - $159,000", "6: $160,000 - $199,000", "7: $200,000 - $239,000", 
                              "8: $240,000 - $299,000", "9: >$300,000", "98: Uncertain", "99: Prefer not to answer")

bar <- plot_ly(
  data = gambling_alcohol_comp,
  type = "bar",
  x = ~b_d9,
  y = ~V1,
  name = "Never used alcohol"
)

bar <- bar %>%
  add_trace(y = ~V2, name = "Rarely used alcohol") %>%
  add_trace(y = ~V3, name = "Sometimes used alcohol") %>%
  add_trace(y = ~V4, name = "Often used alcohol") %>%
  add_trace(y = ~V5, name = "Always used alcohol")

bar <- bar %>% layout(yaxis = list(title = "Percentage of Gamblers Who Use alcohol"), 
                      xaxis = list(title = "Debt of gamblers ($CAD)"),
                      barmode="stack",
                      title = "Alcohol usage vs gambler debt")

bar
