# plumber.R

#' Simulate random numbers and return a summary
#' @get /rand
function(n=0){
  # Simulate n random numbers
  nums <- rnorm(n)

  # Return a list of info about the numbers
  list(
    n = nums,
    min = min(nums),
    max = max(nums),
    mean = mean(nums)
  )
}

# Graph a straight line with a custom color
#' @get /graph
#' @png
function(n=10, color="black"){
  # Plot the line
  plot(x=1:n, y=1:n, col=color)
}
