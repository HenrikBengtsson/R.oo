.getClassByName <- function(name, where=c("ns", "search"), envir=NULL, mustExist=TRUE, ...) {
  # Backward compatibility
  # Enable: options("R.oo::Class/searchNamespaces"=TRUE)
  if (!getOption("R.oo::Class/searchNamespaces", TRUE)) {
    where <- where[-1L];
  }

  # Ignore where = "ns" if 'envir' was not specified
  if (is.null(envir)) {
    where <- setdiff(where, "ns");
  }

  # Search each 'where'...
  for (kk in seq_along(where)) {
    whereKK <- where[kk];

    # (a) Search a specific environment?
    #    (which should be a namespace of package)
    if (whereKK == "ns") {
      if (exists(name, mode="function", envir=envir, inherits=TRUE)) {
        res <- get(name, mode="function", envir=envir, inherits=TRUE);
        if (inherits(res, "Class")) return(res);
      }
    }

    # (b) Search globally?
    if (whereKK == "search") {
      envirT <- as.environment(-1L);
      if (exists(name, mode="function", envir=envirT, inherits=TRUE)) {
        res <- get(name, mode="function", envir=envirT, inherits=TRUE);
        if (inherits(res, "Class")) return(res);
      }
    }

    # (c) Search all loaded namespaces?
    if (whereKK == "ns*") {
      for (pkg in loadedNamespaces()) {
        envirT <- getNamespace(pkg);
        if (exists(name, mode="function", envir=envirT, inherits=TRUE)) {
          res <- get(name, mode="function", envir=envirT, inherits=TRUE);
          if (inherits(res, "Class")) return(res);
        }
      }
    }
  } # for (kk in ...)

  if (mustExist) {
    # Don't use throw() here, because it may result in an endless loop
    # if Exception is not found. /HB 2012-11-23
    stop("No such Class: ", name);
  }

  # Not found
  NULL;
} # .getClassByName()


############################################################################
# HISTORY:
# 2013-08-20
# o Now .getClassByName() searches in the order of 'where'.
# o Added argument 'mustExist' to .getClassByName().
# o Now option 'R.oo::Class/searchNamespaces' defaults to TRUE.
# 2013-07-11
# o Now internal .findS3Method() and .getClassByName() search the given
#   environment (argument 'envir') if a secret option is enabled.
# 2012-12-27
# o Added argument 'envir' to .getClassByName().
# 2012-11-23
# o Added internal .getClassByName().
# o Created.
############################################################################
