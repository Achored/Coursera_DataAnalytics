# Here
install.packages("here")
library(here)

# Skimr
install.packages("skimr")
library(skimr)

# Janitor
install.packages("janitor")
library(janitor)

install.packages("palmerpenguins")
library(palmerpenguins)

# Provides a summary for the dateset
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# Select the specific column
penguins %>%
  select(species)

#Remove the only column specified
penguins %>%
  select(-species)

#Rename column 
  penguins %>% 
    rename(island_new = island)
  
#Modify all columns to lower
rename_with(penguins, tolower)

#Ensure there are only letter, underscorces, and numbers on column names
clean_names(penguins)
  

