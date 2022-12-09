# note to Ryan and Vincent: please install the package commented under here for the custom css!
# install.packages("shinythemes") 
library(shinythemes)
library(shiny)
library(ggplot2)
library(plotly)
library(bslib)
library(dplyr)

source("tabs/visualization_1.R")
source("tabs/visualization_3.R")
source("tabs/summary.R")
source("tabs/report.R")
source("tabs/intro.R")

intro_tab <- tabPanel(
  "Introduction",
  fluidPage(theme = bs_theme(bootswatch = "cerulean"),
            h1("Gambling Addiction and Our Bets on Its Risk Factors"),
            h2("Introduction"),
            p("Gambling addiction, also dubbed compulsive gambling and compulsive gambling, is an impulsive-driven disorder that causes uncontrollable urges to gamble despite the tolls it takes on one's life. This disorder affects 1.60% of adults and 3.88% of adolescents at a severe, pathological level. Gambling addiction can cause anxiety, financial ruin, drug and alcohol addiction, and damage to relationships.
The purpose of this project is to examine what environmental and temperamental factors are correlated with a higher likelihood to suffer from gambling addiction. By doing so, we can raise awareness for the factors that have a high correlation with gambling addiction, which can possibly help prevent high-risk people from falling to gambling addiction. In order to examine this topic, we plan to look at a 3-year-long longitudinal study from the [Alberta Gambling Research Institute that examined 10,199 participants to complete surveys related to their demographics, gambling tendencies, and psychological and other comorbid factors related to gambling.
"),
            h2("Summary"),
            p("In this project, our main question is to assess how a person's characteristics including personality, mental illnesses, and family history relate to their tendency to fall to gambling addiction. In order to raise awareness for this issue, it's important to look closely at the history of people who are more likely to fall prey to gambling addiction. To address the question, we will look at the data of a longitudinal study of people who have gambling problems and analyze what environmental and temperamental factors cause a person to have a higher likelihood of becoming addicted to gambling.
"),
            h1("Problem Domain"), 
            p("We are mainly concerned with the topic of social sciences, particularly regarding gambling addiction in individuals. Our definition of the term gambling addiction refers to (1) continued engagement in gambling despite the negative consequences it brings, (2) reduced self-control over the urge to gamble, (3) active, compulsive engagement in gambling, and (4) an appetitive urge to gamble prior to engaging in the activity. This definition is coined from the Harvard Review of Psychiatry. In this project, we hope to connect an individual's environmental/psychological factors with their tendencies for gambling addiction."),
            
            h2("Research Questions"),
            p("  Is there a correlation between people who suffer from gambling addiction and people who suffer from other addictions such as drug or alcohol addiction? What environmental factors (including upbringing and family history) are correlated with a heightened risk for gambling addiction in individuals? How telling is a person's personality in their risk for falling to gambling addiction? Is there a correlation between mental illness such as depression and people who suffer from gambling addiction? 

"),
            h2("The Dataset"),
            p("We are using The AGRI National Project: Online Panel Study as our dataset. Profiling Canadian online gamblers and examining the prevalence rates of gambling and gambling addiction. Examining current attitudes towards gambling and knowledge about gambling based on demographic characteristics. Examining the etiology of gambling addiction and gambling remission. These observations are crucial in finding possible correlations between problem gamblers and risk factors that exacerbate the likelihood for becoming a problem gambler. Looking through the dataset, there are comprehensive profiling questions about each problem gambler who took the research survey including family history, other addictions, mental health, and other relevant factors.
"),
            h2("Key Findings"),
            p()
            
            
  )
)


ui <- navbarPage(
  "blackjack 🎲",
  intro_tab,
  visual_panel_one,
  visual_panel_three,
  summary,
  report
)

