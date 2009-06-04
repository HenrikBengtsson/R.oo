%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{clearCache.Object}
\alias{clearCache.Object}
\alias{Object.clearCache}
\alias{clearCache.Object}
\alias{clearCache,Object-method}


\title{Clear fields that are defined to have cached values}

\description{
 Clear fields that are defined to have cached values by assigning \code{\link[base]{NULL}} to these fields.
}

\usage{\method{clearCache}{Object}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns itself (invisible).
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  To clear the cached fields and run the garbage collector
  see \code{\link[R.oo:gc.Object]{*gc}()}.
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
