###########################################################################/**
# @RdocDefault abort
# @alias abort.condition
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
#   \item{message}{A @character string giving the abort message.}
#   \item{call}{An optional call @expression.}
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
#   @see "base::stop".
# }
#
# \keyword{error}
#*/###########################################################################
setMethodS3("abort", "default", function(message, call=NULL, ...) {
  cond <- simpleError(message, call=call);
  abort(cond);
})


setMethodS3("abort", "condition", function(cond, ...) {
  message <- conditionMessage(cond);
  call <- conditionCall(cond);

  expr <- parse(text=".Internal(.dfltStop(message, call));");
  eval(expr);  
})



############################################################################
# HISTORY:
# 2012-02-29
# o KNOWN ISSUES: abort() for 'condition' still uses .Internal().
# o Added abort(), which is available as default function as well as
#   a method for 'condition' objects.
# o Created.
############################################################################
