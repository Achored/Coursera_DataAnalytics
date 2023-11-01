head(diamonds)                   #Shows headers
str(diamonds)
glimpse(diamonds)                #Show sample data 
View(diamonds)                   
colnames(diamonds)               #Check column names
rename (diamonds, carat_new = carat, cut_new = cut) #Rename column headers
summarize(diamonds, mean_carat = mean(carat))       

# Visualizing Data through scatter plot
ggplot(data = diamonds, aes(x = carat, y = price, color = color)) + geom_point() + facet_wrap(~cut)

