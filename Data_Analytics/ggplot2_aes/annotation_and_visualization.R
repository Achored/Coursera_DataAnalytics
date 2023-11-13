hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes (x = market_segment, fill = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 90)) +
  labs(title = "Comparison of Market Segments by Hotel Type for Hotel Bookings", 
       caption = paste0("Data from: ",  mindate, " to ", maxdate), # Use paste0 to use variables
       x = "Market Segment", y = "Count") # Modify x and y labels

# Declare date range by min/maxing data
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

ggsave('hotel_booking_chart.png')
