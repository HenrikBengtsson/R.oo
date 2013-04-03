%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getClasses.Package}
\alias{getClasses.Package}
\alias{Package.getClasses}
\alias{getClasses,Package-method}

\title{Gets all classes of a package}

\description{
  Gets all classes of a package.
}

\usage{
\method{getClasses}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of class names.
}

\examples{
  pkg <- Package("R.oo")
  print(getClasses(pkg))
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
