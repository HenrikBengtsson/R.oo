%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isStatic.Class}
\alias{isStatic.Class}
\alias{Class.isStatic}
\alias{isStatic,Class-method}

\title{Checks if a class is static or not}

\description{
 Checks if a class is static or not. A class is static if it has static methods.
}

\usage{
\method{isStatic}{Class}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the class is static, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{
  if (!isStatic(RccViolationException))
    throw("RccViolationException should be static because Exception is.")
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{setConstructorS3}}().
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
