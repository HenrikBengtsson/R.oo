############################################################################
# This source code file contains constructor and function definitions that
# are used for loading this package only.
############################################################################
# To please R CMD check
attachX <- base::attach;

attachX(list(
  Object = function(core=NA, finalize=TRUE) {
    # Create a new environment and wrap it up as a private field of a list.
    this <- core;
    this.env <- new.env();
    attr(this, ".env") <- this.env;
    class(this) <- "Object";

    if (getOption("R.oo::Object/instantiationTime", FALSE)) {
      attr(this, "...instantiationTime", Sys.time());
    }

    finalizer <- function(env) {
      # Nothing needed to be done in this temporary finalizer factory,
      # because it is only utilized by this very package and none of
      # the classes in this package created Object:s that needs to be
      # finalized.
    } # finalizer()

    # Should this Object be finalized?
    if (finalize) {
      onexit <- getOption("R.oo::Object/finalizeOnExit", FALSE);
      reg.finalizer(this.env, finalizer, onexit=onexit);
    }
    assign("...finalize", finalize, envir=this.env, inherits=FALSE);

    this;
  },

  extend = function(this, ...className, ..., ...finalize=TRUE) {
    fields <- list(...);
    names <- names(fields);
    this.env <- attr(this, ".env");
    for (name in names)
      assign(name, fields[[name]], envir=this.env);
    class(this) <- c(...className, class(this));

    # Override this (=unregister finalizer) according to argument
    # '...finalize' of extend()?
    if (!is.na(...finalize) && !isTRUE(...finalize)) {
      # Unregister finalizer (by registering a dummy one)
      reg.finalizer(this.env, f=function(...) {});
    }

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
