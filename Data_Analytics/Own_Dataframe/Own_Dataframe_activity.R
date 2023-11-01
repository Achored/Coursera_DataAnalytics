install.packages(tidyverse)
library(tidyverse)

#Create Vector
names <- c("Charles", "Justine", "Balubal", "Ally")
age <- c(23L, 23L , 24L , 23L)

#Create the dataframe
people <-  data.frame(names, age)

#Inspect the dataframe
head(people)
str(people)
glimpse(people)
colnames(people)
View (mutate (people, age_in_29 = age + 20))

