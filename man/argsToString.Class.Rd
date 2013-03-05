%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{argsToString.Class}
\alias{argsToString.Class}
\alias{Class.argsToString}
\alias{argsToString.Class}
\alias{argsToString,Class-method}


\title{Gets the arguments of a function as a character string}

\description{
  Gets the arguments (with default values) of a function as a character
  string, which can be used for debugging purposes etc.
  Used by: classinfo().
}

\usage{
## Static method (use this):
## Class$argsToString(fcn, ...)

## Don't use the below:
\method{argsToString}{Class}(this, fcn, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\examples{
  Class$argsToString(plot);
}

\seealso{
  For more information see \code{\link{Class}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{internal}
\keyword{methods}
\keyword{programming}
