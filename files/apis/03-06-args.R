#' @post /submit
#' get /submit
#' add the above `get` tag for "get" to hit
#' this function too.
function(req){
  cat(req$args$email, req$args$bike, req$args$color)
}

#' @get /
#' @html
function(){
  '
  <h1>Plumber API form submit</h1>
  <h2>Basic submit form</h2>
  <form action="http://localhost:8000/submit" method="post">
      <input type="text" placeholder="Email" name="email" required>
      <input type="checkbox" name="bike" value="Bike"> I have a bike
      <input type="text" placeholder="Bike colour" name="color">
      <button type="submit">Submit</button>
  </form>
  '
}
