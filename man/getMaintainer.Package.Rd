%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getMaintainer.Package}
\alias{getMaintainer.Package}
\alias{Package.getMaintainer}
\alias{getMaintainer.Package}
\alias{getMaintainer,Package-method}


\title{Gets the Maintainer of this package}

\description{
  Gets the Maintainer of this package as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getMaintainer}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\examples{
  pkg <- Package("R.oo")
  print(getMaintainer(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
