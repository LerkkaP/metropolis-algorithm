trace_plot <- function(samples) {
  plot(seq(1:1000),  type = "l", col="blue" ,samples)
}

histogram <- function(samples_accepted, prob = TRUE) {
  hist(samples_accepted)
}