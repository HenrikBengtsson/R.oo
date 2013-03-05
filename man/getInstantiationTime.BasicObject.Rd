%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getInstantiationTime.BasicObject}
\alias{getInstantiationTime.BasicObject}
\alias{BasicObject.getInstantiationTime}
\alias{getInstantiationTime.BasicObject}
\alias{getInstantiationTime,BasicObject-method}


\title{Gets the time when the object was instantiated}

\description{
 Gets the time when the object was instantiated (created) as a POSIXt object.
}

\usage{
\method{getInstantiationTime}{BasicObject}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a POSIXt object, which extends class POSIXct.
}

\details{
  The instantiation timestamp is set when the object is created, and
  only of option \code{"R.oo::BasicObject/instantiationTime"} is \code{\link[base:logical]{TRUE}}.
}

\seealso{
  For more about time formats and POSIX see \code{\link[base]{DateTimeClasses}}.
  For more information see \code{\link{BasicObject}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
