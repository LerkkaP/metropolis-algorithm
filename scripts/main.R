source("R/target_densities.R")
source("R/plots.R")
source("R/proposals.R")
source("R/metropolis.R")

result <- metropolis(target_density = unnormalized_gaussian_mixture, proposal = gaussian_proposal)

samples <- result$samples
samples_accepted <- result$samples_accepted

par(mfrow = c(1, 2))
trace_plot(samples)
histogram(samples_accepted, gaussian_mixture)
par(mfrow = c(1, 1))


