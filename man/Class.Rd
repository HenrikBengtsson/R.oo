%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Class}
\docType{class}
\alias{Class}


\title{The Class class describes an Object class}

\description{
 Package:  R.oo \cr
\bold{Class Class}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Class}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{Class}\cr
extends \link[R.oo]{Object}\cr



 The Class class describes an Object class.
 First of all, this class is most commonly used \emph{internally} and
 neither the end user nor the programmer need to no about the class Class.
}

\usage{
Class(name=NULL, constructor=NULL)
}

\arguments{
  \item{name}{Name of the class.}
  \item{constructor}{Constructor (\code{\link[base]{function}}) of any Object class.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{$} \tab  -\cr
 \tab \code{$<-} \tab  -\cr
 \tab \code{[[} \tab  -\cr
 \tab \code{[[<-} \tab  -\cr
 \tab \code{\link[R.oo:argsToString.Class]{argsToString}} \tab Gets the arguments of a function as a character string.\cr
 \tab \code{\link[R.oo:as.character.Class]{as.character}} \tab Returns a short string describing the class.\cr
 \tab \code{\link[R.oo:forName.Class]{forName}} \tab Gets a Class object by a name of a class.\cr
 \tab \code{\link[R.oo:getDetails.Class]{getDetails}} \tab Lists the fields and methods of a class.\cr
 \tab \code{\link[R.oo:getFields.Class]{getFields}} \tab Returns the field names of a class.\cr
 \tab \code{\link[R.oo:getKnownSubclasses.Class]{getKnownSubclasses}} \tab Gets all subclasses that are currently loaded.\cr
 \tab \code{\link[R.oo:getMethods.Class]{getMethods}} \tab Returns the method names of class and its super classes.\cr
 \tab \code{\link[R.oo:getName.Class]{getName}} \tab Gets the name of the class.\cr
 \tab \code{\link[R.oo:getPackage.Class]{getPackage}} \tab Gets the package to which the class belongs.\cr
 \tab \code{\link[R.oo:getRdDeclaration.Class]{getRdDeclaration}} \tab Gets the class declaraction in Rd format.\cr
 \tab \code{\link[R.oo:getRdHierarchy.Class]{getRdHierarchy}} \tab Gets the class hierarchy in Rd format.\cr
 \tab \code{\link[R.oo:getRdMethods.Class]{getRdMethods}} \tab Gets the methods of a class in Rd format.\cr
 \tab \code{\link[R.oo:getStaticInstance.Class]{getStaticInstance}} \tab Gets the static instance of this class.\cr
 \tab \code{\link[R.oo:getSuperclasses.Class]{getSuperclasses}} \tab Gets the super classes of this class.\cr
 \tab \code{\link[R.oo:isAbstract.Class]{isAbstract}} \tab Checks if a class is abstract or not.\cr
 \tab \code{\link[R.oo:isBeingCreated.Class]{isBeingCreated}} \tab Checks if a class is currently being initiated initiated.\cr
 \tab \code{\link[R.oo:isDeprecated.Class]{isDeprecated}} \tab Checks if a class is deprecated or not.\cr
 \tab \code{\link[R.oo:isPrivate.Class]{isPrivate}} \tab Checks if a class is defined private or not.\cr
 \tab \code{\link[R.oo:isProtected.Class]{isProtected}} \tab Checks if a class is defined protected or not.\cr
 \tab \code{\link[R.oo:isPublic.Class]{isPublic}} \tab Checks if a class is defined public or not.\cr
 \tab \code{\link[R.oo:isStatic.Class]{isStatic}} \tab Checks if a class is static or not.\cr
 \tab \code{\link[R.oo:newInstance.Class]{newInstance}} \tab Creates a new instance of this class.\cr
 \tab \code{\link[R.oo:print.Class]{print}} \tab Prints detailed information about the class and its fields and methods.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


}

\details{
  The class Class describes the Object class or one of its subclasses.
  All classes and constructors created by \code{setConstructorS3()} will
  be of class Class. Its methods provide ways of accessing static fields
  and static methods. Its \emph{print()} method will print detailed
  information about the class and its fields and methods.
}

\author{Henrik Bengtsson}



\keyword{internal}
\keyword{methods}
\keyword{classes}
\keyword{programming}
