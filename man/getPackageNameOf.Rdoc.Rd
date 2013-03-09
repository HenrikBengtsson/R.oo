%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$getPackageNameOf}
\alias{Rdoc$getPackageNameOf}
\alias{getPackageNameOf.Rdoc}
\alias{Rdoc.getPackageNameOf}
\alias{getPackageNameOf,Rdoc-method}

\title{Gets the package of a method or an object}

\description{
  Gets the package of a method or an object.
}

\usage{
## Static method (use this):
## Rdoc$getPackageNameOf(objectName, mode="any", unique=TRUE, ...)

## Don't use the below:
\method{getPackageNameOf}{Rdoc}(static, objectName, mode="any", unique=TRUE, ...)
}

\arguments{
 \item{objectName}{An method or object name (\code{\link[base]{character}} string).}
 \item{mode}{Mode of object (\code{\link[base]{character}} string).}
 \item{unique}{If \code{\link[base:logical]{TRUE}}, only the first matching package is returned if
   more than one is found.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
