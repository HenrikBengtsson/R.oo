%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{extend.Object}
\alias{extend.Object}
\alias{Object.extend}
\alias{extend.Object}
\alias{extend,Object-method}


 \title{Extends another class}

 \description{
   via a mechanism known as "parasitic inheritance".
   Simply speaking this method "extends another class". What is actually
   happening is that it creates an instance of class name \code{...className},
   by taking another Object instance and add \code{...className} to the class
   list and also add all the named values in \code{...} as fields to the
   new instance.

   The method should be used by the constructor of a class and nowhere else.
 }

 \usage{\method{extend}{Object}(this, ...className, ..., ...fields=NULL, ...envir=parent.frame())}

 \arguments{
   \item{...className}{The name of new class.}
   \item{...}{Named values representing the fields of the new instance.}
   \item{...fields}{An optional named \code{\link[base]{list}} of fields.  This makes it possible
     to specify a set of fields using a \code{\link[base]{list}} object.}
   \item{...envir}{An \code{\link[base]{environment}}.}
 }

 \value{
  Returns an Object of class \code{className}.
 }

 \details{
   The reason for the strange name of argument \code{"...className"} is that
   if one tries to set a field with a name that is a prefix of the name of
   this arguments and one at the same time does not specify the name of this
   argument one would run into strange errors. For instance, try
   \code{extend(Object(), "MyClass", ...c=0)}.
 }

 \section{Field modifiers}{
   It is possible to specify modifiers to some of the fields.  Currently it
   is only the \code{cached} modifier that is recognized.  A field that is
   cached will be assigned \code{\link[base]{NULL}} when \code{\link[R.oo:clearCache.Object]{*clearCache}()}
   (or \code{\link[R.oo:gc.Object]{*gc}()}) is called.  To specify a modifier, append a comma
   separated list of modifiers followed by a colon, e.g. "cached:foo".
 }

 \examples{\dontrun{For a complete example see help(Object).}}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{Object}}.
 }

 \keyword{programming}
 \keyword{methods}
\keyword{internal}
\keyword{methods}
