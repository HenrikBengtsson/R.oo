%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getContribUrl.Package}
\alias{getContribUrl.Package}
\alias{Package.getContribUrl}
\alias{getContribUrl,Package-method}

\title{Gets the URL(s) from where this package can be installed}

\description{
  Gets the URL(s) from where this package can be installed by first looking for comma or semicolon separated URLs
  at the optional \code{ContribURL} line in the \code{DESCRIPTION} file
  of the package. If no such line exists, \code{getUrl()} is used.
}

\usage{
\method{getContribUrl}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a vector of \code{\link[base]{character}} strings.
}

\examples{
  pkg <- Package("R.oo")
  print(getContribUrl(pkg))
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
