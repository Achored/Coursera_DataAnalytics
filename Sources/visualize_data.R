install.packages('Tmisc')
library(Tmisc)
data (quartet)
View(quartet)

quartet %>% 
  group_by(set) %>% 
  
