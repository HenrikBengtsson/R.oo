%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{as.character.Object}
\alias{as.character.Object}
\alias{Object.as.character}
\alias{as.character,Object-method}

\title{Gets a character string representing the object}

\description{
 Gets a character string representing the object. In the class Object,
 this method simply returns the class name and the hashCode() value
 of the object.
}

\usage{
\method{as.character}{Object}(x, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string representation of the Object. By default it
 is "\{class name\}: \{hash code\}".
}

\examples{
  obj <- Object()
  as.character(obj)    # "Object: 0x000000000ab6a7a8"
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Object}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
