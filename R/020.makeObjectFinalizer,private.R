###########################################################################/** 
# @RdocFunction .makeObjectFinalizer
#
# @title "Creates a standalone finalizer function for Object"
#
# \description{
#   @get "title", which assumes only that the \pkg{base} package is available.
# }
#
# @synopsis
#
# \arguments{
#   \item{this}{The @Object to be finalized.}
#   \item{reloadRoo}{If @TRUE, the finalizer will try to temporary
#     reload the \pkg{R.oo} package if not loaded.}
# }
#
# \value{
#   Returns a @function that can be passed to @see "base::reg.finalizer".
# }
#
# \details{
#   Note, the returned finalizer is not 100\% reentrant prior to R v3.0.0
#   iff \code{reloadRoo=TRUE} and the \pkg{R.oo} package is not loaded.
#   The reason for this is that when it tries to reload \pkg{R.oo}, the
#   library loading code of R also calls the @see "base::parse" function
#   which is not reentrant prior to R v3.0.0.  What may happen is that
#   @see "base::parse" may triggers another round of garbage collection
#   which in turn may cause R to crash (due to an infinite loop?).
#   Thanks to Duncan Murdoch for reporting on this and making 
#   @see "base::parse" and hence the package loading mechanism in R reentrant.
# }
#
# @keyword internal
#*/###########################################################################
.makeObjectFinalizer <- function(this, reloadRoo=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getEnvName <- function(env) {
    # base::environmentName() was added to R v2.5.0
    if (exists("environmentName", mode="function")) {
      name <- environmentName(env);
    } else {
      name <- "";
    }
  
    if (name == "") {
      name <- capture.output(print.default(env));
      name <- name[1]; # Just in case
      name <- gsub("[<]*environment:[ ]*([^>]*)[>]", "\\1", name);
    }

    name;
  } # getEnvName()

  getRversion2 <- function() {
    rVer <- getRversion();
    status <- R.version[["status"]];
    # Append x.y.z-1 if 'Patched'
    if (identical(status, "Patched")) {
      rVer <- package_version(sprintf("%s-1", rVer));
    }

    # Append x.y.z-1-<svn rev>, iff it existsk
    rVerSvn <- R.version[["svn rev"]];
    if (!is.null(rVerSvn)) {
      rVerSvn <- as.numeric(rVerSvn);
      if (is.finite(rVerSvn)) {
        rVer <- sprintf("%s-%s", rVer, R.version[["svn rev"]]);
        rVer <- package_version(rVer);
      }
    }
    rVer;
  } # getRversion2()


  # NOTE: The finalizer() depends on the 'this' object. # /HB 2011-04-02
  finalizer <- function(env) {
    # Note, R.oo might be detached when this is called!  If so, reload
    # it, this will be our best chance to run the correct finalizer(),
    # which might be in a subclass of a different package that is still
    # loaded.
    isRooLoaded <- any(is.element(c("package:R.oo", "dummy:R.oo"), search()));
    if (isRooLoaded) {
      finalize(this);
      return();
    }

    # TODO: Making this finalizer reentrant.
##    isRentrant <- (getRversion2() >= "2.15.3");
##    if (!isRentrant) {
##      # TODO: ...
##    }

    if (reloadRoo) {
      suppressMessages({
        isRooLoaded <- require("R.oo", quietly=TRUE);
      });
    }

    # For unknown reasons R.oo might not have been loaded.
    if (isRooLoaded) {
      finalize(this);
    } else if (reloadRoo) {
      warning("Object was not finalize():d because the R.oo package failed to reload: ", getEnvName(this));
    } else {
      warning("Object was not finalize():d because the R.oo package is not loaded: ", getEnvName(this));
    }

    # NOTE! Before detach R.oo again, we have to make sure the Object:s
    # allocated by R.oo itself (e.g. an Package object), will not reload
    # R.oo again when being garbage collected, resulting in an endless
    # loop.  We do this by creating a dummy finalize() function, detach
    # R.oo, call garbage collect to clean out all R.oo's objects, and
    # then remove the dummy finalize() function.
    # (1) Put a dummy finalize() function on the search path.
    # To please R CMD check
    attachX <- base::attach;
    attachX(list(finalize = function(...) { }), name="dummy:R.oo",
                                                  warn.conflicts=FALSE);

    # (2) Detach R.oo
    if (is.element("package:R.oo", search())) {
      detach("package:R.oo");
    }

    # (3) Force all R.oo's Object:s to be finalize():ed.
    gc();

    # (4) Remove the dummy finalize():er again.
    if (is.element("dummy:R.oo", search())) {
      detach("dummy:R.oo");
    }
  } # finalizer()

  return(finalizer);
} # .makeObjectFinalizer()


############################################################################
# HISTORY:
# 2013-01-08
# o CLEANUP: Added internal .makeObjectFinalizer().
############################################################################
