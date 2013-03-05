%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{hashCode.Object}
\alias{hashCode.Object}
\alias{Object.hashCode}
\alias{hashCode,Object-method}

\title{Gets a hash code for the Object}

\description{
 Gets a hash code for the Object. This makes it possible to put any \code{\link[R.oo]{Object}} in a hash table.

 The hash code returned must:

 1) be \emph{consistent}, i.e. \code{hashCode(obj)} should return the same
 value on multiple invocations as long as nothing has changed.

 2) tell same same thing as \code{equals()}, if \code{equals(o1,o2)} is
 \code{\link[base:logical]{TRUE}}, then \code{hashCode(o1) == hashCode(o2)} should also be
 \code{\link[base:logical]{TRUE}}.

 Note that if \code{equals(o1,o2)} is \code{\link[base:logical]{FALSE}}, \code{hashCode(o1)}
 \code{hashCode(o2)} may be \emph{either} equal or non-equal.

 By default, the method returns the internal memory address where the
 Object is located.
}

\usage{
\method{hashCode}{Object}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{double}}.
}

\examples{
  obj <- Object()
  hashCode(obj)          # 26979608
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:equals.Object]{*equals}()}
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
