#' @post /submit
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
      <input type="checkbox" name="bike" value="bike"> I have a bike
      <input type="text" placeholder="Bike color" name="color">
      <button type="submit">Submit</button>
  </form>
  '
}
