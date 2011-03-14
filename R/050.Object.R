###########################################################################/**
# @RdocClass Object
#
# @title "The root class that every class must inherit from"
#
# \description{
#  R.oo\cr
#  \bold{Class Object}\cr
#  
#  public class \bold{Object}\cr
#
#  \code{Object} is the root class of all other classes. All classes 
#  \emph{must} extends this class, directly or indirectly, which means
#  that they all will inherit the methods in this class.
# }
#
# @synopsis
#
# \arguments{
#   \item{core}{The core value of each \emph{reference} referering to the
#     Object. By default, this is just the smallest possible \R object, but
#     there are situations where it is useful to have another kind of core,
#     which is the case with the Class class.
#     \emph{Note that this value belongs to the reference variable
#     and not to the Object, which means it can not be referenced.}}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \section{Defining static fields}{
#  To define a static field of an Object class, use a private field 
#  \code{<.field>} and then create a virtual field \code{<field>} by 
#  defining methods \code{get<Field>()} and \code{set<Field>()}.  
#  These methods should retrieve and assign the value of the field 
#  \code{<.field>} of the \emph{static} instance of the class.  The 
#  second example below shows how to do this.  The example modifies 
#  also the static field already in the constructor, which is something 
#  that otherwise may be tricky.
# }
#
# \examples{
#   @include "../incl/Person.Rex"
#
#   @include "../incl/StaticFields.Rex"
# }
#
# @author
#
# \references{
#  [1] @include "../incl/BengtssonH_2003.bib.Rdoc" \cr
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setConstructorS3("Object", Object);





###########################################################################/**
# @RdocMethod as.character
#
# @title "Gets a character string representing the object"
#
# \description{
#  @get "title". In the class Object, 
#  this method simply returns the class name and the hashCode() value
#  of the object.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string representation of the Object. By default it
#  is "\{class name\}: \{hash code\}".
# }
#
# \examples{
#   obj <- Object()
#   as.character(obj)    # "Object: 0x016A80FC"
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("as.character", "Object", function(x, ...) {
  # To please R CMD check
  this <- x;

  intToHex <- function(x, width=NULL) {
    y <- as.integer(x)
    class(y) <- "hexmode"
    y <- as.character(y)
    if (!is.null(width)) {
      missing <- width - nchar(y);
      for (k in which(missing > 0)) {
        zeros <- paste(rep("0", missing[k]), collapse="");
        y[k] <- paste(zeros, y[k], sep="");
      }
    }
    dim(y) <- dim(x)
    y
  }

  as.character.hexmode <- function(x) {
    hexDigit <- c(0:9, "A", "B", "C", "D", "E", "F");
    isna <- is.na(x);
    y <- x[!isna];
    ans0 <- character(length(y));
    z <- NULL;
    while (any(y > 0) | is.null(z)) {
      z <- y%%16;
      y <- floor(y/16);
      ans0 <- paste(hexDigit[z + 1], ans0, sep = "");
    }
    ans <- rep(NA, length(x));
    ans[!isna] <- ans0;
    ans
  }

  addr <- getInternalAddress(this);
  hex <- c(addr %/% 2^32, addr %% 2^32);
  hex[2] <- intToHex(hex[2], width=8);
  hex[1] <- intToHex(hex[1]);
  if (nchar(hex[1]) %% 2 == 1)
    hex[1] <- paste("0", hex[1], sep="");
  hex <- paste(hex, collapse="");
  paste(class(this)[1], ": 0x", addr, sep="");
}) # as.character()





###########################################################################/**
# @RdocMethod getInstantiationTime
# @aliasmethod getInstanciationTime
#
# @title "Gets the time when the object was instantiated"
#
# \description{
#  @get "title" (created) as a POSIXt object.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a POSIXt object, which extends class POSIXct.
# }
#
# \examples{
#   obj <- Object()
#   print(getInstantiationTime(obj))
# }
#
# \seealso{
#   For more about time formats and POSIX see @see "base::DateTimeClasses".
#   @seeclass
# }
#
# @author
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("getInstantiationTime", "Object", function(this, ...) {
  time <- attr(this, "...instantiationTime");
  if (is.null(time))
    time <- attr(this, "...instanciationTime");
  time;
})

setMethodS3("getInstanciationTime", "default", function(...) {
  getInstantiationTime(...);  
}, private=TRUE, deprecated=TRUE)



###########################################################################/**
# @RdocMethod clone
#
# @title "Clones an Object"
#
# \description{
#  Creates an identical copy of the object and returns a reference to the
#  new object.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   A reference to the new object.
# }
#
# \examples{
#   o1 <- Object()
#   o2 <- clone(o1)
#
#   print(equals(o1, o2))
# }
#
# \details{
#   Please note that no constructors are called during the creation of the
#   clone and neither is any static class code called.
# }
#
# \seealso{
#   @seeclass
# }
#
# @author
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("clone", "Object", function(this, ...) {
  # Copy the reference.
  clone <- this

  # Create a new environment, i.e. a new Object.
  clone.env <- new.env()
  attr(clone, ".env") <- clone.env

  # Copy all variables in the environment.
  this.env <- attr(this, ".env")
  fields <- getFields(this, private=TRUE);
  for (field in fields) {
    value <- get(field, envir=this.env, inherits=FALSE);
    # The following line must be included to do nothing, but the effect
    # is that it fools the lazy evaluation (?) to create a true copy of
    # the object. If this is not done, it won't be a true clone even if
    # the value is assigned to another environment. Example:
    #  b <- clone(a) 
    #  b$matrix[1,1] <- 2
    # will otherwise also change a$matrix[1,1]. /HB 021023
    attr(value, "R.oo::.clone.Object") <- NULL;
    assign(field, value, envir=clone.env);
  }
  clone;
})



###########################################################################/**
# @RdocMethod equals
#
# @title "Compares an object with another"
#
# \description{
#  @get "title" and returns @TRUE if they are equal.
#  The equal property must be 
#
#  1) \emph{reflexive}, i.e. \code{equals(o1,o1)} should be @TRUE.
#
#  2) \emph{symmetric}, i.e. \code{equals(o1,o2)} is @TRUE if and only
#  if \code{equals(o2,o1)} is @TRUE. 
#
#  3) \emph{transitive}, i.e. \code{equals(o1,o2)} is @TRUE and 
#  \code{equals(o2,o3)} is @TRUE, then \code{equals(o1,o3)} should
#  be @TRUE. 
#
#  5) \emph{consistent}, i.e. \code{equals(o1,o2)} should return the same
#  result on multiple invocations as long as nothing has changed.
#
#  6) \code{equals(o1,}@NULL\code{)} should return @FALSE.
#
#  By default, the method returns @TRUE if and only if the two
#  references compared refer to the same @Object, i.e. 
#  \code{( !is.null(obj) && (hashCode(this) == hashCode(obj)) )}.
# }
#
# @synopsis
#
# \arguments{
#   \item{other}{The other object this @Object should be compared to.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the Object's are equal, otherwise @FALSE.
# }
#
# \examples{
#   o1 <- Object()
#   o2 <- clone(o1)
#   equals(o1, o1)    # TRUE
#   equals(o1, o2)    # FALSE
# }
#
# \seealso{
#   @seemethod "hashCode".
#   @seeclass
# }
#
# @author
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("equals", "Object", function(this, other, ...) {
  ( !is.null(other) && (hashCode(this) == hashCode(other)) );
})






###########################################################################/**
# @RdocMethod finalize
#
# @title "Finalizer methods called when object is clean out"
#
# \description{
#  \bold{The finalizer method should never be called explicitly!}.
#  Finalizer methods called just before the object is about to be deleted
#  by the garbage collector.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \examples{
#   setConstructorS3("MyClass", function() {
#     extend(Object(), "MyClass")
#   })
#
#   setMethodS3("finalize", "MyClass", function(this) {
#     cat(as.character(this), "is about to be removed from the memory!\n")
#   })
#
#   o <- MyClass()
#   o <- MyClass()
#   o <- MyClass()
#   o <- MyClass()
#   gc()
#
#   \dontrun{
#   MyClass: 0x01BE602C is about to be removed from the memory!
#   MyClass: 0x01BFF634 is about to be removed from the memory!
#   MyClass: 0x01C13584 is about to be removed from the memory!
#            used (Mb) gc trigger (Mb)
#   Ncells 229903  6.2     467875 12.5
#   Vcells  53725  0.5     786432  6.0
#   }
#
#   rm(o)
#   \dontrun{
#   MyClass: 0x01C578B0 is about to be removed from the memory!
#            used (Mb) gc trigger (Mb)
#   Ncells 229903  6.1     467875 12.3
#   Vcells  53725  0.5     786432  6.0
#   }
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
setMethodS3("finalize", "Object", function(this, ...) {
})





###########################################################################/**
# @RdocMethod hashCode
#
# @title "Gets a hash code for the Object"
#
# \description{
#  @get "title". This makes it possible to put any @Object in a hash table.
#
#  The hash code returned must:
#
#  1) be \emph{consistent}, i.e. \code{hashCode(obj)} should return the same
#  value on multiple invocations as long as nothing has changed.
#
#  2) tell same same thing as \code{equals()}, if \code{equals(o1,o2)} is
#  @TRUE, then \code{hashCode(o1) == hashCode(o2)} should also be
#  @TRUE.
#
#  Note that if \code{equals(o1,o2)} is @FALSE, \code{hashCode(o1)}
#  \code{hashCode(o2)} may be \emph{either} equal or non-equal.
#
#  By default, the method returns the internal memory address where the
#  Object is located.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @double.
# }
#
# \examples{
#   obj <- Object()
#   hashCode(obj)          # 26979608
# }
#
# @author
#
# \seealso{
#   @seemethod "equals"
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("hashCode", "Object", function(this, ...) {
  getInternalAddress(this);
}) # hashCode()







###########################################################################/**
# @RdocMethod getInternalAddress
#
# @title "Gets the memory location where the Object resides"
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
#   Returns a @double (can hold 64-bit addresses, whereas an @integer can
#   only hold 32-bit addresses).
# }
#
# \examples{
#   obj <- Object()
#   getInternalAddress(obj)    # 26979608
# }
#
# @author
#
# \seealso{
#   \code{\link[=getName.environment]{getName()}}.
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("getInternalAddress", "Object", function(this, ...) {
  hexStringToDouble <- function(hex) {
    hexDigits <- unlist(strsplit("0123456789ABCDEF", ""));
    digits16 <- unlist(strsplit(toupper(hex), ""));
    digits10 <- match(digits16, hexDigits) - 1;
    bases10 <- rev(16^(seq(along=digits10)-1));
    sum(digits10 * bases10);
  }

  hexStringToInt <- function(hex) {
    as.integer(hexStringToDouble(hex));
  }

  pointer <- getName(attr(this, ".env"));
  pointer <- gsub("0x", "", pointer);
  pointer <- hexStringToDouble(pointer);

  pointer;
}, private=TRUE) # getInternalAddress()





###########################################################################/**
# @RdocMethod print
#
# @title "Prints an Object"
#
# \description{
#  For all objects of class @see "Object", this method will print the
#  value of \code{as.character()} of the object. Note that this function is 
#  not called if the argument is not an object of class @Object.
# }
#
# @synopsis
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @see "base::print.default"
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("print", "Object", function(x, ...) {
  print(as.character(x));
}) # print()





########################################################################/**
# @RdocMethod attachLocally
#
# @title "Attaches an Object locally to an environment"
#
# @synopsis
#
# \description{
#  @get "title".  By default, the fields of the Object are attached to
#  the parent frame, that is, the calling environment.
# }
#
# \arguments{
#   \item{private}{If @TRUE, private fields are included, otherwise not.
#      This is only effective if \code{fields==NULL}.}
#   \item{fields}{A @character @vector specifying elements to be copied.
#      If @NULL, all elements are considered.}
#   \item{excludeFields}{A @character @vector specifying elements not to
#      be copied.  This has higher priority than \code{fields}.}
#   \item{overwrite}{If @FALSE, fields that already exists will not be
#      copied.}
#   \item{envir}{The @environment where fields are copied to.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) a @character @vector of the fields copied.
# }
# 
# @examples "../incl/attachLocally.Object.Rex"
#
# @author
# 
# \seealso{
#  @seemethod attach
#  @seeclass
# }
#
# @keyword "utilities" 
# @keyword "programming"
#*/#########################################################################
setMethodS3("attachLocally", "Object", function(this, private=FALSE, fields=NULL, excludeFields=NULL, overwrite=TRUE, envir=parent.frame(), ...) {
  if (is.null(fields))
    fields <- getFields(this, private=private);
  fields <- setdiff(fields, excludeFields);

  attachedFields <- c();
  for (field in fields) {
    if (overwrite || !hasField(this, field)) {
      assign(field, this[[field]], envir=envir);
      attachedFields <- c(attachedFields, field);
    }
  }

  invisible(attachedFields);
})



###########################################################################/**
# @RdocMethod attach
#
# @title "Attaches an Object to the R search path"
#
# \description{
#  Attach the members of an Object to the \R search path.
#
#  If trying to attach the same Object twice without detaching it inbetween,
#  a @warning will be generated and nothing will be done.
# }
#
# @synopsis
#
# \arguments{
#   \item{private}{If @TRUE, private fields will also be attached, 
#     otherwise not.}
#   \item{pos}{The position at in search path where the Object should be
#              inserted.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns @TRUE if the @Object was attached, otherwise @FALSE.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seemethod "detach" and @see "base::attach", @see "base::detach".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("attach", "Object", function(this, private=FALSE, pos=2, ...) {
  attachName <- as.character.Object(this);
  if (is.element(attachName, search())) {
    warning(paste("Object is already attached:", attachName));
    return(invisible(FALSE));
  }

  envir <- attr(this, ".env");
  attach(list(), name=attachName, pos=pos);
  members <- ls(envir=envir, all.names=private);
  for (member in members)
    assign(member, get(member, envir=envir), pos=pos);
  return(invisible(TRUE));
}) # attach()





###########################################################################/**
# @RdocMethod detach
#
# @title "Detach an Object from the R search path"
#
# \description{
#  Detach, from the \R search path, an Object that has previously been
#  attached. If the Object was not attached, a @warning will be generated
#  and nothing will be done.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns @TRUE if the Object was detached, otherwise @FALSE.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seemethod "attach" and @see "base::attach", @see "base::detach".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("detach", "Object", function(this, ...) {
  attachName <- as.character.Object(this);
  if (!is.element(attachName, search())) {
    warning(paste("Object is not attached:", attachName));
    return(invisible(FALSE));
  }

  pos <- which(search() == attachName);
  detach(pos=pos);

  return(invisible(TRUE));
}) # detach()




###########################################################################/**
# @RdocMethod save
#
# @title "Saves an Object to a file or a connection"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{file}{Filename or @connection to which the Object should be saved.
#    If @NULL, the Object will be save to a file named 
#    "\{class name\}.\{memory location\}.RData", e.g. "Object.26979608.RData".}
#  \item{path}{The path where the file should be saved.}
#  \item{compress}{If @TRUE, the file is compressed to, otherwise not.}
#  \item{...}{Other arguments accepted by \code{save()} in the base package.}
#  \item{safe}{If @TRUE and \code{file} is a file, then, in order to lower
#    the risk for incomplete files, the object is first written to a
#    temporary file, which is then renamed to the final name.}
# }
#
# \value{
#  Returns nothing.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seemethod "load" and @see "base::save", @see "base::load".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
# \keyword{IO}
#*/###########################################################################
setMethodS3("save", "Object", function(this, file=NULL, path=NULL, compress=TRUE, ..., safe=TRUE) {
  if (is.null(file)) {
    file <- sprintf("%s.%d.RData", class(this)[1], getInternalAddress(this));
  } 

  # Saving to a file?
  saveToFile <- (!inherits(file, "connection"));
  if (saveToFile) {
    if (!is.null(path) && path != "") {
      # 1. Remove any '/' or '\' at the end of the path string.
      path <- gsub("[/\\]*$", "", path);
      # 2. Add a '/' to the end.
      if (regexpr("/$", path) == -1)
        path <- paste(path, "/", sep="");
      # 3. Paste the path and the file together.
      file <- as.character(file);
      file <- paste(path, file, sep="");
    }
  }

  # Write to a temporary file?
  if (safe && saveToFile) {
    # Final pathname
    pathname <- file;
    # Temporary pathname
    pathnameT <- sprintf("%s.tmp", pathname);
    if (file.exists(pathnameT)) {
      throw("Cannot save to file. Temporary file already exists: ", pathnameT);
    }
    # Write to a temporary file
    file <- pathnameT;
    on.exit({
      if (!is.null(pathnameT) && file.exists(pathnameT)) {
        file.remove(pathnameT);
      }
    }, add=TRUE);
  }

  # For some unknown reason is save.default() adding the variables
  # 'exp', 'object', 'row' and 'value' to environment of this object.
  # /HB 031020
  saveLoadReference <- this;
  res <- base::save(saveLoadReference, file=file, ..., compress=compress);

  # Rename temporary file?
  if (safe && saveToFile) {
    file.rename(pathnameT, pathname);
    if (!file.exists(pathname) || file.exists(pathnameT)) {
      throw("Failed to rename temporary file: ", pathnameT, " -> ", pathname);
    }
    pathnameT <- NULL;
    file <- pathname;
  }

  invisible(res);
}) # save()





###########################################################################/**
# @RdocMethod load
#
# @title "Static method to load an Object from a file or a connection"
#
# \description{
#   @get "title", which previously have been saved using \code{save()} of 
#   class Object.
# }
#
# @synopsis
#
# \arguments{
#  \item{file}{Filename or @connection from where to read the Object.}
#  \item{path}{The path where the file exists.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a reference to the loaded Object.
# }
#
# \details{
#   Please note that no constructors are called when an Object is loaded
#   and neither is any static class code called.
# }
#
# \section{Type control}{
#   Typically this static method is called as \code{<Object>$load(...)}
#   where \code{<Object>} is any Object class.  When an Object has been
#   loaded, it is verified that it inherits from \code{<Object>}. If it
#   does not, an exception is thrown.  Thus, \code{Object$load(...)} will 
#   load any Object, but \code{MyClass$load(...)} will only load an Object
#   that inherits from MyClass.  If loaded object is not of correct class,
#   an exception is thrown.
# }
#
# \section{Troubleshooting}{
#   Due to a bug, likely in \R itself, one can not specify the \code{file}
#   argument by its name, i.e. \code{Object$load(file="foo.RData")} will
#   not work, but \code{Object$load("foo.RData")} work just fine.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seemethod "save" and
#   @see "base::save", @see "base::load".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
# \keyword{IO}
#*/###########################################################################
setMethodS3("load", "Object", function(static, file, path=NULL, ...) {
  if (!inherits(file, "connection")) {
    if (!is.null(path) && path != "") {
      # 1. Remove any '/' or '\' at the end of the path string.
      path <- gsub("[/\\]*$", "", path);
      # 2. Add a '/' to the end.
      if (regexpr("/$", path) == -1)
        path <- paste(path, "/", sep="");
      # 3. Paste the path and the file together.
      file <- as.character(file);
      file <- paste(path, file, sep="");
    }
  }
 
  # load.default() recognized gzip'ed files too.
  saveLoadReference <- NULL; # To please R CMD check R v2.6.0
  vars <- load.default(file=file);

  if (!is.element("saveLoadReference", vars))
    throw("The file does not contain an R.oo Object: ", file);

  object <- saveLoadReference;

  # Assert that the loaded object inherits from the same class as the
  # static object used to call this method.
  if (!inherits(object, class(static)[1])) {
    throw("Loaded an Object from file, but it does not inherit from ", 
                                   class(static)[1], " as expected: ", 
                                 paste(class(object), collapse=", "));
  }

  object;
}, static=TRUE) # load()





###########################################################################/**
# @RdocMethod objectSize
#
# @title "Gets the size of the Object in bytes"
#
# \description{
#   @get "title" by summing the sizes of all its 
#   members. For this reason, the size of memory the Object actually 
#   allocates might vary slighty.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns an @integer specifying the size of the object in number of bytes.
# }
#
# \examples{
#   obj <- Object()
#   obj$x <- 1:100
#   obj$y <- 100:1
#   objectSize(obj)   # 856
# }
#
# @author
#
# \seealso{
#   To clear fields that are declared \code{cached}, 
#   see @seemethod "clearCache".
#   @see "utils::object.size".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("objectSize", "Object", function(this, ...) {
  envir <- attr(this, ".env");
  members <- ls(envir=envir, all.names=TRUE);
  totalSize <- 0;
  for (member in members) {
    size <- eval(substitute(object.size(member), 
                 list(member=as.name(member))), envir=envir);
    totalSize <- totalSize + size;
  }
  totalSize;
}) # objectSize()




###########################################################################/**
# @RdocMethod getStaticInstance
#
# @title "Gets the static instance of this objects class"
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
#   Returns a reference to an @Object.
# }
#
# \examples{
#   ex <- Exception("Oops!")
#   obj <- getStaticInstance(ex)
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("getStaticInstance", "Object", function(this, ...) {
  class <- get(class(this)[1]);
  getStaticInstance(class);
}, protected=TRUE) # getStaticInstance()






###########################################################################/**
# @RdocMethod getFields
# @aliasmethod names
#
# @title "Returns the field names of an Object"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{private}{If @TRUE, private fields will also be returned,
#   otherwise only public fields are returned.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character @vector of field names.
# }
#
# \examples{
#   obj <- Object()
#   obj$x <- 1:100
#   obj$y <- 100:1
#   getFields(obj)
#
#   \dontrun{
#   gives:
#   
#   [1] "x" "y"
#   }
# }
#
# @author
#
# \seealso{
#   To check if a field exists or not, see @seemethod "hasField".
#   For more extensive information about the fields in an Object see
#   @seemethod "ll".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("getFields", "Object", function(this, private=FALSE, ...) {
  envir <- attr(this, ".env");
  ls(envir=envir, all.names=private);
}) # getFields()


setMethodS3("names", "Object", function(x, ...) {
  getFields(x, ...);
}, private=TRUE) # names()





###########################################################################/**
# @RdocMethod hasField
#
# @title "Checks if a field exists or not"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{field}{@vector of fields to be checked if they exists or not.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @logical @vector indicating for each field if it exists or not.
# }
#
# \examples{
#   obj <- Object()
#   obj$x <- 1:100
#   obj$y <- 100:1
#   hasField(obj, c("x", "a", "b", "y"))
#
#   \dontrun{
#   gives:
#   
#   [1] TRUE FALSE FALSE TRUE
#   }
# }
#
# @author
#
# \seealso{
#   To get the fields of an Object, see @seemethod "getFields".
#   For more extensive information about the fields in an Object see
#   @seemethod "ll".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("hasField", "Object", function(this, field, ...) {
  !is.na(match(field, getFields(this, private=TRUE)));
}) # hasField()







###########################################################################/**
# @RdocMethod ll
#
# @title "Generates a list of informative properties of all members of an Object"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Any arguments accepted by the underlying function \code{ll()}.}
# }
#
# \value{
#  Returns a @data.frame containing information about all the members.
# }
#
# \examples{
#   obj <- Object()
#   obj$x <- 1:100
#   obj$y <- 100:1
#   ll(obj)
#
#   \dontrun{
#   gives:
#
#     member data.class dimension objectSize
#   1      x    numeric       100        424
#   2      y    numeric       100        424
#   }
# }
#
# @author
#
# \seealso{
#   @see "ll.default".
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("ll", "Object", function(this, ...) {
  ll(..., envir=attr(this, ".env"));
}) # ll()






###########################################################################/**
# @RdocMethod staticCode
#
# @title "Method that will be call each time a new instance of a class is created"
#
# \description{
#   @get "title".
#
#   By extending this method it is possible to have static code that is called
#   each time a new instance of a class is created.
# }
#
# @synopsis
#
# \arguments{
#   \item{static}{The static instance of this class.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns nothing.
# }
#
# \details{
#   The method \code{extend()} in the Object class will call this method just
#   before returning and it will pass the static instance of the class as a
#   reference. Note that method should never be called explicitly.
#
#   Any value returned by this method will be ignored.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("staticCode", "Object", function(static, ...) {
  # Note that this code will never be called when a "pure" 
  # Object is created, but for instances of all other 
  # class staticCode() will be called.
}, private=TRUE)





###########################################################################/**
# @RdocMethod extend
#
# @title "Extends another class"
#
# \description{
#   Simply speaking this method "extends another class". What is actually
#   happening is that it creates an instance of class name \code{...className},
#   by taking another Object instance and add \code{...className} to the class
#   list and also add all the named values in @... as fields to the 
#   new instance.
#
#   The method should be used by the constructor of a class and nowhere else.
# }
#
# @synopsis
#
# \arguments{
#   \item{...className}{The name of new class.}
#   \item{...}{Named values representing the fields of the new instance.}
#   \item{...fields}{An optional named @list of fields.  This makes it possible
#     to specify a set of fields using a @list object.}
# }
#
# \value{
#  Returns an Object of class \code{className}.
# }
#
# \details{
#   The reason for the strange name of argument \code{"...className"} is that
#   if one tries to set a field with a name that is a prefix of the name of
#   this arguments and one at the same time does not specify the name of this
#   argument one would run into strange errors. For instance, try
#   \code{extend(Object(), "MyClass", ...c=0)}.
# }
#
# \section{Field modifiers}{
#   It is possible to specify modifiers to some of the fields.  Currently it
#   is only the \code{cached} modifier that is recognized.  A field that is
#   cached will be assigned @NULL when @seemethod "clearCache" 
#   (or @seemethod "gc") is called.  To specify a modifier, append a comma
#   separated list of modifiers followed by a colon, e.g. "cached:foo".
# }
# 
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("extend", "Object", function(this, ...className, ..., ...fields=NULL) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  parseModifiers <- function(args, ...) {
    names <- names(args);
  
    pattern <- "([abcdefghijklmnopqrstuvwxyz ]*):(.*)$";
    modifiers <- rep("", length(names));
    idx <- grep(pattern, names);
    modifiers[idx] <- gsub(pattern, "\\1", names[idx]);
    modifiers <- strsplit(modifiers, split=" ");
    modifiers <- lapply(modifiers, gsub, pattern=" *", replacement="");
  
    # Get the real names
    names[idx] <- gsub("[abcdefghijklmnopqrstuvwxyz ]*:", "", names[idx]);
    names(args) <- names;
  
    # Set modifier attributes
    mods <- list();
    for (type in c("cached")) {
      mods[[type]] <- names[modifiers == type];
    }
    attr(args, "modifiers") <- mods;

    args;
  } # parseModifiers()
  
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Main
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  fields <- c(list(...), ...fields);

  # Identify and renamed fields that have modifiers in their names
  fields <- parseModifiers(fields);

  names <- names(fields);
  for (k in seq(fields)) {
    name <- names[k];
    if (is.null(name) || nchar(name) == 0) {
      callNames <- names(sys.call());
      callNames <- callNames[nchar(callNames) > 0];
      matchNames <- paste("^", callNames, sep="");
      for (k in seq(matchNames)) {
        if (regexpr(matchNames[k], "...className") != -1) {
          className <- sys.call()[[3]];
          throw("Could not set field of class (probably called ", className, 
                ") because the field name is a prefix to the argument name ",
                "\"...className\": ", callNames[k]);
        }
      }
      throw("Missing name of field #", k, " in class definition: ", ...className);
    }
    assign(name, fields[[k]], envir=attr(this, ".env"));
  }

  # Set class
  class(this) <- unique(c(...className, class(this)));

  # Note, we have to register the finalizer here and not in Object(), 
  # because here the reference variable 'this' will have the correct
  # class attribute, which it does not in Object().
  reg.finalizer(attr(this, ".env"), function(env) {
    # Note, R.oo might be detached when this is called!  If so, reload
    # it, this will be our best chance to run the correct finalizer(),
    # which might be in a subclass of a different package that is still
    # loaded.
    isRooLoaded <- any(is.element(c("package:R.oo", "dummy:R.oo"), search()));
    if (isRooLoaded) {
      finalize(this);
    } else {
      suppressMessages({
        isRooLoaded <- require("R.oo", quietly=TRUE);
      })

      # For unknown reasons R.oo might not have been loaded.
      if (isRooLoaded) {
        finalize(this);
      } else {
        warning("Failed to temporarily reload 'R.oo' and finalize().");
      }

      # NOTE! Before detach R.oo again, we have to make sure the Object:s
      # allocated by R.oo itself (e.g. an Package object), will not reload
      # R.oo again when being garbage collected, resulting in an endless
      # loop.  We do this by creating a dummy finalize() function, detach
      # R.oo, call garbage collect to clean out all R.oo's objects, and
      # then remove the dummy finalize() function.
      # (1) Put a dummy finalize() function on the search path.
      attach(list(finalize = function(...) { }), name="dummy:R.oo",
                                                    warn.conflicts=FALSE);
      # (2) Detach R.oo
      detach("package:R.oo");
      # (3) Force all R.oo's Object:s to be finalize():ed.
      gc();
      # (4) Remove the dummy finalize():er again.
      detach("dummy:R.oo");
    }
  }, onexit=FALSE); # reg.finalizer()


  # Finally, create the static instance?
  if (!is.element("Class", ...className)) {
    static <- getStaticInstance(this);
    if (!is.null(static))
      staticCode(static);
  }

  # Record which fields are cached
  assign("...modifiers", attr(fields, "modifiers"), envir=attr(this, ".env"));

  this;
}) # extend()





###########################################################################/**
# @RdocMethod $
# @aliasmethod [[
#
# @title "Makes the fields and methods of an Object accessable via the \$ and the [[ operator"
#
# \description{
#   Makes the fields and methods of an Object accessable via the \code{$} 
#   operator. This method is never called explicitly, but through an indirect
#   usage of the \code{$} operator, e.g. \code{obj$name} or
#   \code{obj$getValue()}.
#
#   1) This method will first search for a \code{get<Name>()} method, e.g. if
#   name has the value \code{"age"}, a \code{getAge()} will be looked for. 
#   If such a method exists it will be called with the Object as the first 
#   and only argument, e.g. \code{getAge(this)}. 
#
#   A \code{get<Name>()} is only looked for if \code{<name>} is not a private
#   field. A private field is a name \emph{beginning} with a \code{.} 
#   (period). The rational for this naming convention is to be consistent
#   with how @see "base::ls" works, which will not list such members 
#   by default.
#
#   2) If no such method exists, first then, this method will look a field in
#   the Object can has the name \code{name}.
#
#   3) If such neither exists, a method with name \code{name} will be 
#   searched for and returned.
#
#   4) Otherwise, a static field will be looked for.
#
#   5) If no fields or methods are found at all, @NULL is returned.
# }
#
# \usage{
#   \method{$}{Object}(this, name)
#   \method{[[}{Object}(this, name)
# }
#
# \arguments{
#   \item{name}{The name of the field or method to be accessed.}
# }
#
# \value{
#  Returns the value of a field or a method (@function).
#  If no such field or method exists, @NULL is returned.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("$", "Object", function(this, name) {
  memberAccessorOrder <- attr(this, ".memberAccessorOrder");
  if (is.null(memberAccessorOrder))
    memberAccessorOrder <- c(1,2,3,4,5);

  # Check if there is a cache lookup available.
  envir <- attr(this, ".env");
  cacheName <- paste("...$.lookup", name, sep=".");
  if (!is.null(envir) && exists(cacheName, envir=envir, inherits=FALSE)) {
    envirCache <- envir;
    lookup <- get(cacheName, envir=envirCache);
    if (identical(attr(lookup, "memberAccessorOrder"), memberAccessorOrder)) {
      if (lookup == 1) {
        # Still to be figured out how to do! /HB 2003-01-18
#        memberAccessorOrder <- attr(lookup, "possibilities");
      } else if (lookup == 2) {
        envir2 <- envir;
        return( get(name, envir=envir2) );
      } else if (lookup == 3) {
        return( attr(this, name) );
      } else if (lookup == 4) {
         method <- attr(lookup, "method");
         return( function(...) method(this, ...) );
      } else if (lookup == 5) {
         return( get(name, envir=attr(lookup, "static.envir")) );
      }
    }
    lookup <- NULL;
  } else {
    lookup <- NULL;
  }

  for (memberAccessor in memberAccessorOrder) {
    if (memberAccessor == 1) {
      if (is.null(attr(this, "disableGetMethods"))) {
        firstChar <- substr(name, 1,1);
        # Do not try to access private fields using a get<Name>() method,
        # because such a functionality means that the user *expects* that
        # there actually is a field called '.<name>', which he or she
        # should not do since it is a private field!
        # Is it a private field?
        if (!identical(firstChar, ".")) {
          # Field names can not contain spaces...
          if (regexpr(" ", name) == -1) {
            # 1. Is there a get<Name>() method?
            capitalizedName <- name;
            substr(capitalizedName,1,1) <- toupper(firstChar);
            getMethodNames <- paste("get", capitalizedName, ".", class(this), sep="");
            for (getMethodName in getMethodNames) {
              if (exists(getMethodName, mode="function")) {
                ref <- this;
                attr(ref, "disableGetMethods") <- TRUE;
                method <- get(getMethodName, mode="function");
                # For caching purposes, if the field <name> is trying to be
                # accessed, we do not want to call get<name>() again! If <name>
                # is not a virtual field, the it has to be a real field, an
                # attribute, a static field etc. We do not know in advance,
                # but we know it is nothing we already tried, hence
                lookup <- memberAccessor;
                attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
                pos <- which(memberAccessorOrder == memberAccessor);
                attr(lookup, "possibilities") <- memberAccessorOrder[-(1:pos)];
                assign(cacheName, lookup, envir=envir);
                return(method(ref));
              }
            } # for (...)
          } # if ("no space in the name")
        } # if ("is private field")
      } # if (is.null(attr(this, "disableGetMethods")))
    } else if (memberAccessor == 2) {
  
      # 2. Is it a field?
      # For static method calls, e.g. Object$load, 'this' has no
      # environment assigned and therefore, for now, no static
      # fields.
      if (!is.null(envir) && exists(name, envir=envir, inherits=FALSE)) {
        lookup <- memberAccessor;
        attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
        assign(cacheName, lookup, envir=envir);
        envirStatic <- envir;
        return(get(name, envir=envirStatic));
      }
    } else if (memberAccessor == 3) {
  
      # 2. Is it an attribute field (slot)?
      if (is.element(name, names(attributes(this)))) {
        lookup <- memberAccessor;
        attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
        assign(cacheName, lookup, envir=envir);
        return(attr(this, name));
      }

    } else if (memberAccessor == 4) {
   
      # 3. Is it a method?
      methodNames <- paste(name, class(this), sep=".");
      for (methodName in methodNames) {
        if (exists(methodName, mode="function")) {
          method <- get(methodName, mode="function");
          lookup <- memberAccessor;
          attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
          attr(lookup, "method") <- method;
          assign(cacheName, lookup, envir=envir);
          return(function(...) method(this, ...));
        }
      }
    } else if (memberAccessor == 5) {
    
      # 4. Finally, if nothing is found, it might be that it is a static field
      static <- getStaticInstance(get(class(this)[1]));
      static.envir <- attr(static, ".env");
      # For static method calls, e.g. Object$load, 'this' has no
      # environment assigned and therefore, for now, no static
      # fields.
      if (!is.null(static.envir) && exists(name, envir=static.envir, inherits=FALSE)) {
        lookup <- memberAccessor;
        attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
        attr(lookup, "static.envir") <- static.envir;
        assign(cacheName, lookup, envir=envir);
        return(get(name, envir=static.envir));
      }
    }
  } # for (memberAccessor in memberAccessorOrder)

  # 5. Otherwise, return NULL.
  lookup <- -1;
  attr(lookup, "memberAccessorOrder") <- memberAccessorOrder;
  assign(cacheName, lookup, envir=envir);

  NULL;
}, createGeneric=FALSE) # $()





###########################################################################/**
# @RdocMethod $<-
# @aliasmethod [[<-
#
# @title "Makes the fields and methods of an Object assignable via the \$<- and the [[<- operator"
#
# \description{
#   Makes the fields and methods of an Object assignable via the \code{$<-}
#   operator. This method is never called explicitly, but through an indirect
#   usage of the \code{$<-} operator, e.g. \code{obj$name <- "foo"}.
#
#   1) This method will first search for a \code{set<Name>()} method, e.g. if
#   name has the value \code{"age"}, a \code{setAge()} will be looked for. 
#   If such a method exists it will be called with the Object as the first 
#   argument and \code{value} as the second, e.g. \code{setAge(this, value)}.
#
#   A \code{set<Name>()} is only looked for if \code{<name>} is a non-private
#   field. A private field is a name \emph{beginning} with a \code{.} (period). 
#   The rational for this naming convention is to be consistent
#   with how @see "base::ls" works, which will not list such members 
#   by default.
#   Moreover, excluding private fields for the search of a \code{set<Name>()}
#   will decrease the overhead for such field.
#
#   2) If no such method exists the \code{value} will be assigned to an
#      existing field named \code{name}, if such exists.
#
#   3) Otherwise, the value will be assigned to a static field,
#      if such exists.
#
#   4) In all other case, the value is assigned to a new field.
#
#   Because any \code{set<Name>()} is called first, it is possible to
#   \emph{encapsulate} (hide away) fields with certain names or to put
#   restrictions to what values can be assigned to them.
# }
#
# \usage{
#   \method{$}{Object}(this, name) <- value
#   \method{[[}{Object}(this, name) <- value
# }
#
# \arguments{
#   \item{name}{The name of the \code{set<Name>()} method or the name of
#     the field to be assigned the new value.}
#   \item{value}{The value to be assigned.}
# }
#
# \value{
#  Returns itself, i.e. \code{this}, as all \code{$<-} methods must do.
# }
#
# \examples{\dontrun{For a complete example see help(Object).}}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("$<-", "Object", function(this, name, value) {
  memberAccessorOrder <- attr(this, ".memberAccessorOrder");
  if (is.null(memberAccessorOrder))
    memberAccessorOrder <- c(1,2,3,4,5);

  for (memberAccessor in memberAccessorOrder) {
    if (memberAccessor == 1) {
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # Search for a set<Name>() method
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      if (is.null(attr(this, "disableSetMethods"))) {
        firstChar <- substr(name, 1,1);
        # Do not try to access private fields using a set<Name>() method,
        # because such a functionality means that the user *expects* that
        # there actually is a field called '.<name>', which he or she
        # should not do since it is a private field!
        # Is it a private field?
        if (!identical(firstChar, ".")) {
          # Field names can not contain spaces...
          if (regexpr(" ", name) == -1) {
            # 1. Is it a set<Name>() method?
            capitalizedName <- name;
            substr(capitalizedName,1,1) <- toupper(firstChar);
            setMethodNames <- paste("set", capitalizedName, ".", class(this), sep="");
            for (setMethodName in setMethodNames) {
              if (exists(setMethodName, mode="function")) {
                ref <- this;
                attr(ref, "disableSetMethods") <- TRUE;
                get(setMethodName, mode="function")(ref, value);
                return(invisible(this));
              }
            }
          } # if ("no space in the name")
        } # if ("is private field")
      } # if (is.null(attr(this, "disableSetMethods")))
    } else if (memberAccessor == 2) {
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # Search for a <name> field
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # 2. If there exists a field, assign the value to that field.
      envir <- attr(this, ".env");
      if (exists(name, envir=envir)) {
        assign(name, value, envir=envir);
        return(invisible(this));
      }
    } else if (memberAccessor == 3) {
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # Search for a <name> attribute.   /Should this be removed?
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # 3. If there exists an attribute field, assign the value to that field.
      if (is.element(name, names(attributes(this)))) {
        attr(this, name) <- value;
        return(invisible(this));
      }
    } else if (memberAccessor == 4) {
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # Search for a static <name> field
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # 4. If not, it might be that it is a static field
      static <- getStaticInstance(get(class(this)[1]));
      static.envir <- attr(static, ".env");
      # For static method calls, e.g. Object$load, 'this' has no
      # environment assigned and therefore, for now, no static
      # fields.
      if (!is.null(static.envir) && exists(name, envir=static.envir, inherits=FALSE)) {
        assign(name, value, envir=static.envir);
        return(invisible(this));
      }
    } else if (memberAccessor == 5) {
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # Create a new field <name>
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      # 5. Otherwise, assign the value to a new field.
      assign(name, value, envir=envir);
      return(invisible(this));
    }
  } # for (memberAccessor in memberAccessorOrder)

  invisible(this);
}, createGeneric=FALSE) # $<-()




setMethodS3("[[", "Object", function(this, name) {
  UseMethod("$");
#   "$"(this, name);
}, createGeneric=FALSE) # "[["()


setMethodS3("[[<-", "Object", function(this, name, value) {
  UseMethod("$<-");
#   "$<-"(this, name, value);
}, createGeneric=FALSE) # "[[<-"()




###########################################################################/**
# @RdocMethod isReferable
#
# @title "Checks if the object is referable or not"
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
#  Returns a @logical value, which by default is @TRUE for all @Object's.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("isReferable", "Object", function(this, ...) {
  TRUE;
}, private=TRUE) # isReferable() 




###########################################################################/**
# @RdocMethod novirtual
#
# @title "Returns a reference to the same Object with virtual fields turned off"
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
#  Returns an @Object.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setMethodS3("novirtual", "Object", function(this, ...) {
  attr(this, "disableGetMethods") <- TRUE;
  attr(this, "disableSetMethods") <- TRUE;
  this;
}, private=TRUE)





setMethodS3("callSuperMethodS3", "default", function(this, methodName, ..., nbrOfClassesAbove=1) {
  if (nbrOfClassesAbove < 0)
    throw("Argument 'nbrOfClassesAbove' is negative.");

  classes <- class(this);
  nbrOfClassesAbove <- min(nbrOfClassesAbove, length(classes))
  classes <- classes[-seq(length=nbrOfClassesAbove)];
  if (length(classes) == 0)
    methods <- methodName
  else
    methods <- c(paste(methodName, classes, sep="."), methodName);
  availableMethods <- c(methods(methodName), methodName);
  for (method in methods) {
    if (is.element(method, availableMethods)) {
      if (exists(method, mode="function")) {
        return(do.call(method, args=list(this, ...)))
      }
    }
  }
  throw("No applicable methods '", methodName, "' available among the superclasses: ", classes);
}, private=TRUE)



###########################################################################/**
# @RdocMethod newInstance
#
# @title "Creates a new instance of the same class as this object"
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
#   Returns a reference to an instance of @see "Object" or a subclass thereof.
# }
#
# @author
#
# \seealso{
#   @see "newInstance.Class".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("newInstance", "Object", function(this, ...) {
  # Creates a new instance of the same class
  clazz <- Class$forName(class(this)[1]);
  newInstance(clazz, ...);
}, private=TRUE)




###########################################################################/**
# @RdocMethod getEnvironment
#
# @title "Gets the environment of this object"
#
# \description{
#  @get "title".  
#  This is the environment where the members of the Object are stored.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @environment.
# }
#
# \examples{
#   ll(R.oo)
#   ll(envir=getEnvironment(R.oo))
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
setMethodS3("getEnvironment", "Object", function(fun, ...) {
  # To please R CMD check
  this <- fun;

  attr(this, ".env");
}, protected=TRUE)



###########################################################################/**
# @RdocMethod clearCache
#
# @title "Clear fields that are defined to have cached values"
#
# \description{
#  @get "title" by assigning @NULL to these fields.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns itself (invisible).
# }
#
# @author
#
# \seealso{
#   To clear the cached fields and run the garbage collector 
#   see @seemethod "gc".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("clearCache", "Object", function(this, ...) {
  for (field in this$...modifiers$cached) {
    assign(field, NULL, envir=attr(this, ".env"));
  }
  invisible(this);
});



###########################################################################/**
# @RdocMethod gc
#
# @title "Clear cached fields and calls the garbage collector"
#
# \description{
#  @get "title".  Cached fields are set to @NULL when cleared.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns what @see "base::gc" returns.
# }
#
# @examples "../incl/gc.Object.Rex"
#
# @author
#
# \seealso{
#   To clear the fields without calling the garbage collector, 
#   see @seemethod "clearCache".
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/###########################################################################
setMethodS3("gc", "Object", function(this, ...) {
  clearCache(this);
  gc();
});


###########################################################################/**
# @RdocMethod registerFinalizer
#
# @title "Registers a finalizer hook for the object"
#
# \description{
#  @get "title". 
#  The finalizer hook calls @seemethod "finalize" on the @see Object when
#  it is garbage collected.
#  This method is only intended to be called inside the constructor, if
#  at all.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns nothing.
# }
#
# @author
#
# \seealso{
#   Internally, @see "base::reg.finalizer" is used.
#   @seeclass
# }
#
# @keyword programming
# @keyword methods
#*/########################################################################### 
setMethodS3("registerFinalizer", "Object", function(this, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  localFinalizer <- function(env) {
    # Note, R.oo might be detached when this is called!  If so, reload
    # it, this will be our best chance to run the correct finalizer(),
    # which might be in a subclass of a different package that is still
    # loaded.
    isRooLoaded <- any(is.element(c("package:R.oo", "dummy:R.oo"), search()));
    if (isRooLoaded) {
      finalize(this);
    } else {
      suppressMessages({
        isRooLoaded <- require("R.oo", quietly=TRUE);
      })

      # For unknown reasons R.oo might not have been loaded.
      if (isRooLoaded) {
        finalize(this);
      } else {
        warning("Failed to temporarily reload 'R.oo' and finalize().");
      }

      # NOTE! Before detach R.oo again, we have to make sure the Object:s
      # allocated by R.oo itself (e.g. an Package object), will not reload
      # R.oo again when being garbage collected, resulting in an endless
      # loop.  We do this by creating a dummy finalize() function, detach
      # R.oo, call garbage collect to clean out all R.oo's objects, and
      # then remove the dummy finalize() function.
      # (1) Put a dummy finalize() function on the search path.
      attach(list(finalize = function(...) { }), name="dummy:R.oo",
                                                    warn.conflicts=FALSE);
      # (2) Detach R.oo
      detach("package:R.oo");
      # (3) Force all R.oo's Object:s to be finalize():ed.
      gc();
      # (4) Remove the dummy finalize():er again.
      detach("dummy:R.oo");
    }
  } # localFinalizer()


  # Note, we cannot register the finalizer here, because then
  # the reference variable 'this' will be of the wrong class,
  # that is, not the "final" class. However, we still do it so
  # that pure Object:s will be finalized too.  This will be
  # overridden if extend(<Object>) is called.
  reg.finalizer(attr(this, ".env"), localFinalizer, onexit=FALSE);

  invisible(this);
}, protected=TRUE) # registerFinalizer()
  

############################################################################
# HISTORY:
# 2011-03-11
# o Added explicit 'onexit=FALSE' to all reg.finalizer():s so it is clear
#   that they are not finalized when quitting R.
#   Why? Because in the future we may want to change this to onexit=TRUE,
#   but for now I don't fully understand the implications of doing so,
#   e.g. at what stage of the quitting process is the finalizer called
#   and what environments/objects/packages are available at that time?
# 2011-02-01
# o ROBUSTNESS: Now using 'inherits' (not 'inherit') in all calls to
#   get() and exists().
# 2009-10-30
# o ROBUSTIFICATION: Added argument 'safe=TRUE' to save() of Object.
# 2009-10-27
# o Removed a stray print() statement in attachLocally() for Object:s.
# 2009-07-07
# o Added Rdoc comments to registerFinalizer() and added it to the package.
# 2009-06-11
# o Added registerFinalizer() for Object.
# 2008-05-28
# o SPELL CORRECTION: Used '...instanciation' instead of 'instantiation'.
# 2008-03-25
# o BUG FIX: getInternalAddress() would return NA.  Now it uses the new
#   getName() for environments.
# 2008-01-10
# o Made the registered finalizer calling finalize() more error prone.
# 2007-08-29
# o BUG FIX: If Object:s are garbage collected after R.oo has been detached,
#   the error 'Error in function (env) : could not find function "finalize"'
#   would be thrown, because the registered finalizer hook tries to call
#   the generic function finalize() in R.oo.  We solve this by trying to
#   reload R.oo (and the unload it again).  Special care was taken so that
#   Object:s allocated by R.oo itself won't cause an endless loop.
# 2007-06-09
# o Added "declaration" of '.R.oo.getInternalAddress.pointer'.
# o Added "declaration" of 'saveLoadReference'.
# o Removed (incorrect) argument name 'list' from all substitute() calls.
# 2006-10-03
# o Updated as.character() to display hexadecimal addresses longer than
#   2^32 bytes.
# o BUG FIX: Since getInternalAddress() coerced the address to an integer,
#   addresses about 2^32 bytes = 4GB got address NA. Now 
#   getInternalAddress() and the default hashCode() return a double.
# 2006-08-11
# o Added support for specifying field modifiers in the name of the fields,
#   e.g. "cached:foo" is specifies that the field "foo" is a cached field.
#   Currently the only supported modifier is "cached".  The modifiers are
#   stored in the private list "...modifiers" in all created objects.
# o Added argument ...fields so that it is possible to specify fields also
#   via named list object.
# o Added clearCache() which assigns NULL to all fields that have modifier
#   "cached".  The gc() method is just a conveniency method for calling
#   clearCache() and global gc() afterwards.
# 2006-06-14
# o Added getEnvironment().
# 2006-05-15
# o Added private newInstance(), because it  is quite commonly used.
#   Might become protected one day.
# 2005-11-28
# o Added assertion code to example of static fields (?Object).
# 2005-11-23
# o BUG FIX: The "$<-" function goes through alternatives where to save
#   the new value, e.g. set<Name>(), <name> field, static <name> field etc.
#   When a "match" found and the value was assigned, it did not return
#   (except for the set<Name>() match), but instead contiued search for
#   the rest.  One effect of this was that the new value was always assign
#   to the static field too.  Thanks Edouard Duchesnay at Service 
#   Hospitalier Frédéric Joliot, Commissariat à l'Energie Atomique, France
#   for spotting this.
# o Minor typo corrections in the Rdoc.
# o Replaced all TABs with spaces in source code. Don't know where they 
#   came from.
# 2005-07-12
# o Added an Rdoc section on "Defining static fields" with an example
#   showing how to do it.
# 2005-06-14
# o Replaced all data.class(obj) with class(obj)[1].
# o Added attachLocally().
# 2005-06-01
# o Now load() asserts that the loaded Object inherits from the class that
#   the static object, which is used to call load(), is of.
# 2005-02-15
# o Added arguments '...' in order to match any generic functions.
# 2004-10-18
# o Typo in Rdoc example for equals().
# o Added more Rdoc comments.
# 2004-05-14
# o BUG FIX: getInternalAddress() for class Object was "too" hard coded
#   making it not work correctly on for instance Suse Linux. Assumed fixed
#   positions of the hexadecimal address of the environment. Now a gsub()
#   with a backreference is used. Should be more safe. 
# 2003-11-27
# o Added a reference to my DSC-2003 paper.
# 2003-10-28
# o BUG FIX: The way "$.Object" and "$<-.Object" was check if an attribute
#   with the same name as argument 'name' exists was not done correctly. 
#   Now it gets the list of names of the attributes and compares to that.
# 2003-10-20
# o Added argument 'compress=TRUE' to save() to make it more explicit that
#   compression is supported too. compression is supported by all R systems
#   since R v1.5.0. See ?capabilities.
# o BUG FIX: If save() was called with a connection the save() method would
#   still interpret it as a filename.
# 2003-07-07
# o From R v1.7.x extend() generated a warning saying that a vector was
#   compared to a scalar and only the first element was compared. Now
#   is.element() is used instead.
# 2003-05-14
# o Slight improvement in the generation of get<Name> and set<Name>, by 
#   using substr()<-.
# 2003-04-13
# o Made isReferable() and names() private too hide the from the help
#   indices.
# o Updated all Rdoc comments to make use of all new Rdoc features.
# 2003-03-23
# o data.class() is also a method of Object, but it is not needed to 
#   explicitly define it since it already works as expected.
# 2003-01-18
# o IMPROVEMENT: Slight speed improvement in "$()" and "$()<-" in testing
#   for virtual fields, i.e. get<name>() and set<name>(). 
# o BUG FIX: The caching of "$()" introduced a bug that made try(throw())
#   to loop forever. If was a copy'n'paste error and it works now. Found it
#   because when Rdoc was try to generate Rdoc files for Exception classes
#   it hanged. There were also other bugs related to the caching. Now the
#   package passes R CMD check.
# o Replaced all occurences of getClass() with data.class(). Will change
#   the use of getClass() in the future to return a Class object.
# 2003-01-17
# o Added a caching feature of "$"() to speed up access to members. The 
#   first time a member (field, virtual field, static field, method etc) is
#   accessed it is done by looking it up one at the time and taking the
#   first existing one (in a predefined order). The second time the same
#   field is accessed, the name is remembered and "$"() access the right
#   member directly.
# 2002-12-20
# o Made getInternalAddress() to return an (true) integer.
# 2002-12-15
# o Added finalize(). Note that reg.finalizer() has to be done in extend()
#   and not the constructor of Object. Also, did not know about 
#   reg.finalizer(), but is has apparantly been around since at least 
#   v1.5.1 (maybe longer).
# 2002-12-01
# o COMPATIBILITY FIX: Removed creation of getClass() for ANY. It won't work
#   with the methods package.
# o Now extend() removes duplicated class attributes.
# 2002-11-28
# o Added argument 'path=NULL' to save() and load().
# 2002-11-12
# o Added trial version of callSuperMethodS3().
# 2002-11-07
# o Now $() and $<-() also gets and sets attribute values too,
#   respectively.
# 2002-11-04
# o Added getInstanciationTime(), which returns the time point when the
#   object was created.
# 2002-10-24
# o BUG FIX: Change argument name className to ...className of extend() to
#   minimize risks for conflict, which gives really hard to track bugs.
# 2002-10-23
# o BUG FIX: clone() was not doing clones in all situations. See comments
#   in the code section for explanations.
# o Added hasField(). Maybe it should also include virtual and static 
#   fields?!
# 2002-10-22
# o BUG FIX: The exists() call in "$<-"() was by misstake (type) like
#   exists(name, value, ...) and not exists(name, ...).
# o Added isField to "$" and "$<-" because if the name contains a 
#   white space, we know that it can not be a method, it must be a field.
# o BUG FIX: Have to use UseMethod() in "[[" and "[[<-". For some reason
#   does for instace get("$")(this, name) not work.
# 2002-10-21
# o BUG FIX: getInternalAddress() did not remove temporary "connection"
#   variable because they are save in .GlobalEnv and not the local 
#   environment.
# o Added argument private=FALSE to attach().
# 2002-10-18
# o Wow, now static fields are supported! ...release party this weekend ;)
# o Added getStaticInstance().
# 2002-10-15
# o Note that the code in Object.R does NOT rely on the fact the a method
#   or class/constructor has been defined using setMethodS3() or
#   setCl assS3(). These methods are just used for convinience and to enforce
#   the naming conventions.
# o Created from R.oo Object.R and ideas as described on
#    http://www.maths.lth.se/help/R/
############################################################################
