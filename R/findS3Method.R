.findS3Method <- function(name, where=c("ns", "search"), envir=NULL, mustExist=TRUE) {
  # Backward compatibility
  # Enable: options("R.oo::Class/searchNamespaces"=TRUE)
  if (!getOption("R.oo::Class/searchNamespaces", FALSE)) {
    where <- where[-1L];
  }

##  # (a) Search loaded namespaces
##  if (is.element("ns", where)) {
##    for (ns in loadedNamespaces()) {
##      envir <- asNamespace(ns);
##      if (exists(name, mode="function", envir=envir)) {
##        return(get(name, mode="function", envir=envir));
##      }
##    }
##  }

  # 1. Search a specific environment?
  #    (which should be a namespace of package)
  if (!is.null(envir) && is.element("ns", where)) {
    if (exists(name, mode="function", envir=envir, inherits=TRUE)) {
      return(get(name, mode="function", envir=envir, inherits=TRUE));
    }
  }

  # 2. Search attached search paths
  if (is.element("search", where)) {
    for (pos in seq(along=search())) {
      envir <- as.environment(pos);
      if (exists(name, mode="function", envir=envir)) {
        return(get(name, mode="function", envir=envir));
      }
    }
  }

  if (mustExist) {
    stop("INTERNAL ERROR: No such method: ", name);
  }

  NULL;
} # .findS3Method()


############################################################################
# HISTORY:
# 2013-07-11
# o Now internal .findS3Method() and .getClassByName() search the given
#   environment (argument 'envir') if a secret option is enabled.
# 2012-12-27
# o Added argument 'envir' to .findS3Method().
# 2012-11-24
# o Added argument 'where' to .findS3Method().
# 2012-11-23
# o Added .findS3Method().
# o Created.
############################################################################
