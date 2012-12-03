# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# getClasses()
# getMethods() 
#
# 2012-12-02
# o Moving away from method names getMethods() and getClasses(), which
#   are defined in 'methods'.  Currently, this is not a problem, but
#   it would be nice to get rid of the warning "The following object is
#   masked from 'package:methods': getClasses, getMethods" that is shown
#   when 'R.oo' is loaded.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setMethodS3("getClasses", "Package", function(this, ...) {
  .Deprecated("getClassNames");
  getClassNames(this, ...);
}, protected=TRUE)


setMethodS3("getMethods", "Class", function(this, ...) {
  .Deprecated("getMethods");
  getMethodNames(this, ...);
}, protected=TRUE)



############################################################################
# HISTORY:
# 2012-12-02
# o Created.
############################################################################
