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


\keyword{internal}
