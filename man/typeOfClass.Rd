%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  typeOfClass.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{typeOfClass}
\alias{typeOfClass.default}
\alias{typeOfClass}

\title{Gets the type of a class (S3 or S4)}

\description{
 Gets the type of a class (S3 or S4).
}

\usage{\method{typeOfClass}{default}(object, ...)}

\arguments{
 \item{object}{The object to be checks.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string \code{"S3"}, \code{"S3-Object"} or \code{"S4"},
 or \code{\link[base]{NA}} if neither.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{character}

