%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getDate.Package}
\alias{getDate.Package}
\alias{Package.getDate}
\alias{getDate.Package}
\alias{getDate,Package-method}


\title{Gets the date when package was build}

\description{
  Checks if the package is loaded onto the search path or not.
}

\usage{
\method{getDate}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  \code{\link[base:logical]{TRUE}} if the packages has been loaded, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{
  pkg <- Package("base")
  print(isLoaded(pkg))       # TRUE
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
