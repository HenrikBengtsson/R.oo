%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  BasicObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{BasicObject}
\docType{class}
\alias{BasicObject}


 \title{A root class like Object but without references}

 \description{
  R.oo\cr
  \bold{Class BasicObject}\cr

  public class \bold{BasicObject}\cr
 }

 \usage{BasicObject(core=NULL)}

 \arguments{
   \item{core}{The core value of the object.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{$} \tab  -\cr
 \tab \code{$<-} \tab  -\cr
 \tab \code{[[} \tab  -\cr
 \tab \code{[[<-} \tab  -\cr
 \tab \code{\link[R.oo:as.character.BasicObject]{as.character}} \tab Gets a character string representing the object.\cr
 \tab \code{\link[R.oo:attach.BasicObject]{attach}} \tab Attach an BasicObject to the R search path.\cr
 \tab \code{\link[R.oo:detach.BasicObject]{detach}} \tab Detach an BasicObject from the R search path.\cr
 \tab \code{\link[R.oo:equals.BasicObject]{equals}} \tab Compares an object with another.\cr
 \tab \code{\link[R.oo:extend.BasicObject]{extend}} \tab Extends another class.\cr
 \tab \code{\link[R.oo:getFields.BasicObject]{getFields}} \tab Returns the field names of an BasicObject.\cr
 \tab \code{\link[R.oo:getInstantiationTime.BasicObject]{getInstantiationTime}} \tab Gets the time when the object was instantiated.\cr
 \tab \code{\link[R.oo:hasField.BasicObject]{hasField}} \tab Checks if a field exists or not.\cr
 \tab \code{\link[R.oo:hashCode.BasicObject]{hashCode}} \tab Gets a hash code for the object.\cr
 \tab \code{\link[R.oo:isReferable.BasicObject]{isReferable}} \tab Checks if the object is referable or not.\cr
 \tab \code{\link[R.oo:objectSize.BasicObject]{objectSize}} \tab Gets the size of the BasicObject in bytes.\cr
 \tab \code{\link[R.oo:print.BasicObject]{print}} \tab Prints an BasicObject.\cr
}


 \bold{Methods inherited from logical}:\cr
as.data.frame, as.raster, whichVector

 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \keyword{programming}
 \keyword{methods}
 \keyword{internal}
\keyword{classes}
