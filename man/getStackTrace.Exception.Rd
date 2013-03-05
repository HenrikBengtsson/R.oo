%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Exception.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getStackTrace.Exception}
\alias{getStackTrace.Exception}
\alias{Exception.getStackTrace}
\alias{getStackTrace.Exception}
\alias{getStackTrace,Exception-method}


\title{Gets the stack trace saved when the exception was created}

\description{
 .
}

\usage{
\method{getStackTrace}{Exception}(this, cleanup=getOption("R.oo::Exception/getStackTrace/args/cleanup", TRUE), ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{list}} containing the stack trace.
}

\examples{\dontrun{For a complete example see help(Exception).}}

\seealso{
  \code{\link[R.oo:printStackTrace.Exception]{*printStackTrace}()}.
  \code{\link[utils:debugger]{dump.frames}()}.
  \code{\link[base:conditions]{tryCatch}()}.
  For more information see \code{\link{Exception}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}
\keyword{error}
\keyword{internal}
\keyword{methods}
