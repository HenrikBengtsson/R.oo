%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{finalize.Object}
\alias{finalize.Object}
\alias{Object.finalize}
\alias{finalize.Object}
\alias{finalize,Object-method}


\title{Finalizer methods called when object is clean out}

\description{
 Finalizer methods are called just the moment before the object is
 about to be deleted by the garbage collector.

 \bold{If creating a custom \code{finalize()} method for a subclass
       in a package, then it needs to be exported in the NAMESPACE of
       that package.  If not, it will not be found nor called and
       there will be no error message.}

 \bold{A finalizer method should never be called explicitly!}
}

\usage{\method{finalize}{Object}(this, ...)}

\arguments{
  \item{...}{Not used.}
}

\examples{
setConstructorS3("MyClass", function() {
  extend(Object(), "MyClass")
})

setMethodS3("finalize", "MyClass", function(this, ...) {
  cat(as.character(this), "is about to be removed from the memory!\n")
})

o <- MyClass()
o <- MyClass()
o <- MyClass()
o <- MyClass()
gc()

## MyClass: 0x01BE602C is about to be removed from the memory!
## MyClass: 0x01BFF634 is about to be removed from the memory!
## MyClass: 0x01C13584 is about to be removed from the memory!
##          used (Mb) gc trigger (Mb)
## Ncells 229903  6.2     467875 12.5
## Vcells  53725  0.5     786432  6.0

rm(o)
## MyClass: 0x01C578B0 is about to be removed from the memory!
##          used (Mb) gc trigger (Mb)
## Ncells 229903  6.1     467875 12.3
## Vcells  53725  0.5     786432  6.0
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Object}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
