%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Package}
\docType{class}
\alias{Package}


\title{The Package class provides methods for accessing package information}

\description{
 Package:  R.oo \cr
\bold{Class Package}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Package}\cr

\bold{Directly known subclasses:}\cr
\cr

public class \bold{Package}\cr
extends \link[R.oo]{Object}\cr



 Creates a Package that can be thrown and caught. The \code{Package}
 class is the root class of all other \code{Package} classes.
}

\usage{
Package(name=NULL)
}

\arguments{
  \item{name}{Name of the package.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{as.character} \tab  -\cr
 \tab \code{getAuthor} \tab  -\cr
 \tab \code{getBundle} \tab  -\cr
 \tab \code{getBundlePackages} \tab  -\cr
 \tab \code{getChangeLog} \tab  -\cr
 \tab \code{getClasses} \tab  -\cr
 \tab \code{getContents} \tab  -\cr
 \tab \code{getContribUrl} \tab  -\cr
 \tab \code{getDataPath} \tab  -\cr
 \tab \code{getDate} \tab  -\cr
 \tab \code{getDescription} \tab  -\cr
 \tab \code{getDescriptionFile} \tab  -\cr
 \tab \code{getDevelUrl} \tab  -\cr
 \tab \code{getDocPath} \tab  -\cr
 \tab \code{getEnvironment} \tab  -\cr
 \tab \code{getExamplePath} \tab  -\cr
 \tab \code{getHistory} \tab  -\cr
 \tab \code{getHowToCite} \tab  -\cr
 \tab \code{getLicense} \tab  -\cr
 \tab \code{getMaintainer} \tab  -\cr
 \tab \code{getName} \tab  -\cr
 \tab \code{getNews} \tab  -\cr
 \tab \code{getPath} \tab  -\cr
 \tab \code{getPosition} \tab  -\cr
 \tab \code{getTitle} \tab  -\cr
 \tab \code{getUrl} \tab  -\cr
 \tab \code{getVersion} \tab  -\cr
 \tab \code{isLoaded} \tab  -\cr
 \tab \code{isOlderThan} \tab  -\cr
 \tab \code{ll} \tab  -\cr
 \tab \code{load} \tab  -\cr
 \tab \code{showChangeLog} \tab  -\cr
 \tab \code{showContents} \tab  -\cr
 \tab \code{showDescriptionFile} \tab  -\cr
 \tab \code{showHistory} \tab  -\cr
 \tab \code{showHowToCite} \tab  -\cr
 \tab \code{showNews} \tab  -\cr
 \tab \code{startupMessage} \tab  -\cr
 \tab \code{unload} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, names, objectSize, print, save


}

\examples{\dontrun{# By defining .onAttach() as follows in zzz.R for a package, an
# instance of class Package with the same name as the package will
# be made available on the search path. More over, the code below
# will also inform the user that the package has been loaded:
#
#  > library(R.oo)
#  R.oo v0.52 (2003/04/13) was successfully loaded.
#
.onAttach <- function(libname, pkgname) {
  pkg <- Package(pkgname)
  assign(pkgname, pkg, pos=getPosition(pkg))
  cat(getName(pkg), " v", getVersion(pkg), " (", getDate(pkg), ")",
    " was successfully loaded.\n", sep="")
}

# The Package class works for any packages, loaded or not.

# Some information about the base package
pkg <- Package("base")
print(pkg)
# [1] "Package: base v1.6.2 (NA) is loaded (pos=5). The official webpage
#      is NA and the maintainer is R Core Team <R-core@r-project.org>. The
#      package is installed in c:/PROGRA~1/R/rw1062/library/base/."
print(list.files(Package("base")$dataPath))

# Some information about the R.oo package
print(R.oo::R.oo)
# [1] "Package: R.oo v0.52 (2003/04/13) is loaded (pos=2). The official
#      webpage is http://www.braju.com/R/ and the maintainer is Henrik
#      Bengtsson <henrikb@braju.com>. The package is installed in
#      c:/PROGRA~1/R/rw1062/library/R.oo/."
}}

\author{Henrik Bengtsson}

\keyword{programming}
\keyword{methods}
\keyword{classes}
