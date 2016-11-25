#ASSIGNMENT#1

#QUESTION2A
mydata <- read.table("C:/Users/Joann/Documents/R Directory/Weight_birth.csv",
                     header=TRUE)


#QUESTION2B
smokedata <- subset(mydata, SMOKE < 1, select=c(ID:LOW))
#print(smokedata)
mean1 <- mean(smokedata$BWT)
#print(mean1)
#sprintf("The mean weight of children born to smoking mothers is %s grams.", mean1)

nosmokedata <- subset(mydata, SMOKE > 0, select=c(ID:LOW))
#print(nosmokedata)
mean2 <- mean(nosmokedata$BWT) 
#print(mean2)
#sprintf("The mean weight of children born to non-smoking mothers is %s grams.", mean2)

sprintf("The mean weight of children born to smoking mothers is %s grams. The mean weight of children born to non-smoking mothers is %s grams.", 
        mean1, mean2)

#QUESTION3C
prematuredata <- subset(mydata, PTL > 0, select=c(ID:LOW))
stdv1 <- sd(prematuredata$BWT)

nonprematuredata <- subset(mydata, PTL < 1, select=c(ID:LOW))
stdv2 <- sd(nonprematuredata$BWT)

sprintf("The standard deviation of the birth weight of children born to mothers of previous premature births is %s. The standard deviation of the birth weight of children born to mothers of non-previous premature births is %s.",
        stdv1, stdv2)

#QUESTION3D

numerator <- nrow(subset(mydata, SMOKE > 0 & PTL > 0))
denominator <- nrow(subset(mydata, SMOKE > 0))

sprintf("The fraction of smoking mothers which have previously had premature births is %s/%s.",
       numerator, denominator)


