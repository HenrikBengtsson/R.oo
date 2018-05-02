###########################################################################/**
# @RdocDefault throw
#
# @title "Throws an Exception"
#
# \description{
#  Throws an exception similar to \code{stop()}, but with support for
#  @see "Exception" classes. The first argument (\code{object}) is by 
#  default pasted together with other arguments (@...) and with separator
#  \code{sep=""}.  For instance, to throw an exception, write
#
#    \code{throw("Value out of range: ", value, ".")}.
#
#  which is short for
#
#    \code{throw(Exception("Value out of range: ", value, "."))}.
#
#  Note that \code{throw()} can be defined for classes inheriting
#  @see "Exception", which can then be caught (or not)
#  using \code{\link[base:conditions]{tryCatch}()}.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{One or several strings that are concatenated and collapsed
#       into on message string.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{
#   rbern <- function(n=1, prob=1/2) {
#     if (prob < 0 || prob > 1)
#       throw("Argument 'prob' is out of range: ", prob)
#     rbinom(n=n, size=1, prob=prob)
#   }
#
#   rbern(10, 0.4)
#   # [1] 0 1 0 0 0 1 0 0 1 0
#   tryCatch(rbern(10, 10*0.4),
#     error=function(ex) {}
#   )
# }
#
# @author
#
# \seealso{
#   See the @see "Exception" class for more detailed information.
# }
#
# \keyword{error}
#*/###########################################################################
setMethodS3("throw", "default", function(...) {
  throw(Exception(...))
}, overwrite=TRUE, conflict="quiet")


## setGenericS3("throw", force=TRUE)
