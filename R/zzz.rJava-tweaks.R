## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
## WORKAROUND for namespace clashes between R.oo and rJava
## where some R.oo S3 methods for Object and Exception
## override the intended ones for rJava objects with
## class attributes containing these classes as well.
##
## See https://github.com/s-u/rJava/issues/60
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
.isRoo <- function(x) {
  is.environment(attr(x, ".env"))
}

.fixMethodS3 <- function(generic, class, definition, envir=parent.frame()) {
  method <- sprintf("%s.%s", generic, class)
  f <- get(method, mode="function", envir=envir, inherits=FALSE)
  body(f) <- substitute({
    a
    b
  }, list(a=body(definition), b=body(f)))
  assign(method, f, envir=envir, inherits=TRUE)
}

.fixMethodS3("names", "Object", function(x, ...) {
  if(!.isRoo(x)) return(NextMethod())
})

.fixMethodS3("$", "Object", function(this, name) {
  if(!.isRoo(this)) return(NextMethod())
})

.fixMethodS3("[[", "Object", function(this, name) {
  if(!.isRoo(this)) return(NextMethod())
})

.fixMethodS3("print", "Object", function(x, ...) {
  if(!.isRoo(x)) return(NextMethod())
})

.fixMethodS3("print", "Exception", function(x, ...) {
  if(!.isRoo(x)) return(NextMethod())
})
