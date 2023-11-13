install.packages("palmerpenguins")
library(penguins)
View(penguins)
View(diamonds)

ggplot(data = penguins) +
  geom_point(mapping = aes(x =flipper_length_mm, y= body_mass_g, ))

#Combining different chart types

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x =flipper_length_mm, y= body_mass_g, )) +
  geom_point(mapping = aes(x =flipper_length_mm, y= body_mass_g, )) + 
  geom_jitter(mapping = aes(x =flipper_length_mm, y= body_mass_g, ))

# Sample bar chart || Color will only highlight the edges
ggplot (data = diamonds) +
  geom_bar(mapping = aes (x =cut, color=cut, fill = cut))

ggplot (data = diamonds) +
  geom_bar(mapping = aes (x =cut, fill = clarity))

ggplot(data = penguins) +
  geom_point(mapping = aes (x = flipper_length_mm, y = body_mass_g, color = species )) + 
  facet_wrap(~species) # Create a new chart for each species

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_grid(~cut) # Fact grid for Vertical facet

ggplot(data = penguins) +
  geom_point(mapping = aes (x = flipper_length_mm, y = body_mass_g, color = species))+
  facet_grid(sex~species)

# Activity

getwd()
setwd("/Users/charlesjb/Documents/Coursera_DataAnalytics/Data_Analytics/ggplot2_aes")
hotel_bookings = read_csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
summary(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text (angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type~market_segment) +
  theme(axis.text.x = element_text (angle = 45))

## Filters and plots

library(dplyr)
library(tidyverse)
hotel_bookings <- read.csv("hotel_bookings.csv")
View(hotel_bookings)
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children ))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment)) +
  facet_wrap(~market_segment)


onlineta_city_hotels <- filter(hotel_bookings, hotel == "City Hotel" & market_segment == "Online TA")
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel == "City Hotel") %>% 
  filter (market_segment == "Online TA")

View(onlineta_city_hotels_v2)

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes (x = lead_time, y = children, color = children ))

## ggplot2 annotations

library(palmerpenguins)
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr. Kristen Gorman") + 
  annotate("text", x = 220, y = 3500, label = "The gentoos are the largest", color = "purple", 
           fontface = "bold", size = 4.5, angle = 45)

p <-  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr. Kristen Gorman") + 
  
  p+annotate("text", x = 220, y = 3500, label = "The gentoos are the largest", color = "purple", 
             fontface = "bold", size = 4.5, angle = 45) 

## Save most recent ggplot

ggsave("Three Penguin Species.png")


