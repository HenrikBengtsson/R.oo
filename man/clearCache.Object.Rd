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
\alias{clearCache,Object-method}

\title{Clear fields that are defined to have cached values}

\description{
 Clear fields that are defined to have cached values by assigning \code{\link[base]{NULL}} to these fields.
}

\usage{
\method{clearCache}{Object}(this, recursive=TRUE, gc=FALSE, ...)
}

\arguments{
  \item{recursive}{If \code{\link[base:logical]{TRUE}}, the same method is called also on all
     fields that are \code{\link{Object}}:s. Circular dependencies can exists.}
  \item{gc}{If \code{\link[base:logical]{TRUE}}, the garbage collector is called, otherwise not.}
  \item{...}{Not used.}
}

\value{
  Returns itself (invisible).
}

\examples{

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Defining a class with a 'cached' fields
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setConstructorS3("CachedObject", function(...) {
  extend(Object(), "CachedObject",
    ...
  )
})

setMethodS3("as.character", "CachedObject", function(this, ...) {
  s <- NextMethod("as.character", this, ...)
  s <- sprintf("\%s RAM: \%.2fkb.", s, objectSize(this)/1024)
  s
})


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example of clearing a cache fields, reassigning it,
# and then clearing it again
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
obj <- CachedObject(a=1, b=1:10^5, "cached:c"=1:10^6)
print(obj)
print(ll(obj))

gc(obj)
print(obj)
print(ll(obj))


obj$c <- 1:10^6
print(obj)
print(ll(obj))

gc(obj)
print(obj)
print(ll(obj))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Clearing cached fields recursively and make sure it
# avoids race conditions due to circular dependences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
objA <- CachedObject(a=2, "cached:c"=1:10^6, prev=NULL)
print(ll(objA))

objB <- CachedObject(a=2, "cached:c"=1:10^6, prev=objA)
print(ll(objB))

objC <- CachedObject(a=3, "cached:c"=1:10^6, prev=objB)
print(ll(objC))

objA$prev <- objC;

gc(objA)
print(ll(objA))
print(ll(objB))
print(ll(objC))

}

\author{Henrik Bengtsson}

\seealso{
  To clear the cached fields and run the garbage collector
  see \code{\link[R.oo:gc.Object]{*gc}()}.
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
