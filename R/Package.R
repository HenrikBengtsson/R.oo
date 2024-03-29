##########################################################################/**
# @RdocClass Package
#
# @title "The Package class provides methods for accessing package information"
#
# \description{
#  @classhierarchy
#
#  Creates a Package that can be thrown and caught. The \code{Package}
#  class is the root class of all other \code{Package} classes.
# }
#
# @synopsis
#
# \arguments{
#   \item{name}{Name of the package.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \examples{\dontrun{@include "../incl/Package.Rex"}}
#
# @author
#
# \keyword{programming}
# \keyword{methods}
#*/###########################################################################
setConstructorS3("Package", function(name=NULL) {
  libPath <- NULL
  version <- NULL

  if (!is.null(name)) {
    tryCatch({
      package <- packageDescription(name)
      version <- as.character(package$Version)
      libPath <- dirname(system.file(package=name))
    }, warning = function(warn) {
      # installed.packages() may be slow()!
      packages <- as.data.frame(installed.packages())
      idxs <- (packages$Package == name)
      if(!any(idxs)) {
        throw("Package is not installed: ", name)
      }
      packages <- packages[idxs,,drop=FALSE]
      libPath <<- as.character(packages$LibPath)
      if (length(libPath) > 1) {
        warning(paste("Multiple installations of package '", name, "' was found. Using the first. Paths to all installations: ", paste(libPath, collapse=", "), sep=""))
        libPath <<- libPath[1]
      }
      libPath <<- gsub("/$", "", libPath)
      version <<- as.character(packages$Version[1])
    })
  }

  extend(Object(), "Package",
    .name = name,
    .version = version,
    .libPath = libPath,
    .inBundle = NULL,
    .bundlePackages = NULL
  )
})


#########################################################################/**
# @RdocMethod as.character
#
# @title "Gets a string representation of this package"
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
#   Returns a @character string.
# }
#
# \examples{print(R.oo)}
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("as.character", "Package", function(x, ...) {
  # To please R CMD check
  this <- x

  s <- paste(class(this)[1L], ": ", getName(this), " v", getVersion(this), sep="")
  date <- getDate(this)
  if (!is.na(date))
    s <- paste(s, " (", getDate(this), ")", sep="")
  pos <- getPosition(this)
  if (pos != -1)
    s <- paste(s, " is loaded (pos=", pos, ").", sep="")
  else
    s <- paste(s, ".")

  s <- paste(s, "  Title: ", getTitle(this), ".", sep="")

  # Do not call getBundle() here; it can be very slow!
#  bundle <- getBundle(this)
#  if (!is.null(bundle))
#    s <- paste(s, "  It is part of bundle ", bundle, " (", paste(getBundlePackages(this), collapse=", "), ").", sep="")

  url <- getUrl(this)
  if (!is.null(url))
    s <- paste(s, "  The official webpage is ", url, " and the", sep="")
  else
    s <- paste(s, "  The", sep="")
  s <- paste(s, " maintainer is ", getMaintainer(this), ".", sep="")

  s <- paste(s, "  The package is installed in ", getPath(this), ".", sep="")

  license <- getLicense(this)
  if (!is.null(license))
    s <- paste(s, "  License: ", license, ".", sep="")

  s <- paste(s, "  Description: ", getDescription(this), sep="")

  s <- paste(s, "  Type showNews(", getName(this),
       ") for package history, and ?", getName(this), " for help.", sep="")

  s
})


#########################################################################/**
# @RdocMethod getName
#
# @title "Gets the name of this package"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getName", "Package", function(this, ...) {
  this$.name
})


#########################################################################/**
# @RdocMethod getContents
#
# @title "Gets the contents of this package"
#
# \description{
#   @get "title", i.e. the parsed \code{CONTENTS} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @data.frame.
# }
#
# @author
#
# \seealso{
#   @see "base::dcf".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getContents", "Package", function(this, fields=NULL, ...) {
  pathname <- system.file("CONTENTS", package=this$.name)
  if (!file.exists(pathname))
    throw("CONTENTS file missing for package '", this$.name, "': ", pathname)

  # DCF format == Debian Control File format
  contents <- read.dcf(file=pathname, fields=fields)

  contents <- as.data.frame(contents)
  contents
}, protected=TRUE)


#########################################################################/**
# @RdocMethod showContents
#
# @title "Show the CONTENTS file of this package"
#
# \description{
#   @get "title".
#   If the \code{CONTENTS} file does not exist, an exception is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("showContents", "Package", function(this, ...) {
  path <- getPath(this)
  files <- list.files(path=path)
  file <- files[tolower(files) == "contents"]
  if (length(file) == 0)
    throw("CONTENTS file for package ", getName(this), " does not exist.")

  pathname <- file.path(path, file)
  file.show(pathname, ...)
}, protected=TRUE)



#########################################################################/**
# @RdocMethod getDescriptionFile
#
# @title "Gets the description file of this package"
#
# \description{
#   @get "title", i.e. the parsed \code{DESCRIPTION} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{fields}{A @vector of @character strings of fields to be returned.
#     If @NULL, all available fields are returned.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns named @vector of @character strings.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDescriptionFile", "Package", function(this, fields=NULL, ...) {
  unlist(packageDescription(this$.name, fields=fields))
}, protected=TRUE)



#########################################################################/**
# @RdocMethod showDescriptionFile
#
# @title "Show the DESCRIPTION file of this package"
#
# \description{
#   @get "title".
#   If the \code{DESCRIPTION} file does not exist, an exception is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("showDescriptionFile", "Package", function(this, ...) {
  path <- getPath(this)
  files <- list.files(path=path)
  file <- files[tolower(files) == "description"]
  if (length(file) == 0)
    throw("DESCRIPTION file for package ", getName(this), " does not exist.")

  pathname <- file.path(path, file)
  file.show(pathname, ...)
})




#########################################################################/**
# @RdocMethod getPath
#
# @title "Gets the library (system) path to this package"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getPath", "Package", function(this, ...) {
  file.path(this$.libPath, getName(this), "")
})



#########################################################################/**
# @RdocMethod getVersion
#
# @title "Gets the version of this package"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
#   @seemethod "isOlderThan".
# }
#*/#########################################################################
setMethodS3("getVersion", "Package", function(this, ...) {
  this$.version
})


#########################################################################/**
# @RdocMethod isOlderThan
#
# @title "Checks if the package is older than a given version"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{version}{A @character string specifying a version to compare with.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the version of the package is less than the
#   specified version.
# }
#
# @author
#
# \seealso{
#   @seeclass
#   @seemethod "getVersion".
# }
#*/#########################################################################
setMethodS3("isOlderThan", "Package", function(this, version, ...) {
  res <- compareVersion(getVersion(this), version)
  (res < 0)
})



#########################################################################/**
# @RdocMethod getDataPath
#
# @title "Gets the path to the data (data/) directory of this package"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDataPath", "Package", function(this, ...) {
  file.path(this$.libPath, getName(this), "data", "")
})



#########################################################################/**
# @RdocMethod getDocPath
#
# @title "Gets the path to the accompanying documentation (doc/) directory of this package"
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
#   Returns a @character string.
# }
#
# \examples{
#   print(list.files(getDocPath(R.oo)))   # explicit call, or
#   print(list.files(R.oo$docPath))       # as a virtual field
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDocPath", "Package", function(this, ...) {
  file.path(this$.libPath, getName(this), "doc", "")
})



#########################################################################/**
# @RdocMethod getExamplePath
#
# @title "Gets the path to the example (R-ex/) directory of this package"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getExamplePath", "Package", function(this, ...) {
  file.path(this$.libPath, getName(this), "R-ex", "")
})



#########################################################################/**
# @RdocMethod getDate
#
# @title "Gets the date when package was build"
#
# \description{
#   Checks if the package is loaded onto the search path or not.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   @TRUE if the packages has been loaded, otherwise @FALSE.
# }
#
# \examples{
#   pkg <- Package("base")
#   print(isLoaded(pkg))       # TRUE
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDate", "Package", function(this, ...) {
  date <- getDescriptionFile(this, fields=c("Date", "Date/Publication"))
  date <- unname(unlist(date, use.names=FALSE))
  date <- date[!is.na(date)]
  date[1]
})


#########################################################################/**
# @RdocMethod getDescription
#
# @title "Gets the description of the package"
#
# \description{
#   @get "title". Not to be mixed up with @seemethod "getDescriptionFile".
# }
#
# @synopsis
#
# \arguments{
#   \item{replaceNewlines}{If a @character string, all newline characters
#     are replaced with this string. Otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   A @character string.
# }
#
# \examples{
#   pkg <- Package("base")
#   print(getDescription(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDescription", "Package", function(this, replaceNewlines=" ", ...) {
  value <- getDescriptionFile(this, fields="Description")
  if (is.character(replaceNewlines))
    value <- gsub("[\r\n]", replaceNewlines, value)
  value
})



#########################################################################/**
# @RdocMethod getPosition
#
# @title "Gets the search path position of the package"
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
#   An @integer.
# }
#
# \examples{
#   pkg <- Package("base")
#   print(getPosition(pkg))
# }
#
# @author
#
# \seealso{
#   @seemethod "getEnvironment".
#   @see "base::search".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getPosition", "Package", function(this, ...) {
  queries <- paste(sep="", "^package:", getName(this), "$")
  res <- c()
  for (query in queries) {
    pos <- which(regexpr(query, search()) != -1)
    if (length(pos) == 0) pos <- -1
    res <- c(res, pos)
  }
  res
})



#########################################################################/**
# @RdocMethod getEnvironment
#
# @title "Gets the environment of a loaded package"
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
#   Returns a @environment, or @NULL if the package was not loaded.
# }
#
# @author
#
# \seealso{
#   @seemethod "getPosition".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getEnvironment", "Package", function(this, ...) {
  pos.to.env(getPosition(this))
})



#########################################################################/**
# @RdocMethod isLoaded
#
# @title "Checks if the package is installed on the search path or not"
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
#   @TRUE if the packages has been loaded, otherwise @FALSE.
# }
#
# \examples{
#   pkg <- Package("base")
#   print(isLoaded(pkg))       # TRUE
# }
#
# @author
#
# \seealso{
#   @seemethod "load".
#   @see "base::search".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("isLoaded", "Package", function(this, ...) {
  (getPosition(this) != -1)
})



#########################################################################/**
# @RdocMethod load
#
# @title "Loads a package"
#
# \description{
#   @get "title". This is an alternative way to use \code{library()} to
#   load a package.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   @TRUE if the packages is loaded, otherwise @FALSE.
# }
#
# \examples{
#   pkg <- Package("base")
#   print(load(pkg))
# }
#
# @author
#
# \seealso{
#   @seemethod "unload".
#   @seemethod "isLoaded".
#   @see "base::search".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("load", "Package", function(this, ...) {
  .library <- library  # To please R CMD check
  .library(package=getName(this), character.only=TRUE)
  isLoaded(this)
})



#########################################################################/**
# @RdocMethod unload
#
# @title "Unloads a package"
#
# \description{
#   @get "title". This is an alternative way to use \code{detach()} to
#   unload a package.
#   If the package is not loaded, it will quietly return.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{\dontrun{
# @include "../incl/Package.unload.Rex"
# }}
#
# @author
#
# \seealso{
#   @seemethod "load".
#   @seemethod "isLoaded".
#   @see "base::search".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("unload", "Package", function(this, ...) {
  name <- paste("package:", getName(this), sep="")
  pos <- which(name == search())
  if (length(pos) == 1L) detach(pos=pos)
})




#########################################################################/**
# @RdocMethod ll
#
# @title "Generates a list of informative properties of all members of the package"
#
# \description{
#   @get "title".
#
#   If the package is not loaded, it will be loaded, the members will be
#   retrieved and then the package will be unloaded again.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @data.frame.
# }
#
# \details{
#   Note the difference from the default definition of \code{ll()} as
#   inherited from the @Object class. Here \code{ll()} has been
#   redefined to list the members of the package, i.e. the members in
#   the environment on search path that belongs to the package, whereas
#   the original usage was to list the members of the Object. However,
#   since the internal members of Package object is not of interest we
#   decided on this definition instead.
# }
#
# \examples{
#   \dontrun{ll(R.oo)}
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("ll", "Package", function(this, envir=pos.to.env(getPosition(this)), ...) {
  isLoaded <- isLoaded(this)
  if (!isLoaded)
    load(this)
  ll <- ll(..., envir=envir)
  if (!isLoaded)
    unload(this)
  ll
})



#########################################################################/**
# @RdocMethod getClasses
#
# @title "Gets all classes of a package"
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
#   Returns a @character @vector of class names.
# }
#
# \examples{
#   pkg <- Package("R.oo")
#   print(getClasses(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getClasses", "Package", function(this, ...) {
  pkgname <- getName(this)
  ns <- getNamespace(pkgname)
  names <- ls(envir=ns, all.names=FALSE)
  classes <- c()
  for (name in names) {
    object <- .getFunctionByName(name, where=c("ns", "search"), envir=ns, class="Class", mustExist=FALSE)
    if (inherits(object, "Class")) classes <- c(classes, name)
  }
  classes
}, protected=TRUE, dontWarn="base")



#########################################################################/**
# @RdocMethod getUrl
#
# @title "Gets the URL of this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
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
#   pkg <- Package("R.oo")
#   print(getUrl(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getUrl", "Package", function(this, ...) {
  getDescriptionFile(this, fields="URL")
})




#########################################################################/**
# @RdocMethod getContribUrl
#
# @title "Gets the URL(s) from where this package can be installed"
#
# \description{
#   @get "title" by first looking for comma or semicolon separated URLs
#   at the optional \code{ContribURL} line in the \code{DESCRIPTION} file
#   of the package. If no such line exists, \code{getUrl()} is used.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a vector of @character strings.
# }
#
# \examples{
#   pkg <- Package("R.oo")
#   print(getContribUrl(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getContribUrl", "Package", function(this, ...) {
  urls <- getDescriptionFile(this, fields="ContribURL")
  if (is.null(urls) || is.na(urls)) {
    urls <- getDescriptionFile(this, fields="URL")
    if (is.null(urls) || is.na(urls)) {
      return(NA_character_)
    }
  }
  urls <- strsplit(urls, "[,;]")[[1]]
  urls <- gsub("^[ \t]*", "", urls)
  urls <- gsub("[ \t]*$", "", urls)
  urls
}, private=TRUE)



#########################################################################/**
# @RdocMethod getDevelUrl
#
# @title "Gets the URL(s) from where the developers version of this package can be installed"
#
# \description{
#   @get "title" by looking for comma or semicolon separated URLs
#   at the optional \code{DevelURL} line in the \code{DESCRIPTION} file
#   of the package.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a vector of @character strings.
# }
#
# \examples{
#   pkg <- Package("R.oo")
#   print(getDevelUrl(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getDevelUrl", "Package", function(this, ...) {
  urls <- getDescriptionFile(this, fields="DevelURL")
  if (is.null(urls) || is.na(urls)) {
    return(NA_character_)
  }
  urls <- strsplit(urls, "[,;]")[[1]]
  urls <- gsub("^[ \t]*", "", urls)
  urls <- gsub("[ \t]*$", "", urls)
  urls
}, private=TRUE)



#########################################################################/**
# @RdocMethod getMaintainer
#
# @title "Gets the Maintainer of this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{as}{A @character string specifying the return format.}
#   \item{include}{A @character @vector  specifying which person fields
#     to include if returning a @character string.}
#   \item{...}{Optional arguments passed to @see "utils::format.person".}
# }
#
# \value{
#   Returns a @character string or a @see "utils::person" object.
# }
#
# \examples{
#   pkg <- Package("R.oo")
#   print(getMaintainer(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getMaintainer", "Package", function(this, as=c("character", "person"), include=c("given", "family"), ...) {
  # Argument 'as':
  as <- match.arg(as)

  persons <- getDescriptionFile(this, fields=c("Authors@R", "Maintainer"))
  persons <- persons[!is.na(persons)]
  if (length(persons) == 0L) {
    return(NA_character_)
  }

  persons <- persons[1L]
  key <- names(persons)[1L]

  # Parse?
  if (key == "Authors@R") {
    personsP <- eval(parse(text=persons))
    # Find creators
    isCreator <- sapply(personsP, FUN=function(p) is.element("cre", p$role))
    if (any(isCreator)) {
       personsP <- personsP[isCreator]
    }
    persons <- format(personsP, include=include, ...)
  } else {
    personsP <- NULL
  }

  if (as == "character") {
    return(persons)
  }

  if (is.null(personsP)) {
    personsP <- as.person(persons)
  }

  personsP
})



#########################################################################/**
# @RdocMethod getAuthor
#
# @title "Gets the Author of this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{as}{A @character string specifying the return format.}
#   \item{include}{A @character @vector  specifying which person fields
#     to include if returning a @character string.}
#   \item{...}{Optional arguments passed to @see "utils::format.person".}
# }
#
# \value{
#   Returns a @character string or a @see "utils::person" object.
# }
#
# \examples{
#   pkg <- Package("R.oo")
#   print(getAuthor(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getAuthor", "Package", function(this, as=c("character", "person"), include=c("given", "family"), ...) {
  # Argument 'as':
  as <- match.arg(as)

  persons <- getDescriptionFile(this, fields=c("Authors@R", "Author"))
  persons <- persons[!is.na(persons)]
  if (length(persons) == 0L) {
    return(NA_character_)
  }
  persons <- persons[1L]
  key <- names(persons)[1L]

  # Parse?
  if (key == "Authors@R") {
    personsP <- eval(parse(text=persons))
    persons <- format(personsP, include=include, ...)
  } else {
    personsP <- NULL
  }

  if (as == "character") {
    return(persons)
  }

  if (is.null(personsP)) {
    personsP <- as.person(persons)
  }

  personsP
})



#########################################################################/**
# @RdocMethod getTitle
#
# @title "Gets the Title of this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
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
#   pkg <- Package("R.oo")
#   print(getTitle(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getTitle", "Package", function(this, ...) {
  getDescriptionFile(this, fields="Title")
})



#########################################################################/**
# @RdocMethod getLicense
#
# @title "Gets the License of this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
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
#   pkg <- Package("R.oo")
#   print(getLicense(pkg))
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getLicense", "Package", function(this, ...) {
  getDescriptionFile(this, fields="License")
})



#########################################################################/**
# @RdocMethod getBundle
#
# @title "Gets the Bundle that this package might belong to"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   If the package is part of a bundle, the name of the bundle is returned.
#   Otherwise, @NULL is returned.
# }
#
# \details{
#  The first call to this method is normally slow because all installed
#  packages are scanned. The result of this first call is cached and
#  used as the return value for all subsequent calls, which are then much
#  faster.
# }
#
# \examples{\donttest{
#   pkg <- Package("R.oo")
#   print(getBundle(pkg))
# }}
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getBundle", "Package", function(this, ...) {
  if (is.null(this$.inBundle)) {
    # installed.packages() may be slow()!
    pkgs <- installed.packages()
    if (is.element("Bundle", colnames(pkgs))) {
      names <- pkgs[,"Package"]
      bundle <- pkgs[names == getName(this), "Bundle"]
    } else {
      bundle <- NA
    }
    this$.inBundle <- bundle
  }
  if (is.na(this$.inBundle)) {
    NULL
  } else {
    this$.inBundle
  }
}, protected=TRUE)


#########################################################################/**
# @RdocMethod getBundlePackages
#
# @title "Gets the names of the other packages that is in the same bundle as this package"
#
# \description{
#   @get "title" as specified by the \code{DESCRIPTION} file.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character @vector of package names or @NULL.
# }
#
# \details{
#  The first call to this method is normally slow because all installed
#  packages are scanned. The result of this first call is cached and
#  used as the return value for all subsequent calls, which are then much
#  faster.
# }
#
# \examples{\donttest{
#   pkg <- Package("R.oo")
#   print(getBundle(pkg))
# }}
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getBundlePackages", "Package", function(this, ...) {
  bundle <- getBundle(this)
  if (is.null(bundle))
    return(NULL)

  if (is.null(this$.bundlePackages)) {
    pkgs <- installed.packages()
    bundles <- pkgs[,"Bundle"]
    incl <- !is.na(bundles) & (bundles == bundle)
    this$.bundlePackages <- pkgs[incl, "Package"]
  }

  this$.bundlePackages
}, protected=TRUE)




#########################################################################/**
# @RdocMethod getChangeLog
# @aliasmethod getNews
# @aliasmethod getHistory
#
# @title "Gets the change log of this package"
#
# \description{
#   @get "title", that is, (by default) the \code{NEWS} (then the
#   \code{HISTORY} and \code{ChangeLog}) file, which should is expected to
#   be located in the root directory of the package,
#   i.e. @seemethod "getPath".
# }
#
# @synopsis
#
# \arguments{
#   \item{filenames}{A @character @vector of (non-case sensitive) filenames
#     to be searched for.}
#   \item{newline}{The @character string to collapse lines in the file.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns the complete contents of the change log file as a
#   @character string. If not found, @NULL is returned.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getChangeLog", "Package", function(this, filenames=c("NEWS", "HISTORY", "ChangeLog"), newline="\n", ...) {
  # Argument 'filenames':
  filenames <- as.character(filenames)
  filenames <- tolower(filenames)

  path <- getPath(this)
  files <- list.files(path=path)

  # Find change log files
  idx <- match(filenames, tolower(files))
  idx <- idx[!is.na(idx)]
  files <- files[idx]

  if (length(files) == 0)
    return(NULL)

  # First file
  file <- files[1]

  pathname <- file.path(path, file)
  lines <- readLines(pathname)
  lines <- paste(lines, collapse=newline)

  lines
})


setMethodS3("getHistory", "Package", function(this, ...) {
  getChangeLog(this, ...)
})

setMethodS3("getNews", "Package", function(this, ...) {
  getChangeLog(this, ...)
})



#########################################################################/**
# @RdocMethod showChangeLog
# @aliasmethod showHistory
# @aliasmethod showNews
#
# @title "Show the change log of this package"
#
# \description{
#   @get "title".
#   If the change log file does not exist, an exception is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{filenames}{A @character @vector of (non-case sensitive) filenames
#     to be searched for.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seemethod "getChangeLog".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("showChangeLog", "Package", function(this, filenames=c("NEWS", "NEWS.md", "HISTORY", "ChangeLog"), ...) {
  # Argument 'filenames':
  filenames <- as.character(filenames)
  filenames <- tolower(filenames)

  path <- getPath(this)
  files <- list.files(path=path)

  # Find change log files
  idx <- match(filenames, tolower(files))
  idx <- idx[!is.na(idx)]
  files <- files[idx]

  if (length(files) == 0)
    return(NULL)

  # First file
  file <- files[1]

  if (length(file) == 0)
    throw("NEWS/NEWS.md/HISTORY/ChangeLog file for package ", getName(this), " does not exist.")

  pathname <- file.path(path, file)
  file.show(pathname, ...)
})


setMethodS3("showHistory", "Package", function(this, ...) {
  showChangeLog(this, ...)
})

setMethodS3("showNews", "Package", function(this, ...) {
  showChangeLog(this, ...)
})






#########################################################################/**
# @RdocMethod getHowToCite
#
# @title "Gets the citation of this package"
#
# \description{
#   @get "title".
#   If text file \code{HOWTOCITE} exists in package root directory,
#   then its contents is retrieved, otherwise @see "utils::citation"
#   for the package is retrieved.
# }
#
# @synopsis
#
# \arguments{
#   \item{newline}{The @character string to collapse lines in the file.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getHowToCite", "Package", function(this, newline="\n", ...) {
  if (file.exists(pathname <- file.path(getPath(this), "HOWTOCITE"))) {
    lines <- readLines(pathname)
  } else {
    db <- citation(package=getName(this))
    lines <- format(db, style="textVersion")
  }
  lines <- paste(lines, collapse=newline)
  lines
}, protected=TRUE)



#########################################################################/**
# @RdocMethod showHowToCite
#
# @title "Show the HOWTOCITE file of this package"
#
# \description{
#   @get "title". See also @seemethod "getHowToCite".
#   If the \code{HOWTOCITE} file does not exist, an exception is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("showHowToCite", "Package", function(this, ...) {
  path <- getPath(this)
  files <- list.files(path=path)
  file <- files[tolower(files) == "howtocite"]
  if (length(file) == 0)
    throw("HOWTOCITE file for package ", getName(this), " does not exist.")

  pathname <- file.path(path, file)
  file.show(pathname)
}, protected=TRUE)



#########################################################################/**
# @RdocMethod startupMessage
#
# @title "Generates a 'package successfully loaded' package startup message"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Additional arguments passed to
#              @see "R.methodsS3::pkgStartupMessage".}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("startupMessage", "Package", function(this, ...) {
  date <- getDate(this)
  if (is.na(date)) {
    msg <- sprintf("%s v%s successfully loaded. See ?%s for help.",
              getName(this), getVersion(this), getName(this))
  } else {
    msg <- sprintf("%s v%s (%s) successfully loaded. See ?%s for help.",
              getName(this), getVersion(this), date, getName(this))
  }
  pkgStartupMessage(msg, ...)
}, protected=TRUE)
