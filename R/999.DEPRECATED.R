###########################################################################/**
# @set class=Object
# @RdocMethod gc
#
# @title "Clear cached fields and calls the garbage collector"
#
# \description{
#  @get "title".  Cached fields are set to @NULL when cleared.
#
#  \emph{This method is deprecated.
#   Please use \code{clearCache(..., gc=TRUE)} instead.}
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
# @examples "../incl/gc.Object.Rex"
#
# @author
#
# \seealso{
#   To clear the fields without calling the garbage collector,
#   see @seemethod "clearCache".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("gc", "Object", function(this, ...) {
  .Deprecated(msg="Use clearCache(..., gc=TRUE) instead.");
  clearCache(this, gc=TRUE);
}, deprecated=TRUE)



############################################################################
# HISTORY:
# 2014-02-22
# o DEPRECATED: Deprecated gc() for Object.  Use clearCache(..., gc=TRUE)
#   instead.
# o Created.
############################################################################
