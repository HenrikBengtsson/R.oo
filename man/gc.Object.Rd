%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{gc.Object}
\alias{gc.Object}
\alias{Object.gc}
\alias{gc,Object-method}

\title{Clear cached fields and calls the garbage collector}

\description{
 Clear cached fields and calls the garbage collector.  Cached fields are set to \code{\link[base]{NULL}} when cleared.
}

\usage{
\method{gc}{Object}(this, ...)
}

\arguments{
  \item{...}{Passed to \code{\link[base]{gc}}() returns.}
}

\value{
  Returns what \code{\link[base]{gc}}() returns.
}

\examples{
setConstructorS3("CachedObject", function(...) {
  extend(Object(), "CachedObject",
    ...
  )
})

setMethodS3("as.character", "CachedObject", function(this, ...) {
  s <- NextMethod("as.character", this, ...)
  s <- sprintf("\%s. RAM: \%.2fkb.", s, objectSize(this)/1024)
  s
})

obj <- CachedObject(a=1, b=1:10^5, "cached:c"=1:10^6)
print(ll(obj))
print(obj) # [1] "CachedObject: 0x02466E28. RAM: 4297.16kb."

gc(obj)         # Clear all cached fields
print(ll(obj))
print(obj) # [1] "CachedObject: 0x02466E28. RAM: 391.05kb."

}

\author{Henrik Bengtsson}

\seealso{
  To clear the fields without calling the garbage collector,
  see \code{\link[R.oo:clearCache.Object]{*clearCache}()}.
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
