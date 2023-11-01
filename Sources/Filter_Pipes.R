data("ToothGrowth")
View(ToothGrowth)

## Install dplyr to clean data
install.packages("dplyr")
library("dplyr")

# Filter table
filtered_tg <- filter(ToothGrowth, dose==0.5)
View (filtered_tg)

    ## Arrange Filter Table
    arranged_tg <- arrange(filtered_tg, len)
    
    ## Nested function
    arranged_tg <- arrange(filter(ToothGrowth, dose ==0.5), len)
    View(arranged_tg)

# Sample pipe
    filtered_tg1<- ToothGrowth %>% 
      filter(dose == 0.5) %>% 
      arrange(len)
    View(filtered_tg1)
    
# Sample pipe 1
    filtered_tg1<- ToothGrowth %>% 
      filter(dose == 0.5) %>%  
      group_by(supp) %>% 
      summarize(mean_len = mean(len,na.rm = TRUE), .group="drop")
    View(filtered_tg1)