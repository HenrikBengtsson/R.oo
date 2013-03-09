%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{hasField.BasicObject}
\alias{hasField.BasicObject}
\alias{BasicObject.hasField}
\alias{hasField,BasicObject-method}

\title{Checks if a field exists or not}

\description{
  Checks if a field exists or not.
}

\usage{
\method{hasField}{BasicObject}(this, field, ...)
}

\arguments{
  \item{field}{\code{\link[base]{vector}} of fields to be checked if they exists or not.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{logical}} \code{\link[base]{vector}} indicating for each field if it exists or not.
}

\author{Henrik Bengtsson}

\seealso{
  To get the fields of an Object, see \code{\link[R.oo:getFields.BasicObject]{*getFields}()}.
  For more information see \code{\link{BasicObject}}.
}

\keyword{programming}
\keyword{methods}
\keyword{internal}
\keyword{methods}
