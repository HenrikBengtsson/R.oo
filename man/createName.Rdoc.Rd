%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$createName}
\alias{Rdoc$createName}
\alias{createName.Rdoc}
\alias{Rdoc.createName}
\alias{createName,Rdoc-method}

\title{Creates a class-method name}

\description{
  Creates a class-method name.
}

\usage{
## Static method (use this):
## Rdoc$createName(class, method, escape=TRUE, ...)

## Don't use the below:
\method{createName}{Rdoc}(static, class, method, escape=TRUE, ...)
}

\arguments{
  \item{class}{A class name (\code{\link[base]{character}} string).}
  \item{method}{A method name (\code{\link[base]{character}} string).}
  \item{escape}{If \code{\link[base:logical]{TRUE}}, non-valid filename characters are escaped into
    valid character strings.}
  \item{...}{Not used.}
}

\value{
 Returns \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:escapeRdFilename.Rdoc]{*escapeRdFilename}()}.
  For more information see \code{\link{Rdoc}}.
}



\keyword{internal}
\keyword{methods}
\keyword{documentation}
