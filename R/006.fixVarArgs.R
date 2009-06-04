# Added '...' to some base functions. These will later be
# turned into default functions by setMethodS3().

attach <- appendVarArgs(attach)
detach <- appendVarArgs(detach)
environment <- appendVarArgs(environment)
gc <- appendVarArgs(gc)
getClass <- appendVarArgs(getClass)
getClasses <- appendVarArgs(getClasses)
getMethods <- appendVarArgs(getMethods)
load <- appendVarArgs(load)

############################################################################
# HISTORY:
# 2005-02-15
# o Created to please R CMD check.
############################################################################
