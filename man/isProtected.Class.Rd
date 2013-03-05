%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isProtected.Class}
\alias{isProtected.Class}
\alias{Class.isProtected}
\alias{isProtected.Class}
\alias{isProtected,Class-method}


\title{Checks if a class is defined protected or not}

\description{
 Checks if a class is defined protected or not.
}

\usage{
\method{isProtected}{Class}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the class is protected, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{
  if (isProtected(RccViolationException))
    throw("The class RccViolationException should NOT be protected.")
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{class}}().
  \code{\link{setConstructorS3}}().
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
