%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{unload.Package}
\alias{unload.Package}
\alias{Package.unload}
\alias{unload,Package-method}

\title{Unloads a package}

\description{
  Unloads a package. This is an alternative way to use \code{detach()} to
  unload a package.
  If the package is not loaded, it will quietly return.
}

\usage{
\method{unload}{Package}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns nothing.
}

\examples{\dontrun{
pkg <- Package("boot")
load(pkg)
print(isLoaded(pkg))
unload(pkg)
print(isLoaded(pkg))

}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:load.Package]{*load}()}.
  \code{\link[R.oo:isLoaded.Package]{*isLoaded}()}.
  \code{\link[base]{search}}().
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
