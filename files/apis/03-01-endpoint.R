#' Echo the parameter that was sent in
#' @get /echo
function(msg="Hi!"){
  list(msg = paste("The message is: ", msg))
}

