# plumber.R

#' Echo the parameter that was sent in
#' @get /echo
function(msg="Hi!"){
  list(msg = paste("The message is: ", msg))
}

# Graph a straight line with a custom color
#' @get /graph
#' @png
function(n=10, color="black"){
  # Don't let the number get too big
  if (n > 10000){ n <- 10000 }

  # Plot the line
  plot(x=1:n, y=1:n, col=color, type="b")
}
