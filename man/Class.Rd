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
 \tab \code{.DollarNames} \tab  -\cr
 \tab \code{.subset2Internal} \tab  -\cr
 \tab \code{[[} \tab  -\cr
 \tab \code{[[<-} \tab  -\cr
 \tab \code{argsToString} \tab  -\cr
 \tab \code{as.character} \tab  -\cr
 \tab \code{forName} \tab  -\cr
 \tab \code{getDetails} \tab  -\cr
 \tab \code{getFields} \tab  -\cr
 \tab \code{getKnownSubclasses} \tab  -\cr
 \tab \code{getMethods} \tab  -\cr
 \tab \code{getName} \tab  -\cr
 \tab \code{getPackage} \tab  -\cr
 \tab \code{getRdDeclaration} \tab  -\cr
 \tab \code{getRdHierarchy} \tab  -\cr
 \tab \code{getRdMethods} \tab  -\cr
 \tab \code{getStaticInstance} \tab  -\cr
 \tab \code{getSuperclasses} \tab  -\cr
 \tab \code{isAbstract} \tab  -\cr
 \tab \code{isBeingCreated} \tab  -\cr
 \tab \code{isDeprecated} \tab  -\cr
 \tab \code{isPrivate} \tab  -\cr
 \tab \code{isProtected} \tab  -\cr
 \tab \code{isPublic} \tab  -\cr
 \tab \code{isStatic} \tab  -\cr
 \tab \code{newInstance} \tab  -\cr
 \tab \code{print} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, names, objectSize, print, save


}

\details{
  The class Class describes the Object class or one of its subclasses.
  All classes and constructors created by \code{setConstructorS3()} will
  be of class Class. Its methods provide ways of accessing static fields
  and static methods. Its \emph{print()} method will print detailed
  information about the class and its fields and methods.
}

\author{Henrik Bengtsson}



\keyword{classes}
\keyword{programming}
\keyword{methods}
