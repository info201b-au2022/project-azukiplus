# impulsiveness (personality) vs gambling boxplot 

library(plotly)
library(dplyr)

# read in the data
raw = getURL("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/data/data.csv")
data <- read.csv(text = raw)

gambling_counts_personality <- data %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)

gambling_counts_debt <- data %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_d9)

gambling_counts_ratio_1 <- data %>%
  filter(b_d9 == "1") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_1)[2] <- "ratio_1"

gambling_counts_ratio_2 <- data %>%
  filter(b_d9 == "2") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_2)[2] <- "ratio_2"

gambling_counts_ratio_3 <- data %>%
  filter(b_d9 == "3") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_3)[2] <- "ratio_3"

gambling_counts_ratio_4 <- data %>%
  filter(b_d9 == "4") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_4)[2] <- "ratio_4"

gambling_counts_ratio_5 <- data %>%
  filter(b_d9 == "5") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_5)[2] <- "ratio_5"

gambling_counts_ratio_6 <- data %>%
  filter(b_d9 == "6") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_6)[2] <- "ratio_6"

gambling_counts_ratio_7 <- data %>%
  filter(b_d9 == "7") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_7)[2] <- "ratio_7"

gambling_counts_ratio_8 <- data %>%
  filter(b_d9 == "8") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_8)[2] <- "ratio_8"

gambling_counts_ratio_9 <- data %>%
  filter(b_d9 == "9") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_9)[2] <- "ratio_9"

gambling_counts_ratio_98 <- data %>%
  filter(b_d9 == "98") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_98)[2] <- "ratio_98"

gambling_counts_ratio_99 <- data %>%
  filter(b_d9 == "99") %>%
  drop_na(b_NEO_N_I_TOTAL) %>%
  count(b_NEO_N_I_TOTAL)
colnames(gambling_counts_ratio_99)[2] <- "ratio_99"

# combine all the ratios found
gambling_counts_comp <- left_join(gambling_counts_ratio_1, gambling_counts_ratio_2, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_3, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_4, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_5, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_6, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_7, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_8, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_9, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_98, by="b_NEO_N_I_TOTAL") %>%
                        left_join(., gambling_counts_ratio_99, by="b_NEO_N_I_TOTAL")
gambling_counts_comp <- subset (gambling_counts_comp, select = -b_NEO_N_I_TOTAL)
gambling_counts_comp <- mutate(gambling_counts_comp, pts = row_number())
gambling_counts_comp[is.na(gambling_counts_comp)] = 0

# plot data
fig <- plot_ly(data = gambling_counts_comp, x = ~pts, y = ~ratio_1, name = "1: No debt", type = "scatter", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_2, name = "2: Less than $39,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_3, name = "3: $40,000 – $79,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_4, name = "4: $80,000 - $119,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_5, name = "5: $120,000 - $159,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_6, name = "6: $160,000 - $199,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_7, name = "7: $200,000 - $239,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_8, name = "8: $240,000 - $299,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_9, name = "9: >$300,000", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_98, name = "98: Uncertain", mode = "lines")
fig <- fig %>% add_trace(y = ~ratio_99, name = "99: Prefer not to answer", mode = "lines")

fig <- fig %>% layout(yaxis = list(title = "Number of people"), 
                      xaxis = list(title = "Impulsiveness (through the NEO test)"),
                      title = "Impulsiveness vs Gamblers in Debt")


fig

