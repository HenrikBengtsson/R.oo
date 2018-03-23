###########################################################################/**
# @RdocDefault trim
#
# @title "Converts to a string and removes leading and trailing whitespace"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{object}{A @vector of \R objects to be trimmed.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @vector of @character strings.
# }
#
# @author
#
# @keyword character
# @keyword internal
#*/###########################################################################
setMethodS3("trim", "default", function(object, ...) {
  s <- sub("^[\t\n\f\r ]*", "", as.character(object));
  s <- sub("[\t\n\f\r ]*$", "", s);
  s;
})
