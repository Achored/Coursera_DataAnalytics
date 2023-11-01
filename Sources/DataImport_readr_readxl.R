# View the datasets package
data()
data(mtcars)
View(mtcars)

#Readr

readr_example()

# comma-separated values (.csv) files
read_csv(): 
  
  # tab-separated values files
  read_tsv(): 
  
  # general delimited files  
  read_delim():
  
  # fixed-width files
  read_fwf(): 
  
  # tabular files where columns are separated by white-space
  read_table():
  
  # web log files
  read_log(): 
  
  
  ## Read sample csv file
  readr_example("mtcars.csv")

## Print column specs, type, and values
read_csv(readr_example("mtcars.csv"))

# Read xl
library(readxl)
readxl_example()

# Read excel file. Include path in read_xl
read_excel(readxl_example("type-me.xlsx"))

# List the names of individual sheets in file
excel_sheets(readxl_example("type-me.xlsx"))

# Read specific sheet from file
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")
