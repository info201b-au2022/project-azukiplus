library(shinythemes)
library(shiny)

summary <- tabPanel(
  "Summary",
  h1("Summary Takewaways"),
  
  p("    This project researches the tendency of gambling addiction relating to person's characteristics. 
     By observing the data of a longitudianl study of people who have gambling problems and analyze the
     environmental and temperamental factors, we concluded and sumarized our key findings to answer some of 
     our original research questions."),
  
  h4("Question 1: Is there a correlation between people who suffer from gambling addiction and people who suffer 
     from other addictions such as drug or alcohol addiction?"),
  
  p("    Yes, there is a correlation for people who suffer from gambling addiction and both people who suffer 
    from drug and alcohol addictions. From the data, we found that people who suffer from gambling addiction are 
    often also suffering from drug addiction or alcohol addiction. The correlation between alcohol addiction 
    and gambling addiction is larger than the correlation between drug addiction and gambling addiction, but 
    both patterns were possible to see in the data. After analyzing the data, we saw that the more debt a 
    person has, the higher chance there is of them having an alcohol or drug addiction. So, people who suffer 
    from alcohol or drug addictions are at a heightened risk of also suffering from gambling addiction."),
  
  h4("Question 2: What environmental factors (including upbringing and family history) are correlated with 
     a heightened risk for gambling addiction in individuals?"),
  
  p("    The data did not look much at upbringing, but it did look at family history. Family history of gambling 
    addiction is common in those with gambling addiction. The data defined “family history” as immediate family 
    including parents, siblings, children, spouse, or “other” which was defined as grandparent, cousin, nephew, 
    or niece. When processing the data, we found that out of the total number of observations, over 10% of the 
    observed people had immediate family who had gambling problems. This showed that having family members with 
    gambling addictions made it more likely for one to also suffer from the disorder."),
  
  h4("How telling is a person's personality in their risk for falling to gambling addiction?"),
  
  p("It is possible to measure a person's gambling addiction potential by looking at certain parts of their 
    personality, mainly their impulsiveness. However, this correlation is not as strong as the correlations seen 
    between other factors such as drug or alcohol addiction. When we examined how impulsiveness affects a person's 
    likelihood to fall for gambling addiction, we noticed that most people gravitated towards an average amount 
    of impulsiveness on a rating scale of the NEO personality test. We saw that even when comparing people with 
    no debt vs. people with over $300,000 in debt, their impulsiveness stayed relatively average."),
  
  h4("Is there a correlation between mental illness such as depression and people who suffer from gambling addiction?"),
  
  p("There is a correlation between mental illnesses and those with gambling addiction. Out of the total number of 
    observations of those who suffered from gambling addiction, we found that over 10% of people faced either physical 
    or mental illnesses. Mental illnesses measured in this study include PTSD, depression, generalized anxiety, panic 
    disorder, bipolar disorder, schizophrenia, bulimia, and OCD. There is no way to tell if there is causation, but there 
    was correlation; this means that those who suffer from mental illnesses may have a higher risk of also suffering 
    from gambling addiction.")
  
)