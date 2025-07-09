trace_plot <- function(samples) {
  plot(seq(samples), type = "l", col="dodgerblue" ,samples, xlab = "Iteration", ylab = "Sample", main = "Trace plot")
}

histogram <- function(samples_accepted, true_density) {
  hist(samples_accepted, col="dodgerblue", prob = TRUE, main = "Histogram of accepted samples", xlab = "Sample")
  curve(true_density, add = TRUE, col = "red", lwd = 2)
}
