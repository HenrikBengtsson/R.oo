## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
## WORKAROUND for clashes between R.oo Object:s and Object:s
## unrelated to R.oo created by other packages.
##
## Package 'rJava':
## Some R.oo S3 methods for Object and Exception override
## the intended ones for rJava objects with class attributes
## containing these classes as well.
## See https://github.com/s-u/rJava/issues/60
##
## Package 'arrow':
## `$<-.Object` causes problem for arrow:::as_arrow().
## See https://github.com/HenrikBengtsson/R.oo/issues/21
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
.fixMethodS3 <- function(generic, class, expr=NULL, envir=parent.frame()) {
  method <- sprintf("%s.%s", generic, class)
  expr <- substitute(expr)

  f <- get(method, mode="function", envir=getNamespace("R.oo"), inherits=TRUE)
  if (is.null(expr)) {
    x <- as.symbol(names(formals(f)[1]))
    expr <- substitute(
      if(!.isRoo(x)) return(NextMethod())
    , list(x=x))
  }
  
  body(f) <- substitute({
    a
    b
  }, list(a=expr, b=body(f)))

  attr(f, "S3class") <- class
  assign(method, f, envir=envir, inherits=TRUE)
 
  invisible(f)
} ## .fixMethodS3()

.isRoo <- function(x) is.environment(attr(x, ".env"))

## rJava
.fixMethodS3("names", "Object")
.fixMethodS3("$", "Object")
.fixMethodS3("[[", "Object")
.fixMethodS3("print", "Object")
.fixMethodS3("print", "Exception")

## arrow
.fixMethodS3("$<-", "Object")

## Some other, just in case
.fixMethodS3("[[<-", "Object")
.fixMethodS3("as.character", "Object")
.fixMethodS3("clone", "Object")
.fixMethodS3("extend", "Object")
.fixMethodS3("ll", "Object")
.fixMethodS3("names", "Object")
.fixMethodS3("objectSize", "Object")
.fixMethodS3("print", "Object")
