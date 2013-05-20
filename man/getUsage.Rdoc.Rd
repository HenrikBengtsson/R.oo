%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$getUsage}
\alias{Rdoc$getUsage}
\alias{getUsage.Rdoc}
\alias{Rdoc.getUsage}
\alias{getUsage,Rdoc-method}

\title{Gets the usage of a method}

\description{
  Gets the usage of a method.
}

\usage{
## Static method (use this):
## Rdoc$getUsage(method, class=NULL, wrap=90, indent=2, ...)

## Don't use the below:
\method{getUsage}{Rdoc}(static, method, class=NULL, wrap=90, indent=2, ...)
}

\arguments{
  \item{method}{A method name (\code{\link[base]{character}} string).}
  \item{class}{An optional class name (\code{\link[base]{character}} string).}
  \item{wrap}{An \code{\link[base]{integer}} specifying the maximum number of characters per line.  Longer lines will be wrapped with newlines.}
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
