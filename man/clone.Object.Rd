%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{clone.Object}
\alias{clone.Object}
\alias{Object.clone}
\alias{clone,Object-method}

\title{Clones an Object}

\description{
 Creates an identical copy of the object and returns a reference to the
 new object.
}

\usage{
\method{clone}{Object}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  A reference to the new object.
}

\examples{
  o1 <- Object()
  o2 <- clone(o1)

  print(equals(o1, o2))
}

\details{
  Please note that no constructors are called during the creation of the
  clone and neither is any static class code called.
}

\seealso{
  For more information see \code{\link{Object}}.
}

\author{Henrik Bengtsson}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
