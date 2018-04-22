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
\alias{getMaintainer,Package-method}

\title{Gets the Maintainer of this package}

\description{
  Gets the Maintainer of this package as specified by the \code{DESCRIPTION} file.
}

\usage{
\method{getMaintainer}{Package}(this, as=c("character", "person"), include=c("given", "family"), ...)
}

\arguments{
  \item{as}{A \code{\link[base]{character}} string specifying the return format.}
  \item{include}{A \code{\link[base]{character}} \code{\link[base]{vector}}  specifying which person fields
    to include if returning a \code{\link[base]{character}} string.}
  \item{...}{Optional arguments passed to \code{\link[utils]{format.person}}.}
}

\value{
  Returns a \code{\link[base]{character}} string or a \code{\link[utils]{person}} object.
}

\examples{
  pkg <- Package("R.oo")
  print(getMaintainer(pkg))
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
