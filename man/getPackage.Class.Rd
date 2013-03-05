%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getPackage.Class}
\alias{getPackage.Class}
\alias{Class.getPackage}
\alias{getPackage.Class}
\alias{getPackage,Class-method}


\title{Gets the package to which the class belongs}

\description{
 Gets the package to which the class belongs.
}

\usage{
\method{getPackage}{Class}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link{Package}}.
}

\examples{
  print(getPackage(Object))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{Package}}.
  \code{\link[base]{class}}().
  \code{\link{setConstructorS3}}().
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
