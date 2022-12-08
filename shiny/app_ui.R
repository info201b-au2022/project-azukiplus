# note to Ryan and Vincent: please install the package commented under here for the custom css!
# install.packages("shinythemes") 
library(shinythemes)
library(shiny)

source("tabs/visualization_1.R")
source("tabs/report.R")

ui <- navbarPage(theme = shinytheme("sandstone"),
  "blackjack 🎲",
  visual_panel_one,
  report
)
