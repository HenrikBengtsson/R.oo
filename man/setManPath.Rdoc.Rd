%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$setManPath}
\alias{Rdoc$setManPath}
\alias{setManPath.Rdoc}
\alias{Rdoc.setManPath}
\alias{setManPath,Rdoc-method}

\title{Sets the path to the directory where the Rd files should be saved}

\description{
  Sets the path to the directory where the Rd files should be saved. By default the path is \code{../man/} assuming that the
  current directory is \code{../R/}, which is where source files commonly
  are placed.
}

\usage{
## Static method (use this):
## Rdoc$setManPath(path="../man/", ...)

## Don't use the below:
\method{setManPath}{Rdoc}(this, path="../man/", ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.oo:getManPath.Rdoc]{*getManPath}()}
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
