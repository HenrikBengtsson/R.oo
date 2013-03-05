%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getTitle.Package}
\alias{getTitle.Package}
\alias{Package.getTitle}
\alias{getTitle.Package}
\alias{getTitle,Package-method}


\title{Gets the Title of this package}

\description{
  Gets the Title of this package as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getTitle}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\examples{
  pkg <- Package("R.oo")
  print(getTitle(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
