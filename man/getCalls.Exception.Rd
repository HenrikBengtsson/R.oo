%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Exception.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getCalls.Exception}
\alias{getCalls.Exception}
\alias{Exception.getCalls}
\alias{getCalls,Exception-method}
\alias{Exception.getCall}
\alias{getCall.Exception}
\alias{getCall,Exception-method}


\title{Gets the active calls saved when the exception was created}

\description{
 .
}

\usage{
\method{getCalls}{Exception}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns an unnamed \code{\link[base]{list}} with @language elements.
}

\examples{\dontrun{For a complete example see help(Exception).}}

\seealso{
  \code{\link[R.oo:getStackTrace.Exception]{*getStackTrace}()}.
  \code{\link[utils:debugger]{sys.calls}()}.
  For more information see \code{\link{Exception}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\keyword{programming}
\keyword{methods}
\keyword{error}
\keyword{internal}
\keyword{methods}
