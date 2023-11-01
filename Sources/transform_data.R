# Dataframe for separate
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

#Create employee dataframe
employee <- data.frame(id, name, job_title)

View(employee)

# Separate from dataframe, name of column, into (new columns), seperator = blank spaces
    separate(employee, name,into=c('first_name', 'last_name'), sep = ' ')
    View(employee)
    
#Data frame for unite
id <- c(1:10)
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
unite(employee, 'name',first_name,last_name, sep = ' ')
      
  
View(penguins)
colnames(penguins)
# Mutate body_mass_g to kg
penguins %>% 
  mutate (body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
  

#Pivot
pivot_longer()
pivot_wider()
