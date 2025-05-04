# Basic arithmetic operations----

# Addition 

2+3

# Subtraction

3-2

# Multiplication

3*2

# Division 

3/2


# Operators----

#column -> variables, object
#rows -> observations, records

x <- c(1,2,3,4,6,7)

x


x <- c(2,2,3,4,5)


mean(x)
# Packages,Repositroy,functions-----
# Packages are collection of functions
# Function is a set of code used to perform specific tasks
# Repository is a collection of packages

setRepositories()
setRepositories()

#shift+9 -> double bracket
# How to import excel file----
install.packages("readxl", dependencies = TRUE)
library(readxl)
library(readr)
df <- read_csv("Gene_Expression_Data 01.csv", 
                                    col_types = cols(Condition_A = col_number(), 
                                                     Condition_B = col_number(), Condition_C = col_number()))
View(df)

# Basic 30 commands in R-----

#1 
View(df)
#2
str(df) # structure of the data
#3
summary(df) # summary of the data
#4
dim(df) # dimension of the data 
# 5 
head(df) # first 6 rows of data 
#6 
tail(df) # last 6 rows of data
#7
ncol(df) # number of columns
#8 
nrow(df) # number of rows
#9
sapply(df,class) # class of each column
#10
typeof(df$Gene_Name)
#11
unique(df$Gene_Name)
#12
is.na(df) # check for missing values
#13
sum(is.na(df))


# To do list for next weekend

# 1. Difeerence between xlsx and csv file
# 2. How to import xlsx file
# 3. 50/30 commands of R
