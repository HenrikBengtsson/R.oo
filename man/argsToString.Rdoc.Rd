%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$argsToString}
\alias{Rdoc$argsToString}
\alias{argsToString.Rdoc}
\alias{Rdoc.argsToString}
\alias{argsToString,Rdoc-method}

\title{Gets the arguments signature of a function}

\description{
  Gets the arguments signature of a function.
}

\usage{
## Static method (use this):
## Rdoc$argsToString(fcn, escapeRd=FALSE, collapse=TRUE, ...)

## Don't use the below:
\method{argsToString}{Rdoc}(static, fcn, escapeRd=FALSE, collapse=TRUE, ...)
}

\arguments{
 \item{fcn}{A \code{\link[base]{function}}.}
 \item{escapeRd}{If \code{\link[base:logical]{TRUE}}, certain Rd markup symbols are escaped.}
 \item{collapse}{If \code{\link[base:logical]{TRUE}}, each argument is returned as a single string,
  otherwise split up into a vector of strings as far as possible.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{list}} of \code{\link[base]{character}} strings.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
