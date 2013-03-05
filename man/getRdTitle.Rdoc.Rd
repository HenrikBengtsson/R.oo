%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Rdoc.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Rdoc$getRdTitle}
\alias{Rdoc$getRdTitle}
\alias{getRdTitle.Rdoc}
\alias{Rdoc.getRdTitle}
\alias{getRdTitle,Rdoc-method}

\title{Extracts the title string of a Rd file}

\description{
  Extracts the title string of a Rd file corresponding the the specified method of the specified class.
}

\usage{
## Static method (use this):
## Rdoc$getRdTitle(class, method, ...)

## Don't use the below:
\method{getRdTitle}{Rdoc}(this, class, method, ...)
}

\arguments{
  \item{method}{The method to be search for.}
  \item{class}{The class the method belongs to.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Rdoc}}.
}


\keyword{internal}
\keyword{methods}
\keyword{documentation}
