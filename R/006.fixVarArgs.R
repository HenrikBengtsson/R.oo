# Added '...' to some base functions. These will later be
# turned into default functions by setMethodS3().


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'base'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# USED TO DO: attach <- appendVarArgs(attach)
attach <- function(...) UseMethod("attach")
setMethodS3("attach", "default", function(...) {
  base::attach(...)
})

# USED TO DO: detach <- appendVarArgs(attach)
detach <- function(...) UseMethod("detach")
setMethodS3("detach", "default", function(...) {
  base::detach(...)
})

# USED TO DO: load <- appendVarArgs(load)
load <- function(...) UseMethod("load")
setMethodS3("load", "default", function(..., envir=parent.frame()) {
  base::load(..., envir=envir)
})

# USED TO DO: save <- appendVarArgs(load)
save <- function(...) UseMethod("save")
setMethodS3("save", "default", function(..., envir=parent.frame()) {
  base::save(..., envir=envir)
})

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Methods in 'methods'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
getClasses <- appendVarArgs(getClasses)

## Defunct in R (>= 4.5.0)
if (getRversion() < "4.5.0") {
  getMethods <- appendVarArgs(getMethods)
}
