%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getBundle.Package}
\alias{getBundle.Package}
\alias{Package.getBundle}
\alias{getBundle,Package-method}

\title{Gets the Bundle that this package might belong to}

\description{
  Gets the Bundle that this package might belong to as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getBundle}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  If the package is part of a bundle, the name of the bundle is returned.
  Otherwise, \code{\link[base]{NULL}} is returned.
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
