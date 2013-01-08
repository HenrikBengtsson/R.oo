%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  020.makeObjectFinalizer,private.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{.makeObjectFinalizer}
\alias{.makeObjectFinalizer}


 \title{Creates a standalone finalizer function for Object}

 \description{
   Creates a standalone finalizer function for Object, which assumes only that the \pkg{base} package is available.
 }

 \usage{.makeObjectFinalizer(this, reloadRoo=TRUE)}

 \arguments{
   \item{this}{The \code{\link[R.oo]{Object}} to be finalized.}
   \item{reloadRoo}{If \code{\link[base:logical]{TRUE}}, the finalizer will try to temporary
     reload the \pkg{R.oo} package if not loaded.}
 }

 \value{
   Returns a \code{\link[base]{function}} that can be passed to \code{\link[base]{reg.finalizer}}().
 }

 \details{
   Note, the returned finalizer is not 100\% reentrant prior to R v3.0.0
   iff \code{reloadRoo=TRUE} and the \pkg{R.oo} package is not loaded.
   The reason for this is that when it tries to reload \pkg{R.oo}, the
   library loading code of R also calls the \code{\link[base]{parse}}() function
   which is not reentrant prior to R v3.0.0.  What may happen is that
   \code{\link[base]{parse}}() may triggers another round of garbage collection
   which in turn may cause R to crash (due to an infinite loop?).
   Thanks to Duncan Murdoch for reporting on this and making
   \code{\link[base]{parse}}() and hence the package loading mechanism in R reentrant.
 }


\keyword{internal}
