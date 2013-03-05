%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  RdocException.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{RdocException}
\docType{class}
\alias{RdocException}


 \title{RdocException are thrown by the Rdoc compiler}

 \description{
  Package:  R.oo \cr
\bold{Class RdocException}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{try-error}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{condition}\cr
\code{~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~+--}\code{error}\cr
\code{~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~+--}\code{simpleError}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~+--}\code{\link[R.oo]{Exception}}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~~~~~~+--}\code{RdocException}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{RdocException}\cr
extends \link[R.oo]{Exception}\cr



  RdocException are thrown by the Rdoc compiler when it fails to generate a Rd file from an Rdoc comment.
 }

 \usage{
RdocException(..., source=NULL)
}

 \arguments{
   \item{...}{Any arguments accepted by \code{\link[R.oo]{Exception}}}.
   \item{source}{Object specifying the source where the Rdoc error occured.
     This is commonly a filename \code{\link[base]{character}} string.}.
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.oo:as.character.RdocException]{as.character}} \tab Gets a character string representing of the RdocException.\cr
 \tab \code{\link[R.oo:getSource.RdocException]{getSource}} \tab Gets the source of the exception.\cr
}


 \bold{Methods inherited from Exception}:\cr
as.character, getCall, getCalls, getLastException, getMessage, getStackTrace, getWhen, print, printStackTrace, throw

 \bold{Methods inherited from error}:\cr
as.character, throw

 \bold{Methods inherited from condition}:\cr
abort, as.character, conditionCall, conditionMessage, print

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For detailed information about exceptions see \code{\link[R.oo]{Exception}}.
 }

 \keyword{programming}
 \keyword{methods}
 \keyword{error}
\keyword{classes}
