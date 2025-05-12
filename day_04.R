
# built-in datasets in R----

data()
data(iris)
df <- iris
View(df)
help(iris)
?iris
?data
?mean
?median


# how to subset dataframe in R----


gene_id <- c("gene1", "gene2", "gene3")
gene_expr <- c(2.5, 3.6, 4)
treatment <- c("Treated", "Control", "Treated")
my_dataframe <- data.frame(gene_id,gene_expr,treatment)
View(my_dataframe)

# subset my data_frame
subset(my_dataframe, treatment == "Control")
colnames(my_dataframe)
subset(my_dataframe, gene_expr > 3)
df1 <- subset(my_dataframe, gene_expr > 3)

# indexing in R----
View(df)
df[1,3]
df[ , 3]
df[0,]
c <- df[ , -2]
x <- df[, -5]
# donot use negative indexing 

# rbind & cbind----
gene_name <- c("BRD", "BRD", "BRD")
View(my_dataframe)
my_dataframe <- cbind(my_dataframe, gene_name)
View(my_dataframe)
gene <- c("gene4", 3.5, "Control", "BRD")
my_dataframe <- rbind(my_dataframe, gene)
View(my_dataframe)
remove(my_data_frame)
# Descriptive statistics----
# mean 
View(df)
colnames(df)
mean(df$Petal.Width)
# median
median(df$Petal.Width)
install.packages("modeest", dependencies = TRUE)
library(modeest)
# mode 
mfv(df$Petal.Width)
# Range
range(df$Petal.Width)
min(df$Petal.Width)
max(df$Petal.Width)
# variance

var(df$Petal.Width)
# standard deviation
sd(df$Petal.Width)
sd(df$Petal.Width)/mean(df$Petal.Width)*100

# quantile 
quantile(df$Petal.Width)
IQR(df$Petal.Width)
# summary
summary(df)

# to do tasks----

# - differnece between independent & dependent samples 
# - difference between independent and dependent variables
# - hypothesis?
# - hypothesis testing
# - p-value
# - confidence interval
IQR = Q3 - Q1