%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Exception.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Exception}
\docType{class}
\alias{Exception}


\title{The Exception class to be thrown and caught}

\description{
 Package:  R.oo \cr
\bold{Class Exception}\cr

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
\code{~~~~~~~~~~~~~~~~~~~~~~+--}\code{Exception}\cr

\bold{Directly known subclasses:}\cr
\link[R.oo]{InternalErrorException}, \link[R.oo]{RccViolationException}, \link[R.oo]{RdocException}\cr

public static class \bold{Exception}\cr
extends simpleError\cr



 Creates an Exception that can be thrown and caught. The \code{Exception}
 class is the root class of all other \code{Exception} classes.
}

\usage{
Exception(..., sep="", collapse=", ")
}

\arguments{
  \item{...}{One or several strings, which will be concatenated and contain
    informative message about the exception.}
  \item{sep}{The string to used for concatenating several strings.}
  \item{collapse}{The string to used collapse vectors together.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.oo:as.character.Exception]{as.character}} \tab Gets a character string representing of the Exception.\cr
 \tab \code{getCall} \tab  -\cr
 \tab \code{\link[R.oo:getCalls.Exception]{getCalls}} \tab Gets the active calls saved when the exception was created.\cr
 \tab \code{\link[R.oo:getLastException.Exception]{getLastException}} \tab Static method to get the last Exception thrown.\cr
 \tab \code{\link[R.oo:getMessage.Exception]{getMessage}} \tab Gets the message of the Exception.\cr
 \tab \code{\link[R.oo:getStackTrace.Exception]{getStackTrace}} \tab Gets the stack trace saved when the exception was created.\cr
 \tab \code{\link[R.oo:getStackTraceString.Exception]{getStackTraceString}} \tab Gets the stack trace as a string.\cr
 \tab \code{\link[R.oo:getWhen.Exception]{getWhen}} \tab Gets the time when the Exception was created.\cr
 \tab \code{\link[R.oo:print.Exception]{print}} \tab Prints the Exception.\cr
 \tab \code{\link[R.oo:printStackTrace.Exception]{printStackTrace}} \tab Prints the stack trace saved when the exception was created.\cr
 \tab \code{\link[R.oo:throw.Exception]{throw}} \tab Throws an Exception that can be caught.\cr
}


 \bold{Methods inherited from error}:\cr
as.character, throw

 \bold{Methods inherited from condition}:\cr
abort, as.character, conditionCall, conditionMessage, print

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


}

\examples{

######################################################################
# 1. To catch a regular "error" exception thrown by e.g. stop().
######################################################################
x <- NA
y <- NA
tryCatch({
  x <- log(123)
  y <- log("a")
}, error = function(ex) {
  print(ex)
})
print(x)
print(y)



######################################################################
# 2. Always run a "final" expression regardless or error or not.
######################################################################
filename <- tempfile("R.methodsS3.example")
con <- file(filename)
tryCatch({
  open(con, "r")
}, error = function(ex) {
  cat("Could not open ", filename, " for reading.\n", sep="")
}, finally = {
  close(con)
  cat("The id of the connection is ",
       ifelse(is.null(con), "NULL", con), ".\n", sep="")
})


######################################################################
# 3. Creating your own Exception class
######################################################################
setConstructorS3("NegativeLogValueException", function(
  msg="Trying to calculate the logarithm of a negative value", value=NULL) {
  extend(Exception(msg=msg), "NegativeLogValueException",
    .value = value
  )
})

setMethodS3("as.character", "NegativeLogValueException", function(this, ...) {
  paste(as.character.Exception(this), ": ", getValue(this), sep="")
})

setMethodS3("getValue", "NegativeLogValueException", function(this, ...) {
  this$.value
})


mylog <- function(x, base=exp(1)) {
  if (x < 0)
    throw(NegativeLogValueException(value=x))
  else
    log(x, base=base)
}


# Note that the order of the catch list is important:
l <- NA
x <- 123
tryCatch({
  l <- mylog(x)
}, NegativeLogValueException = function(ex) {
  cat(as.character(ex), "\n")
}, "try-error" = function(ex) {
  cat("try-error: Could not calculate the logarithm of ", x, ".\n", sep="")
}, error = function(ex) {
  cat("error: Could not calculate the logarithm of ", x, ".\n", sep="")
})
cat("The logarithm of ", x, " is ", l, ".\n\n", sep="")

}

\author{Henrik Bengtsson}

\seealso{
  See also \code{\link[base:conditions]{tryCatch}()} (and \code{\link[base]{try}}()).
}

\keyword{programming}
\keyword{methods}
\keyword{error}
\keyword{classes}
