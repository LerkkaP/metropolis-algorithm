proportional_density <- function(x) {
  return(exp(-(x**2) / 2))
}

calculate_acceptance_probability <- function(x_prime, x_n) {
  ratio <- proportional_density(x_prime) / proportional_density(x_n)
  return(min(1, ratio))  
}

metropolis <- function(n = 1000, x0 = 0) {
  x_n = x0
  
  samples <- numeric()
  samples_accepted <- numeric()
  
  for (i in 1:n) {
    x_prime <- rnorm(1, x_n, 1)
    acceptance_probability <- calculate_acceptance_probability(x_prime, x_n)
    u <- runif(1, 0, 1)
    if (u <= acceptance_probability) {
      x_n <- x_prime
      samples_accepted[i] <- x_n 
    }
    samples[i] <- x_n
  }
  samples_accepted <- samples_accepted[!is.na(samples_accepted)]
  return(list(samples = samples, samples_accepted = samples_accepted))
}