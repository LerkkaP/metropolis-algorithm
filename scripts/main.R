source("target_densities.R")
source("metropolis.R")

result <- metropolis(target_density = unnormalized_gaussian)
samples <- result$samples
samples_accepted <- result$samples_accepted

plot(seq(1:1000),  type = "l", col="blue" ,samples)