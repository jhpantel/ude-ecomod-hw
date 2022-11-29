## Assignment 1 ##
## Author: ____ YOUR NAME HERE ____
## Date: xx-xx-20xx

## Instructions. Please use the function below to create a working simulation of mouse population dynamics (N) over time
mice <- function(Nt,d,b,m){
  Nt1 <- (1+b)*(1-d)*Nt + m
  return(Nt1)
}

## Help. Recall that I created an example using a different function / model. Use that as a template to create your mouse simulation in 6 steps.
############################################################

# Step 1. Example parameters
b <- 1.7
c <- .15
Pt <- 6

# Step 2. Example equation function
example_equation_function <- function(b,c,Pt){
  Pt1 <- (b*Pt) / (1 + c*Pt)
  return(Pt1)
}

# Step 3. Make sure the function works
Pt1 <- example_equation_function(b,c,Pt)

# Step 4. Create a new variable to hold future values of P
P <- rep(NA,100)

# Step 5. Create a for loop to iteratively calculate P
P[1] <- Pt
for(i in 2:100){
  P[i] <- example_equation_function(b,c,Pt)
  Pt <- P[i]
}

# Step 6. Plot P over time
plot(P,xlab="time",ylab="P",pch=19,col="black")

#### INSERT YOUR CODE BELOW
# d - the *fraction* of mice in yard eaten by cat / day --> 0-1
d <- .7
# b - the *number* of mice born per mouse / day --> N (0-infinity)
b <- 3
# m - the *number* of mice arriving in the yard per day --> N (0-infinity)
m <- 4
# Nt - the initial number of mice in the yard when we begin the survey
Nt <- 42