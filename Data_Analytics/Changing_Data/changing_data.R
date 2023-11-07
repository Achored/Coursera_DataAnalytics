library(tidyverse)
library(skimr)
library(janitor)


setwd("/Users/charlesjb/Documents/Coursera_DataAnalytics/Data_Analytics/Changing_Data")
hotel_booking <- read_csv("hotel_bookings.csv")

head(hotel_booking)
str(hotel_booking)
colnames(hotel_booking)

# Arrange by most lead time to least

hotel_booking_v2 <- arrange(hotel_booking, desc(lead_time))
View(hotel_booking_v2)
head (hotel_booking_v2)

#Check min and max lead time
max(hotel_booking$lead_time)
min(hotel_booking$lead_time)
mean(hotel_booking$lead_time)

# Filter hotel == City Hotel
city_hotel_bookings <- filter (hotel_booking, hotel_booking$hotel == "City Hotel")
head(city_hotel_bookings)

mean(city_hotel_bookings$lead_time)

# Create hotel summary
hotel_summary <- 
  hotel_booking %>% 
  group_by(hotel) %>% 
  summarize(average_lead_time = mean(lead_time), min_lead_time = min(lead_time), max_lead_time = max(lead_time))
View(hotel_summary)
