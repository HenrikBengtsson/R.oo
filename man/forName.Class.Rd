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
## Class$forName(name, envir=NULL, inherits=TRUE, ...)

## Don't use the below:
\method{forName}{Class}(this, name, envir=NULL, inherits=TRUE, ...)
}

\arguments{
  \item{envir}{(optional) An \code{\link[base]{environment}} to search from.
   If \code{\link[base]{NULL}}, only attached namespaces are searched.}
  \item{inherits}{If \code{\link[base:logical]{TRUE}}, enclosing frames are also searched,
   otherwise not.}
  \item{...}{Not used.}
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
