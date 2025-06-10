# 1. Hypothesis generate 
# 2. Normality 
# 3. Hommogenity(variance equal) > two groups 
# 4. Statistical test
# 5  P-value analyze
# 6. Conclusion

weight <- c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,
            18.9,18.9,18.2)
mean(weight)
# 1. Hypothesis generate
# H0: The mean weight of the group is equal to 25
# H1: The mean weight of the group is not equal to 25

# 2. Normality
# H0: The weight data is normally distributed 
# H1: The weight data is not normally distributed

# p value --> # If p-value > 0.05, we accept(fail to reject )H0
# If p-value < 0.05, we reject H0
shapiro.test(weight)
hist(weight)
0.6003 > 0.05 
# Hence, data is normally distributed 

# 3. Homogeneity of variance --> if two or more than two groups
# 4. t.test 
t.test(weight, mu = 25, alternative = "two.sided")

# 5. P-value analyze

# since p-value = 0.0002 < 0.05, we reject H0
  
# 6. Conclusion
# We reject the null hypothesis (H0) and accept the alternative hypothesis (H1).  
# The mean weight of the group is not equal to 25