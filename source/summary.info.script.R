# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:


library(foreign)
mydata = read.spss("C:\\users\\ryanbreuer\\documents\\info201\\project-azukiplus\\", to.data.frame= true)

install.packages(2018_2019_ANP_online.sav)

summary_info <- list()
summary_info$num_observations <- nrow(my_dataframe)
summary_info$some_max_value <- my_dataframe %>%
  filter(some_var == max(some_var, na.rm = T)) %>%
  select(some_label)

