%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getMethods.Class}
\alias{getMethods.Class}
\alias{Class.getMethods}
\alias{getMethods,Class-method}

\title{Returns the method names of class and its super classes}

\description{
  Returns the method names of class and its super classes as a list.
}

\usage{
\method{getMethods}{Class}(this, private=FALSE, deprecated=TRUE, unique=TRUE, ...)
}

\arguments{
  \item{private}{If \code{\link[base:logical]{TRUE}}, private methods are also returned,
    otherwise only public ones are returned.}
  \item{deprecated}{If \code{\link[base:logical]{TRUE}}, deprecated methods are also returned.}
  \item{unqiue}{If \code{\link[base:logical]{TRUE}}, only methods that are not implemented
    in one of the subclasses are returned for each class.}
  \item{...}{Not used.}
}

\value{
 Returns a named \code{\link[base]{list}} of named \code{\link[base]{character}} strings.
}

\examples{
  names <- getMethods(Exception)
  print(names)
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
