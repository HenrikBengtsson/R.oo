%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{clearLookupCache.Object}
\alias{clearLookupCache.Object}
\alias{Object.clearLookupCache}
\alias{clearLookupCache.Object}
\alias{clearLookupCache,Object-method}


\title{Clear internal fields used for faster lookup}

\description{
 Clear internal fields used for faster lookup by removing these fields.
 This method is called whenever \code{\link[R.oo:gc.Object]{*gc}()} is called on the
 object.
}

\usage{
\method{clearLookupCache}{Object}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns itself (invisible).
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
