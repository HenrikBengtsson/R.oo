.getClassByName <- function(name, where=c("ns", "search"), envir=NULL, ...) {
  # Backward compatibility
  # Enable: options("R.oo::Class/searchNamespaces"=TRUE)
  if (!getOption("R.oo::Class/searchNamespaces", FALSE)) {
    where <- where[-1L];
  }
##   # 1. Search namespaces
##   if (is.element("ns", where)) {
##     nss <- loadedNamespaces();
##     for (kk in seq_along(nss)) {
##       ns <- asNamespace(nss[kk]);
##       if (exists(name, mode="function", envir=ns)) {
##         res <- get(name, mode="function", envir=ns);
##         if (inherits(res, "Class")) return(res);
##       }
##     } # for (kk ...)
##   }
  # 1. Search a specific environment?
  #    (which should be a namespace of package)
  if (!is.null(envir) && is.element("ns", where)) {
    if (exists(name, mode="function", envir=envir, inherits=TRUE)) {
      res <- get(name, mode="function", envir=envir, inherits=TRUE);
      if (inherits(res, "Class")) return(res);
    }
  }

  # 2. Search globally
  if (is.element("search", where)) {
    if (exists(name, mode="function")) {
      res <- get(name, mode="function");
      if (inherits(res, "Class")) return(res);
    }
  }

  # Don't use throw() here, because it may result in an endless loop
  # if Exception is not found. /HB 2012-11-23
  stop("No such Class: ", name);
} # .getClassByName()


############################################################################
# HISTORY:
# 2013-07-11
# o Now internal .findS3Method() and .getClassByName() search the given
#   environment (argument 'envir') if a secret option is enabled.
# 2012-12-27
# o Added argument 'envir' to .getClassByName().
# 2012-11-23
# o Added internal .getClassByName().
# o Created.
############################################################################
