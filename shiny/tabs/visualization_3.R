library("shiny")

# inputs
display_choice <- selectInput(
  inputId = "choice",
  label = "Select Display Unit",
  choices = c("Pencentage", "Value"),
  selected = "Value"
)



visual_panel_three <- tabPanel(
  "Visualization 3",
  titlePanel("Gambling and Mental Illness"),
  sidebarLayout(
    sidebarPanel(display_choice),
    mainPanel(
      tabPanel("Mental Illnesses", plotOutput("mental"),
               p("This chart shows the percentage or number of gamblers who have and not have 
                 mental health issues. As we can observe, above 10% of gamblers have these issues 
                 and that might indicate there is a correlation between mental illnesses and 
                 those with gambling addiction. However, it does interpret for causations. But it 
                 can mean that people who suffer from mental illnesses may have a higher risk of also 
                 suffering from gambling addiction."))
    )
  )
)