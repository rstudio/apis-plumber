#' @post /login
function(req){
  cat(req$args$uname, req$args$psw)
}
