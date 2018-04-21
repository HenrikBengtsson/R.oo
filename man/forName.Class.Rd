%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Class$forName}
\alias{Class$forName}
\alias{forName.Class}
\alias{Class.forName}
\alias{forName,Class-method}

\title{Gets a Class object by a name of a class}

\description{
 Gets a Class object by a name of a class. If no such class exists and exception is thrown.
}

\usage{
## Static method (use this):
## Class$forName(name, ...)

## Don't use the below:
\method{forName}{Class}(static, name, ...)
}

\arguments{
  \item{...}{Optional arguments passed to internal lookup function.}
}

\value{
  Returns a \code{\link{Class}}.
}

\examples{
  print(Class$forName("Exception"))
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{class}}().
  \code{\link{setConstructorS3}}().
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
