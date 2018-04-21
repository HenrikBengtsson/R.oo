%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getFields.BasicObject}
\alias{getFields.BasicObject}
\alias{BasicObject.getFields}
\alias{getFields,BasicObject-method}

\title{Returns the field names of an BasicObject}

\description{
  Returns the field names of an BasicObject.
}

\usage{
\method{getFields}{BasicObject}(this, private=FALSE, ...)
}

\arguments{
  \item{private}{If \code{\link[base:logical]{TRUE}}, private fields will also be returned,
  otherwise only public fields are returned.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of field names.
}

\author{Henrik Bengtsson}

\seealso{
  To check if a field exists or not, see \code{\link[R.oo:hasField.BasicObject]{*hasField}()}.
  For more information see \code{\link{BasicObject}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
