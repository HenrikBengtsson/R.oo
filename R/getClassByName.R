.getClassByName <- function(name, where=c("ns", "search")[-1L], ...) {
   # 1. Search namespaces
   if (is.element("ns", where)) {
     nss <- loadedNamespaces();
     for (kk in seq_along(nss)) {
       ns <- asNamespace(nss[kk]);
       if (exists(name, mode="function", envir=ns)) {
         res <- get(name, mode="function", envir=ns);
         if (inherits(res, "Class")) return(res);
       }
     } # for (kk ...)
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
# 2012-11-23
# o Added internal .getClassByName().
# o Created.
############################################################################
