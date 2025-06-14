# Install library-----

install.packages("ggplot2")
install.packages("dplyr")
install.packages("readxl")
install.packages("writexl")
# load libraries----- 
library(ggplot2)
library(dplyr)
library(readxl)
library(writexl)
# load the data----
data <- iris 
# COnvert data into excel file----
write_xlsx(data, "iris.xlsx")
# Read the data from excel file----
library(readxl)
df <- read_excel("iris.xlsx", col_types = c("numeric", 
                                              "numeric", "numeric", "numeric", "text"))
View(df)
# Common COmmands-----
summary(df)
str(df)
unique(df$Species)
### groupby command----
View(df)
summary <- df %>% 
  group_by(Species) %>% 
  summarise( count = n(),
             sd = sd(Petal.Length),
             mean = mean(Petal.Length),
             var = var(Petal.Length),
             median = median(Petal.Length),
             quantile = quantile(Petal.Length, 0.5)
  )
View(summary)             


### Data Visualization-----
# Scattter plot-----
colnames(df)
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width)) +
  geom_point() 
# now add theme 
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width)) +
  geom_point() +
  theme_classic()
# now add title
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width)) +
  geom_point() +
  theme_classic() +
  xlab("Petal Length") + ylab("Petal Width") + ggtitle("Scatter Plot of Petal Length & Petal Width")
# now change size and visibbility
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width)) +
  geom_point(size = 2, alpha = 1, shape = 19) +
  theme_classic() +
  xlab("Petal Length") + ylab("Petal Width") + ggtitle("Scatter Plot of Petal Length & Petal Width")
# now add color
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 2, alpha = 1, shape = 19) +
  theme_classic() +
  xlab("Petal Length") + ylab("Petal Width") + ggtitle("Scatter Plot of Petal Length & Petal Width")
# now add shape
ggplot(data = df , mapping = aes( x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 2, alpha = 1, shape = 19) +
  theme_bw() +
  xlab("Petal Length") + ylab("Petal Width") + ggtitle("Scatter Plot of Petal Length & Petal Width")


# Jitter Plot----
View(df)
ggplot(data = df , mapping = aes(x = Species, y = Petal.Length, color = Species)) +
  geom_jitter(alpha = 1, size = 1.5, shape = 19)+
  theme_bw() +
  xlab("Species") + ylab("Petal Length") + ggtitle("Jitter Plot")
# Voilin plot----
ggplot(data = df, mapping = aes(x = Species , y = Petal.Length, fill = Species))+
  geom_violin(alpha = 0.8, color = "black", scale = "width", trim = FALSE)+
  theme_bw() +
  xlab("Species") + ylab("Petal Length") + ggtitle("Violin Plot") 

# Box Plot----
ggplot(data = df , mapping = aes(x = Species, y = Petal.Length)) +
  geom_boxplot()
# Box Plot with color and theme
ggplot(data = df , mapping = aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot()
# Box plot with color, theme and title
ggplot(data = df , mapping = aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot(outlier.color = "red", linewidth = 1, outlier.shape = 15, outlier.size = 0.3) + 
  theme_bw()+
  xlab("Species") + ylab("Petal Length") + ggtitle("BoxPlot")+
  stat_boxplot(geom = "errorbar", width = 0.1, color = "black") +
  scale_fill_brewer(palette = "Set1") +
  theme(
   axis.title.x = element_text(face = "bold"),
   axis.title.y = element_text(face = "bold"),
   plot.title = element_text(face = "bold"))

