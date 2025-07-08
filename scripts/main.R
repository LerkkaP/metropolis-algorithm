source("R/target_densities.R")
source("R/plots.R")
source("R/metropolis.R")

result <- metropolis(target_density = unnormalized_gaussian)

samples <- result$samples
samples_accepted <- result$samples_accepted

trace_plot(samples)


