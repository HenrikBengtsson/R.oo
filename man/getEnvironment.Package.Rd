%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getEnvironment.Package}
\alias{getEnvironment.Package}
\alias{Package.getEnvironment}
\alias{getEnvironment,Package-method}

\title{Gets the environment of a loaded package}

\description{
  Gets the environment of a loaded package.
}

\usage{
\method{getEnvironment}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{environment}}, or \code{\link[base]{NULL}} if the package was not loaded.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:getPosition.Package]{*getPosition}()}.
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
