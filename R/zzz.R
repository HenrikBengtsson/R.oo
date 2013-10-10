# Detach the 'R.oo' attached in file 030.ObjectClassFunctions.R
if (is.element("R.oo", search())) detach("R.oo");

# Allows conflicts. For more information, see library() and
# conflicts() in [R] base.
.conflicts.OK <- TRUE;

.onLoad <- function(libname, pkgname) {
  ns <- getNamespace(pkgname);

  ## Doing assign(pkgname, Package(pkgname), envir=ns) seems to
  ## introduce potential cyclic loading of the R.oo namespace.
  ## My best guess is that it has to do with garbage collection.
  ## Because of this, we use a "delayed" assignment. /HB 2013-10-10
  delayedAssign(pkgname, Package("R.oo"), eval.env=ns, assign.env=ns);

  # Create getCall() generic function, iff missing (R < 2.14.0)
  if (!exists("getCall", mode="function")) {
    assign("getCall", function(...) UseMethod("getCall"), envir=ns);
  }
} # .onLoad()


.onAttach <- function(libname, pkgname) {
  # Set default 'properties' argument for ll(), if missing
  key <- paste(pkgname, "::ll/properties", sep="");
  if (!is.element(key, names(options()))) {
    args <- list(c("data.class", "dimension", "objectSize"));
    names(args) <- key;
    do.call(options, args=args);
  }
  pkg <- get(pkgname, envir=getNamespace(pkgname));
  startupMessage(pkg);
} # .onAttach()
