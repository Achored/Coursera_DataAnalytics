# Access file location
setwd("/Users/charlesjb/Documents/Data Analytics/Importing Data")

# Import csv file
bookings_df <- read_csv("hotel_bookings.csv")
View(bookings_df)

#Check DF
head(bookings_df)
str(bookings_df)
colnames(bookings_df)

#Create new Df for average daily rate
new_df <- select(bookings_df, `adr`, adults)

#
mutate(new_df, total = `adr` / adults)
View(new_df)
