%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  060.Class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isBeingCreated.Class}
\alias{isBeingCreated.Class}
\alias{Class.isBeingCreated}
\alias{isBeingCreated,Class-method}

\title{Checks if a class is currently being initiated initiated}

\description{
  Checks if a class is currently being initiated initiated.
  When extending a class for the first time, which is
  typically done in a constructor, a static instance of the class is
  created by calling the constructor without parameters.
  This method provides a way to detect that second call inside the
  constructor.
}

\usage{
\method{isBeingCreated}{Class}(this, ...)
}

\arguments{
  \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if a static instance exists, otherwise \code{\link[base:logical]{FALSE}}.
}

\examples{
setConstructorS3("Car", function(brand=NULL, nbrOfWheels=0) {
  if(!isBeingCreated(Car)) {
    if (is.null(brand))
      throw("A car must have a brand")
     
    if (nbrOfWheels <= 0)
      throw("A car must have one or more wheels: ", nbrOfWheels)
  }

  extend(Object(), "Car",
    .brand = brand,
    .nbrOfWheels = nbrOfWheels
  )
})

setMethodS3("as.character", "Car", function(this, ...) {
  cat(class(this)[1], ":", this$.brand, " with ",
                     this$.nbrOfWheels, " wheels.", sep="");
})

print(Car("Volvo", 4))
print(Car("BMW", 4))
print(Car("Tyrrell P34", 6))
print(Car("T-Rex", 3))
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Class}}.
}



\keyword{internal}
\keyword{methods}
\keyword{programming}
