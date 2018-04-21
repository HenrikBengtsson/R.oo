%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{extend.BasicObject}
\alias{extend.BasicObject}
\alias{BasicObject.extend}
\alias{extend,BasicObject-method}

\title{Extends another class}

\description{
  via a mechanism known as "parasitic inheritance".
  Simply speaking this method "extends another class". What is actually
  happening is that it creates an instance of class name \code{...className},
  by taking another BasicObject instance and add \code{...className} to
  the class list and also add all the named values in \code{...} as fields to the
  new instance.

  The method should be used by the constructor of a class and nowhere else.
}

\usage{
\method{extend}{BasicObject}(this, ...className, ...)
}

\arguments{
  \item{...className}{The name of new class.}
  \item{...}{Named values representing the fields of the new instance.}
}

\value{
 Returns an BasicObject of class \code{className}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{BasicObject}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
