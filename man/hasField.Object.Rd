%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{hasField.Object}
\alias{hasField.Object}
\alias{Object.hasField}
\alias{hasField,Object-method}

 \title{Checks if a field exists or not}

 \description{
   Checks if a field exists or not.
 }

 \usage{
\method{hasField}{Object}(this, field, ...)
}

 \arguments{
   \item{field}{\code{\link[base]{vector}} of fields to be checked if they exists or not.}
   \item{...}{Not used.}
 }

 \value{
  Returns a \code{\link[base]{logical}} \code{\link[base]{vector}} indicating for each field if it exists or not.
 }

 \examples{
   obj <- Object()
   obj$x <- 1:100
   obj$y <- 100:1
   hasField(obj, c("x", "a", "b", "y"))

   \dontrun{
   gives:
 
   [1] TRUE FALSE FALSE TRUE
   }
 }

 \author{Henrik Bengtsson}

 \seealso{
   To get the fields of an Object, see \code{\link[R.oo:getFields.Object]{*getFields}()}.
   For more extensive information about the fields in an Object see
   \code{\link[R.oo:ll.Object]{*ll}()}.
   For more information see \code{\link{Object}}.
 }

 \keyword{programming}
 \keyword{methods}
\keyword{internal}
\keyword{methods}
