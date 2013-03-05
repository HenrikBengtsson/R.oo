%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getSuperclasses.Class}
\alias{getSuperclasses.Class}
\alias{Class.getSuperclasses}
\alias{getSuperclasses,Class-method}

\title{Gets the super classes of this class}

\description{
 Gets the super classes of this class.
}

\usage{
\method{getSuperclasses}{Class}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of \code{\link[base]{character}} strings.
}

\examples{
  print(getSuperclasses(RccViolationException))
  \dontrun{
  returns
  [1] "Exception" "try-error" "Object"
  }
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{class}}().
  \code{\link[R.oo:getKnownSubclasses.Class]{*getKnownSubclasses}()}.
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
