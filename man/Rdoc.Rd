%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc}
\docType{class}
\alias{Rdoc}


\title{Class for converting Rdoc comments to Rd files}

\description{
 Package:  R.oo \cr
\bold{Class Rdoc}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Rdoc}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{Rdoc}\cr
extends \link[R.oo]{Object}\cr



 Class for converting Rdoc comments to Rd files.
}

\usage{
Rdoc()
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{argsToString} \tab  -\cr
 \tab \code{check} \tab  -\cr
 \tab \code{compile} \tab  -\cr
 \tab \code{createManPath} \tab  -\cr
 \tab \code{createName} \tab  -\cr
 \tab \code{declaration} \tab  -\cr
 \tab \code{escapeRdFilename} \tab  -\cr
 \tab \code{getClassS4Usage} \tab  -\cr
 \tab \code{getKeywords} \tab  -\cr
 \tab \code{getManPath} \tab  -\cr
 \tab \code{getNameFormat} \tab  -\cr
 \tab \code{getObject} \tab  -\cr
 \tab \code{getPackageNameOf} \tab  -\cr
 \tab \code{getRdTitle} \tab  -\cr
 \tab \code{getUsage} \tab  -\cr
 \tab \code{hierarchy} \tab  -\cr
 \tab \code{isKeyword} \tab  -\cr
 \tab \code{isVisible} \tab  -\cr
 \tab \code{methodsInheritedFrom} \tab  -\cr
 \tab \code{setManPath} \tab  -\cr
 \tab \code{setNameFormat} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, names, objectSize, print, save


}

\author{Henrik Bengtsson}

\examples{\dontrun{# Set default author
author <- "Henrik Bengtsson, \\url{http://www.braju.com/R/}"

# Show the file containing the Rdoc comments
rdocFile <- system.file("misc", "ASCII.R", package="R.oo")
file.show(rdocFile)

# Compile the Rdoc:s into Rd files (saved in the destPath directory)
destPath <- tempdir()
Rdoc$compile(rdocFile, destPath=destPath)

# List the generated Rd files
rdFiles <- list.files(destPath, full.names=TRUE)
print(rdFiles)

# Show one of the files
file.show(rdFiles[1])

# Clean up
file.remove(rdFiles)
}}

\references{
  R developers,
  \emph{Guidelines for Rd files},
  \url{http://developer.r-project.org/Rds.html},
  2003
}


\keyword{classes}
\keyword{documentation}
