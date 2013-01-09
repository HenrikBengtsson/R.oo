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
#   The created finalizer is reentrant.
#   This is always the case when the \pkg{R.oo} package is already
#   loaded when the finalizer is called.
#   It is also always the case on R v2.15.2 Patched r61487 and beyond.
#   In other cases, the finalizer inspects the call stack
#   (via @see "sys.calls") to check whether @see "base::parse"
#   has been called or not.  If it is on the call stack, it indicates
#   that @see "base::parse" triggered the garbage collection, and
#   the \pkg{R.oo} package will \emph{not} be reloaded in order to
#   avoid risking @see "base::parse" being called again.
# }
#
# @keyword internal
#*/###########################################################################
.makeObjectFinalizer <- function(this, reloadRoo=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getObjectInfo <- function(this) {
    env <- attr(this, ".env");
    if (is.null(env)) return(NA);

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

    name <- paste(class(this)[1L], ": ", name, sep="");

    name;
  } # getObjectInfo()

  getRversion2 <- function() {
    rVer <- R.version[c("major", "minor", "status", "svn rev")];
    names(rVer)[3:4] <- c("patched", "rev");
    rVer$patched <- ifelse(identical(rVer$patched, "Patched"), 1L, 0L);
    rVer$rev <- ifelse(is.null(rVer$rev), 0L, rVer$rev);
    rVer <- lapply(rVer, FUN=as.numeric);
    rVer;
  } # getRversion2()

  isLibraryReentrant <- function() {
    rVer <- getRversion2();
    if (rVer$major >= 3) return(TRUE);
    if (rVer$major < 2) return(FALSE);
    if (rVer$minor >= 15.3) return(TRUE);
    if (rVer$minor < 15.2) return(FALSE);
    if (rVer$patched < 1) return(FALSE);
    if (rVer$rev < 61487) return(FALSE);
    TRUE;
  } # isLibraryReentrant()

  isParseCalled <- function() {
    calls <- sys.calls();
    if (length(calls) == 0L) return(FALSE);
    for (kk in seq(along=calls)) {
      call <- calls[[kk]];
      name <- call[[1L]];
      if (!is.symbol(name)) next;
      if (name == "do.call") {
        name <- call[[2L]];
        if (!is.symbol(name)) next;
        name <- as.character(name);      
      }
      if (name == "parse") {
        return(TRUE);
      }
    } # for (kk ...)
    FALSE;
  } # isParseCalled()
 

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

    alreadyWarned <- FALSE;

    # Assure that this finalizer is truly reentrant.
    if (reloadRoo) {
      # Check if base::library() is reentrant...
      if (!isLibraryReentrant()) {
        # If not, check if base::parse() triggered the garbage collection
        # and/or has been called, because then we must not call library(),
        # because it will in turn call parse() potentially causing R to 
        # crash.
        if (isParseCalled()) {
          reloadRoo <- FALSE;
          warning("Object may not be finalize():d properly because the R.oo package was not loaded and will not be reloaded, because if done it may crash R (running version of R is prior to R v2.15.2 Patched r61487 and the garbage collection was triggered by base::parse()): ", getObjectInfo(this));
          alreadyWarned <- TRUE;
        }
      }
    }

    if (reloadRoo) {
      suppressMessages({
        isRooLoaded <- require("R.oo", quietly=TRUE);
      });
    }

    # For unknown reasons R.oo might not have been loaded.
    if (isRooLoaded) {
      finalize(this);
    } else if (reloadRoo) {
      warning("Object may not be finalize():d properly because the R.oo package failed to reload: ", getObjectInfo(this));
    } else if (!alreadyWarned) {
      warning("Object may not be finalize():d properly because the R.oo package is not loaded: ", getObjectInfo(this));
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
# o ROBUSTNESS: Now .makeObjectFinalizer() returns a finalizer that is
#   reentrant, i.e. it will only try to reload R.oo on R versions where
#   library() is reentrant or when the garbage collector was not triggered
#   by base::parse(), otherwise it will not finalize the Object.
# o CLEANUP: Added internal .makeObjectFinalizer().
############################################################################
