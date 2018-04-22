%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getInternalAddress.Object}
\alias{getInternalAddress.Object}
\alias{Object.getInternalAddress}
\alias{getInternalAddress,Object-method}

\title{Gets the memory location where the Object resides}

\description{
 Gets the memory location where the Object resides.
}

\usage{
\method{getInternalAddress}{Object}(this, format=c("numeric", "hexstring"), ...)
}

\arguments{
  \item{format}{A \code{\link[base]{character}} string specifying what format to return.}
  \item{...}{Not used.}
}

\value{
  The address is returned as a \code{\link[base]{numeric}} integer if
  \code{format == "numeric"}, and as a \code{\link[base]{character}} string if
  \code{format == "hexstring"}.
}

\examples{
  obj <- Object()
  getInternalAddress(obj, format="numeric")    # 179742632
  getInternalAddress(obj, format="hexstring")  # "0x000000000ab6a7a8"
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[=getName.environment]{getName()}}.
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
