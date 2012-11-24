# Detach the 'R.oo' attached in file 030.ObjectClassFunctions.R
if (is.element("R.oo", search())) detach("R.oo");

# Allows conflicts. For more information, see library() and
# conflicts() in [R] base.
.conflicts.OK <- TRUE;

.onLoad <- function(libname, pkgname) {
  ns <- asNamespace(pkgname);
  # This make print(R.oo::R.oo) work without loading the package
  delayedAssign(pkgname, Package(pkgname), assign.env=ns);
} # .onLoad()


.onAttach <- function(libname, pkgname) {
  # Set default 'properties' argument for ll(), if missing
  key <- paste(pkgname, "::ll/properties", sep="");
  if (!is.element(key, names(options()))) {
    args <- list(c("data.class", "dimension", "objectSize"));
    names(args) <- key;
    do.call(options, args=args);
  }

  pos <- which(pkgname == search());
  if (length(pos) == 1L) {
    # Remove temporary extend.default() created by the extend() 
    # defined in 030.ObjectClassFunctions.R.
    rm("extend.default", pos=pos);

    # Create a getCall() generic function, iff missing (R < 2.14.0)
    if (!exists("getCall", mode="function")) {
      assign("getCall", function(...) UseMethod("getCall"), pos=pos);
    }

    pkg <- Package(pkgname);
    packageStartupMessage(getName(pkg), " v", getVersion(pkg), " (", 
      getDate(pkg), ") successfully loaded. See ?", pkgname, " for help.");
  }
} # .onAttach()
