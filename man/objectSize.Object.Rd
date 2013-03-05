%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{objectSize.Object}
\alias{objectSize.Object}
\alias{Object.objectSize}
\alias{objectSize,Object-method}

\title{Gets the size of the Object in bytes}

\description{
  Gets the size of the Object in bytes by summing the sizes of all its
  members. For this reason, the size of memory the Object actually
  allocates might vary slighty.
}

\usage{
\method{objectSize}{Object}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns an \code{\link[base]{integer}} specifying the size of the object in number of bytes.
}

\examples{
  obj <- Object()
  obj$x <- 1:100
  obj$y <- 100:1
  objectSize(obj)   # 856
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  To clear fields that are declared \code{cached},
  see \code{\link[R.oo:clearCache.Object]{*clearCache}()}.
  \code{\link[utils]{object.size}}.
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
