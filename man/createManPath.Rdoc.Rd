%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{createManPath.Rdoc}
\alias{createManPath.Rdoc}
\alias{Rdoc.createManPath}
\alias{createManPath.Rdoc}
\alias{createManPath,Rdoc-method}


\title{Creates the directory where the Rd files should be saved}

\description{
  Creates the directory where the Rd files should be saved.
}

\usage{
## Static method (use this):
## Rdoc$createManPath(...)

## Don't use the below:
\method{createManPath}{Rdoc}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns \code{\link[base:logical]{TRUE}} if the directory was creates, \code{\link[base:logical]{FALSE}} if it already exists
 and throws an \code{\link[R.oo]{Exception}} if failed.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:getManPath.Rdoc]{*getManPath}()}
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
