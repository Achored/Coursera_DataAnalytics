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
