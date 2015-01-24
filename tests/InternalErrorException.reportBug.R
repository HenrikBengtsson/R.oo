message("TESTING: InternalErrorException...")

library("R.oo")

myLog <- function(x, ...) {
  if (!is.numeric(x)) {
    throw(InternalErrorException("Argument 'x' to myLog() is not numeric: ",
                                                 mode(x), package=R.oo))
  }
  log(x, ...)
}


myLog(2)

ex <- NULL
tryCatch({
  myLog("a")
}, error= function(ex) {
  ex <- Exception$getLastException()
})

message("TESTING: InternalErrorException...DONE")
