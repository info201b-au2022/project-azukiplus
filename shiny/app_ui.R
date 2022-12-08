# note to Ryan and Vincent: please install the package commented under here  for the custom css!
# install.packages("shinythemes") 
library(shinythemes)
library(shiny)
library(plotly)
library(markdown)

sidebar_content_one <- sidebarPanel(
  selectInput(
    "alcoholdrugs",
    label = "View Gambling Debt Range vs Alcohol and Drug Usage",
    choices = list(
      "Alcohol" = "alc",
      "Drugs" = "dru"
    )
  )
)

main_content_one <- mainPanel(
  plotlyOutput("visual_one"),
  p("The graph above shows the percentage of people who use drugs or alcohol, along with their level of gambling addiction sorted based on amount of debt.
    From this, we can see that there is a correlation between higher gambling debt amounts and more drug/alcohol usage.")
)

visual_panel_one <- tabPanel(
  "Visualization 1",
  titlePanel("Gambling and Alcohol/Drugs"), 
  sidebarLayout(
    sidebar_content_one,
    main_content_one
  )
)

report <- tabPanel(
  "Report",
  tags$style(HTML("#report {padding:5%}")),
  tags$div(id = "report",
    includeMarkdown("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/docs/p01-proposal.md")
  )
)

ui <- navbarPage(theme = shinytheme("sandstone"),
  "blackjack 🎲",
  visual_panel_one,
  report
)
