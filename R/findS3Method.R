.findS3Method <- function(name, where=c("ns", "search"), envir=NULL, mustExist=TRUE, ...) {
  # Backward compatibility (ignore where="ns*" if explicitly disabled)
  if (!getOption("R.oo::Class/searchNamespaces", TRUE)) {
    where <- setdiff(where, "ns");
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
        return(get(name, mode="function", envir=envir, inherits=TRUE));
      }
    }

    # (b) Search globally?
    if (whereKK == "search") {
      envirT <- as.environment(-1L);
      if (exists(name, mode="function", envir=envirT, inherits=TRUE)) {
        res <- get(name, mode="function", envir=envirT, inherits=TRUE);
      }
    }

    # (c) Search all loaded namespaces?
    if (whereKK == "ns*") {
      for (pkg in loadedNamespaces()) {
        envirT <- getNamespace(pkg);
        if (exists(name, mode="function", envir=envirT, inherits=TRUE)) {
          res <- get(name, mode="function", envir=envirT, inherits=TRUE);
        }
      }
    }
  } # for (kk in ...)

  if (mustExist) {
    # Don't use throw() here, because it may result in an endless loop
    # if Exception is not found. /HB 2012-11-23
    stop("INTERNAL ERROR: No such method: ", name);
  }

  # Not found
  NULL;
} # .findS3Method()


############################################################################
# HISTORY:
# 2014-01-05
# o CONSISTENCY: Now .findS3Method() searches for S3 methods the same way
#   as .getClassByName() searches for Class functions.
# o ROBUSTNESS: Now .findS3Method() explicitly specifies inherits=TRUE.
# 2013-08-20
# o Now option 'R.oo::Class/searchNamespaces' defaults to TRUE.
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
