library(ggplot2)
data("diamonds")
View(diamonds)
head(diamonds)
colnames(diamonds)
library(tidyverse)

## Create a new table derived from the source table declared
mutate_carat <- mutate(diamonds, carat_2=carat*100)
View(mutate_carat)