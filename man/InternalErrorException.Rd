%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  InternalErrorException.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{InternalErrorException}
\docType{class}
\alias{InternalErrorException}


 \title{InternalErrorException represents internal errors}

 \description{
  Package:  R.oo \cr
\bold{Class InternalErrorException}\cr

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
\code{~~~~~~~~~~~~~~~~~~~~~~~~~~~+--}\code{InternalErrorException}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{InternalErrorException}\cr
extends \link[R.oo]{Exception}\cr



  InternalErrorException represents internal errors that are likely to be due to implementation errors done by
  the author of a specific package and not because the user made an error.
  Errors that are due to unexpected input to functions etc falls under
  this error type.
 }

 \usage{InternalErrorException(..., package=NULL)}

 \arguments{
   \item{...}{Any arguments accepted by \code{\link{Exception}}}.
   \item{package}{The name (\code{\link[base]{character}} string) of the package where the
     error exists. Can also be a \code{\link{Package}} object. If \code{\link[base]{NULL}}, the
     source of the error is assumed to be unknown.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.oo:getMessage.InternalErrorException]{getMessage}} \tab Gets the message of the exception.\cr
 \tab \code{\link[R.oo:getPackage.InternalErrorException]{getPackage}} \tab Gets the suspicious package likely to contain an error.\cr
}


 \bold{Methods inherited from Exception}:\cr
as.character, getCall, getLastException, getMessage, getStackTrace, getWhen, print, printStackTrace, throw

 \bold{Methods inherited from error}:\cr
as.character, throw

 \bold{Methods inherited from condition}:\cr
as.character, conditionCall, conditionMessage, print

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save

 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For detailed information about exceptions see \code{\link{Exception}}.
 }

 \keyword{programming}
 \keyword{methods}
 \keyword{error}
\keyword{classes}
