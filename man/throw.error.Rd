%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  error.throw.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{throw.error}
\alias{throw.error}

\title{Throws (rethrows) an object of class 'error'}

\description{
 Rethrows an 'error' object. The 'error' class was introduced in R v1.8.1
 with the new error handling mechanisms.
}

\usage{
\method{throw}{error}(error, ...)
}

\arguments{
  \item{error}{An object or class 'error'.}
  \item{...}{Not used.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  See the \code{tryCatch()} method etc.
  See the \code{\link{Exception}} class for more detailed information.
}

\keyword{error}
\keyword{methods}
