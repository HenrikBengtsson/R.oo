%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{objectSize.BasicObject}
\alias{objectSize.BasicObject}
\alias{BasicObject.objectSize}
\alias{objectSize.BasicObject}
\alias{objectSize,BasicObject-method}


\title{Gets the size of the BasicObject in bytes}

\description{
  Gets the size of the BasicObject in bytes by summing the sizes of all its members. For this reason,
  the size of memory the BasicObject actually allocates might vary slighty.
}

\usage{
\method{objectSize}{BasicObject}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns an \code{\link[base]{integer}} specifying the size of the object in number of bytes.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[utils]{object.size}}.
  For more information see \code{\link{BasicObject}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
