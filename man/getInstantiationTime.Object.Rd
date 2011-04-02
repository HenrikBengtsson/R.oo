%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getInstantiationTime.Object}
\alias{getInstantiationTime.Object}
\alias{Object.getInstantiationTime}
\alias{getInstantiationTime.Object}
\alias{getInstantiationTime,Object-method}


\title{Gets the time when the object was instantiated}

\description{
 Gets the time when the object was instantiated (created) as a POSIXt object.
}

\usage{\method{getInstantiationTime}{Object}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a POSIXt object, which extends class POSIXct.
}

\details{
  The instantiation time stamp is set when the object is created, and
  only of option \code{"R.oo::BasicObject/instantiationTime"} is \code{\link[base:logical]{TRUE}}.
}

\examples{
  oopts <- options("R.oo::Object/instantiationTime"=TRUE)
  obj <- Object()
  print(getInstantiationTime(obj))
  options(oopts)
}

\seealso{
  For more about time formats and POSIX see \code{\link[base]{DateTimeClasses}}.
  For more information see \code{\link{Object}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
