%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getDescriptionFile.Package}
\alias{getDescriptionFile.Package}
\alias{Package.getDescriptionFile}
\alias{getDescriptionFile.Package}
\alias{getDescriptionFile,Package-method}


\title{Gets the description file of this package}

\description{
  Gets the description file of this package, i.e. the parsed \code{DESCRIPTION} file.
}

\usage{\method{getDescriptionFile}{Package}(this, fields=NULL, ...)}

\arguments{
  \item{fields}{A \code{\link[base]{vector}} of \code{\link[base]{character}} strings of fields to be returned.
    If \code{\link[base]{NULL}}, all available fields are returned.}
  \item{...}{Not used.}
}

\value{
  Returns named \code{\link[base]{vector}} of \code{\link[base]{character}} strings.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Package}}.
}
\keyword{internal}
\keyword{methods}
