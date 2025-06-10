# 1. Hypothesis generate 
# 2. Normality 
# 3. Hommogenity(variance equal) > two groups 
# 4. Statistical test
# 5  P-value analyze
# 6. Conclusion

women_weight <- c(38.9,61.2,73.3,21.8,63.4,64.6,48.4,48.4,48.5)

men_weight <- c(67.8,60,63.4,76,89.4,73.3,67.3,61.3,62.4)

# 1. Hypothesis generate 
# H0 mean of two groups are equal 
# H1 mean of two groups are not equal
# 2. Normality
shapiro.test(women_weight)
shapiro.test(men_weight)
hist(women_weight)
hist(men_weight)
# p-value > 0.05, so we can assume that the data is normally distributed

# 3. Homogeneity of variance
# H0 variance of two groups are equal
# H1 variance of two groups are not equal
# p-value > 0.05, so we can assume that the variance of two groups are equal
var.test(women_weight, men_weight)

# 4. Statistical test
t.test(women_weight,men_weight, var.equal = TRUE, alternative = "two.sided")

# 5. P-value analyze
# p-value = 0.0001 < 0.05, so we reject the null hypothesis

# 6. Conclusion
# we accept the alternative hypothesis that the mean of two groups are not equal


