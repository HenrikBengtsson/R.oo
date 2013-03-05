%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{equals.BasicObject}
\alias{equals.BasicObject}
\alias{BasicObject.equals}
\alias{equals.BasicObject}
\alias{equals,BasicObject-method}


\title{Compares an object with another}

\description{
 Compares an object with another and returns \code{\link[base:logical]{TRUE}} if they are equal.
 The equal property must be

 1) \emph{reflexive}, i.e. \code{equals(o1,o1)} should be \code{\link[base:logical]{TRUE}}.

 2) \emph{symmetric}, i.e. \code{equals(o1,o2)} is \code{\link[base:logical]{TRUE}} if and only
 if \code{equals(o2,o1)} is \code{\link[base:logical]{TRUE}}.

 3) \emph{transitive}, i.e. \code{equals(o1,o2)} is \code{\link[base:logical]{TRUE}} and
 \code{equals(o2,o3)} is \code{\link[base:logical]{TRUE}}, then \code{equals(o1,o3)} should
 be \code{\link[base:logical]{TRUE}}.

 5) \emph{consistent}, i.e. \code{equals(o1,o2)} should return the same
 result on multiple invocations as long as noting has changed.

 6) \code{equals(o1,NULL)} should return \code{\link[base:logical]{FALSE}}.

 By default, the method returns \code{\link[base:logical]{TRUE}} if and only if the two
 references compared refer to the same \code{\link{BasicObject}}, i.e.
 \code{( !is.null(obj) && (hashCode(this) == hashCode(obj)) )}.
}

\usage{
\method{equals}{BasicObject}(this, other, ...)
}

\arguments{
  \item{other}{The other object this object should be compared to.}
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the objects are equal, otherwise \code{\link[base:logical]{FALSE}}.
}

\seealso{
  For more information see \code{\link{BasicObject}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
