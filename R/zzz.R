# Detach the 'R.oo' attached in file 030.ObjectClassFunctions.R
detach("R.oo");

# Allows conflicts. For more information, see library() and
# conflicts() in [R] base.
.conflicts.OK <- TRUE;

## .First.lib <- function(libname, pkgname) {
.onAttach <- function(libname, pkgname) {
  pkg <- Package(pkgname);
  pos <- getPosition(pkg);

  # Remove temporary extend.default() created by the extend() 
  # defined in 030.ObjectClassFunctions.R.
#  rm("extend.default", pos=pos);

  # Set default 'properties' argument for ll(), if missing
  key <- paste(pkgname, "::ll/properties", sep="");
  if (!is.element(key, names(options()))) {
    args <- list(c("data.class", "dimension", "objectSize"));
    names(args) <- key;
    do.call(options, args=args);
  }

  # Create a getCall() generic function, iff missing (R < 2.14.0)
  if (!exists("getCall", mode="function")) {
    assign("getCall", function(...) UseMethod("getCall"), pos=pos);
  }

  assign(pkgname, pkg, pos=pos);

  packageStartupMessage(getName(pkg), " v", getVersion(pkg), " (", 
    getDate(pkg), ") successfully loaded. See ?", pkgname, " for help.");
}
