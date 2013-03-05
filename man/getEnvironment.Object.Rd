%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getEnvironment.Object}
\alias{getEnvironment.Object}
\alias{Object.getEnvironment}
\alias{getEnvironment,Object-method}

\title{Gets the environment of this object}

\description{
 Gets the environment of this object.
 This is the environment where the members of the Object are stored.
}

\usage{
\method{getEnvironment}{Object}(fun, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{environment}}.
}

\examples{
  ll(R.oo)
  ll(envir=getEnvironment(R.oo))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
