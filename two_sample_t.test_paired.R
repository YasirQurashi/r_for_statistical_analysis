# 1. Hypothesis generate 
# 2. Normality 
# 3. Hommogenity(variance equal) > two groups 
# 4. Statistical test
# 5  P-value analyze
# 6. Conclusion

# 1. Hypothesis generate
# H0 mean of two groups are equal
# H1 mean of two groups are not equal

before <-c(200.1, 190.9, 192.7, 213, 241.4, 196.9, 172.2, 185.5, 205.2, 193.7)
after <-c(392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2)

shapiro.test(before)
shapiro.test(after)
# p-value > 0.05, so we can assume that the data is normally distributed
# 3. Homogeneity of variance

t.test(before,after,paired = TRUE,alternative = "two.sided")
# 4. Statistical test
# 5. P-value analyze
# p-value = 0.0001 < 0.05, so we reject the null hypothesis

t.test(before,after,paired = TRUE,alternative = "less")

# hypothesis 
# H0: The mean of the after group is greater than or equal to the mean of the before group
# H1: The mean of the after group is less than the mean of the before group
# 6. Conclusion
# We reject the null hypothesis and accept the alternative hypothesis that the mean of the after group is less than the mean of the before group.

