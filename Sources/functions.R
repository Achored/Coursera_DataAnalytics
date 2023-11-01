# View table
View(penguins)
print("Coding in R")

# This function checks the use of a function
?print() 

# Variables

# Assign a variable with an argument
var <- "This is my variable"        
var1 <- 12.5

# Vector

  ## Combine variables || create an array
  c(var, var1)                        
  
  ##Vector || array
  vec_1 <- c(12, 5, 1, 3, 4)          
  
  ## "L" is required after each number fo ir it be a integer.
  int_vec <- c(1L, 2L, 3L)           

# List vector
  
  ## Create a list
  list1 <- list ("a", 1L, 1.5, TRUE)  
  
  ## Check the data types of the values in a string
  str(list("a", 1L, 1.5, TRUE))       
  str(z)
  
  ##Assign list values with variables
  list2 <- list ("a" = 1, '1L' = 2, '1.5' = 3, 'TRUE' = 4) 

# Check type of variable
  typeof (int_vec)
  typeof (var1)

# Pipes

#Date and Time
  d_today <- today()
  
  dt_now <- now()
  
  ## Declare the the order of the date
  ymd ("2021-12-27")                  
  
  ## Year Month Date Hour Minute Second
  ymd_hms ("2021-01-20 20:11:56")     
  
  ##Convert to date
  as_date(now())                     

#Data structures
  ## Data frame
  
      ### Create a new data frame
      data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))      
    
  ## Files
    
    ### Create new files
    dir.createa("destination folder")
    file.create ("text_file.txt")
    file.create("new_doc.docx")
    file.create("new_csv.csv")
    
    ### Copy files
    file.copy("file_name.txt", "destination folder")
    
    ### Delete files
    unlink("file_name.ext")
    
  ## Creating matrices || Matrix || table
      
    ### Can use nrow && || ncol to declare respectively
      matrix(c(3:8), nrow=2)             

# Check installed packages
installed.packages()

  ## Get the list of all installed packages
  all_packages <- installed.packages()

  ## Filter the packages to show only the installed ones
  installed_packages <- rownames(all_packages)

  ## Print the list of installed packages
  print(installed_packages)
  

  

    