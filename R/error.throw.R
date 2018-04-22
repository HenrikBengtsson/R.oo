###########################################################################/**
# @set "class=error"
# @RdocMethod throw
#
# @title "Throws (rethrows) an object of class 'error'"
#
# \description{
#  Rethrows an 'error' object. The 'error' class was introduced in R v1.8.1
#  with the new error handling mechanisms.
# }
#
# @synopsis
#
# \arguments{
#   \item{error}{An object or class 'error'.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   See the \code{tryCatch()} method etc.
#   See the @see "Exception" class for more detailed information.
# }
#
# \keyword{error}
#*/###########################################################################
setMethodS3("throw", "error", function(error, ...) {
  base::stop(error)
})
