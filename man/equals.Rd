%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  equals.default.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{equals}
\alias{equals.default}
\alias{equals}

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
 result on multiple invocations as long as nothing has changed.

 6) \code{equals(o1,}\code{\link[base]{NULL}}\code{)} should return \code{\link[base:logical]{FALSE}}.

 By default \code{\link[base]{identical}}() is used.
}

\usage{\method{equals}{default}(object, other, ...)}

\arguments{
  \item{object, other}{Objects to be compared.}
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the objects are equal, otherwise \code{\link[base:logical]{FALSE}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{identical}}().
}

\keyword{attribute}
\keyword{utilities}

