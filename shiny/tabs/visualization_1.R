library(shiny)

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