source("metropolis.R")

result <- metropolis()
samples <- result$samples
samples_accepted <- result$samples_accepted

plot(seq(1:1000),  type = "l", samples)