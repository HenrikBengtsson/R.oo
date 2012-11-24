.findS3Method <- function(name, where=c("ns", "search")[-1L], mustExist=TRUE) {
  # (a) Search loaded namespaces
  if (is.element("ns", where)) {
    for (ns in loadedNamespaces()) {
      envir <- asNamespace(ns);
      if (exists(name, mode="function", envir=envir)) {
        return(get(name, mode="function", envir=envir));
      }
    }
  }

  # (b) Search attached search paths
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


# HISTORY:
# 2012-11-24
# o Added argument 'where' to .findS3Method().
# 2012-11-23
# o Added .findS3Method().
# o Created.