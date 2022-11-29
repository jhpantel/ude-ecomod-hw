## Assignment 2 ##
## Author: ____ YOUR NAME HERE ____
## Date: xx-xx-20xx

## Instructions. In my lecture notes from class on 17-11-2023 (Lecture Notes 3.1), I showed code for a continuous-time model of logistic growth. I paste that code below. Please modify the code to show logistic growth dynamics for values of r = 2.7 and K = 2500.

## Logistic growth
cont_log <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dN <-  r * N * (1 - (N/K))
    return(list(dN))
  })
}

parameters <- c(r = 1.7,K = 1000)
state      <- c(N = 42)
times      <- seq(0, 10, by = 0.01)

out <- deSolve::ode(y = state, times = times, func = cont_log, parms = parameters)
out.g <- as.data.frame(out)
ggplot2::ggplot(out.g,aes(time,N)) + geom_line()

#### INSERT YOUR CODE BELOW