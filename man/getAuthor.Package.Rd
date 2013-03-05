%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getAuthor.Package}
\alias{getAuthor.Package}
\alias{Package.getAuthor}
\alias{getAuthor.Package}
\alias{getAuthor,Package-method}


\title{Gets the Author of this package}

\description{
  Gets the Author of this package as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getAuthor}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\examples{
  pkg <- Package("R.oo")
  print(getAuthor(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
