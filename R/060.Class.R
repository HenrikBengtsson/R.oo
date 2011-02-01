###########################################################################/**
# @RdocClass Class
#
# @title "The Class class describes an Object class"
#
# \description{
#  @classhierarchy
#  
#  @get "title".
#  First of all, this class is most commonly used \emph{internally} and 
#  neither the end user nor the programmer need to no about the class Class.
# }
#
# @synopsis
#
# \arguments{
#   \item{name}{Name of the class.}
#   \item{constructor}{Constructor (@function) of any Object class.}
# }
#
# \section{Fields and Methods}{
#  @allmethods 
# }
#
# \details{
#   The class Class describes the Object class or one of its subclasses. 
#   All classes and constructors created by \code{setConstructorS3()} will
#   be of class Class. Its methods provide ways of accessing static fields
#   and static methods. Its \emph{print()} method will print detailed 
#   information about the class and its fields and methods.
# }
#
# @author
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setConstructorS3("Class", Class) # Class()






###########################################################################/**
# @RdocMethod as.character
#
# @title "Returns a short string describing the class"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# \examples{
#   print(as.character(Object))
#
#   # gives:  "Class Object: no fields, 8 methods (no inherited)"
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("as.character", "Class", function(x, ...) {
  # To please R CMD check
  this <- x;

  if (is.null(getStaticInstance(this)))
    return(as.character.Object(this));

  fields <- getFields(this);
  nbrOfFields <- length(fields);
  methods <- getMethods(this, unique=TRUE);
  count <- unlist(lapply(methods, FUN=length));
  names(count) <- names(methods);
  nbrOfMethods <- sum(count);
  count <- count[-1];
    
  s <- paste(data.class(this), " ", getName(this), " has ", 
  nbrOfFields,  " field" , if (nbrOfFields  != 1) "s", " and ",
  nbrOfMethods, " method", if (nbrOfMethods != 1) "s", sep="");

  if (length(count) > 0) {
    isAre <- c("is", "are")[1 + (count != 1)];
    isAre[1] <- paste(isAre[1], "implemented in");
    isAre[-1] <- "in";
    s <- paste(sep="", s, " of which ", 
               paste(paste(count, isAre, names(count)), collapse=", "), ".");
  } else {
    s <- paste(s, ".", sep="");
  }

  s;
}) # as.character()




###########################################################################/**
# @RdocMethod print
#
# @title "Prints detailed information about the class and its fields and methods"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @seemethod "getDetails".}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{
#   print(Object)
# }
#
# @author
#
# \seealso{
#   @seemethod "getDetails"
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("print", "Class", function(x, ...) {
  cat(getDetails(x, ...));
}) # print()






###########################################################################/**
# @RdocMethod getName
#
# @title "Gets the name of the class"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# \examples{
#   print(getName(Object))   # "Object"
#   print(getName(Class))    # "Class"
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getName", "Class", function(this, ...) {
  data.class(getStaticInstance(this));
}) # getName()






###########################################################################/**
# @RdocMethod getSuperclasses
#
# @title "Gets the super classes of this class"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of @character strings.
# }
#
# \examples{
#   print(getSuperclasses(RccViolationException))
#   \dontrun{
#   returns
#   [1] "Exception" "try-error" "Object"
#   }
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @seemethod "getKnownSubclasses".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getSuperclasses", "Class", function(this, ...) {
  class(getStaticInstance(this))[-1];
}) # getSuperclasses()




###########################################################################/**
# @RdocMethod getKnownSubclasses
#
# @title "Gets all subclasses that are currently loaded"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of @character strings.
# }
#
# \examples{
#   \dontrun{
#   # Due to a bug in R CMD check (R v1.7.1) the MicroarrayData$read() call
#   # below will call getKnownSubclasses(), which will generate
#   #   "Error in exists(objectName, mode = "function") : 
#   #	   [2003-07-07 23:32:41] Exception: F used instead of FALSE"
#   # Note that the example still work, just not in R CMD check
#
#   print(getKnownSubclasses(Exception))
#   }
#   \dontrun{
#   returns
#   [1] "Exception" "try-error" "Object"
#   }
# }
#
# @author
#
# \seealso{
#   @seemethod "getSuperclasses".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getKnownSubclasses", "Class", function(this, sort=TRUE, ...) {
  name <- getName(this);
  classes <- c();

  # Look in the search path
  for (pos in seq(along=search())) {
    # Get the environment
    envir <- as.environment(pos);

    # Get all objects
    objectNames <- ls(envir=envir);

    # Exclude itself (to avoid recursive calls)
    objectNames <- setdiff(objectNames, name);

    # For each object, check if it is a function...
    for (objectName in objectNames) {
      if (exists(objectName, mode="function", envir=envir, inherits=FALSE)) {
        object <- get(objectName, mode="function", envir=envir, inherits=FALSE);
        # ...and then if it is a Class function (constructor).
        if (inherits(object, "Class")) {
          # If it is a Class object, get all its super classes.
          extends <- getSuperclasses(object);
          if (is.element(name, extends))
            classes <- c(classes, getName(object));
        }
      }
    }
  }

  classes <- unique(classes);

  if (sort && length(classes) > 1)
    classes <- sort(classes);

  classes;
})



###########################################################################/**
# @RdocMethod newInstance
#
# @title "Creates a new instance of this class"
#
# \description{
#  @get "title". 
#  Important: It should always be possible to create a new Object by
#  calling the constructor without arguments.
#  This method is simply calling the constructor method of the class.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a reference to an @see "Object".
# }
#
# \examples{
#   obj <- newInstance(Object)
#
#   # equivalent to
#
#   obj <- Object()
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("newInstance", "Class", function(this, ...) {
  this(...);
}) # newInstance()





###########################################################################/**
# @RdocMethod isAbstract
#
# @title "Checks if a class is abstract or not"
#
# \description{
#  @get "title". A class is abstract if it has abstract methods.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is abstract, otherwise @FALSE.
# }
#
# \examples{
#   if (isAbstract(RccViolationException))
#     throw("The class RccViolationException should NOT be abstract.")
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isAbstract", "Class", function(this, ...) {
  methods <- getMethods(this);
  methods <- unlist(methods);
  methods <- methods[nchar(methods) > 0];
  for (method in methods) {
    mtd <- get(method, mode="function");
    if (is.element("abstract", attr(mtd, "modifiers")))
      return(TRUE);
  }
  FALSE;
})




###########################################################################/**
# @RdocMethod isStatic
#
# @title "Checks if a class is static or not"
#
# \description{
#  @get "title". A class is static if it has static methods.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is static, otherwise @FALSE.
# }
#
# \examples{
#   if (!isStatic(RccViolationException))
#     throw("RccViolationException should be static because Exception is.")
# }
#
# @author
#
# \seealso{
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isStatic", "Class", function(this, ...) {
  methods <- getMethods(this);
  methods <- unlist(methods);
  methods <- methods[nchar(methods) > 0];
  for (method in methods) {
    mtd <- get(method, mode="function");
    if (is.element("static", attr(mtd, "modifiers")))
      return(TRUE);
  }
  FALSE;
})



###########################################################################/**
# @RdocMethod isPrivate
#
# @title "Checks if a class is defined private or not"
#
# \description{
#  @get "title". 
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is private, otherwise @FALSE.
# }
#
# \examples{
#   if (isPrivate(RccViolationException))
#     throw("The class RccViolationException should NOT be private.")
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isPrivate", "Class", function(this, ...) {
  is.element("private", attr(this, "modifiers"));
})


###########################################################################/**
# @RdocMethod isProtected
#
# @title "Checks if a class is defined protected or not"
#
# \description{
#  @get "title". 
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is protected, otherwise @FALSE.
# }
#
# \examples{
#   if (isProtected(RccViolationException))
#     throw("The class RccViolationException should NOT be protected.")
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isProtected", "Class", function(this, ...) {
  is.element("protected", attr(this, "modifiers"));
})



###########################################################################/**
# @RdocMethod isPublic
#
# @title "Checks if a class is defined public or not"
#
# \description{
#  @get "title". A class is public if it is neither private nor protected.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is public, otherwise @FALSE.
# }
#
# \examples{
#   if (!isPublic(RccViolationException))
#     throw("The class RccViolationException should be public.")
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isPublic", "Class", function(this, ...) {
  !isPrivate(this) && !isProtected(this);
})



###########################################################################/**
# @RdocMethod isDeprecated
#
# @title "Checks if a class is deprecated or not"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the class is deprecated, otherwise @FALSE.
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isDeprecated", "Class", function(this, ...) {
  is.element("deprecated", attr(this, "modifiers"));
})






###########################################################################/**
# @RdocMethod forName
#
# @title "Gets a Class object by a name of a class"
#
# \description{
#  @get "title". If no such class exists and exception is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @see "Class".
# }
#
# \examples{
#   print(Class$forName("Exception"))
# }
#
# @author
#
# \seealso{
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("forName", "Class", function(this, name, ...) {
  if (!exists(name, mode="function"))
    throw("No such class: ", name);
  fcn <- get(name, mode="function");
  if (!inherits(fcn, "Class"))
    throw("Can not find Class: ", name);
  fcn;
}, static=TRUE) # forName()






###########################################################################/**
# @RdocMethod getPackage
#
# @title "Gets the package to which the class belongs"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @see "Package".
# }
#
# \examples{
#   print(getPackage(Object))
# }
#
# @author
#
# \seealso{
#   @see "Package".
#   @see "base::class".
#   @see "setConstructorS3".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getPackage", "Class", function(this, ...) {
  pattern <- paste("^", getName(this), "$", sep="");

  packages <- search();
  for (k in seq(along=packages)) {
    found <- (length(ls(pos=k, pattern=pattern)) != 0);
    if (found) break;
  }

  if (!found)
    return(NULL);

  package <- packages[k];
  if (regexpr("^package:", package) != -1)
    package <- gsub("^package:", "", package)
  else
    package <- NULL;

  package;
})







###########################################################################/**
# @RdocMethod getStaticInstance
#
# @title "Gets the static instance of this class"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a reference to an @see "Object".
# }
#
# \examples{
#   obj <- getStaticInstance(Object)
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getStaticInstance", "Class", function(this, ...) {
  # First, make sure you have a reference to the actual Class object.
  if (!is.function(this)) {
    this <- get(data.class(this), mode="function")
    if (!inherits(this, "Class"))
      throw("Not a Class object: ", class(this)[1]);
  }

  # If the static instance of this class is missing create one.
  envir <- attr(this, ".env");
  staticInstance <- get(".staticInstance", envir=envir);
  if (is.null(staticInstance)) {
    if (!exists(".isCreatingStaticInstance", envir=envir)) {
      assign(".isCreatingStaticInstance", TRUE, envir=envir);
      constructor <- this;
      staticInstance <- constructor();
      assign(".staticInstance", staticInstance, envir=envir);
      rm(list=".isCreatingStaticInstance", envir=envir);
    } else {
      # Otherwise, just create a dummy instance in case any code is trying
      # to access it.
      staticInstance <- Object();
    }
  }

  staticInstance;
}) # getStaticInstance()



###########################################################################/**
# @RdocMethod isBeingCreated
#
# @title "Checks if a class is currently being initiated initiated"
#
# \description{
#   @get "title".  
#   When extending a class for the first time, which is
#   typically done in a constructor, a static instance of the class is
#   created by calling the constructor without parameters.
#   This method provides a way to detect that second call inside the
#   constructor.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if a static instance exists, otherwise @FALSE.
# }
#
# @examples "../incl/isBeingCreated.Class.Rex"
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("isBeingCreated", "Class", function(this, ...) {
  # First, make sure you have a reference to the actual Class object.
  if (!is.function(this)) {
    this <- get(data.class(this), mode="function")
    if (!inherits(this, "Class"))
      throw("Not a Class object: ", class(this)[1]);
  }

  # If the static instance of this class is missing create one.
  envir <- attr(this, ".env");
  staticInstance <- get(".staticInstance", envir=envir);
  if (!is.null(staticInstance))
    return(FALSE);

  if (!exists(".isCreatingStaticInstance", envir=envir))
    return(FALSE);

  get(".isCreatingStaticInstance", envir=envir);
})



###########################################################################/**
# @RdocMethod getFields
#
# @title "Returns the field names of a class"
#
# \description{
#   @get "title".
# }
#
# \arguments{
#   \item{private}{If @TRUE, private fields will also be returned,
#   otherwise only public fields are returned.}
#   \item{...}{Not used.}
# }
#
# @synopsis
#
# \value{
#  Returns a @character @vector of field names.
# }
#
# \examples{
#   print(getFields(Exception))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getFields", "Class", function(this, private=FALSE, ...) {
  static <- getStaticInstance(this);
  if (inherits(static, "Class")) {
    # Do not do a recursive call!
    class(static) <- setdiff(class(static), "Class")
  }
  getFields(static, private=private);
}) # getFields()








###########################################################################/**
# @RdocMethod getMethods
#
# @title "Returns the method names of class and its super classes"
#
# \description{
#   @get "title" as a list.
# }
#
# @synopsis
#
# \arguments{
#   \item{private}{If @TRUE, private methods are also returned,
#     otherwise only public ones are returned.}
#   \item{deprecated}{If @TRUE, deprecated methods are also returned.}
#   \item{unqiue}{If @TRUE, only methods that are not implemented
#     in one of the subclasses are returned for each class.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a named @list of named @character strings.
# }
#
# \examples{
#   l <- getMethods(Exception)
#   print(l)
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getMethods", "Class", function(this, private=FALSE, deprecated=TRUE, unique=TRUE, ...) {
  private <- as.logical(private);

  classNames <- class(getStaticInstance(this));

  searchPaths <- search();
  positions <- seq(along=searchPaths);
  envirs <- as.environment(positions);

  members <- lapply(envirs, function(env) .Internal(ls(env, private)) );
  members <- unlist(members);

  # First, remove all members that does not contain a . (period), because
  # the can not be methods of a S3 class.
  members <- grep("\\.", members, value=TRUE);

  result <- list();
  # For each class find the methods belong to that class. 
  for(className in classNames) {
    match <- paste("\\.", className, "$", sep="");
    classMembers <- grep(match, members, value=TRUE);
    # For all methods identified, see which are functions
    isFunction <- sapply(classMembers, FUN=exists, mode="function");
    isFunction <- unlist(isFunction);
    classMembers <- classMembers[isFunction];
    names(classMembers) <- gsub(match, "", classMembers);
    result[[className]] <- classMembers;
  }

  if (unique) {
    names <- lapply(result, FUN=names);
    classes <- class(getStaticInstance(this));
    for (kk in seq(length.out=length(classes)-1)) {
      if (length(names[[kk]]) != 0) {
      	for (ll in (kk+1):length(classes)) {
      	  if (length(names[[ll]]) != 0) {
      	    uniqueNames <- setdiff(names[[ll]], names[[kk]]);
      	    unique <- match(uniqueNames, names[[ll]]);
      	    result[[ll]] <- result[[ll]][unique];
      	    names[[ll]] <- names[[ll]][unique];
      	  }
      	}
      } # if (length(names[[kk]]) != 0)
    }
  } # if (unique)

  # Exclude methods with certain modifiers?
  exclMods <- NULL;
  if (!private)
    exclMods <- c(exclMods, "private");
  if (!deprecated)
    exclMods <- c(exclMods, "deprecated");

  if (!is.null(exclMods)) {
    # For each class...
    for (className in names(result)) {
      result0 <- result[[className]];
      if (length(result0) == 0)
        next;
      # Keep only non-private methods
      keep <- sapply(result0, FUN=function(name) {
    	  fcn <- get(name, mode="function");
        modifiers <- attr(fcn, "modifiers");
    	  !any(is.element(exclMods, modifiers));
     	})
      result[[className]] <- result0[keep];
    }
  }

  # Remove classes with no methods
  result <- result[sapply(result, FUN=function(x) (length(x) > 0))];

  result;
}) # getMethods()






###########################################################################/**
# @RdocMethod argsToString
#
# @title "Gets the arguments of a function as a character string"
#
# \description{
#   Gets the arguments (with default values) of a function as a character 
#   string, which can be used for debugging purposes etc. 
#   Used by: classinfo().
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# \examples{
#   Class$argsToString(plot);
# }
#
# \seealso{
#   @seeclass
# }
#
# @author
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("argsToString", "Class", function(this, fcn, ...) {
  a <- args(fcn);
  if (is.null(a))
    return("[primitive function]");
  
  if (typeof(a) != "closure")
    throw("Expected closure but found something else.");
  args <- formals(a);
  argsNames <- names(args);

  res <- list();
  for (k in seq(along=args)) {
    arg     <- args[k];
    argName <- argsNames[k];

    s <- argName;

    argDefault <- arg[[1]];
    if (!missing(argDefault)) {
      if (is.character(argDefault)) {
        s <- paste(s, "=", "\"", argDefault, "\"", sep="", collapse="");
      } else if (is.null(argDefault)) {
        s <- paste(s, "=NULL", sep="", collapse="");
      } else if (is.language(argDefault)) {
        argDefault <- as.character(arg[1]);
        s <- paste(s, "=", argDefault, sep="", collapse="");
      } else {
        s <- paste(s, "=", argDefault, sep="", collapse="");
      }
    }

    res <- c(res, list(s));
  }

  res;
}, private=TRUE, static=TRUE) # argsToString



###########################################################################/**
# @RdocMethod getDetails
#
# @title "Lists the fields and methods of a class"
#
# \description{
#   @get "title" (or an object).
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an invisible @character string of the class information.
# }
#
# \examples{
#   getDetails(Exception)
# }
#
# @author
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("getDetails", "Class", function(this, private=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The class name
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  class <- getName(this);
  s <- class;

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The super classes
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  superclasses <- getSuperclasses(this);
  if (length(superclasses) > 0) {
    s <- paste(s, " extends ", paste(superclasses, collapse=", "), " {", sep="");
  }

  s <- paste(s, "\n", sep="");

  indent <- 2;
  indentStr <- paste(rep(" ", length.out=indent), collapse="");

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The fields
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  fields  <-  getFields(this, private=private);
  if (length(fields) > 0) {
    modifiers <- rep("public", length.out=length(fields));
    isPrivate <- (regexpr("^\\.", fields) != -1);
    modifiers[isPrivate] <- "private";
    for (k in seq(along=fields))
      s <- paste(s, indentStr, modifiers[k], " ", fields[k], "\n", sep="");
  }

##   formalsToString <- function(methodName, isConstructor=FALSE) {
##     args <- argsToString(Class, method, argOffset);
##     s <- paste(sep="", s, methodName, "(", args, ")\n");
##   } ## formalsToString(...)

  methodsPerClass <- getMethods(this, private=private);
  if (length(methodsPerClass) > 0) {
    for (methods in methodsPerClass) {
      if (length(methods) > 0) {
        methodNames <- names(methods);
        modifiers <- rep("public", length.out=length(methodNames));
        isPrivate <- (regexpr("^\\.", methodNames) != -1);
        modifiers[isPrivate] <- "private";
        for (k in seq(along=methodNames)) {
          fcn <- get(methods[k], mode="function");
          fcnModifiers <- attr(fcn, "modifiers");
          if (is.element("protected", fcnModifiers)) {
            modifiers[k] <- "protected";
          } else if (is.element("private", fcnModifiers)) {
            modifiers[k] <- "private";
          }
          if (is.element("public", fcnModifiers) || private == TRUE) {
            if (is.element("abstract", fcnModifiers))
              modifiers[k] <- paste(modifiers[k], " ", "abstract", sep="");
            if (is.element("static", fcnModifiers))
              modifiers[k] <- paste(modifiers[k], " ", "static", sep="");

  	    s <- paste(s, indentStr, modifiers[k], " ", methodNames[k], "(", sep="");
            args <- paste(argsToString(Class, fcn)[-1], collapse=", ");
            s <- paste(s, args, ")\n", sep="");
          }
        }
      }
    }
  }

  s <- paste(s, "}\n", sep="");
  invisible(s);
}, private=TRUE);  # getDetails()





###########################################################################/**
# @RdocMethod $
# @aliasmethod [[
#
# @title "Makes the fields and methods of an Class accessable via the \$ and the [[ operator"
#
# \usage{
#   \method{$}{Class}(this, name)
#   \method{[[}{Class}(this, name)
# }
#
# \description{
#   Makes the fields and methods of an Class accessable via the \code{$} 
#   operator. This method is never called explicitly, but through an indirect
#   usage of the \code{$} operator, e.g. \code{obj$name} or
#   \code{obj$getValue()}.
#
#   \enumerate{
#    \item This method will first search for a \code{get<Name>()} method, 
#    e.g. if name has the value \code{"age"}, a \code{getAge()} will be 
#    looked for. If such a method exists it will be called with the Class
#    as the first and only argument, e.g. \code{getAge(this)}. 
#    A \code{get<Name>()} is only looked for if \code{<name>} is not a 
#    private field. A private field is a name \emph{beginning} with a 
#    \code{.} (period). The rational for this naming convention is to be
#    consistent with how \code{\link[base]{ls}()} works, which will not list
#    such members by default.
#
#    \item If no such method exists, first then, this method will look a 
#    field in the Class can has the name \code{name}.
#
#    \item If such neither exists, a method with name \code{name} will be 
#    searched for and returned.
#
#    \item If no fields or methods are found at all, @NULL is returned.
#   } 
# }
#
# \arguments{
#   \item{name}{The name of the field or method to be accessed.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns the value of a field or a method (@function).
#  If no such field or method exists, @NULL is returned.
# }
#
# \examples{\dontrun{For a complete example see help(Class).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("$", "Class", function(this, name) {
  if (is.function(this))
    static <- getStaticInstance(this)
  else
    static <- this;

  firstChar <- substr(name, 1,1);
  isPrivate <- identical(firstChar, ".");

  # Do not try to access private fields using a get<Name>() method,
  # because such a functionality means that the user *expects* that
  # there actually is a field called '.<name>', which he or she
  # should not do since it is a private field!
  if (!isPrivate && is.null(attr(static, "disableGetMethods"))) {
    # 1. Is it a get<Name>() method?
    capitalizedName <- name;
    substr(capitalizedName,1,1) <- toupper(firstChar);
    getMethodNames <- paste("get", capitalizedName, ".", class(static), sep="");
    for (getMethodName in getMethodNames) {
      if (exists(getMethodName, mode="function")) {
        ref <- static;
        attr(ref, "disableGetMethods") <- TRUE;
        return( get(getMethodName, mode="function")(ref) );
      }
    }
  }

  # 2. Is it a field?
  envir <- attr(static, ".env");
  # For static method calls, e.g. Class$load, 'static' has no
  # environment assigned and therefore, for now, no static
  # fields.
  if (!is.null(envir) && exists(name, envir=envir, inherits=FALSE))
    return(get(name, envir=envir));

  # 3. Is it an attribute field (slot)?
  if (is.element(name, names(attributes(static)))) {
    return(attr(static, name));
  }

  # 4. Is it a method?
  methodNames <- paste(name, class(static), sep=".");
  for (methodName in methodNames) {
    if (exists(methodName, mode="function")) {
      method <- get(methodName, mode="function");
      return( function(...) method(static, ...) );
    }
  }
   
  NULL;  
}, createGeneric=FALSE) # $()





###########################################################################/**
# @RdocMethod $<-
# @aliasmethod [[<-
#
# @title "Makes the fields and methods of an Class assignable via the \$<- and the [[<- operator"
#
# \usage{
#   \method{$}{Class}(this, name) <- value
#   \method{[[}{Class}(this, name) <- value
# }
#
# \description{
#   Makes the fields and methods of an Class assignable via the \code{$<-}
#   operator. This method is never called explicitly, but through an indirect
#   usage of the \code{$<-} operator, e.g. \code{obj$name <- "foo"}.
#
#   \enumerate{
#     \item This method will first search for a \preformatted{set<Name>()}
#     method, e.g. if name has the value \code{"age"}, a \code{setAge()} will
#     be looked for. If such a method exists it will be called with the Class
#     as the first argument and \code{value} as the second, e.g. 
#     \code{setAge(this, value)}.
#     A \code{get<Name>()} is only looked for if \code{<name>} is not a 
#     private field. A private field is a name \emph{beginning} with a 
#     \code{.} (period). The rational for this naming convention is to be
#     consistent with how \code{\link[base]{ls}()} works, which will not 
#     list such members  by default.
#
#     \item If no such method exists it will assign the \code{value} to a 
#     (existing or a non-existing) field named \code{name}. 
#   }
#
#   Because any \preformatted{set<Name>()} is called first, it is possible
#   to \emph{encapsulate} (hide away) fields with certain names or to put
#   restrictions to what values can be assigned to them.
# }
#
# \arguments{
#   \item{name}{The name of the \preformatted{set<Name>()} method or the 
#     name of the field to be assigned the new value.}
#   \item{value}{The value to be assigned.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns itself, i.e. \code{this}, as all \code{$<-} methods must do.
# }
#
# \examples{\dontrun{For a complete example see help(Class).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("$<-", "Class", function(this, name, value) {
  if (is.function(this))
    static <- getStaticInstance(this)
  else
    static <- this;

  firstChar <- substr(name, 1,1);
  isPrivate <- identical(firstChar, ".");

  # Do not try to access private fields using a set<Name>() method,
  # because such a functionality means that the user *expects* that
  # there actually is a field called '.<name>', which he or she
  # should not do since it is a private field!
  if (!isPrivate && is.null(attr(static, "disableSetMethods"))) {
    # 1. Is it a set<Name>() method?
    capitalizedName <- name;
    substr(capitalizedName,1,1) <- toupper(firstChar);
    setMethodNames <- paste("set", capitalizedName, ".", class(static), sep="");
    for (setMethodName in setMethodNames) {
      if (exists(setMethodName, mode="function")) {
        ref <- static;
        attr(ref, "disableSetMethods") <- TRUE;
        get(setMethodName, mode="function")(ref, value);
        return(this);
      }
    }
  }

  # 3. Is it an attribute field (slot)?
  if (is.element(name, names(attributes(static)))) {
    attr(static, name) <- value;
    return(this);
  }

  # 4. Otherwise, assign the value to an (existing or non-existing) field.
  assign(name, value, envir=attr(static, ".env"));

  invisible(this);
}, createGeneric=FALSE) # $<-()




setMethodS3("[[", "Class", function(this, name) {
  get("$")(this, name);
}, createGeneric=FALSE) # "[["()


setMethodS3("[[<-", "Class", function(this, name, value) {
  get("$<-")(this, name, value);
}, createGeneric=FALSE) # "[[<-"()



############################################################################
# HISTORY:
# 2011-02-01
# o ROBUSTNESS: Now using 'inherits' (not 'inherit') in all calls to
#   get() and exists().
# 2007-06-09
# o Removed internal function formalsToString() of getDetails() for class
#   Class, because it was never used.
# 2007-01-05
# o BUG FIX: getMethods(..., private=FALSE) would return private methods,
#   and private=TRUE would remove them.  It should be the otherway around.
# o BUG FIX: getMethods() for Class would sometimes give error message:
#   "Error in result[[k]] : subscript out of bounds".  This in turn would
#   cause Rdoc to fail.
# 2006-05-30
# o Added isBeingCreated() to Class.  This was done after a request from
#   Omar Lakkis, University of Sussex.
# 2006-04-01
# o Added argument 'envir' to all exists() and get() calls in the search
#   function getKnownSubclasses() (and inherits=FALSE).  This will improve
#   speed a bit.
# 2005-06-14
# o BUG FIX: getDetails() would list private and protected methods as
#   public.
# o Now print() passes '...' to getDetails(), that is, now 
#   print(Class, private=TRUE) will work too.
# 2005-02-15
# o Added arguments '...' in order to match any generic functions.
# 2004-06-28
# o Improvement: Added mode="function" to the get() statement in the
#   getStaticInstance() method. Also, added an assert statement that the
#   retrieved object then is a Class object.
# 2003-10-29
# o BUG FIX: Last night I introduced a tiny tiny bug in the code for
#   retrieving static fields. 
# 2003-10-28
# o BUG FIX: "$<-.Class" was broken. It returned its static object instead
#   of itself (="this"). 
# o BUG FIX: The way "$.Class" and "$<-.Class" was check if an attribute
#   with the same name as argument 'name' exists was not done correctly. 
#   Now it gets the list of names of the attributes and compares to that.
# 2003-09-18
# o BUG FIX: getMethods() was not sensitive to 'deprecated=TRUE'.
# 2003-05-14
# o Slight improvement in the generation of get<Name> and set<Name>, by 
#   using substr()<-.
# 2003-05-03
# o BUG FIX: Forgot to define forName() static.
# 2003-04-29
# o Added isDeprecated().
# 2003-04-13
# o Added missing Rdoc comments.
# o BUG FIX: getStaticInstance() did not recover correctly if static 
#   instance was missing.
# 2003-04-12
# o Minor detail: Declared the private method argsToString() to be static.
# 2003-01-18
# o Replaced all occurences of getClass() with data.class(). Will change
#   the use of getClass() in the future to return a Class object. 
# 2002-11-07
# o Now $() and $<-() also gets and sets attribute values too,
#   respectively.
# o BUG FIX: $<-() was returning this instead of static, which meant that
#   it was not possible to change values of static fields.
# 2002-11-04
# o BUG FIX: getDetails() would not add a newline after the class name if 
#   the class did not have a superclass, i.e. for root class Object.
# o Updated getFields() to call getFields() instead of getFields.Object().
# 2002-10-24
# o Update getMethods() to also support private methods, i.e. looking at
#   the modifiers attribute also.
# 2002-10-21
# o Added getDetails().
# 2002-10-20
# o Updated the Rdoc comments.
# 2002-10-17
# o Created from R.oo Class.R and experiences from that project.
############################################################################
