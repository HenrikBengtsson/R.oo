%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{attachLocally.Object}
\alias{attachLocally.Object}
\alias{Object.attachLocally}
\alias{attachLocally.Object}
\alias{attachLocally,Object-method}


 \title{Attaches an Object locally to an environment}

 \usage{\method{attachLocally}{Object}(this, private=FALSE, fields=NULL, excludeFields=NULL, overwrite=TRUE, envir=parent.frame(), ...)}

 \description{
  Attaches an Object locally to an environment.  By default, the fields of the Object are attached to
  the parent frame, that is, the calling environment.
 }

 \arguments{
   \item{private}{If \code{\link[base:logical]{TRUE}}, private fields are included, otherwise not.
      This is only effective if \code{fields==NULL}.}
   \item{fields}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying elements to be copied.
      If \code{\link[base]{NULL}}, all elements are considered.}
   \item{excludeFields}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying elements not to
      be copied.  This has higher priority than \code{fields}.}
   \item{overwrite}{If \code{\link[base:logical]{FALSE}}, fields that already exists will not be
      copied.}
   \item{envir}{The \code{\link[base]{environment}} where fields are copied to.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) a \code{\link[base]{character}} \code{\link[base]{vector}} of the fields copied.
 }

 \examples{
foo <- function(object, arg1="some value", ...) {
  cat("Local objects in foo():\n")
  print(ls())

  attachLocally(object)

  cat("\nLocal objects in foo():\n")
  print(ls())

  for (name in ls()) {
    cat("\nObject '", name, "':\n", sep="")
    print(get(name, inherits=FALSE))
  }
}

a <- "A string"
obj <- Object()
obj$a <- "Another string"
obj$b <- NA
foo(obj)
print(a)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link[R.oo:attach.Object]{*attach}()}
  For more information see \code{\link{Object}}.
 }



\keyword{internal}
\keyword{methods}
\keyword{utilities}
\keyword{programming}
