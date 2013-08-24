%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getHowToCite.Package}
\alias{getHowToCite.Package}
\alias{Package.getHowToCite}
\alias{getHowToCite,Package-method}

\title{Gets the citation of this package}

\description{
  Gets the citation of this package.
  If text file \code{HOWTOCITE} exists in package root directory,
  then its contents is retrieved, otherwise \code{\link[utils]{citation}}
  for the package is retrieved.
}

\usage{
\method{getHowToCite}{Package}(this, newline="\n", ...)
}

\arguments{
  \item{newline}{The \code{\link[base]{character}} string to collapse lines in the file.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
