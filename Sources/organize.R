#Arrange in desc/asc order 
penguins %>% 
  arrange(bill_length_mm)

penguins %>% 
  arrange(-bill_length_mm)

penguins2 <- penguins %>% 
  arrange(bill_length_mm)
View(penguins2)

#Group by and summarize
penguins %>% 
  group_by(island) %>% 
  
  #Remove empty values
  drop_na() %>%  
  
  summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  group_by(island) %>% 
  
  #Remove empty values
  drop_na() %>%  
  
  summarize(max <- max(bill_length_mm))

#Two summarize conditions, grouped by two columns
penguins3 <- penguins %>% 
    group_by(species,island) %>% 
    drop_na() %>% 
    summarize(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))
View(penguins3
     )

#Filter
penguins %>% 
  filter(species == "Adelie")
