%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  objectSize.environment.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{objectSize.environment}
\alias{objectSize.environment}

\title{Gets the size of an environment in bytes}

\description{
  Gets the size of an environment in bytes.
}

\usage{
\method{objectSize}{environment}(envir, ...)
}

\arguments{
  \item{envir}{An \code{\link[base]{environment}}().}
  \item{...}{Arguments passed to \code{\link[base]{ls}}().}
}

\value{
 Returns an \code{\link[base]{integer}}.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[utils]{object.size}} is used.
}

\keyword{attribute}
\keyword{utilities}
\keyword{methods}
