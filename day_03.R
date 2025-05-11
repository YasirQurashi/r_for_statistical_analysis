
# datatypes in R----
x <- 3
typeof(x)

y <- "hello world"
typeof(y)

z <- TRUE
typeof(z)


w <- 3+2i
typeof(w)

# datastructure in R-----
# vector
num_vec <- c(1,2,3,4,5) # numeric vector
chr_vec <- c("a","b","c") # character vector
bol_vec <- c(TRUE, FALSE, TRUE) # logical vector
v
typeof(v)
# matrix

mat <- matrix(1:6, nrow = 2, ncol = 3)
# array

arr <- array(1:12, dim = c(2,4,2))
arr

# list

my_list <- list(gene_name = "BRD", condition_A = 3.5, condition = TRUE)
# data frame

excel_file # dataframe

# basic statistics for R----

gene_id <- c("gene1", "gene2", "gene3")
gene_expr <- c(2.5, 3.6, 4)
treatment <- c("Treated", "Control", "Treated")
gene_id
my_dataframe <- dataframe(gene_id,gene_expr,treatment)
my_dataframe
