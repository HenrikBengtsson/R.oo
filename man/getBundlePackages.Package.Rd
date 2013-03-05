%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getBundlePackages.Package}
\alias{getBundlePackages.Package}
\alias{Package.getBundlePackages}
\alias{getBundlePackages,Package-method}

\title{Gets the names of the other packages that is in the same bundle as this package}

\description{
  Gets the names of the other packages that is in the same bundle as this package as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getBundlePackages}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of package names or \code{\link[base]{NULL}}.
}

\details{
 The first call to this method is normally slow because all installed
 packages are scanned. The result of this first call is cached and
 used as the return value for all subsequent calls, which are then much
 faster.
}

\examples{
  pkg <- Package("R.oo")
  print(getBundle(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
