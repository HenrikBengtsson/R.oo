%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  dimension.default.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{dimension}
\alias{dimension.default}
\alias{dimension}

\title{Gets the dimension of the object}

\description{
  Gets the dimension of the object similar to what \code{dim()} does,
  but instead of \code{\link[base]{NULL}} it will return the length of a vector.
  If a function is passed, \code{\link[base]{NULL}} is returned.
}

\usage{\method{dimension}{default}(object, ...)}

\arguments{
  \item{object}{The object for which the dimension should be obtained.}
  \item{...}{Not used.}
}

\value{
 Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} or \code{\link[base]{NULL}}.
}

\examples{
  dimension(matrix(1:100, ncol=10))     # 10 10
  dimension(1:14)                       # 14
  dimension(data.frame(a=1:10, b=10:1)) # 10  2
  dimension(print)                      # NULL
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{ll.default}}().
  \code{\link[base]{dim}}() and \code{\link[base]{length}}().
}

\keyword{attribute}
\keyword{utilities}

