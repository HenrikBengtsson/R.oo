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

\title{Gets the howToCite of this package}

\description{
  Gets the howToCite of this package, i.e. the \code{HOWTOCITE} file, which should is expected
  to be located in the root directory of the package, i.e.
  \code{\link[R.oo:getPath.Package]{*getPath}()}.
}

\usage{
\method{getHowToCite}{Package}(this, newline="
", ...)
}

\arguments{
  \item{newline}{The \code{\link[base]{character}} string to collapse lines in the file.}
  \item{...}{Not used.}
}

\value{
  Returns the complete contents of the \code{HOWTOCITE} file as a
  \code{\link[base]{character}} string. If not found, \code{\link[base]{NULL}} is returned.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
