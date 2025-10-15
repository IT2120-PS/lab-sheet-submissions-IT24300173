getwd()
setwd("C:/Users/user/Desktop/IT24300173")
getwd()

#Part 1
observed <- c(120,95,85,100)
prob <- c(0.25,0.25,0.25,0.25)

chisq.test(x=observed, p=prob)

#Part 2
#Consider 4% level of significance for the test.
#Rejection Region: If the p value for the test is less than 0.04,
#Conclusion: Since the p value (0.08966) is greater than 0.4.
#Therefore we can conclude that probability that purchasing each snack 
#during one week will be same which is 0.25.