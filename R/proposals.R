gaussian_proposal <- function(x_n) {
  return(rnorm(n = 1, mean = x_n, sd = 1))
}