library(plotly)
library(ggplot2)
library(RCurl)
library(dplyr)
library(tidyr)

##------ Read in the Data ------##
raw = getURL("https://raw.githubusercontent.com/info201b-au2022/project-azukiplus/main/data/data.csv")
data <- read.csv(text = raw)

server <- function(input, output) {
  ##------ TODO: CODE FOR THE INTRO PAGE (Ryan) ------##
  
  
  ##------ CODE FOR THE FIRST INTERACTIVE PAGE (Ashley) ------##
  output$visual_one <- renderPlotly({
    gambling_counts <- data %>%
      drop_na(b_gc5) %>%
      count(b_d9)
    # if chosen graph is for drugs
    if (input$alcoholdrugs == "dru") {
      gambling_drugs_ratio_1 <- data %>%
        filter(b_d9 == "1") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_1)[2] <- "ratio_1"
      gambling_drugs_ratio_1 <- gambling_drugs_ratio_1$ratio_1 / gambling_counts[1,2]
      
      gambling_drugs_ratio_2 <- data %>%
        filter(b_d9 == "2") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_2)[2] <- "ratio_2"
      gambling_drugs_ratio_2 <- gambling_drugs_ratio_2$ratio_2 / gambling_counts[2,2]
      
      gambling_drugs_ratio_3 <- data %>%
        filter(b_d9 == "3") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_3)[2] <- "ratio_3"
      gambling_drugs_ratio_3 <- gambling_drugs_ratio_3$ratio_3 / gambling_counts[3,2]
      
      gambling_drugs_ratio_4 <- data %>%
        filter(b_d9 == "4") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_4)[2] <- "ratio_4"
      gambling_drugs_ratio_4 <- gambling_drugs_ratio_4$ratio_4 / gambling_counts[4,2]
      
      gambling_drugs_ratio_5 <- data %>%
        filter(b_d9 == "5") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_5)[2] <- "ratio_5"
      gambling_drugs_ratio_5 <- gambling_drugs_ratio_5$ratio_5 / gambling_counts[5,2]
      
      gambling_drugs_ratio_6 <- data %>%
        filter(b_d9 == "6") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_6)[2] <- "ratio_6"
      gambling_drugs_ratio_6 <- gambling_drugs_ratio_6$ratio_6 / gambling_counts[6,2]
      
      gambling_drugs_ratio_7 <- data %>%
        filter(b_d9 == "7") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_7)[2] <- "ratio_7"
      gambling_drugs_ratio_7 <- gambling_drugs_ratio_7$ratio_7 / gambling_counts[7,2]
      
      gambling_drugs_ratio_8 <- data %>%
        filter(b_d9 == "8") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_8)[2] <- "ratio_8"
      gambling_drugs_ratio_8 <- gambling_drugs_ratio_8$ratio_8 / gambling_counts[8,2]
      
      gambling_drugs_ratio_9 <- data %>%
        filter(b_d9 == "9") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_9)[2] <- "ratio_9"
      gambling_drugs_ratio_9 <- gambling_drugs_ratio_9$ratio_9 / gambling_counts[9,2]
      
      gambling_drugs_ratio_98 <- data %>%
        filter(b_d9 == "98") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_98)[2] <- "ratio_98"
      gambling_drugs_ratio_98 <- gambling_drugs_ratio_98$ratio_98 / gambling_counts[10,2]
      
      gambling_drugs_ratio_99 <- data %>%
        filter(b_d9 == "99") %>%
        drop_na(b_gc5) %>%
        count(b_gc5)
      colnames(gambling_drugs_ratio_99)[2] <- "ratio_99"
      gambling_drugs_ratio_99 <- gambling_drugs_ratio_99$ratio_99 / gambling_counts[11,2]
      
      # combine all the ratios found
      gambling_drugs_comp <- data.frame(gambling_drugs_ratio_1, gambling_drugs_ratio_2, gambling_drugs_ratio_3,
                                        gambling_drugs_ratio_4, gambling_drugs_ratio_5, gambling_drugs_ratio_6, 
                                        gambling_drugs_ratio_7, gambling_drugs_ratio_8, gambling_drugs_ratio_9, 
                                        gambling_drugs_ratio_98, gambling_drugs_ratio_99)
      gambling_drugs_comp <- gambling_drugs_comp * 100
      gambling_drugs_comp <- t(gambling_drugs_comp)
      gambling_drugs_comp <- as.data.frame(gambling_drugs_comp)
      gambling_drugs_comp$b_d9 <- c("1: No debt", "2: Less than $39,000", "3: $40,000 – $79,000", "4: $80,000 - $119,000", 
                                    "5: $120,000 - $159,000", "6: $160,000 - $199,000", "7: $200,000 - $239,000", 
                                    "8: $240,000 - $299,000", "9: >$300,000", "00: Uncertain", "0: Prefer not to answer")
      
      bar <- plot_ly(
        data = gambling_drugs_comp,
        type = "bar",
        x = ~b_d9,
        y = ~V1,
        name = "Never used drugs"
      )
      
      bar <- bar %>%
        add_trace(y = ~V2, name = "Rarely used drugs") %>%
        add_trace(y = ~V3, name = "Sometimes used drugs") %>%
        add_trace(y = ~V4, name = "Often used drugs") %>%
        add_trace(y = ~V5, name = "Always used drugs")
      
      bar <- bar %>% layout(yaxis = list(title = "Percentage of Gamblers Who Use Drugs"), 
                            xaxis = list(title = "Debt of gamblers ($CAD)"),
                            barmode="stack",
                            title = "Drug usage vs gambler debt")
      
    } else { # alcohol graph
      gambling_alcohol_ratio_1 <- data %>%
        filter(b_d9 == "1") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_1)[2] <- "ratio_1"
      gambling_alcohol_ratio_1 <- gambling_alcohol_ratio_1$ratio_1 / gambling_counts[1,2]
      
      gambling_alcohol_ratio_2 <- data %>%
        filter(b_d9 == "2") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_2)[2] <- "ratio_2"
      gambling_alcohol_ratio_2 <- gambling_alcohol_ratio_2$ratio_2 / gambling_counts[2,2]
      
      gambling_alcohol_ratio_3 <- data %>%
        filter(b_d9 == "3") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_3)[2] <- "ratio_3"
      gambling_alcohol_ratio_3 <- gambling_alcohol_ratio_3$ratio_3 / gambling_counts[3,2]
      
      gambling_alcohol_ratio_4 <- data %>%
        filter(b_d9 == "4") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_4)[2] <- "ratio_4"
      gambling_alcohol_ratio_4 <- gambling_alcohol_ratio_4$ratio_4 / gambling_counts[4,2]
      
      gambling_alcohol_ratio_5 <- data %>%
        filter(b_d9 == "5") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_5)[2] <- "ratio_5"
      gambling_alcohol_ratio_5 <- gambling_alcohol_ratio_5$ratio_5 / gambling_counts[5,2]
      
      gambling_alcohol_ratio_6 <- data %>%
        filter(b_d9 == "6") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_6)[2] <- "ratio_6"
      gambling_alcohol_ratio_6 <- gambling_alcohol_ratio_6$ratio_6 / gambling_counts[6,2]
      
      gambling_alcohol_ratio_7 <- data %>%
        filter(b_d9 == "7") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_7)[2] <- "ratio_7"
      gambling_alcohol_ratio_7 <- gambling_alcohol_ratio_7$ratio_7 / gambling_counts[7,2]
      
      gambling_alcohol_ratio_8 <- data %>%
        filter(b_d9 == "8") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_8)[2] <- "ratio_8"
      gambling_alcohol_ratio_8 <- gambling_alcohol_ratio_8$ratio_8 / gambling_counts[8,2]
      
      gambling_alcohol_ratio_9 <- data %>%
        filter(b_d9 == "9") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_9)[2] <- "ratio_9"
      gambling_alcohol_ratio_9 <- gambling_alcohol_ratio_9$ratio_9 / gambling_counts[9,2]
      
      gambling_alcohol_ratio_98 <- data %>%
        filter(b_d9 == "98") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_98)[2] <- "ratio_98"
      gambling_alcohol_ratio_98 <- gambling_alcohol_ratio_98$ratio_98 / gambling_counts[10,2]
      
      gambling_alcohol_ratio_99 <- data %>%
        filter(b_d9 == "99") %>%
        drop_na(b_gc2) %>%
        count(b_gc2)
      colnames(gambling_alcohol_ratio_99)[2] <- "ratio_99"
      gambling_alcohol_ratio_99 <- gambling_alcohol_ratio_99$ratio_99 / gambling_counts[11,2]
      
      # combine all the ratios found
      gambling_alcohol_comp <- data.frame(gambling_alcohol_ratio_1, gambling_alcohol_ratio_2, gambling_alcohol_ratio_3,
                                          gambling_alcohol_ratio_4, gambling_alcohol_ratio_5, gambling_alcohol_ratio_6, 
                                          gambling_alcohol_ratio_7, gambling_alcohol_ratio_8, gambling_alcohol_ratio_9, 
                                          gambling_alcohol_ratio_98, gambling_alcohol_ratio_99)
      gambling_alcohol_comp <- gambling_alcohol_comp * 100
      gambling_alcohol_comp <- t(gambling_alcohol_comp)
      gambling_alcohol_comp <- as.data.frame(gambling_alcohol_comp)
      gambling_alcohol_comp$b_d9 <- c("1: No debt", "2: Less than $39,000", "3: $40,000 – $79,000", "4: $80,000 - $119,000", 
                                      "5: $120,000 - $159,000", "6: $160,000 - $199,000", "7: $200,000 - $239,000", 
                                      "8: $240,000 - $299,000", "9: >$300,000", "00: Uncertain", "0: Prefer not to answer")
      
      bar <- plot_ly(
        data = gambling_alcohol_comp,
        type = "bar",
        x = ~b_d9,
        y = ~V1,
        name = "Never used alcohol"
      )
      
      bar <- bar %>%
        add_trace(y = ~V2, name = "Rarely used alcohol") %>%
        add_trace(y = ~V3, name = "Sometimes used alcohol") %>%
        add_trace(y = ~V4, name = "Often used alcohol") %>%
        add_trace(y = ~V5, name = "Always used alcohol")
      
      bar <- bar %>% layout(yaxis = list(title = "Percentage of Gamblers Who Use alcohol"), 
                            xaxis = list(title = "Debt of gamblers ($CAD)"),
                            barmode="stack",
                            title = "Alcohol usage vs gambler debt")
      
    }
    return(bar)
  })
  
  ##------ CODE FOR THE SECOND INTERACTIVE PAGE (Vincent) ------##
  output$mental <- renderPlot({
    participants <- nrow(data)
    
    depression <- data %>% 
      group_by(b_c13a) %>% 
      count(b_c13a) %>% 
      mutate(Percentage = round(n / participants * 100, digit = 2),
             Category = "Depression") %>% 
      rename("Value" = "n",
             "Answer" = "b_c13a")
    
    anxiety <- data %>% 
      group_by(b_c14a) %>% 
      count(b_c14a) %>% 
      mutate(Percentage = round(n / participants * 100, digit = 2),
             Category = "Anxiety") %>% 
      rename("Value" = "n",
             "Answer" = "b_c14a")
    
    panic_disorder <- data %>% 
      group_by(b_c15a) %>% 
      count(b_c15a) %>% 
      mutate(Percentage = round(n / participants * 100, digit = 2),
             Category = "Panic Disorder") %>% 
      rename("Value" = "n",
             "Answer" = "b_c15a")
    
    ptsd <- data %>% 
      filter(is.na(b_c11atotal)) %>% 
      group_by(b_c11atotal) %>% 
      count(b_c11atotal) %>% 
      ungroup() %>% 
      summarise(Answer = 0,
                Value = sum(n)) %>% 
      mutate(Percentage = round(Value /participants * 100, digit = 2),
             Category = "PTSD")%>% 
      add_row(Value = participants - 7063, 
              Percentage = 100 - 69.25, 
              Answer = 1,
              Category = "PTSD")
    
    behavirol_addiction <- data %>% 
      group_by(b_c7a) %>% 
      count(b_c7a) %>% 
      mutate(Percentage = round(n / participants * 100, digit = 2),
             Category = "Behavirol Addiction") %>% 
      rename("Value" = "n",
             "Answer" = "b_c7a")
    
    other_mental_health <- data %>% 
      group_by(b_c16a) %>% 
      count(b_c16a) %>% 
      mutate(Percentage = round(n / participants * 100, digit = 2),
             Category = "Other Mental Issues") %>% 
      rename("Value" = "n",
             "Answer" = "b_c16a")
    
    plot_data <- rbind(depression, 
                       anxiety, 
                       panic_disorder, 
                       ptsd, 
                       behavirol_addiction,
                       other_mental_health)
    
    
    p <- ggplot(data = plot_data) +
      geom_col(mapping = aes(x = Category, y = Percentage, fill = Answer), 
               position = "dodge2",) +
      labs(title = "Frequency of Mental Health issues among Gamblers",
           x = "Categories", 
           y = "Percentage", 
           fill = "Answer")
    
    if(input$choice == "Value") {
      
      p <- ggplot(data = plot_data) +
        geom_col(mapping = aes(x = Category, y = Value, fill = Answer), 
                 position = "dodge2",) +
        labs(title = "Frequency of Mental Health issues among Gamblers",
             x = "Categories", 
             y = "Value", 
             fill = "Answer")
    }
    
    return(p)
  })
  
  ##------ CODE FOR THE THIRD INTERACTIVE PAGE (Ryan) ------##
  
  ##------ CODE FOR THE SUMMARY PAGE (Vincent) ------##
  
}
