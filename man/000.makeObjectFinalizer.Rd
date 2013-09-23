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

\usage{
.makeObjectFinalizer(this, reloadRoo=TRUE)
}

\arguments{
  \item{this}{The \code{\link[R.oo]{Object}} to be finalized.}
  \item{reloadRoo}{If \code{\link[base:logical]{TRUE}}, the finalizer will try to temporary
    reload the \pkg{R.oo} package if not loaded.}
}

\value{
  Returns a \code{\link[base]{function}} that can be passed to \code{\link[base]{reg.finalizer}}().
}

\details{
  The created finalizer is reentrant.
  This is always the case when the \pkg{R.oo} package is already
  loaded when the finalizer is called.
  It is also always the case on R v2.15.2 Patched r61487 and beyond.
  In other cases, the finalizer inspects the call stack
  (via \code{\link{sys.calls}}()) to check whether \code{\link[base]{parse}}()
  has been called or not.  If it is on the call stack, it indicates
  that \code{\link[base]{parse}}() triggered the garbage collection, and
  the \pkg{R.oo} package will \emph{not} be reloaded in order to
  avoid risking \code{\link[base]{parse}}() being called again.
}


\keyword{internal}
