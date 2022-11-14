install.packages("foreign")
library(foreign)

data <- read.spss("C:/Users/**username**/Downloads/dataverse_files/2018_2019_ANP_online.sav", to.data.frame=TRUE)
View(data)
