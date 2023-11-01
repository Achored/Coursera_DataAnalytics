install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library("tidyverse")
library("skimr")
library("janitor")

#DF summary 

bookings_df <- read_csv("hotel_bookings.csv")
head(bookings_df)
str(bookings_df)
colnames(bookings_df)
glimpse(bookings_df)
skim_without_charts(bookings_df)
View(bookings_df)

# Custom Data frame
trimmed_df <- bookings_df %>% 
  select (hotel, is_canceled, lead_time)
View(trimmed_df)

# Rename column
trimmed_df %>% 
  select (hotel, is_canceled, lead_time) %>% 
  rename ( hotel_name = hotel)

#
example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ") # Sep for seperate
View(example_df)

#Mutate and select 

example_df <- bookings_df %>% 
  mutate(guests = adults + children + babies) %>% 
  mutate(avg_lead_time = mean(lead_time)) %>% 
  mutate(number_canceled = sum(is_canceled)) %>% 
  select (hotel, guests, avg_lead_time, number_canceled)


            
View(example_df)
head(example_df)

