gaussian <- function(x) {
  return(dnorm(x))
}

unnormalized_gaussian <- function(x) {
  return(exp(-(x**2) / 2))
}

unnormalized_gaussian_mixture <- function(x) {
  return(0.3 * exp(-((x + 3)^2) / (2 * 1^2)) + 0.7 * exp(-((x - 3)^2) / (2 * 0.5^2)))
}

gaussian_mixture <- function(x) {
  component1 <- 0.3 * dnorm(x, mean = -3, sd = 1)
  component2 <- 0.7 * dnorm(x, mean = 3, sd = 0.5)
  return(component1 + component2)
}