## covr: skip=all
###########################################################################/**
# @set class=Object
# @RdocMethod gc
#
# @title "Clear cached fields and calls the garbage collector"
#
# \description{
#  @get "title".
#
#  \emph{This method is defunct.
#        Use \code{clearCache(..., gc = TRUE)} instead.}
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @keyword programming
# @keyword methods
# @keyword internal
#*/###########################################################################
setMethodS3("gc", "Object", function(this, ...) {
  .Defunct(msg = "Use clearCache(..., gc = TRUE) instead.")
}, deprecated=TRUE)
