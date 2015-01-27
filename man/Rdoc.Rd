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
 \tab \code{\link[R.oo:argsToString.Rdoc]{argsToString}} \tab Gets the arguments signature of a function.\cr
 \tab \code{\link[R.oo:check.Rdoc]{check}} \tab Checks the compiled Rd files.\cr
 \tab \code{\link[R.oo:compile.Rdoc]{compile}} \tab Compile source code files containing Rdoc comments into Rd files.\cr
 \tab \code{\link[R.oo:createManPath.Rdoc]{createManPath}} \tab Creates the directory where the Rd files should be saved.\cr
 \tab \code{\link[R.oo:createName.Rdoc]{createName}} \tab Creates a class-method name.\cr
 \tab \code{\link[R.oo:declaration.Rdoc]{declaration}} \tab Gets the class declaration.\cr
 \tab \code{\link[R.oo:escapeRdFilename.Rdoc]{escapeRdFilename}} \tab Escape non-valid characters in a filename.\cr
 \tab \code{\link[R.oo:getClassS4Usage.Rdoc]{getClassS4Usage}} \tab Gets the usage of a S4 class.\cr
 \tab \code{\link[R.oo:getKeywords.Rdoc]{getKeywords}} \tab Gets the keywords defined in R with descriptions.\cr
 \tab \code{\link[R.oo:getManPath.Rdoc]{getManPath}} \tab Gets the path to the directory where the Rd files will be saved.\cr
 \tab \code{\link[R.oo:getNameFormat.Rdoc]{getNameFormat}} \tab Gets the current name format.\cr
 \tab \code{getObject} \tab  -\cr
 \tab \code{\link[R.oo:getPackageNameOf.Rdoc]{getPackageNameOf}} \tab Gets the package of a method or an object.\cr
 \tab \code{\link[R.oo:getRdTitle.Rdoc]{getRdTitle}} \tab Extracts the title string of a Rd file.\cr
 \tab \code{\link[R.oo:getUsage.Rdoc]{getUsage}} \tab Gets the usage of a method.\cr
 \tab \code{\link[R.oo:hierarchy.Rdoc]{hierarchy}} \tab Gets the class hierarchy.\cr
 \tab \code{\link[R.oo:isKeyword.Rdoc]{isKeyword}} \tab Checks if a word is a Rd keyword.\cr
 \tab \code{\link[R.oo:isVisible.Rdoc]{isVisible}} \tab Checks if a member is visible given its modifiers.\cr
 \tab \code{\link[R.oo:methodsInheritedFrom.Rdoc]{methodsInheritedFrom}} \tab Gets all methods inherited from a class in Rd format.\cr
 \tab \code{\link[R.oo:setManPath.Rdoc]{setManPath}} \tab Sets the path to the directory where the Rd files should be saved.\cr
 \tab \code{\link[R.oo:setNameFormat.Rdoc]{setNameFormat}} \tab Sets the current name format.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


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
