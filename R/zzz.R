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

  pkgnameF <- paste("package:" , pkgname, sep="")
  pos <- which(pkgnameF == search());
  if (length(pos) == 1L) {
    env <- as.environment(pos);

    # Remove temporary extend.default() created by the extend()
    # defined in 030.ObjectClassFunctions.R.
    if (exists("extend.default", envir=env)) {
      rm(list="extend.default", envir=env);
    }

    # Create a getCall() generic function, iff missing (R < 2.14.0)
    if (!exists("getCall", mode="function")) {
      assign("getCall", function(...) UseMethod("getCall"), envir=env);
    }

    pkg <- Package(pkgname);
    startupMessage(pkg);
  } # if (length(pos) == 1L)
} # .onAttach()
