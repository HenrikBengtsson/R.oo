###########################################################################/**
# @set "class=environment"
# @RdocMethod objectSize
#
# @title "Gets the size of an environment in bytes"
#
# \description{
#   @get "title".  
# }
#
# @synopsis
#
# \arguments{
#   \item{envir}{An @see "base::environment".}
#   \item{...}{Arguments passed to @see "base::ls".}
# }
#
# \value{
#  Returns an @integer.
# }
#
# @author
#
# \seealso{
#   Internally @see "utils::object.size" is used.
# }
#
# \keyword{attribute}
# \keyword{utilities}
#*/###########################################################################
setMethodS3("objectSize", "environment", function(envir, ...) {
  names <- ls(envir=envir, all.names=TRUE, ...);
  size <- 0;
  for (name in names) {
    size <- size + objectSize(envir[[name]]);
  }
  size;
})




############################################################################
# HISTORY:
# 2009-10-26
# o Added objectSize() for environments.
############################################################################
