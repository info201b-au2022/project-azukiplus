# Makes the report tab (Ashley)
library(markdown)

report <- tabPanel(
  "Report",
  tags$style(HTML("#report {padding:5%}")),
  tags$div(id = "report",
           includeMarkdown("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/docs/p01-proposal.md")
  )
)