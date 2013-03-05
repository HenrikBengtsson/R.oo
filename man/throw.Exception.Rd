%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Exception.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{throw.Exception}
\alias{throw.Exception}
\alias{Exception.throw}
\alias{throw.Exception}
\alias{throw,Exception-method}


\title{Throws an Exception that can be caught}

\description{
 Throws an Exception that can be caught by \code{tryCatch()}.
}

\usage{
\method{throw}{Exception}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
 Returns nothing.
}

\examples{\dontrun{For a complete example see help(Exception).}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Exception}}.
  See also \code{\link[base:conditions]{tryCatch}()}.
  This method overrides (and is fully backward compatible with) the one
  defined in the \pkg{R.methodsS3} package.
}

\keyword{programming}
\keyword{methods}
\keyword{error}
\keyword{internal}
\keyword{methods}
