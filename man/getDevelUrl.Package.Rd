%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getDevelUrl.Package}
\alias{getDevelUrl.Package}
\alias{Package.getDevelUrl}
\alias{getDevelUrl.Package}
\alias{getDevelUrl,Package-method}


\title{Gets the URL(s) from where the developers version of this package can be installed}

\description{
  Gets the URL(s) from where the developers version of this package can be installed by looking for comma or semicolon separated URLs
  at the optional \code{DevelURL} line in the \code{DESCRIPTION} file
  of the package.
}

\usage{
\method{getDevelUrl}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a vector of \code{\link[base]{character}} strings.
}

\examples{
  pkg <- Package("R.oo")
  print(getDevelUrl(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
