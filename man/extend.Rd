%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  extend.default.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{extend}
\alias{extend.default}
\alias{extend}

\title{Extends a object}

\description{
  via a mechanism known as "parasitic inheritance".
  Simply speaking this method "extends" the class of an object. What is actually
  happening is that it creates an instance of class name \code{...className},
  by taking another object and add \code{...className} to the class
  list and also add all the named values in \code{...} as attributes.

  The method should be used by the constructor of a class and nowhere else.
}

\usage{
\method{extend}{default}(this, ...className, ...)
}

\arguments{
  \item{this}{Object to be extended.}
  \item{...className}{The name of new class.}
  \item{...}{Attribute fields of the new class.}
}

\value{
 Returns an object of class \code{...className}.
}

\author{Henrik Bengtsson}

\examples{
setConstructorS3("MyDouble", function(value=0, ...) {
  extend(as.double(value), "MyDouble", ...)
})

setMethodS3("as.character", "MyDouble", function(object, ...) {
  fmtstr <- attr(object, "fmtstr")
  if (is.null(fmtstr))
    fmtstr <- "\%.6f"
  sprintf(fmtstr, object)
})

setMethodS3("print", "MyDouble", function(object, ...) {
  print(as.character(object), ...)
})

x <- MyDouble(3.1415926)
print(x)

x <- MyDouble(3.1415926, fmtstr="\%3.2f")
print(x)
attr(x, "fmtstr") <- "\%e"
print(x)






setConstructorS3("MyList", function(value=0, ...) {
  extend(list(value=value, ...), "MyList")
})

setMethodS3("as.character", "MyList", function(object, ...) {
  fmtstr <- object$fmtstr
  if (is.null(fmtstr))
    fmtstr <- "\%.6f"
  sprintf(fmtstr, object$value)
})

setMethodS3("print", "MyList", function(object, ...) {
  print(as.character(object), ...)
})

x <- MyList(3.1415926)
print(x)
x <- MyList(3.1415926, fmtstr="\%3.2f")
print(x)
x$fmtstr <- "\%e"
print(x)



}

\keyword{programming}
\keyword{methods}

