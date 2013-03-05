%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isOlderThan.Package}
\alias{isOlderThan.Package}
\alias{Package.isOlderThan}
\alias{isOlderThan.Package}
\alias{isOlderThan,Package-method}


\title{Checks if the package is older than a given version}

\description{
  Checks if the package is older than a given version.
}

\usage{
\method{isOlderThan}{Package}(this, version, ...)
}

\arguments{
  \item{version}{A \code{\link[base]{character}} string specifying a version to compare with.}
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the version of the package is less than the
  specified version.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
  \code{\link[R.oo:getVersion.Package]{*getVersion}()}.
}
\keyword{internal}
\keyword{methods}
