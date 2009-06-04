%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getKnownSubclasses.Class}
\alias{getKnownSubclasses.Class}
\alias{Class.getKnownSubclasses}
\alias{getKnownSubclasses.Class}
\alias{getKnownSubclasses,Class-method}


\title{Gets all subclasses that are currently loaded}

\description{
 Gets all subclasses that are currently loaded.
}

\usage{\method{getKnownSubclasses}{Class}(this, sort=TRUE, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of \code{\link[base]{character}} strings.
}

\examples{
  \dontrun{
  # Due to a bug in R CMD check (R v1.7.1) the MicroarrayData$read() call
  # below will call getKnownSubclasses(), which will generate
  #   "Error in exists(objectName, mode = "function") :
  #	   [2003-07-07 23:32:41] Exception: F used instead of FALSE"
  # Note that the example still work, just not in R CMD check

  print(getKnownSubclasses(Exception))
  }
  \dontrun{
  returns
  [1] "Exception" "try-error" "Object"
  }
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.oo:getSuperclasses.Class]{*getSuperclasses}()}.
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
