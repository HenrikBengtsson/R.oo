###########################################################################/**
# @RdocDefault abort
#
# @title "Aborts the current expression call"
#
# \description{
#  @get "title" and returns to the top level prompt/browser
#  \emph{without signalling a condition}.
# }
#
# @synopsis
#
# \arguments{
#   \item{message}{An optional error message.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{\dontrun{
#  @include "../incl/abort.Rex"
# }}
#
# @author
#
# \seealso{
#   @see "throw".
#   @see "base::stop".
#   Internally, @see "base::invokeRestart"\code{("abort")} is utilized.
# }
#
# @keyword error
# @keyword internal
#*/###########################################################################
setMethodS3("abort", "default", function(message=NULL, ...) {
  if (!is.null(message)) {
    cat(message, file=stderr());
  }
  invokeRestart("abort");
})



############################################################################
# HISTORY:
# 2012-09-10
# o ROBUSTNESS/CRAN POLICY: Updated abort() for condition to utilize
#   invokeRestart("abort").  This avoids having to call 
#   .Internal(.signalCondition(...)).  It also means that the message
#   outputted by abort() no longer starts with a "Error in ...:" line.
# 2012-03-05
# o The abort() method is hidden and is not used by any R.oo methods.
#   Will keep it until it is fully certain that throw() for Exception
#   will work as expected without it.
# 2012-02-29
# o KNOWN ISSUES: abort() for 'condition' still uses .Internal().
# o Added abort(), which is available as default function as well as
#   a method for 'condition' objects.
# o Created.
############################################################################
