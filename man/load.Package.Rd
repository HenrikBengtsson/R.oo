%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{load.Package}
\alias{load.Package}
\alias{Package.load}
\alias{load.Package}
\alias{load,Package-method}


\title{Loads a package}

\description{
  Loads a package. This is an alternative way to use \code{library()} to
  load a package.
}

\usage{
\method{load}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  \code{\link[base:logical]{TRUE}} if the packages is loaded, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{
  pkg <- Package("base")
  print(load(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:unload.Package]{*unload}()}.
  \code{\link[R.oo:isLoaded.Package]{*isLoaded}()}.
  \code{\link[base]{search}}().
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
