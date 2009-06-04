%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getPosition.Package}
\alias{getPosition.Package}
\alias{Package.getPosition}
\alias{getPosition.Package}
\alias{getPosition,Package-method}


\title{Gets the search path position of the package}

\description{
  Gets the search path position of the package.
}

\usage{\method{getPosition}{Package}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  An \code{\link[base]{integer}}.
}

\examples{
  pkg <- Package("base")
  print(getPosition(pkg))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:getEnvironment.Package]{*getEnvironment}()}.
  \code{\link[base]{search.}}
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
