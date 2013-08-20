library(R.colors)

myLog <- function(x, ...) {
  if (!is.numeric(x)) {
    throw(InternalErrorException("Argument 'x' to myLog() is not numeric: ", 
                                                 mode(x), package=R.colors))
  }
  log(x, ...)
}


myLog(2)

ex <- NULL
trycatch({
  myLog("a")
}, ANY={
  ex <- Exception$getLastException()
})
