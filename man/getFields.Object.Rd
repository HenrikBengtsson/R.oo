%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  050.Object.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{getFields.Object}
\alias{getFields.Object}
\alias{Object.getFields}
\alias{getFields,Object-method}
 \alias{Object.names}
\alias{names.Object}
\alias{names,Object-method}


 \title{Returns the field names of an Object}

 \description{
   Returns the field names of an Object.
 }

 \usage{
\method{getFields}{Object}(this, private=FALSE, ...)
}

 \arguments{
   \item{private}{If \code{\link[base:logical]{TRUE}}, private fields will also be returned,
   otherwise only public fields are returned.}
   \item{...}{Not used.}
 }

 \value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of field names.
 }

 \examples{
   obj <- Object()
   obj$x <- 1:100
   obj$y <- 100:1
   getFields(obj)

   \dontrun{
   gives:
 
   [1] "x" "y"
   }
 }

 \author{Henrik Bengtsson}

 \seealso{
   To check if a field exists or not, see \code{\link[R.oo:hasField.Object]{*hasField}()}.
   For more extensive information about the fields in an Object see
   \code{\link[R.oo:ll.Object]{*ll}()}.
   For more information see \code{\link{Object}}.
 }

 \keyword{programming}
 \keyword{methods}
\keyword{internal}
\keyword{methods}
