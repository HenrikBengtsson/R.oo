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
 \tab \code{\link[R.oo:as.character.Package]{as.character}} \tab Gets a string representation of this package.\cr
 \tab \code{\link[R.oo:getAuthor.Package]{getAuthor}} \tab Gets the Author of this package.\cr
 \tab \code{\link[R.oo:getBundle.Package]{getBundle}} \tab Gets the Bundle that this package might belong to.\cr
 \tab \code{\link[R.oo:getBundlePackages.Package]{getBundlePackages}} \tab Gets the names of the other packages that is in the same bundle as this package.\cr
 \tab \code{\link[R.oo:getChangeLog.Package]{getChangeLog}} \tab Gets the change log of this package.\cr
 \tab \code{\link[R.oo:getClasses.Package]{getClasses}} \tab Gets all classes of a package.\cr
 \tab \code{\link[R.oo:getContents.Package]{getContents}} \tab Gets the contents of this package.\cr
 \tab \code{\link[R.oo:getContribUrl.Package]{getContribUrl}} \tab Gets the URL(s) from where this package can be installed.\cr
 \tab \code{\link[R.oo:getDataPath.Package]{getDataPath}} \tab Gets the path to the data (data/) directory of this package.\cr
 \tab \code{\link[R.oo:getDate.Package]{getDate}} \tab Gets the date when package was build.\cr
 \tab \code{\link[R.oo:getDescription.Package]{getDescription}} \tab Gets the description of the package.\cr
 \tab \code{\link[R.oo:getDescriptionFile.Package]{getDescriptionFile}} \tab Gets the description file of this package.\cr
 \tab \code{\link[R.oo:getDevelUrl.Package]{getDevelUrl}} \tab Gets the URL(s) from where the developers version of this package can be installed.\cr
 \tab \code{\link[R.oo:getDocPath.Package]{getDocPath}} \tab Gets the path to the accompanying documentation (doc/) directory of this package.\cr
 \tab \code{\link[R.oo:getEnvironment.Package]{getEnvironment}} \tab Gets the environment of a loaded package.\cr
 \tab \code{\link[R.oo:getExamplePath.Package]{getExamplePath}} \tab Gets the path to the example (R-ex/) directory of this package.\cr
 \tab \code{getHistory} \tab  -\cr
 \tab \code{\link[R.oo:getHowToCite.Package]{getHowToCite}} \tab Gets the citation of this package.\cr
 \tab \code{\link[R.oo:getLicense.Package]{getLicense}} \tab Gets the License of this package.\cr
 \tab \code{\link[R.oo:getMaintainer.Package]{getMaintainer}} \tab Gets the Maintainer of this package.\cr
 \tab \code{\link[R.oo:getName.Package]{getName}} \tab Gets the name of this package.\cr
 \tab \code{getNews} \tab  -\cr
 \tab \code{\link[R.oo:getPath.Package]{getPath}} \tab Gets the library (system) path to this package.\cr
 \tab \code{\link[R.oo:getPosition.Package]{getPosition}} \tab Gets the search path position of the package.\cr
 \tab \code{\link[R.oo:getTitle.Package]{getTitle}} \tab Gets the Title of this package.\cr
 \tab \code{\link[R.oo:getUrl.Package]{getUrl}} \tab Gets the URL of this package.\cr
 \tab \code{\link[R.oo:getVersion.Package]{getVersion}} \tab Gets the version of this package.\cr
 \tab \code{\link[R.oo:isLoaded.Package]{isLoaded}} \tab Checks if the package is installed on the search path or not.\cr
 \tab \code{\link[R.oo:isOlderThan.Package]{isOlderThan}} \tab Checks if the package is older than a given version.\cr
 \tab \code{\link[R.oo:ll.Package]{ll}} \tab Generates a list of informative properties of all members of the package.\cr
 \tab \code{\link[R.oo:load.Package]{load}} \tab Loads a package.\cr
 \tab \code{\link[R.oo:showChangeLog.Package]{showChangeLog}} \tab Show the change log of this package.\cr
 \tab \code{\link[R.oo:showContents.Package]{showContents}} \tab Show the CONTENTS file of this package.\cr
 \tab \code{\link[R.oo:showDescriptionFile.Package]{showDescriptionFile}} \tab Show the DESCRIPTION file of this package.\cr
 \tab \code{showHistory} \tab  -\cr
 \tab \code{\link[R.oo:showHowToCite.Package]{showHowToCite}} \tab Show the HOWTOCITE file of this package.\cr
 \tab \code{showNews} \tab  -\cr
 \tab \code{\link[R.oo:startupMessage.Package]{startupMessage}} \tab Generates a 'package successfully loaded' package startup message.\cr
 \tab \code{\link[R.oo:unload.Package]{unload}} \tab Unloads a package.\cr
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
# [1] "Package: base v3.6.2 is loaded (pos=14).  Title: The R Base Package.
# The official webpage is NA and the maintainer is R Core Team <R-core@
# r-project.org>.  The package is installed in /usr/lib/R/library/base/.
# License: Part of R 3.6.2.  Description: Base R functions.  Type
# showNews(base) for package history, and ?base for help."
print(list.files(Package("base")$dataPath))

# Some information about the R.oo package
print(R.oo::R.oo)
# [1] "Package: R.oo v1.23.0-9000 .  Title: R Object-Oriented Programming
# with or without References.  The official webpage is https://github.com/
# HenrikBengtsson/R.oo and the maintainer is Henrik Bengtsson.  The package
# is installed in /home/alice/R/x86_64-pc-linux-gnu-library/3.6/R.oo/.
# License: LGPL (>= 2.1).  Description: Methods and classes for object-
# oriented programming in R with or without references.  Large effort has
# been made on making definition of methods as simple as possible with a
# minimum of maintenance for package developers.  The package has been
# developed since 2001 and is now considered very stable.  This is a
# cross-platform package implemented in pure R that defines standard S3
# classes without any tricks.  Type showNews(R.oo) for package history,
# and ?R.oo for help."
}}

\author{Henrik Bengtsson}

\keyword{programming}
\keyword{methods}
\keyword{classes}
