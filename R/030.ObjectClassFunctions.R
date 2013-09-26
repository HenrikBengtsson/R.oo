############################################################################
# This source code file contains constructor and function definitions that
# are used for loading this package only.
############################################################################
# To please R CMD check
attachX <- base::attach;

attachX(list(
  Object = function(core=NA) {
    # Create a new environment and wrap it up as a private field of a list.
    this <- core;
    attr(this, ".env") <- new.env();
    class(this) <- "Object";

    if (getOption("R.oo::Object/instantiationTime", FALSE)) {
      attr(this, "...instantiationTime", Sys.time());
    }

    # Note, we cannot register the finalizer here, because then
    # the reference variable 'this' will be of the wrong class,
    # that is, not the "final" class. However, we still do it so
    # that pure Object:s will be finalized too.  This will be
    # overridden if extend(<Object>) is called.
    # NOTE: The finalizer() depends on the 'this' object. # /HB 2011-04-02
    finalizer <- function(env) {
      # Note, R.oo might be detached when this is called!  If so, reload
      # it, this will be our best chance to run the correct finalizer(),
      # which might be in a subclass of a different package that is still
      # loaded.
      isRooLoaded <- is.element("package:R.oo", search());
      isRooLoaded <- isRooLoaded || is.element("dummy:R.oo", search());
      if (isRooLoaded) {
        finalize(this);
      } else {
        # (1) Attach the 'R.oo' package
        suppressMessages({
          isRooLoaded <- require("R.oo", quietly=TRUE);
        });

        # For unknown reasons R.oo might not have been loaded.
        if (isRooLoaded) {
          finalize(this);
        } else {
##          warning("Failed to temporarily reload 'R.oo' and finalize().");
        }

        # NOTE! Before detaching R.oo again, we have to make sure the Object:s
        # allocated by R.oo itself (e.g. an Package object), will not reload
        # R.oo again when being garbage collected, resulting in an endless
        # loop.  We do this by creating a dummy finalize() function, detach
        # R.oo, call garbage collect to clean out all R.oo's objects, and
        # then remove the dummy finalize() function.
        # (2) Put a dummy finalize() function on the search path.
        # To please R CMD check
        attachX <- base::attach;
        attachX(list(finalize = function(...) { }), name="dummy:R.oo",
                                                      warn.conflicts=FALSE);

        # (3) Since 'R.oo' was attached above, unload it
        if (is.element("package:R.oo", search())) {
          detach("package:R.oo");
        }

        # (4) Force all R.oo's Object:s to be finalize():ed.
        gc();

        # (5) Remove the dummy finalize():er again.
        if (is.element("dummy:R.oo", search())) {
          detach("dummy:R.oo");
        }
      }
    } # finalizer()

    onexit <- getOption("R.oo::Object/finalizeOnExit", FALSE);
    reg.finalizer(attr(this, ".env"), finalizer, onexit=onexit);

    this;
  },

  extend = function(this, ...className, ...) {
    fields <- list(...);
    names <- names(fields);
    for (name in names)
      assign(name, fields[[name]], envir=attr(this, ".env"));
    class(this) <- c(...className, class(this));
    this;
  },

  Class = function(name=NULL, constructor=NULL) {
    if (is.null(name)) {
      constructor <- NA;
    } else if (!is.function(constructor)) {
      throw("Argument 'constructor' must be a function: ", mode(constructor));
    }

    # This is an example where one wants to have the core of an Object to not
    # be NA, but something else.
    this <- extend(Object(constructor), "Class",
      .staticInstance = NULL
    );

    this;
  }
), name="R.oo");

# Cleanup
rm(list="attachX");


############################################################################
# HISTORY:
# 2012-12-18
# o R CMD check for R devel no longer gives a NOTE about attach().
# 2012-11-28
# o LIMITATION: Registered finalizer for pure Object:s (i.e. excluding
#   those which are of a subclass of Object) will no longer be called
#   if the R.oo package has been detached.
# 2011-04-02
# o Added option "R.oo::Object/finalizeOnExit".
# o Added option "R.oo::Object/instantiationTime", which controls
#   whether the instantiation timestamp should be set when instantiating
#   an Object. Analogoulsy, option "R.oo::BasicObject/instantiationTime"
#   controls ditto for a BasicObject.
# 2011-03-11
# o Added explicit 'onexit=FALSE' to all reg.finalizer():s so it is clear
#   that they are not finalized when quitting R.  See 050.Object.R too.
# 2008-05-28
# o SPELL CORRECTION: Used '...instanciation' instead of 'instantiation'.
# 2008-01-10
# o Made the registered finalizer calling finalize() more error prone.
# 2007-08-29
# o BUG FIX: If Object:s are garbage collected after R.oo has been detached,
#   the error 'Error in function (env) : could not find function "finalize"'
#   would be thrown, because the registered finalizer hook tries to call
#   the generic function finalize() in R.oo.  We solve this by trying to
#   reload R.oo (and the unload it again).  Special care was taken so that
#   Object:s allocated by R.oo itself won't cause an endless loop.
# 2005-06-10
# o Added reg.finalizer() to Object() for pure Object:s. However, it must
#   be done in extend.Object() too.
# 2004-10-18
# o Updated the arguments for extend() so that they are identical to the
#   ones in extend.Object.
# 2002-12-15
# o Added reg.finalizer() to the Object class.
# 2002-11-04
# o Added the feature to timestamp each object when it is instanciated.
# 2002-10-17
# o Removed obsolete "modifiers<-"().
# o Added also "Object" to the class attribute to make static methods to
#   work.
# 2002-10-16
# o There are times when
#     generic <- function(...) UseMethod()
#   is not working, for example
#     fcn <- get("generic"); fcn(myObj, ...);
#   For this reason, always do method dispatching using the name explicitly;
#     generic <- function(...) UseMethod("generic")
# 2002-10-15
# o Created from R.oo Object.R and ideas as described on
#    http://www.maths.lth.se/help/R/
############################################################################
