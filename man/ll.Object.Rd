%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{ll.Object}
\alias{ll.Object}
\alias{Object.ll}
\alias{ll,Object-method}

\title{Generates a list of informative properties of all members of an Object}

\description{
  Generates a list of informative properties of all members of an Object.
}

\usage{
\method{ll}{Object}(this, ...)
}

\arguments{
  \item{...}{Any arguments accepted by the underlying function \code{ll()}.}
}

\value{
 Returns a \code{\link[base]{data.frame}} containing information about all the members.
}

\examples{
  obj <- Object()
  obj$x <- 1:100
  obj$y <- 100:1
  ll(obj)

  \dontrun{
  gives:

    member data.class dimension objectSize
  1      x    numeric       100        424
  2      y    numeric       100        424
  }
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{ll.default}}().
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
